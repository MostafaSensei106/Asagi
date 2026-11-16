# Android device validation matrix

Run these checks on physical devices before claiming codec, HDR, or background reliability. Record the device model, Android version, codec name, source media details, target size, output size, and result for each row. Keep fixture media local; do not upload private captures.

The app's minimum supported API is 30 (`minSdk = maxOf(30, flutter.minSdkVersion)` in `android/app/build.gradle.kts`), so any row that says "current Android" pairs with API 30 as the oldest device worth testing.

| Case | Source fixture | Verify on output | Devices needed | Status |
| --- | --- | --- | --- | --- |
| SDR orientation | Portrait 90° and landscape 0° H.264 | Displayed dimensions and playback orientation match source; no double rotation | API 30 and current Android | Pending |
| HDR to SDR | HLG and PQ HEVC 10-bit | Output reports SDR/BT.709; compare colors and highlights against reference | API 29+, two vendors | Pending |
| HDR preservation | HLG and PQ HEVC 10-bit | Output remains HEVC Main10 with matching transfer; colors remain stable | API 33+, two vendors | Pending |
| Dolby Vision | Supported profiles and unsupported profile | Conversion works where base layer is decodable; preservation fails explicitly | Dolby Vision device and ordinary device | Pending |
| Audio/video sync | 5-minute clip with clap at start, middle, and end | Audio leads/lags video by no more than 50 ms at each marker | API 30 and current Android | Pending |
| VFR and SAR | Phone VFR clip; anamorphic sample (1440x1080 `pasp` 4:3) | Correct duration, frame cadence, and displayed aspect ratio; anamorphic output reports 1280x720 rather than 960x720 | Two vendors | Pending |
| Spatial audio import | E-AC-3 JOC and DTS samples | Decode or clear unsupported error; encoded output is AAC stereo | Device with codec and device without | Pending |
| Software encoder | Resolution rejected by hardware but accepted by software codec | Successful verified MP4 without changing requested dimensions | Device with both codec types | Pending |
| Faststart | Encoded MP4, including resume path | `moov` appears before `mdat`; playback begins before full download | API 30 and current Android | Pending |
| Thermal and storage | 20-minute 4K source; nearly full storage | No corrupted published output; clear error on low space; record speed and temperature | Midrange and flagship | Pending |
| Process death | Kill app during export, then relaunch | Interrupted workspace cleaned; no partial file in history | API 30 and current Android | Pending |

For each case, save the command/output of `adb shell dumpsys media.codec`, inspect the output with `ffprobe` or MediaInfo, and record a screen capture or playback observation. The app's size guarantee is verified by checking `actual_bytes <= target_mb * 1,000,000` on every successful result. Run the full matrix again after changing Media3, encoder selection, muxing, or timing behavior.

## Notes on SAR and VFR

- **SAR**: planning runs in display ("square pixel") space. `MetadataExtractor` reads `sar-width`/`sar-height` from the video track and reports the ratio as `pixelAspectRatio`; the planner scales display dimensions instead of stored dimensions, so a 1440x1080 source with `pasp` 4:3 plans to 1280x720, not 960x720. Encoder output is square-pixel, so no SAR has to be written back into the MP4.
- **VFR**: no planner change is needed. The bitrate budget is bytes over duration, resolution selection uses dimensions only, and frame cadence is governed by `FrameDropEffect`, which is timestamp-driven and therefore already correct for variable-rate sources. The matrix row checks that cadence is preserved, not that a variable-rate flag exists.
