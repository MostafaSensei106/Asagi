use super::contracts::CompressionPolicy;
use super::models::{CalculationPlan, InputMetadata, PlanningPreferences};

pub struct TargetSizePolicy;
impl TargetSizePolicy {
    pub fn plan_with_preferences(
        &self,
        i: &InputMetadata,
        limit: u64,
        safety: f64,
        preferences: &PlanningPreferences,
    ) -> Result<CalculationPlan, String> {
        if preferences.max_short_edge != 0
            && (preferences.max_short_edge < 240
                || preferences.max_short_edge > 16384
                || !preferences.max_short_edge.is_multiple_of(2))
            || ![-1, 0, 48000, 64000, 96000, 128000].contains(&preferences.audio_bitrate_bps)
            || preferences.video_bitrate_ceiling_bps != 0
                && preferences.video_bitrate_ceiling_bps < 150000
        {
            return Err("E_INVALID_PREFERENCES".into());
        }
        self.plan_internal(i, limit, safety, preferences)
    }

    fn plan_internal(
        &self,
        i: &InputMetadata,
        limit: u64,
        safety: f64,
        preferences: &PlanningPreferences,
    ) -> Result<CalculationPlan, String> {
        if !i.duration_secs.is_finite()
            || i.duration_secs <= 0.0
            || i.width < 2
            || i.height < 2
            || !i.pixel_aspect_ratio.is_finite()
            || i.pixel_aspect_ratio <= 0.0
            || i.display_short_edge() < 2.0
            || i.file_size_bytes == 0
            || ![0, 90, 180, 270].contains(&i.rotation)
            || limit == 0
            || !(0.90..=0.95).contains(&safety)
        {
            return Err("E_INVALID_INPUT".into());
        }
        let skip = i.file_size_bytes <= limit && !preferences.force_encode;
        let total = limit as f64 * safety * 8.0 / i.duration_secs;
        let overhead = (total * 0.01).max(32768.0 * 8.0 / i.duration_secs);
        let audio = if !i.has_audio || preferences.audio_bitrate_bps == 0 {
            0
        } else if preferences.audio_bitrate_bps > 0 {
            preferences.audio_bitrate_bps as u32
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
        if preferences.video_bitrate_ceiling_bps > 0 {
            video = video.min(preferences.video_bitrate_ceiling_bps);
        }
        // The ladder is expressed in display (square) pixels because that is the
        // unit every planning limit uses: `max_short_edge` is documented as
        // displayed pixels and the encoder writes square pixels.
        let source_short = (i.display_short_edge().floor() as u32) & !1;
        let mut heights = vec![
            source_short,
            4320,
            2880,
            2160,
            1440,
            1080,
            720,
            480,
            360,
            240,
        ];
        heights.retain(|h| *h >= 2 && *h <= source_short);
        heights.sort_unstable_by(|a, b| b.cmp(a));
        heights.dedup();
        let ladder: Vec<(u32, u32, u32)> = heights
            .into_iter()
            .map(|h| {
                let (minimum, comfortable) = match h {
                    240 => (150000, 250000),
                    360 => (250000, 500000),
                    480 => (400000, 800000),
                    720 => (700000, 1500000),
                    1080 => (1200000, 2500000),
                    _ => {
                        let scale = (h as f64 / 1080.0).powi(2);
                        ((1200000.0 * scale) as u32, (2500000.0 * scale) as u32)
                    }
                };
                (h, minimum, comfortable)
            })
            .collect();
        let allowed = |r: &&(u32, u32, u32)| {
            preferences.max_short_edge == 0 || r.0 <= preferences.max_short_edge
        };
        let chosen = ladder
            .iter()
            .filter(|r| r.0 >= 480)
            .filter(allowed)
            .find(|r| video >= r.2)
            .or_else(|| ladder.iter().filter(allowed).find(|r| video >= r.1));
        let low = chosen.is_some_and(|r| video < r.2);
        let (w, h) = if skip {
            (
                (i.display_width() as u32 & !1).max(2),
                (i.height & !1).max(2),
            )
        } else if let Some(r) = chosen {
            let scale = (r.0 as f64 / i.display_short_edge()).min(1.0);
            (
                ((i.display_width() * scale) as u32 & !1).max(2),
                ((i.height as f64 * scale) as u32 & !1).max(2),
            )
        } else {
            (0, 0)
        };
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
            safety_margin: safety,
            max_attempts: 2,
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
impl CompressionPolicy for TargetSizePolicy {
    fn plan(&self, i: &InputMetadata, limit: u64, safety: f64) -> Result<CalculationPlan, String> {
        self.plan_internal(
            i,
            limit,
            safety,
            &PlanningPreferences {
                audio_bitrate_bps: -1,
                ..Default::default()
            },
        )
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
            pixel_aspect_ratio: 1.0,
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
    #[test]
    fn high_resolution_is_available_when_budget_allows() {
        let mut source = input(60.0);
        source.width = 3840;
        source.height = 2160;
        source.rotation = 0;
        source.bitrate_bps = 100_000_000;
        source.file_size_bytes = 2_000_000_000;
        let options = PlanningPreferences {
            audio_bitrate_bps: -1,
            ..Default::default()
        };
        let four_k = TargetSizePolicy
            .plan_with_preferences(&source, 100_000_000, 0.93, &options)
            .unwrap();
        assert_eq!((four_k.target_width, four_k.target_height), (3840, 2160));

        source.width = 7680;
        source.height = 4320;
        let eight_k = TargetSizePolicy
            .plan_with_preferences(&source, 400_000_000, 0.93, &options)
            .unwrap();
        assert_eq!((eight_k.target_width, eight_k.target_height), (7680, 4320));
    }

    #[test]
    fn manual_limits_are_applied_before_resolution_selection() {
        let mut source = input(60.0);
        source.width = 3840;
        source.height = 2160;
        source.rotation = 0;
        source.bitrate_bps = 100_000_000;
        source.file_size_bytes = 2_000_000_000;
        let options = PlanningPreferences {
            max_short_edge: 1440,
            audio_bitrate_bps: 0,
            video_bitrate_ceiling_bps: 6_000_000,
            force_encode: true,
        };
        let plan = TargetSizePolicy
            .plan_with_preferences(&source, 100_000_000, 0.93, &options)
            .unwrap();
        assert!(plan.target_height <= 1440);
        assert_eq!(plan.target_audio_bitrate_bps, 0);
        assert_eq!(plan.target_video_bitrate_bps, 6_000_000);
    }

    #[test]
    fn anamorphic_sources_plan_in_display_pixels() {
        let mut source = input(60.0);
        source.width = 1440;
        source.height = 1080;
        source.rotation = 0;
        source.bitrate_bps = 0;

        source.pixel_aspect_ratio = 4.0 / 3.0;
        let stretched = TargetSizePolicy.plan(&source, 16000000, 0.93).unwrap();
        assert_eq!(
            (stretched.target_width, stretched.target_height),
            (1280, 720)
        );

        source.pixel_aspect_ratio = 1.0;
        let square = TargetSizePolicy.plan(&source, 16000000, 0.93).unwrap();
        assert_eq!((square.target_width, square.target_height), (960, 720));
    }

    #[test]
    fn rejects_degenerate_pixel_aspect_ratio() {
        for sar in [0.0, -1.0, f64::NAN, f64::INFINITY] {
            let mut source = input(60.0);
            source.pixel_aspect_ratio = sar;
            assert!(TargetSizePolicy.plan(&source, 16000000, 0.93).is_err());
        }
    }
}

#[cfg(test)]
mod properties {
    use super::*;
    use proptest::prelude::*;
    proptest! {
        #[test]
        fn never_upscales_or_emits_odd_dimensions(width in 2u32..8192, height in 2u32..8192, sar in 0.5f64..2.0, duration in 1.0f64..3600.0, limit in 1u64..100_000_000) {
            let i = InputMetadata { duration_secs: duration, width, height, rotation: 0, bitrate_bps: 10_000_000, file_size_bytes: 200_000_000, has_audio: false, pixel_aspect_ratio: sar };
            let p = TargetSizePolicy.plan(&i, limit, 0.93).unwrap();
            // Dimensions are display pixels, so the upper bound is the width
            // after the non-square-pixel stretch.
            prop_assert!(p.target_width <= (width as f64 * sar) as u32);
            prop_assert!(p.target_height <= height);
            prop_assert_eq!(p.target_width % 2, 0);
            prop_assert_eq!(p.target_height % 2, 0);
            prop_assert!(p.target_video_bitrate_bps <= 9_000_000);
        }
    }
}
