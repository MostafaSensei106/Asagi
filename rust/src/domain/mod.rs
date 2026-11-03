//! Pure compression policy: no platform, filesystem or Flutter dependencies.
use crate::api::calculator::{CalculationPlan, InputMetadata};
pub trait CompressionPolicy {
    fn plan(
        &self,
        info: &InputMetadata,
        limit: u64,
        safety: f64,
    ) -> Result<CalculationPlan, String>;
}
pub struct TargetSizePolicy;
impl CompressionPolicy for TargetSizePolicy {
    fn plan(&self, i: &InputMetadata, limit: u64, safety: f64) -> Result<CalculationPlan, String> {
        if !i.duration_secs.is_finite()
            || i.duration_secs <= 0.0
            || i.width < 2
            || i.height < 2
            || i.file_size_bytes == 0
            || ![0, 90, 180, 270].contains(&i.rotation)
            || limit == 0
            || !(0.90..=0.95).contains(&safety)
        {
            return Err("E_INVALID_INPUT".into());
        }
        let skip = i.file_size_bytes <= limit;
        let total = limit as f64 * safety * 8.0 / i.duration_secs;
        let overhead = (total * 0.01).max(32768.0 * 8.0 / i.duration_secs);
        let audio = if !i.has_audio {
            0
        } else if total - overhead - 128000.0 > 1000000.0 {
            128000
        } else if total - overhead - 96000.0 >= 400000.0 {
            96000
        } else {
            64000
        };
        let mut video = (total - overhead - audio as f64)
            .max(0.0)
            .min(u32::MAX as f64) as u32;
        if i.bitrate_bps > 0 {
            video = video.min((i.bitrate_bps as f64 * 0.9) as u32);
        }
        let ladder = [
            (1080, 1200000, 2500000),
            (720, 700000, 1500000),
            (480, 400000, 800000),
            (360, 250000, 500000),
            (240, 150000, 250000),
        ];
        let chosen = ladder
            .iter()
            .take(3)
            .find(|r| video >= r.2)
            .or_else(|| ladder.iter().find(|r| video >= r.1));
        let low = chosen.is_some_and(|r| video < r.2);
        let (w, h) = if skip {
            (i.width, i.height)
        } else if let Some(r) = chosen {
            let scale = (r.0 as f64 / i.width.min(i.height) as f64).min(1.0);
            (
                ((i.width as f64 * scale) as u32 & !1).max(2),
                ((i.height as f64 * scale) as u32 & !1).max(2),
            )
        } else {
            (0, 0)
        };
        // Dimensions refer to displayed pixels; native must apply the source transform once.
        let (w, h) = if i.rotation == 90 || i.rotation == 270 {
            (h, w)
        } else {
            (w, h)
        };
        Ok(CalculationPlan {
            target_video_bitrate_bps: video,
            target_audio_bitrate_bps: audio,
            target_width: w,
            target_height: h,
            hard_limit_bytes: limit,
            is_infeasible: !skip && chosen.is_none(),
            warning_message: if skip {
                Some("ALREADY_WITHIN_LIMIT".into())
            } else if low {
                Some("LOW_QUALITY".into())
            } else {
                None
            },
        })
    }
}
#[cfg(test)]
mod tests {
    use super::*;
    fn input(duration: f64) -> InputMetadata {
        InputMetadata {
            duration_secs: duration,
            width: 1920,
            height: 1080,
            rotation: 90,
            bitrate_bps: 16000000,
            file_size_bytes: 120000000,
            has_audio: true,
        }
    }
    #[test]
    fn portrait_example() {
        let p = TargetSizePolicy.plan(&input(60.0), 16000000, 0.93).unwrap();
        assert_eq!((p.target_width, p.target_height), (720, 1280));
        assert_eq!(p.target_video_bitrate_bps, 1836160);
    }
    #[test]
    fn constrained_example() {
        let p = TargetSizePolicy.plan(&input(180.0), 8000000, 0.93).unwrap();
        assert_eq!(p.target_audio_bitrate_bps, 64000);
        assert_eq!(p.target_width, 360);
        assert!(p.warning_message.is_some());
    }
    #[test]
    fn impossible() {
        assert!(
            TargetSizePolicy
                .plan(&input(600.0), 16000000, 0.93)
                .unwrap()
                .is_infeasible
        );
    }
    #[test]
    fn invalid() {
        assert!(TargetSizePolicy
            .plan(&input(f64::NAN), 16000000, 0.93)
            .is_err());
    }
}
