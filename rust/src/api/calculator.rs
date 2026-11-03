use crate::domain::models::{CalculationPlan, InputMetadata};

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

/// Zero means accept. A positive bitrate requests another attempt. Errors never
/// permit an oversized artifact to be returned as a successful result.
pub fn verify_attempt(
    actual_bytes: u64,
    duration_secs: f64,
    plan: CalculationPlan,
    attempt: u8,
) -> Result<u32, String> {
    if !(0.90..=0.95).contains(&plan.safety_margin)
        || !(1..=2).contains(&plan.max_attempts)
        || plan.hard_limit_bytes == 0
        || actual_bytes == 0
        || !duration_secs.is_finite()
        || duration_secs <= 0.0
        || attempt == 0
    {
        return Err("E_INVALID_OUTPUT".into());
    }
    if actual_bytes <= plan.hard_limit_bytes {
        return Ok(0);
    }
    if attempt >= plan.max_attempts {
        return Err("E_TARGET_EXCEEDED".into());
    }
    let audio = plan.target_audio_bitrate_bps as f64 * duration_secs / 8.0;
    let container = (plan.hard_limit_bytes as f64 * plan.safety_margin * 0.01).max(32768.0);
    let actual_video = (actual_bytes as f64 - audio - container).max(1.0);
    let goal = (plan.hard_limit_bytes as f64 * plan.safety_margin - audio - container).max(0.0);
    let bitrate =
        (plan.target_video_bitrate_bps as f64 * (goal / actual_video).clamp(0.5, 0.98)) as u32;
    if bitrate < 150000 {
        return Err("E_TARGET_INFEASIBLE".into());
    }
    Ok(bitrate)
}

#[cfg(test)]
mod verification_tests {
    use super::*;
    fn plan() -> CalculationPlan {
        CalculationPlan {
            target_video_bitrate_bps: 1_836_160,
            target_audio_bitrate_bps: 128_000,
            target_width: 720,
            target_height: 1280,
            hard_limit_bytes: 16_000_000,
            safety_margin: 0.93,
            max_attempts: 2,
            is_infeasible: false,
            warning_message: None,
        }
    }
    #[test]
    fn accepts_only_nonempty_within_limit() {
        assert_eq!(verify_attempt(16_000_000, 60.0, plan(), 1).unwrap(), 0);
        assert!(verify_attempt(0, 60.0, plan(), 1).is_err());
        assert!(verify_attempt(16_000_001, 60.0, plan(), 2).is_err());
    }
    #[test]
    fn overshoot_reduces_video_budget() {
        let retry = verify_attempt(18_000_000, 60.0, plan(), 1).unwrap();
        assert!(retry > 0 && retry < plan().target_video_bitrate_bps);
    }
}
