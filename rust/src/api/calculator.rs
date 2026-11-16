use crate::domain::models::{CalculationPlan, InputMetadata, PlanningPreferences};
use crate::domain::{PlatformPreset, PresetId, PresetPlan};

pub fn calculate_compression_plan(
    info: InputMetadata,
    target_size_mb: f64,
    custom_k_factor: Option<f32>,
) -> Result<CalculationPlan, String> {
    use crate::domain::CompressionPolicy;
    if !target_size_mb.is_finite()
        || target_size_mb <= 0.0
        || target_size_mb * 1_000_000.0 > u64::MAX as f64
    {
        return Err("E_INVALID_TARGET".into());
    }
    crate::domain::TargetSizePolicy.plan(
        &info,
        (target_size_mb * 1_000_000.0) as u64,
        custom_k_factor
            .map(|k| (f64::from(k) * 1_000_000.0).round() / 1_000_000.0)
            .unwrap_or(0.93),
    )
}

pub fn calculate_custom_compression_plan(
    info: InputMetadata,
    target_size_mb: f64,
    custom_k_factor: Option<f32>,
    preferences: PlanningPreferences,
) -> Result<CalculationPlan, String> {
    if !target_size_mb.is_finite()
        || target_size_mb <= 0.0
        || target_size_mb * 1_000_000.0 > u64::MAX as f64
    {
        return Err("E_INVALID_TARGET".into());
    }
    crate::domain::TargetSizePolicy.plan_with_preferences(
        &info,
        (target_size_mb * 1_000_000.0) as u64,
        custom_k_factor
            .map(|k| (f64::from(k) * 1_000_000.0).round() / 1_000_000.0)
            .unwrap_or(0.93),
        &preferences,
    )
}

/// Zero means accept. A positive bitrate requests another attempt. Errors never
/// permit an oversized artifact to be returned as a successful result.
pub fn verify_attempt(
    actual_bytes: u64,
    duration_secs: f64,
    plan: CalculationPlan,
    attempt: u8,
) -> Result<u32, String> {
    use crate::domain::AttemptVerifier;
    crate::domain::HardLimitVerifier.verify(actual_bytes, duration_secs, &plan, attempt)
}

/// Every share-target preset, in picker order. The table lives in Rust so the
/// platform limits have exactly one source of truth.
pub fn platform_presets() -> Vec<PlatformPreset> {
    PlatformPreset::all()
}

/// Plan a share-target preset against a source.
///
/// A size problem is not an error: it comes back as a degraded
/// [`PresetTier`](crate::domain::presets::PresetTier) so the UI can explain the
/// trade. Only a malformed source or a bad margin returns `Err`.
pub fn resolve_platform_preset(
    info: InputMetadata,
    preset_id: PresetId,
    custom_k_factor: Option<f32>,
) -> Result<PresetPlan, String> {
    PlatformPreset::by_id(preset_id).resolve(&info, safety_margin(custom_k_factor))
}

/// Single place that turns the optional float margin into the domain's `f64`.
/// Invalid values are passed through so `resolve` reports `E_INVALID_PREFERENCES`
/// instead of being silently replaced by a default.
fn safety_margin(custom_k_factor: Option<f32>) -> f64 {
    custom_k_factor.map_or(0.93, f64::from)
}
