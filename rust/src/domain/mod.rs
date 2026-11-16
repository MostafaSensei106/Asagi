//! Pure domain modules; no platform or bridge dependencies.
pub mod contracts;
pub mod licensing;
pub mod models;
mod planning;
pub mod presets;
mod verification;
pub use contracts::{AttemptVerifier, CompressionPolicy};
pub use planning::TargetSizePolicy;
pub use presets::{PlatformPreset, PresetId, PresetPlan};
pub use verification::HardLimitVerifier;
