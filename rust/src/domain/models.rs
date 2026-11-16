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
    /// Sample aspect ratio: horizontal stretch applied to non-square pixels.
    /// `1.0` means square pixels, so the storage size is also the display size.
    #[serde(default = "square_pixels")]
    pub pixel_aspect_ratio: f64,
}

fn square_pixels() -> f64 {
    1.0
}

impl InputMetadata {
    /// Width in display pixels once non-square pixels are stretched horizontally.
    pub fn display_width(&self) -> f64 {
        self.width as f64 * self.pixel_aspect_ratio
    }

    /// Short edge in display pixels. Every planning limit is expressed in
    /// displayed pixels, so anamorphic sources are compared after the stretch.
    pub fn display_short_edge(&self) -> f64 {
        self.display_width().min(self.height as f64)
    }
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

#[derive(Debug, Clone, Default, Serialize, Deserialize)]
pub struct PlanningPreferences {
    /// Apply selected transforms even when the source is already under the cap.
    pub force_encode: bool,
    /// Zero selects the resolution automatically.
    pub max_short_edge: u32,
    /// -1 selects audio automatically; zero removes it.
    pub audio_bitrate_bps: i32,
    /// Zero selects the bitrate automatically.
    pub video_bitrate_ceiling_bps: u32,
}
