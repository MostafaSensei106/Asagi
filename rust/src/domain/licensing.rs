//! Offline verification and loyalty policy.
//!
//! The signed payload binds all timestamps and the purchase token together.
//! A Google Play purchase signature covers `originalJson`; it does not cover
//! an independently supplied renewal timestamp. The caller must therefore
//! provide a signed entitlement envelope when renewal history is required.

use ed25519_dalek::{Signature as Ed25519Signature, Verifier as _, VerifyingKey};
use rsa::{pkcs1::DecodeRsaPublicKey, pkcs8::DecodePublicKey, Pkcs1v15Sign, RsaPublicKey};
use serde::{Deserialize, Serialize};
use sha1::{Digest, Sha1};

use super::presets::PresetId;

const MILLIS_PER_DAY: i64 = 86_400_000;

#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
pub struct LoyaltyReceipt {
    pub purchase_token: String,
    pub start_time_millis: i64,
    pub latest_renewal_millis: i64,
    /// Raw signature bytes. Google Play's base64 signature must be decoded
    /// before it is passed here.
    pub signature_bytes: Vec<u8>,
}

#[derive(Debug, Clone, Copy, PartialEq, Eq)]
pub enum SignatureScheme {
    RsaPkcs1Sha1,
    Ed25519,
}

#[derive(Debug, Clone, PartialEq, Eq)]
pub enum LicensingError {
    InvalidReceipt,
    InvalidPublicKey,
    InvalidSignature,
    ProRequired,
}

/// Public keys are injected so release builds can provide their Play Console
/// key while tests can use a dedicated Ed25519 key. The supplied key is never
/// inferred from the receipt.
pub fn verify_receipt(
    receipt: &LoyaltyReceipt,
    public_key: &[u8],
    scheme: SignatureScheme,
) -> Result<(), LicensingError> {
    if receipt.purchase_token.trim().is_empty()
        || receipt.start_time_millis < 0
        || receipt.latest_renewal_millis < receipt.start_time_millis
    {
        return Err(LicensingError::InvalidReceipt);
    }
    let payload = signed_payload(receipt);
    match scheme {
        SignatureScheme::RsaPkcs1Sha1 => {
            let key = parse_rsa_public_key(public_key)?;
            let digest = Sha1::digest(payload.as_bytes());
            key.verify(
                Pkcs1v15Sign::new::<Sha1>(),
                &digest,
                &receipt.signature_bytes,
            )
            .map_err(|_| LicensingError::InvalidSignature)
        }
        SignatureScheme::Ed25519 => {
            let key_bytes: [u8; 32] = public_key
                .try_into()
                .map_err(|_| LicensingError::InvalidPublicKey)?;
            let key = VerifyingKey::from_bytes(&key_bytes)
                .map_err(|_| LicensingError::InvalidPublicKey)?;
            let signature = Ed25519Signature::from_slice(&receipt.signature_bytes)
                .map_err(|_| LicensingError::InvalidSignature)?;
            key.verify(payload.as_bytes(), &signature)
                .map_err(|_| LicensingError::InvalidSignature)
        }
    }
}

/// Verify the exact `originalJson` and decoded signature returned by Play
/// Billing. Renewal timestamps are intentionally not inferred from this
/// payload; they require a separately signed entitlement envelope.
pub fn verify_google_play_purchase(
    original_json: &str,
    signature_bytes: &[u8],
    play_rsa_public_key: &[u8],
) -> Result<GooglePlayPurchase, LicensingError> {
    let key = parse_rsa_public_key(play_rsa_public_key)?;
    let digest = Sha1::digest(original_json.as_bytes());
    key.verify(Pkcs1v15Sign::new::<Sha1>(), &digest, signature_bytes)
        .map_err(|_| LicensingError::InvalidSignature)?;

    let value: serde_json::Value =
        serde_json::from_str(original_json).map_err(|_| LicensingError::InvalidReceipt)?;
    let purchase_token = value
        .get("purchaseToken")
        .and_then(serde_json::Value::as_str)
        .filter(|token| !token.trim().is_empty())
        .ok_or(LicensingError::InvalidReceipt)?
        .to_owned();
    let start_time_millis = value
        .get("purchaseTime")
        .and_then(serde_json::Value::as_i64)
        .filter(|time| *time >= 0)
        .ok_or(LicensingError::InvalidReceipt)?;
    Ok(GooglePlayPurchase {
        purchase_token,
        start_time_millis,
        original_json: original_json.to_owned(),
    })
}

