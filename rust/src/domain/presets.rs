//! Share-target presets.
//!
//! Each preset couples a size limit with the limits the destination platform
//! itself enforces: a short-edge ceiling, a frame-rate ceiling, and a bitrate
//! ceiling. Coupling them matters because a size limit alone produces nonsense
//! for short clips — a ten second clip that fits 30 MB has a 24 Mbps budget, and
//! no platform wants a 24 Mbps Reel.
//!
//! The numbers are *platform policy*, not physics. They are versioned by
//! `verified_on` and must be re-checked against the platform's published limits
//! rather than treated as constants.

use super::models::{CalculationPlan, InputMetadata, PlanningPreferences};
use super::planning::TargetSizePolicy;
use serde::{Deserialize, Serialize};

/// The platform a preset targets. Labels are localized in Dart, so the
/// identifier is the only stable contract.
#[derive(Debug, Clone, Copy, PartialEq, Eq, Hash, Serialize, Deserialize)]
pub enum PresetId {
    Whatsapp,
    WhatsappHd,
    Discord,
    InstagramReels,
    TikTok,
    Facebook,
    X,
    YouTubeShorts,
    Email,
}

/// How closely the produced plan matches the preset as written. Ordered from
/// best to worst so callers can compare or log without a match.
#[derive(Debug, Clone, Copy, PartialEq, Eq, PartialOrd, Ord, Serialize, Deserialize)]
pub enum PresetTier {
    /// The size, edge, and bitrate limits all hold.
    Exact,
    /// The size limit holds, but the bitrate budget only affords a smaller
    /// resolution than the preset asks for.
    ReducedQuality,
    /// The preset's own size limit cannot hold a usable bitrate, so a larger
    /// fallback size was used. The caller must tell the user.
    RelaxedSize,
    /// No supported size produces a usable plan. The returned plan carries
    /// `is_infeasible` and is not worth encoding.
    Unsatisfiable,
}

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
pub struct PlatformPreset {
    pub id: PresetId,
    /// Size limit for the destination, in megabytes.
    pub target_mb: u32,
    /// The next size the destination tolerates when `target_mb` cannot hold a
    /// usable bitrate. Never smaller than `target_mb`.
    pub relaxed_target_mb: u32,
    /// Ceiling for the short edge, in display pixels. Zero means no ceiling.
    pub max_short_edge: u32,
    /// Frame-rate ceiling. Planning does not use this; the encoder applies it.
    /// It lives here so one table stays the single source of truth.
    pub max_fps: u32,
    /// Ceiling for the video bitrate, in bits per second. Zero means no
    /// ceiling.
    pub bitrate_cap_bps: u32,
    /// Whether the destination rejects MP4s whose `moov` atom follows `mdat`.
    pub require_faststart: bool,
    /// The date these platform limits were last checked, as `YYYY-MM-DD`.
    pub verified_on: String,
}

/// Automatic audio selection. Pinning a preset to 128 kbps would starve the
/// video budget on the small targets.
const AUTO_AUDIO_BPS: i32 = -1;

/// The date the platform limits below were last read from published policy.
const VERIFIED_ON: &str = "2026-11-16";

fn preset(
    id: PresetId,
    target_mb: u32,
    relaxed_target_mb: u32,
    max_short_edge: u32,
    max_fps: u32,
    bitrate_cap_bps: u32,
    require_faststart: bool,
) -> PlatformPreset {
    PlatformPreset {
        id,
        target_mb,
        relaxed_target_mb,
        max_short_edge,
        max_fps,
        bitrate_cap_bps,
        require_faststart,
        verified_on: VERIFIED_ON.to_owned(),
    }
}

impl PlatformPreset {
    /// Whether choosing this destination requires an active Pro entitlement.
    pub fn is_pro_only(&self) -> bool {
        matches!(self.id, PresetId::Discord | PresetId::YouTubeShorts)
    }

    /// Resolve only after the caller has supplied the verified entitlement
    /// state. Custom plans use the same licensing policy outside this table.
    pub fn resolve_for_subscription(
        &self,
        input: &InputMetadata,
        safety: f64,
        subscription_active: bool,
    ) -> Result<PresetPlan, String> {
        if self.is_pro_only() && !subscription_active {
            return Err("E_PRO_REQUIRED".into());
        }
        self.resolve(input, safety)
    }

    /// Every preset, in the order the picker shows them.
    pub fn all() -> Vec<Self> {
        vec![
            preset(PresetId::Whatsapp, 16, 64, 720, 30, 2_500_000, false),
            preset(PresetId::WhatsappHd, 64, 128, 1080, 30, 6_000_000, false),
            preset(PresetId::Discord, 10, 25, 720, 30, 2_500_000, false),
            preset(
                PresetId::InstagramReels,
                30,
                100,
                1080,
                30,
                5_000_000,
                false,
            ),
            preset(PresetId::TikTok, 50, 200, 1080, 60, 6_000_000, false),
            preset(PresetId::Facebook, 50, 200, 1080, 30, 4_500_000, false),
            preset(PresetId::X, 512, 512, 1080, 60, 8_000_000, true),
            preset(PresetId::YouTubeShorts, 100, 400, 1080, 60, 8_000_000, true),
            preset(PresetId::Email, 25, 25, 720, 30, 4_000_000, false),
        ]
    }

