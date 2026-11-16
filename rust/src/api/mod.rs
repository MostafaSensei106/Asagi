pub mod calculator;

/// Decode and filter video into the streaming `.zf` fallback staging format.
/// The file is video-only (NV12 with per-frame microsecond PTS); native code
/// must preserve/extract any audio from `input_path` separately.
pub fn stage_fallback_video(
    input_path: String,
    staged_path: String,
    output_width: u32,
    output_height: u32,
    max_fps: u32,
    tone_map_hdr: bool,
) -> Result<u64, String> {
    #[cfg(all(
        target_os = "android",
        any(target_arch = "arm", target_arch = "aarch64", target_arch = "x86_64")
    ))]
    {
        crate::infrastructure::ffmpeg_decoder::stage_video_to_file(
            &input_path,
            std::path::Path::new(&staged_path),
            crate::infrastructure::ffmpeg_decoder::DecodeFilterOptions {
                output_width,
                output_height,
                max_fps,
                tone_map_hdr,
                output_layout: crate::infrastructure::ffmpeg_decoder::RawFrameLayout::Nv12,
            },
        )
    }
    #[cfg(not(all(
        target_os = "android",
        any(target_arch = "arm", target_arch = "aarch64", target_arch = "x86_64")
    )))]
    {
        let _ = (
            input_path,
            staged_path,
            output_width,
            output_height,
            max_fps,
            tone_map_hdr,
        );
        Err("E_ANDROID_REQUIRED".into())
    }
}
