//! Versioned, streaming container for FFmpeg-filtered YUV frames.
//!
//! The v1 file is deliberately video-only. Audio remains the responsibility
//! of the platform pipeline and must be retained from the original input.

use std::fs::{self, File, OpenOptions};
use std::io::{self, Seek, SeekFrom, Write};
use std::path::{Path, PathBuf};

pub const MAGIC: &[u8; 8] = b"ZUMIYUV\0";
pub const VERSION: u16 = 1;
pub const HEADER_LEN: u16 = 36;
pub const LAYOUT_NV12: u32 = 1;
const FRAME_TAG: &[u8; 4] = b"FRM1";
const FRAME_HEADER_LEN: u64 = 20;

/// Writes a `.zf` file without retaining frames in memory.
pub struct StagedYuvWriter {
    target: PathBuf,
    partial: PathBuf,
    file: Option<File>,
    width: u32,
    height: u32,
    frame_count: u64,
    previous_pts_us: Option<u64>,
}

impl StagedYuvWriter {
    pub fn create(path: impl AsRef<Path>, width: u32, height: u32, fps: u32) -> io::Result<Self> {
        if width < 2 || height < 2 || width % 2 != 0 || height % 2 != 0 || fps == 0 {
            return Err(io::Error::new(
                io::ErrorKind::InvalidInput,
                "invalid staged YUV dimensions or fps",
            ));
        }
        let target = path.as_ref().to_path_buf();
        if target.exists() {
            return Err(io::Error::new(
                io::ErrorKind::AlreadyExists,
                "staged output already exists",
            ));
        }
        let partial = suffixed_path(&target, ".partial");
        let mut file = OpenOptions::new()
            .write(true)
            .create_new(true)
            .open(&partial)?;
        write_header(&mut file, width, height, fps, 0)?;
        Ok(Self {
            target,
            partial,
            file: Some(file),
            width,
            height,
            frame_count: 0,
            previous_pts_us: None,
        })
    }

    pub fn push_frame(&mut self, pts_us: u64, bytes: &[u8]) -> io::Result<()> {
        let expected_bytes = u64::from(self.width)
            .checked_mul(u64::from(self.height))
            .and_then(|pixels| pixels.checked_mul(3))
            .map(|bytes| bytes / 2)
            .ok_or_else(|| io::Error::new(io::ErrorKind::InvalidInput, "frame is too large"))?;
        let expected = usize::try_from(expected_bytes)
            .map_err(|_| io::Error::new(io::ErrorKind::InvalidInput, "frame is too large"))?;
        if bytes.len() != expected {
            return Err(io::Error::new(
                io::ErrorKind::InvalidData,
                "invalid NV12 frame length",
            ));
        }
        if self
            .previous_pts_us
            .is_some_and(|previous| pts_us < previous)
        {
            return Err(io::Error::new(
                io::ErrorKind::InvalidData,
                "frame timestamps are not monotonic",
            ));
        }
        let file = self.file.as_mut().expect("writer is active until finish");
        let mut record_header = [0; FRAME_HEADER_LEN as usize];
        record_header[..4].copy_from_slice(FRAME_TAG);
        record_header[4..12].copy_from_slice(&pts_us.to_le_bytes());
        record_header[12..20].copy_from_slice(&(bytes.len() as u64).to_le_bytes());
        file.write_all(&record_header)?;
        file.write_all(bytes)?;
        self.frame_count = self
            .frame_count
            .checked_add(1)
            .ok_or_else(|| io::Error::new(io::ErrorKind::InvalidData, "too many frames"))?;
        self.previous_pts_us = Some(pts_us);
        Ok(())
    }

    pub fn finish(mut self) -> io::Result<u64> {
        if self.frame_count == 0 {
            return Err(io::Error::new(
                io::ErrorKind::InvalidData,
                "no frames were staged",
            ));
        }
        let mut file = self.file.take().expect("writer is active until finish");
        file.seek(SeekFrom::Start(28))?;
        file.write_all(&self.frame_count.to_le_bytes())?;
        file.sync_all()?;
        drop(file);
        fs::rename(&self.partial, &self.target)?;
        Ok(self.frame_count)
    }
}

impl Drop for StagedYuvWriter {
    fn drop(&mut self) {
        // A partial stream is never presented as a completed staged file.
        let _ = fs::remove_file(&self.partial);
    }
}

fn write_header(file: &mut File, width: u32, height: u32, fps: u32, count: u64) -> io::Result<()> {
    file.write_all(MAGIC)?;
    file.write_all(&VERSION.to_le_bytes())?;
    file.write_all(&HEADER_LEN.to_le_bytes())?;
    file.write_all(&width.to_le_bytes())?;
    file.write_all(&height.to_le_bytes())?;
    file.write_all(&fps.to_le_bytes())?;
    file.write_all(&LAYOUT_NV12.to_le_bytes())?;
    file.write_all(&count.to_le_bytes())
}

fn suffixed_path(path: &Path, suffix: &str) -> PathBuf {
    let mut name = path.as_os_str().to_os_string();
    name.push(suffix);
    PathBuf::from(name)
}

#[cfg(test)]
mod tests {
    use super::*;
    use std::io::{Read, Seek};

    fn test_path(name: &str) -> (PathBuf, PathBuf) {
        let dir =
            std::env::temp_dir().join(format!("zumi-staged-yuv-{}-{}", std::process::id(), name));
        let _ = fs::remove_dir_all(&dir);
        fs::create_dir_all(&dir).unwrap();
        (dir.join("staged.zf"), dir)
    }

    #[test]
    fn writes_header_and_nv12_records_incrementally() {
        let (path, dir) = test_path("valid");
        let frame = vec![128; 4 * 2 * 3 / 2];
        let mut writer = StagedYuvWriter::create(&path, 4, 2, 30).unwrap();
        writer.push_frame(0, &frame).unwrap();
        writer.push_frame(33_333, &frame).unwrap();
        assert_eq!(writer.finish().unwrap(), 2);

        let mut file = File::open(path).unwrap();
        let mut header = [0; HEADER_LEN as usize];
        file.read_exact(&mut header).unwrap();
        assert_eq!(&header[..8], MAGIC);
        assert_eq!(u16::from_le_bytes([header[8], header[9]]), VERSION);
        assert_eq!(u64::from_le_bytes(header[28..36].try_into().unwrap()), 2);
        file.seek(SeekFrom::Start(HEADER_LEN as u64)).unwrap();
        let mut record = [0; FRAME_HEADER_LEN as usize];
        file.read_exact(&mut record).unwrap();
        assert_eq!(&record[..4], FRAME_TAG);
        assert_eq!(u64::from_le_bytes(record[4..12].try_into().unwrap()), 0);
        assert_eq!(
            u64::from_le_bytes(record[12..20].try_into().unwrap()),
            frame.len() as u64
        );
        fs::remove_dir_all(dir).unwrap();
    }

    #[test]
    fn rejects_wrong_frame_size_and_non_monotonic_timestamps() {
        let (path, dir) = test_path("invalid");
        let mut writer = StagedYuvWriter::create(path, 4, 2, 30).unwrap();
        assert!(writer.push_frame(0, &[0; 5]).is_err());
        let frame = [0; 12];
        writer.push_frame(2, &frame).unwrap();
        assert!(writer.push_frame(1, &frame).is_err());
        drop(writer);
        fs::remove_dir_all(dir).unwrap();
    }
}