fn parse_rsa_public_key(encoded: &[u8]) -> Result<RsaPublicKey, LicensingError> {
    let parse_der = |der: &[u8]| {
        RsaPublicKey::from_public_key_der(der).or_else(|_| RsaPublicKey::from_pkcs1_der(der))
    };
    if let Ok(key) = parse_der(encoded) {
        return Ok(key);
    }
    let text = std::str::from_utf8(encoded).map_err(|_| LicensingError::InvalidPublicKey)?;
    let body = text
        .lines()
        .filter(|line| !line.trim_start().starts_with("-----"))
        .collect::<String>();
    let der = decode_base64(body.as_bytes()).ok_or(LicensingError::InvalidPublicKey)?;
    parse_der(&der).map_err(|_| LicensingError::InvalidPublicKey)
}

fn decode_base64(input: &[u8]) -> Option<Vec<u8>> {
    let mut output = Vec::with_capacity(input.len() * 3 / 4);
    let mut accumulator = 0_u32;
    let mut bits = 0_u8;
    let mut padding = false;
    for byte in input
        .iter()
        .copied()
        .filter(|byte| !byte.is_ascii_whitespace())
    {
        let value = match byte {
            b'A'..=b'Z' => byte - b'A',
            b'a'..=b'z' => byte - b'a' + 26,
            b'0'..=b'9' => byte - b'0' + 52,
            b'+' => 62,
            b'/' => 63,
            b'=' => {
                padding = true;
                continue;
            }
            _ => return None,
        };
        if padding {
            return None;
        }
        accumulator = (accumulator << 6) | u32::from(value);
        bits += 6;
        if bits >= 8 {
            bits -= 8;
            output.push(((accumulator >> bits) & 0xff) as u8);
        }
    }
    if output.is_empty() || !matches!(bits, 0 | 2 | 4) {
        return None;
    }
    Some(output)
}

#[derive(Debug, Clone, PartialEq, Eq)]
pub struct GooglePlayPurchase {
    pub purchase_token: String,
    pub start_time_millis: i64,
    pub original_json: String,
}

/// Verify a separately signed renewal envelope and bind it to the Play receipt.
/// `loyalty_token` is JSON encoded [`LoyaltyReceipt`] with the raw signature
/// bytes represented as a JSON byte array.
pub fn verify_loyalty_token(
    loyalty_token: &str,
    purchase: &GooglePlayPurchase,
    public_key: &[u8],
) -> Result<u32, LicensingError> {
    let receipt: LoyaltyReceipt =
        serde_json::from_str(loyalty_token).map_err(|_| LicensingError::InvalidReceipt)?;
    if receipt.purchase_token != purchase.purchase_token
        || receipt.start_time_millis != purchase.start_time_millis
    {
        return Err(LicensingError::InvalidReceipt);
    }
    verify_receipt(&receipt, public_key, SignatureScheme::RsaPkcs1Sha1)?;
    consecutive_months(receipt.start_time_millis, receipt.latest_renewal_millis)
}

/// Stable, unambiguous bytes to be signed by the entitlement issuer.
/// Length-prefixing the token prevents separator injection.
pub fn signed_payload(receipt: &LoyaltyReceipt) -> String {
    format!(
        "asagi-entitlement-v1\n{}:{}\n{}\n{}",
        receipt.purchase_token.len(),
        receipt.purchase_token,
        receipt.start_time_millis,
        receipt.latest_renewal_millis,
    )
}

