use super::models::{CalculationPlan, InputMetadata};

pub trait CompressionPolicy {
    fn plan(
        &self,
        info: &InputMetadata,
        limit: u64,
        safety: f64,
    ) -> Result<CalculationPlan, String>;
}

pub trait AttemptVerifier {
    fn verify(
        &self,
        actual_bytes: u64,
        duration_secs: f64,
        plan: &CalculationPlan,
        attempt: u8,
    ) -> Result<u32, String>;
}
