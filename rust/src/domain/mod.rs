//! Pure domain modules; no platform or bridge dependencies.
pub mod contracts;
pub mod models;
mod planning;
mod verification;
pub use contracts::{AttemptVerifier, CompressionPolicy};
pub use planning::TargetSizePolicy;
pub use verification::HardLimitVerifier;
