use super::contracts::AttemptVerifier;
use super::models::CalculationPlan;

pub struct HardLimitVerifier;
impl AttemptVerifier for HardLimitVerifier {
    fn verify(
        &self,
        actual_bytes: u64,
        duration_secs: f64,
        plan: &CalculationPlan,
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
        let reserved = plan.target_audio_bitrate_bps as f64 * duration_secs / 8.0
            + (plan.hard_limit_bytes as f64 * plan.safety_margin * 0.01).max(32768.0);
        let goal = plan.hard_limit_bytes as f64 * plan.safety_margin - reserved;
        if goal <= 0.0 {
            return Err("E_TARGET_INFEASIBLE".into());
        }
        let actual_video = (actual_bytes as f64 - reserved).max(1.0);
        let bitrate =
            (plan.target_video_bitrate_bps as f64 * (goal / actual_video).clamp(0.5, 0.98)) as u32;
        if bitrate < 150000 {
            return Err("E_TARGET_INFEASIBLE".into());
        }
        Ok(bitrate)
    }
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
        assert_eq!(
            HardLimitVerifier
                .verify(16_000_000, 60.0, &plan(), 1)
                .unwrap(),
            0
        );
        assert!(HardLimitVerifier.verify(0, 60.0, &plan(), 1).is_err());
        assert!(HardLimitVerifier
            .verify(16_000_001, 60.0, &plan(), 2)
            .is_err());
    }
    #[test]
    fn overshoot_reduces_video_budget() {
        let retry = HardLimitVerifier
            .verify(18_000_000, 60.0, &plan(), 1)
            .unwrap();
        assert!(retry > 0 && retry < plan().target_video_bitrate_bps);
    }
}
