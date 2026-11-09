use crate::domain::models::{CalculationPlan, InputMetadata, PlanningPreferences};

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
