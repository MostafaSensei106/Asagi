pub mod calculator;

#[derive(Debug, Clone)]
pub struct LoyaltyStatus {
    pub is_active: bool,
    pub consecutive_months: u32,
    pub current_discount_percent: u8,
    pub next_month_discount_percent: u8,
    pub is_winback_eligible: bool,
}

pub fn verify_subscription_receipt(
    original_json: String,
    signature_bytes: Vec<u8>,
    loyalty_token: Option<String>,
) -> Result<LoyaltyStatus, String> {
    let public_key = option_env!("ASAGI_PLAY_RSA_PUBLIC_KEY_PEM")
        .filter(|key| !key.trim().is_empty())
        .ok_or_else(|| "E_PRO_SUBSCRIPTION_REQUIRED".to_owned())?;
    let purchase = crate::domain::licensing::verify_google_play_purchase(
        &original_json,
        &signature_bytes,
        public_key.as_bytes(),
    )
    .map_err(|_| "E_PRO_SUBSCRIPTION_REQUIRED".to_owned())?;
    let value: serde_json::Value = serde_json::from_str(&original_json)
        .map_err(|_| "E_PRO_SUBSCRIPTION_REQUIRED".to_owned())?;
    let active = value.get("productId").and_then(serde_json::Value::as_str)
        == Some("asagi_pro_monthly")
        && value
            .get("purchaseState")
            .and_then(serde_json::Value::as_i64)
            == Some(0);
    // Play's client signature proves the initial purchase only; it does not
    // prove renewal history. Never infer renewed months from the device clock.
    let months = if let Some(token) = loyalty_token {
        let loyalty_key = option_env!("ASAGI_LOYALTY_RSA_PUBLIC_KEY_PEM")
            .filter(|key| !key.trim().is_empty())
            .ok_or_else(|| "E_LOYALTY_RECEIPT_INVALID".to_owned())?;
        crate::domain::licensing::verify_loyalty_token(&token, &purchase, loyalty_key.as_bytes())
            .map_err(|_| "E_LOYALTY_RECEIPT_INVALID".to_owned())?
    } else {
        0
    };
    Ok(LoyaltyStatus {
        is_active: active,
        consecutive_months: months,
        current_discount_percent: crate::domain::licensing::discount_percent(months),
        next_month_discount_percent: crate::domain::licensing::discount_percent(months + 1),
        is_winback_eligible: !active,
    })
}

/// Decode and filter video into the streaming `.zf` fallback staging format.
/// The file is video-only (NV12 with per-frame microsecond PTS); native code
/// must preserve/extract any audio from `input_path` separately.
pub fn stage_fallback_video(
    input_path: String,
    staged_path: String,
    output_width: u32,
    output_height: u32,
    max_fps: u32,
    tone_map_hdr: bool,
) -> Result<u64, String> {
    #[cfg(all(
        target_os = "android",
        any(target_arch = "arm", target_arch = "aarch64", target_arch = "x86_64")
    ))]
    {
        crate::infrastructure::ffmpeg_decoder::stage_video_to_file(
            &input_path,
            std::path::Path::new(&staged_path),
            crate::infrastructure::ffmpeg_decoder::DecodeFilterOptions {
                output_width,
                output_height,
                max_fps,
                tone_map_hdr,
                output_layout: crate::infrastructure::ffmpeg_decoder::RawFrameLayout::Nv12,
            },
        )
    }
    #[cfg(not(all(
        target_os = "android",
        any(target_arch = "arm", target_arch = "aarch64", target_arch = "x86_64")
    )))]
    {
        let _ = (
            input_path,
            staged_path,
            output_width,
            output_height,
            max_fps,
            tone_map_hdr,
        );
        Err("E_ANDROID_REQUIRED".into())
    }
}