    pub fn by_id(id: PresetId) -> Self {
        Self::all()
            .into_iter()
            .find(|preset| preset.id == id)
            .expect("every PresetId has a preset")
    }

    /// Planner preferences for this preset. Audio stays automatic so the
    /// planner can spend the budget where it matters.
    pub fn preferences(&self) -> PlanningPreferences {
        PlanningPreferences {
            force_encode: false,
            max_short_edge: self.max_short_edge,
            audio_bitrate_bps: AUTO_AUDIO_BPS,
            video_bitrate_ceiling_bps: self.bitrate_cap_bps,
        }
    }

    /// Plan this preset against a source.
    ///
    /// Returns `E_INVALID_INPUT` for a malformed source rather than pretending
    /// it is a size problem. A size problem is never an error: it degrades
    /// through [`PresetTier`] so the UI can explain the trade instead of
    /// showing `E_TARGET_INFEASIBLE` to someone who just tapped "WhatsApp".
    pub fn resolve(&self, input: &InputMetadata, safety: f64) -> Result<PresetPlan, String> {
        // Guard the caller-supplied margin here so it cannot be confused with a
        // malformed source; `plan_internal` would report it as `E_INVALID_INPUT`.
        if !(0.90..=0.95).contains(&safety) {
            return Err("E_INVALID_PREFERENCES".into());
        }
        let policy = TargetSizePolicy;
        // Same edge and bitrate ceiling throughout; only the size ceiling and,
        // as a last resort, the resolution ceiling are allowed to move.
        let attempts = [
            (self.target_mb, self.max_short_edge, PresetTier::Exact),
            (
                self.relaxed_target_mb,
                self.max_short_edge,
                PresetTier::RelaxedSize,
            ),
            (self.relaxed_target_mb, 0, PresetTier::RelaxedSize),
        ];

        let mut last: Option<CalculationPlan> = None;
        for (target_mb, max_short_edge, tier) in attempts {
            let preferences = PlanningPreferences {
                max_short_edge,
                ..self.preferences()
            };
            let plan = policy.plan_with_preferences(
                input,
                u64::from(target_mb) * 1_000_000,
                safety,
                &preferences,
            )?;
            if plan.is_infeasible {
                last = Some(plan);
                continue;
            }
            let tier = if tier == PresetTier::Exact && plan.warning_message.is_some() {
                // LOW_QUALITY means the budget only afforded a smaller rung.
                // ALREADY_WITHIN_LIMIT is a pass-through, not a downgrade.
                if plan.warning_message.as_deref() == Some("LOW_QUALITY") {
                    PresetTier::ReducedQuality
                } else {
                    tier
                }
            } else {
                tier
            };
            return Ok(PresetPlan {
                tier,
                effective_target_mb: target_mb,
                plan,
            });
        }

        Ok(PresetPlan {
            tier: PresetTier::Unsatisfiable,
            effective_target_mb: self.relaxed_target_mb,
            // `attempts` is never empty, so a plan exists.
            plan: last.expect("at least one planning attempt runs"),
        })
    }
}

#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct PresetPlan {
    pub tier: PresetTier,
    /// The size actually used. Differs from the preset's `target_mb` when the
    /// tier is `RelaxedSize`, so the caller can show the real number.
    pub effective_target_mb: u32,
    pub plan: CalculationPlan,
}

#[cfg(test)]
mod tests {
    use super::*;

    fn input(duration: f64, width: u32, height: u32) -> InputMetadata {
        InputMetadata {
            duration_secs: duration,
            width,
            height,
            rotation: 0,
            bitrate_bps: 40_000_000,
            file_size_bytes: 400_000_000,
            has_audio: true,
            pixel_aspect_ratio: 1.0,
        }
    }

    #[test]
    fn every_preset_satisfies_the_encoder_contract() {
        // The encoder and `CompressionPreferences.validate` reject anything
        // outside these sets, so a bad table entry would fail at runtime.
        const FRAME_RATES: [u32; 5] = [24, 25, 30, 60, 120];
        for preset in PlatformPreset::all() {
            assert!(FRAME_RATES.contains(&preset.max_fps), "{:?}", preset.id);
            assert!(
                preset.max_short_edge == 0
                    || (preset.max_short_edge >= 240 && preset.max_short_edge % 2 == 0),
                "{:?}",
                preset.id
            );
            assert!(
                preset.bitrate_cap_bps == 0 || preset.bitrate_cap_bps >= 150_000,
                "{:?}",
                preset.id
            );
            assert!(
                preset.relaxed_target_mb >= preset.target_mb,
                "{:?}",
                preset.id
            );
            assert!(preset.target_mb > 0, "{:?}", preset.id);
            assert_eq!(preset.verified_on.len(), 10, "{:?}", preset.id);
        }
    }