/// Number of complete calendar months between the signed start and renewal
/// timestamps. This uses UTC calendar anniversaries and never reads device time.
pub fn consecutive_months(
    start_time_millis: i64,
    latest_renewal_millis: i64,
) -> Result<u32, LicensingError> {
    if start_time_millis < 0 || latest_renewal_millis < start_time_millis {
        return Err(LicensingError::InvalidReceipt);
    }
    let start_days = start_time_millis / MILLIS_PER_DAY;
    let start_time_of_day = start_time_millis % MILLIS_PER_DAY;
    let renewal_days = latest_renewal_millis / MILLIS_PER_DAY;
    let (start_year, start_month, start_day) = civil_from_days(start_days);
    let (renewal_year, renewal_month, _) = civil_from_days(renewal_days);
    let mut months = (renewal_year - start_year) * 12 + renewal_month as i64 - start_month as i64;
    if months < 0 {
        return Err(LicensingError::InvalidReceipt);
    }
    let anniversary_month = start_month as i64 + months;
    let anniversary_year = start_year + (anniversary_month - 1).div_euclid(12);
    let anniversary_month = (anniversary_month - 1).rem_euclid(12) as u32 + 1;
    let anniversary_day = start_day.min(days_in_month(anniversary_year, anniversary_month));
    let anniversary_days = days_from_civil(anniversary_year, anniversary_month, anniversary_day);
    let anniversary = anniversary_days
        .checked_mul(MILLIS_PER_DAY)
        .and_then(|millis| millis.checked_add(start_time_of_day))
        .ok_or(LicensingError::InvalidReceipt)?;
    if latest_renewal_millis < anniversary {
        months -= 1;
    }
    u32::try_from(months).map_err(|_| LicensingError::InvalidReceipt)
}

pub fn discount_percent(consecutive_months: u32) -> u8 {
    (consecutive_months.saturating_mul(2)).min(30) as u8
}

pub fn next_month_price_cents(base_price_cents: u64, months: u32) -> u64 {
    let discount = u64::from(discount_percent(months));
    base_price_cents.saturating_mul(100 - discount) / 100
}

pub fn preset_requires_pro(preset_id: Option<PresetId>, is_custom: bool) -> bool {
    is_custom || matches!(preset_id, Some(PresetId::Discord | PresetId::YouTubeShorts))
}

pub fn authorize_plan(is_pro_only: bool, subscription_active: bool) -> Result<(), LicensingError> {
    if is_pro_only && !subscription_active {
        return Err(LicensingError::ProRequired);
    }
    Ok(())
}

pub fn authorize_preset_plan(
    preset_id: Option<PresetId>,
    is_custom: bool,
    subscription_active: bool,
) -> Result<(), LicensingError> {
    authorize_plan(
        preset_requires_pro(preset_id, is_custom),
        subscription_active,
    )
}

/// Fail-closed plan gate used by FFI and unit tests with an injected verifier key.
pub fn authorize_signed_preset_plan(
    preset_id: Option<PresetId>,
    is_custom: bool,
    receipt: Option<&LoyaltyReceipt>,
    public_key: &[u8],
    scheme: SignatureScheme,
) -> Result<(), LicensingError> {
    if !preset_requires_pro(preset_id, is_custom) {
        return Ok(());
    }
    let receipt = receipt.ok_or(LicensingError::ProRequired)?;
    verify_receipt(receipt, public_key, scheme)
}

// Howard Hinnant's Gregorian date conversion, with Unix day zero as epoch.
fn civil_from_days(days: i64) -> (i64, u32, u32) {
    let z = days + 719_468;
    let era = z.div_euclid(146_097);
    let doe = z - era * 146_097;
    let yoe = (doe - doe / 1_460 + doe / 36_524 - doe / 146_096) / 365;
    let mut year = yoe + era * 400;
    let doy = doe - (365 * yoe + yoe / 4 - yoe / 100);
    let mp = (5 * doy + 2) / 153;
    let day = doy - (153 * mp + 2) / 5 + 1;
    let month = mp + if mp < 10 { 3 } else { -9 };
    year += i64::from(month <= 2);
    (year, month as u32, day as u32)
}

fn days_from_civil(year: i64, month: u32, day: u32) -> i64 {
    let year = year - i64::from(month <= 2);
    let era = year.div_euclid(400);
    let yoe = year - era * 400;
    let month = month as i64;
    let doy = (153 * (month + if month > 2 { -3 } else { 9 }) + 2) / 5 + day as i64 - 1;
    let doe = yoe * 365 + yoe / 4 - yoe / 100 + doy;
    era * 146_097 + doe - 719_468
}

