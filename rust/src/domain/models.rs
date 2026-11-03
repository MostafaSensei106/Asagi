use serde::{Deserialize, Serialize};

#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct InputMetadata {
    pub duration_secs: f64,
    pub width: u32,
    pub height: u32,
    pub rotation: u32,
    pub bitrate_bps: u32,
    pub file_size_bytes: u64,
    pub has_audio: bool,
}

#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct CalculationPlan {
    pub target_video_bitrate_bps: u32,
    pub target_audio_bitrate_bps: u32,
    pub target_width: u32,
    pub target_height: u32,
    pub hard_limit_bytes: u64,
    pub safety_margin: f64,
    pub max_attempts: u8,
    pub is_infeasible: bool,
    pub warning_message: Option<String>,
}