    #[test]
    fn preset_ids_are_unique_and_complete() {
        let presets = PlatformPreset::all();
        let ids: Vec<PresetId> = presets.iter().map(|preset| preset.id).collect();
        let unique: std::collections::HashSet<PresetId> = ids.iter().copied().collect();
        assert_eq!(unique.len(), ids.len());

        for id in [
            PresetId::Whatsapp,
            PresetId::WhatsappHd,
            PresetId::Discord,
            PresetId::InstagramReels,
            PresetId::TikTok,
            PresetId::Facebook,
            PresetId::X,
            PresetId::YouTubeShorts,
            PresetId::Email,
        ] {
            assert!(unique.contains(&id), "{id:?} is missing");
        }
    }

    #[test]
    fn short_clip_is_capped_by_the_platform_bitrate_not_the_size() {
        // Ten seconds at 30 MB is a 24 Mbps budget; the Reels cap must win.
        let preset = PlatformPreset::by_id(PresetId::InstagramReels);
        let resolved = preset.resolve(&input(10.0, 2160, 3840), 0.93).unwrap();
        assert_eq!(resolved.tier, PresetTier::Exact);
        assert_eq!(resolved.effective_target_mb, 30);
        assert!(resolved.plan.target_video_bitrate_bps <= 5_000_000);
        // The source is portrait, so the short edge is the width, not the height.
        let short_edge = resolved.plan.target_width.min(resolved.plan.target_height);
        assert!(short_edge <= 1080, "{short_edge}");
    }

    #[test]
    fn resolution_ceiling_is_respected_in_display_pixels() {
        let preset = PlatformPreset::by_id(PresetId::Whatsapp);
        let resolved = preset.resolve(&input(60.0, 3840, 2160), 0.93).unwrap();
        let short_edge = resolved.plan.target_width.min(resolved.plan.target_height);
        assert!(short_edge <= 720, "{short_edge}");
        assert_eq!(resolved.tier, PresetTier::Exact);
    }

    #[test]
    fn unreachable_size_relaxes_instead_of_failing() {
        // Twenty minutes inside 16 MB leaves a bitrate below 100 kbps.
        let preset = PlatformPreset::by_id(PresetId::Whatsapp);
        let resolved = preset.resolve(&input(1200.0, 1920, 1080), 0.93).unwrap();
        assert_eq!(resolved.tier, PresetTier::RelaxedSize);
        assert_eq!(resolved.effective_target_mb, preset.relaxed_target_mb);
        assert!(!resolved.plan.is_infeasible);
        assert!(resolved.plan.target_video_bitrate_bps > 0);
    }

    #[test]
    fn genuinely_impossible_source_reports_unsatisfiable_without_erroring() {
        let preset = PlatformPreset::by_id(PresetId::Email);
        let resolved = preset.resolve(&input(28_800.0, 1920, 1080), 0.93).unwrap();
        assert_eq!(resolved.tier, PresetTier::Unsatisfiable);
        assert!(resolved.plan.is_infeasible);
    }

    #[test]
    fn invalid_source_is_an_error_not_a_size_problem() {
        let preset = PlatformPreset::by_id(PresetId::Whatsapp);
        let mut broken = input(60.0, 1920, 1080);
        broken.duration_secs = f64::NAN;
        assert_eq!(
            preset.resolve(&broken, 0.93).unwrap_err(),
            "E_INVALID_INPUT"
        );
    }

    #[test]
    fn invalid_safety_margin_is_a_preferences_error() {
        let preset = PlatformPreset::by_id(PresetId::Whatsapp);
        let source = input(60.0, 1920, 1080);
        for safety in [f64::NAN, 0.0, 0.89, 0.96, f64::INFINITY] {
            assert_eq!(
                preset.resolve(&source, safety).unwrap_err(),
                "E_INVALID_PREFERENCES"
            );
        }
    }

    #[test]
    fn already_small_file_passes_through_as_exact() {
        let preset = PlatformPreset::by_id(PresetId::Whatsapp);
        let mut small = input(30.0, 1280, 720);
        small.file_size_bytes = 4_000_000;
        let resolved = preset.resolve(&small, 0.93).unwrap();
        assert_eq!(resolved.tier, PresetTier::Exact);
        assert_eq!(
            resolved.plan.warning_message.as_deref(),
            Some("ALREADY_WITHIN_LIMIT")
        );
    }

    #[test]
    fn audio_is_never_dropped_by_default() {
        // `PlanningPreferences::default()` removes audio; the preset must not.
        let preset = PlatformPreset::by_id(PresetId::YouTubeShorts);
        let resolved = preset.resolve(&input(45.0, 1080, 1920), 0.93).unwrap();
        assert!(resolved.plan.target_audio_bitrate_bps > 0);
    }
}