fn days_in_month(year: i64, month: u32) -> u32 {
    match month {
        2 if year % 4 == 0 && (year % 100 != 0 || year % 400 == 0) => 29,
        2 => 28,
        4 | 6 | 9 | 11 => 30,
        _ => 31,
    }
}

#[cfg(test)]
mod tests {
    use ed25519_dalek::{Signer, SigningKey};

    use super::*;

    #[test]
    fn loyalty_months_use_calendar_anniversaries_and_no_device_clock() {
        let jan_31 = 1_706_659_200_000_i64; // 2024-01-31T00:00:00Z
        let feb_28 = 1_709_078_400_000_i64; // 2024-02-28T00:00:00Z
        let feb_29 = 1_709_164_800_000_i64; // 2024-02-29T00:00:00Z
        assert_eq!(consecutive_months(jan_31, feb_28), Ok(0));
        assert_eq!(consecutive_months(jan_31, feb_29), Ok(1));
        assert_eq!(discount_percent(15), 30);
        assert_eq!(next_month_price_cents(1_000, 3), 940);
    }

    #[test]
    fn ed25519_signature_binds_purchase_token_and_both_timestamps() {
        let signing_key = SigningKey::from_bytes(&[7_u8; 32]);
        let mut receipt = LoyaltyReceipt {
            purchase_token: "play-token".into(),
            start_time_millis: 1_700_000_000_000,
            latest_renewal_millis: 1_710_000_000_000,
            signature_bytes: Vec::new(),
        };
        receipt.signature_bytes = signing_key
            .sign(signed_payload(&receipt).as_bytes())
            .to_bytes()
            .to_vec();
        let public_key = signing_key.verifying_key().to_bytes();

        assert_eq!(
            verify_receipt(&receipt, &public_key, SignatureScheme::Ed25519),
            Ok(())
        );

        receipt.latest_renewal_millis += 1;
        assert_eq!(
            verify_receipt(&receipt, &public_key, SignatureScheme::Ed25519),
            Err(LicensingError::InvalidSignature)
        );
    }

    #[test]
    fn pro_preset_policy_rejects_inactive_subscriptions() {
        assert_eq!(
            authorize_preset_plan(Some(PresetId::Discord), false, false),
            Err(LicensingError::ProRequired)
        );
        assert_eq!(
            authorize_preset_plan(Some(PresetId::Discord), false, true),
            Ok(())
        );
        assert_eq!(
            authorize_preset_plan(None, true, false),
            Err(LicensingError::ProRequired)
        );
        assert_eq!(
            authorize_preset_plan(Some(PresetId::Whatsapp), false, false),
            Ok(())
        );
    }

    #[test]
    fn custom_and_youtube_short_require_signed_receipt() {
        let key = ed25519_dalek::SigningKey::from_bytes(&[9_u8; 32]);
        let public = key.verifying_key().to_bytes();
        for (preset, custom) in [(Some(PresetId::YouTubeShorts), false), (None, true)] {
            assert_eq!(
                authorize_signed_preset_plan(
                    preset,
                    custom,
                    None,
                    &public,
                    SignatureScheme::Ed25519
                ),
                Err(LicensingError::ProRequired),
            );
            let mut receipt = LoyaltyReceipt {
                purchase_token: "test-token".into(),
                start_time_millis: 1_700_000_000_000,
                latest_renewal_millis: 1_700_000_000_000,
                signature_bytes: Vec::new(),
            };
            receipt.signature_bytes = key
                .sign(signed_payload(&receipt).as_bytes())
                .to_bytes()
                .to_vec();
            assert_eq!(
                authorize_signed_preset_plan(
                    preset,
                    custom,
                    Some(&receipt),
                    &public,
                    SignatureScheme::Ed25519
                ),
                Ok(()),
            );
            receipt.signature_bytes[0] ^= 1;
            assert_eq!(
                authorize_signed_preset_plan(
                    preset,
                    custom,
                    Some(&receipt),
                    &public,
                    SignatureScheme::Ed25519
                ),
                Err(LicensingError::InvalidSignature),
            );
        }
    }

    #[test]
    fn loyalty_discount_progresses_by_two_percent_to_thirty() {
        for month in 0..=15 {
            assert_eq!(discount_percent(month), (month * 2).min(30) as u8);
        }
        assert_eq!(discount_percent(30), 30);
    }
}
