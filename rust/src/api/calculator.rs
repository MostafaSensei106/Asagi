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
    pub is_infeasible: bool,
    pub warning_message: Option<String>,
}

pub fn greet(api_name: String) -> String {
    format!("Hello, {api_name}!")
}

pub fn init_app() {}

pub fn calculate_compression_plan(
    info: InputMetadata,
    target_size_mb: f64,
    custom_k_factor: Option<f32>,
) -> CalculationPlan {
    let hard_limit_bytes = (target_size_mb * 1_000_000.0) as u64;

    if info.file_size_bytes <= hard_limit_bytes {
        return CalculationPlan {
            target_video_bitrate_bps: info.bitrate_bps,
            target_audio_bitrate_bps: 128_000,
            target_width: info.width,
            target_height: info.height,
            hard_limit_bytes,
            is_infeasible: false,
            warning_message: Some("Erro: Orignal file size is less than target.".into()),
        };
    }

    let k = custom_k_factor.unwrap_or(0.93);
    let total_budget_bits = hard_limit_bytes as f64 * k as f64 * 8.0;
    let total_bitrate_bps = (total_budget_bits / info.duration_secs) as u32;
    let audio_bitrate_bps = if !info.has_audio {
        0
    } else if total_bitrate_bps > 1_000_000 {
        128_000
    } else {
        64_000
    };

    let container_overhead_bps = (total_bitrate_bps as f64 * 0.01) as u32;

    let available_video_bitrate = total_bitrate_bps
        .saturating_sub(audio_bitrate_bps)
        .saturating_sub(container_overhead_bps);

    let (target_w, target_h, warning) = match available_video_bitrate {
        b if b >= 2_500_000 => (info.width, info.height, None),
        b if b >= 1_500_000 => {
            let (w, h) = scale_dimensions(info.width, info.height, 720);
            (w, h, None)
        }
        b if b >= 800_000 => {
            let (w, h) = scale_dimensions(info.width, info.height, 480);
            (w, h, None)
        }
        b if b >= 250_000 => {
            let (w, h) = scale_dimensions(info.width, info.height, 360);
            (
                w,
                h,
                Some("Quality will be low because the video is long for this file size.".into()),
            )
        }
        b if b >= 150_000 => {
            let (w, h) = scale_dimensions(info.width, info.height, 240);
            (
                w,
                h,
                Some("Very low quality (at the minimum acceptable viewing level).".into()),
            )
        }
        _ => (0, 0, None),
    };

    CalculationPlan {
        target_video_bitrate_bps: available_video_bitrate,
        target_audio_bitrate_bps: audio_bitrate_bps,
        target_width: target_w,
        target_height: target_h,
        hard_limit_bytes,
        is_infeasible: available_video_bitrate < 150_000,
        warning_message: warning,
    }
}

fn scale_dimensions(w: u32, h: u32, target_height: u32) -> (u32, u32) {
    if h <= target_height {
        return (w, h);
    };

    let aspect = w as f64 / h as f64;
    let mut new_w = (target_height as f64 * aspect) as u32;
    new_w &= !1;
    return (new_w, target_height);
}
