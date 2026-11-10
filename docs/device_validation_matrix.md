# Android device validation matrix

Run these checks on physical devices before claiming codec, HDR, or background reliability. Record the device model, Android version, codec name, source media details, target size, output size, and result for each row. Keep fixture media local; do not upload private captures.

| Case | Source fixture | Verify on output | Devices needed | Status |
| --- | --- | --- | --- | --- |
| SDR orientation | Portrait 90° and landscape 0° H.264 | Displayed dimensions and playback orientation match source; no double rotation | API 26 and current Android | Pending |
| HDR to SDR | HLG and PQ HEVC 10-bit | Output reports SDR/BT.709; compare colors and highlights against reference | API 29+, two vendors | Pending |
| HDR preservation | HLG and PQ HEVC 10-bit | Output remains HEVC Main10 with matching transfer; colors remain stable | API 33+, two vendors | Pending |
| Dolby Vision | Supported profiles and unsupported profile | Conversion works where base layer is decodable; preservation fails explicitly | Dolby Vision device and ordinary device | Pending |
| Audio/video sync | 5-minute clip with clap at start, middle, and end | Audio leads/lags video by no more than 100 ms at each marker | API 26 and current Android | Pending |
| VFR and SAR | Phone VFR clip; anamorphic sample | Correct duration, frame cadence, and displayed aspect ratio | Two vendors | Pending |
| Spatial audio import | E-AC-3 JOC and DTS samples | Decode or clear unsupported error; encoded output is AAC stereo | Device with codec and device without | Pending |
| Software encoder | Resolution rejected by hardware but accepted by software codec | Successful verified MP4 without changing requested dimensions | Device with both codec types | Pending |
| Faststart | Encoded MP4, including resume path | `moov` appears before `mdat`; playback begins before full download | API 26 and current Android | Pending |
| Thermal and storage | 20-minute 4K source; nearly full storage | No corrupted published output; clear error on low space; record speed and temperature | Midrange and flagship | Pending |
| Process death | Kill app during export, then relaunch | Interrupted workspace cleaned; no partial file in history | API 26 and current Android | Pending |

For each case, save the command/output of `adb shell dumpsys media.codec`, inspect the output with `ffprobe` or MediaInfo, and record a screen capture or playback observation. The app's size guarantee is verified by checking `actual_bytes <= target_mb * 1,000,000` on every successful result. Run the full matrix again after changing Media3, encoder selection, muxing, or timing behavior.
