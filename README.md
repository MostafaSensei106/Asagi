<h1 align="center">🦦 Asagi</h1>

<p align="center">
  <strong>Offline, target-size video compression for Android and iOS.</strong><br/>
  Pick a size. Hit it. Keep the best quality the budget allows.
</p>

<p align="center">
  <a href="https://flutter.dev"><img alt="Flutter" src="https://img.shields.io/badge/Flutter-stable-02569B?logo=flutter&logoColor=white"></a>
  <a href="https://dart.dev"><img alt="Dart" src="https://img.shields.io/badge/Dart-3.13%2B-0175C2?logo=dart&logoColor=white"></a>
  <a href="https://www.rust-lang.org"><img alt="Rust" src="https://img.shields.io/badge/Rust-2021-000000?logo=rust&logoColor=white"></a>
  <a href="#-platform-support"><img alt="Android" src="https://img.shields.io/badge/Android-8.0%2B-3DDC84?logo=android&logoColor=white"></a>
  <a href="#-platform-support"><img alt="iOS" src="https://img.shields.io/badge/iOS-15.0%2B-000000?logo=apple&logoColor=white"></a>
  <a href="#-license"><img alt="License" src="https://img.shields.io/badge/License-Pending-yellow"></a>
</p>

<p align="center">
  <a href="#-overview">Overview</a> ·
  <a href="#-why-asagi">Why Asagi</a> ·
  <a href="#-features">Features</a> ·
  <a href="#-how-the-size-guarantee-works">How it works</a> ·
  <a href="#-architecture">Architecture</a> ·
  <a href="#-installation">Installation</a> ·
  <a href="#-usage">Usage</a> ·
  <a href="#-api-reference">API</a> ·
  <a href="#-errors">Errors</a> ·
  <a href="#-testing">Testing</a> ·
  <a href="#-troubleshooting">Troubleshooting</a> ·
  <a href="#-roadmap">Roadmap</a>
</p>

---

## 📖 Overview

Asagi is a **fully offline video compression engine** that turns a source video into a file that fits under a hard size ceiling, the way messaging platforms actually enforce limits.

Most compressors treat a target as an approximation: you ask for 16 MB and get 17.4 MB, which WhatsApp, Discord, or an email gateway then rejects. Asagi treats the target as a **ceiling**, not an estimate. It plans a bitrate budget, encodes with the platform hardware encoder, measures the real output, and retries with a corrected bitrate if the encoder overshot. A file that exceeds the ceiling is never published as a success.

The engine is split across three layers:

| Layer | Responsibility | Technology |
| --- | --- | --- |
| **Flutter** | UI, file picking, progress, sharing, permissions | Dart |
| **Rust core** | Bitrate math, resolution ladder, retry decisions, feasibility | Rust + `flutter_rust_bridge` |
| **Native** | Metadata, hardware encode, HDR handling, pause/cancel | Media3 (Kotlin) / AVFoundation (Swift) |

Video buffers never cross the Dart or Rust boundary. Dart orchestrates; Rust decides; the platform encodes.

> **Name note:** the original v1.1 specification sometimes refers to the product as *FitVid*. This repository, package, and documentation use **Asagi** everywhere.

---

## ✨ Why Asagi

| | Asagi | `ffmpeg_kit_flutter` | `video_compress` |
| --- | --- | --- | --- |
| Hard target-size ceiling | ✅ Verified after encode | ⚠️ Manual two-pass tuning | ❌ Quality presets only |
| Retry when the encoder overshoots | ✅ One corrected retry | ❌ Manual | ❌ |
| Pure hardware encode path | ✅ Media3 / AVFoundation | ❌ Software FFmpeg | ✅ |
| App size impact | ✅ Small (no FFmpeg) | ❌ Large binaries | ✅ Small |
| HDR → SDR tone mapping | ✅ Android + iOS | ⚠️ Build-dependent | ❌ |
| HDR preservation (HEVC Main10) | ✅ With capability checks | ⚠️ Build-dependent | ❌ |
| Licensing exposure | ✅ Platform codecs only | ❌ GPL builds (x264/x265) | ✅ |
| On-device video processing | ✅ | ✅ | ✅ |
| Hard size guarantee | ✅ `actual <= limit` or error | ❌ | ❌ |

**The core promise:** if Asagi returns a path, that file is at or under the requested ceiling. If it cannot get there honestly, it throws instead of shipping an oversized file.

---

## 🚀 Features

| Area | What Asagi does |
| --- | --- |
| **Target size** | Decimal MB ceilings, 90–95% safety margin (default 93%), measured verification |
| **Quality** | Picks the highest resolution whose comfortable bitrate fits the budget |
| **Resolution ladder** | 1080p → 720p → 480p → 360p → 240p, with minimum and comfortable thresholds |
| **Audio policy** | 128 / 96 / 64 kbps AAC output; source audio is decoded by the device when re-encoding |
| **Codecs** | H.264 High + AAC-LC in MP4; HEVC Main10 only for HDR preservation |
| **Orientation** | Rotation-aware planning; dimensions are displayed pixels, applied once |
| **Frame rate** | Clamped to 1–30 fps; 60/120/240 fps sources are reduced to 30 |
| **HDR** | `toneMapToSdr` (default) or `preserve`, with output verification |
| **Already-small files** | Returned untouched, `attempts == 0`, no needless re-encode |
| **Retry** | Measures actual bytes, corrects video bitrate once, clamps the correction |
| **Controls** | Process-local `pause()`, `resume()`, `cancel()` with serialized commands |
| **Cleanup** | Marked job directories, stale-job sweep, no orphaned temp files |
| **Architecture** | Pure Dart domain, injected contracts, tests enforce dependency direction |
| **Privacy** | Video processing stays on device; optional AI model downloads use Internet permission |

---

## 📦 Project status

This repository contains the **Flutter app, compression engine, and Android/iOS native pipelines**. Device-specific media behavior still needs validation on representative hardware.

| Component | Status | Notes |
| --- | --- | --- |
| Dart domain + application core | ✅ Implemented | Planner, retry loop, controls, HDR policy |
| Rust planning/verification core | ✅ Implemented | Unit tests with `proptest` |
| Android Media3 pipeline | ✅ Implemented | H.264/H.265, tone mapping, pause/cancel |
| iOS AVFoundation pipeline | ✅ Implemented | Reader/writer graph, HDR policy, controls |
| Pigeon + FRB contracts | ✅ Generated | `pigeons/messages.dart`, `rust/src/api` |
| Engine/unit test suite | ✅ Passing | `flutter test` |
| UI, navigation, file picker | ✅ Implemented | Home, setup, progress, result, history, settings; gallery picker |
| Gallery save / share sheet | ✅ Implemented | User-triggered save and share from the result screen |
| Android foreground service | ✅ Implemented | Media processing notification while encoding; durable resume across process death is pending |
| On-device validation matrix | ⚠️ Pending | HDR color, A/V sync, encoder quirks |
| On-device AI | 🚧 Scaffolded | LiteRT-LM service adapter and assistant/settings routes; model and chat screens are placeholders |

The app starts from `lib/main.dart`; the compression engine can also be used through injected contracts (see [Usage](#-usage)).

---

## 🧮 How the size guarantee works

### 1. Budget the bytes

```text
B_total     = (S_limit × k × 8) / T
B_container = max(0.01 × B_total, (32,768 × 8) / T)
B_audio     = policy(B_total − B_container)
B_video     = B_total − B_container − B_audio
```

| Symbol | Meaning |
| --- | --- |
| `S_limit` | Hard ceiling in **decimal** bytes (`16 MB = 16,000,000`) |
| `k` | Safety margin, default **0.93** (allowed range `0.90 … 0.95`) |
| `T` | Duration in seconds |
| `B_container` | MP4 overhead reserve: 1% of total, floored at 32 KiB per file |

The source bitrate is also capped at **90%** of its original value when known; there is no point encoding above the source.

### 2. Choose resolution and audio

Audio gets tightened **before** video resolution is dropped, because audio is the cheaper concession.

| Condition | Audio |
| --- | --- |
| No audio track | `0` — no empty track is added |
| `B_total − overhead − 128k > 1,000,000` | 128 kbps |
| `B_total − overhead − 96k ≥ 400,000` | 96 kbps |
| Otherwise | 64 kbps |

Resolution is selected from the ladder in two passes: **comfortable** quality first across 1080p/720p/480p, then **minimum** quality across the full ladder. If nothing clears the minimum, the plan is marked infeasible.

| Resolution | Minimum | Comfortable (starting point) |
| --- | --- | --- |
| 1080p | 1,200,000 bps | 2,500,000 bps |
| 720p | 700,000 bps | 1,500,000 bps |
| 480p | 400,000 bps | 800,000 bps |
| 360p | 250,000 bps | 500,000 bps |
| 240p | 150,000 bps | 250,000 bps |

Asagi never upscales and always emits even dimensions. For 90°/270° rotation it swaps width and height so the native layer applies the transform exactly once.

> The "comfortable" numbers are starting points for calibration, not universal truths. The spec requires VMAF tuning against a real corpus (fast motion, static scenes, screen recordings, low light).

### 3. Verify and correct

After each encode, the engine measures the real file:

| Outcome | Decision |
| --- | --- |
| `actual ≤ hard_limit` | ✅ Accept, even if the file lands well below the ceiling (planning may already have attached `LOW_QUALITY`) |
| Over limit, attempts remain | 🔁 Retry with corrected **video-only** bitrate |
| Over limit, attempts exhausted | ❌ `E_TARGET_EXCEEDED` — never publish |

```text
factor = clamp(video_goal / video_actual, 0.5, 0.98)
next_video_bitrate = current_video_bitrate × factor
```

`max_attempts = 2` means **one correction attempt**. If the corrected bitrate would fall below **150,000 bps**, the engine fails with `E_TARGET_INFEASIBLE` instead of producing garbage.

### Worked examples

| Source | Budget | Audio | Video | Decision |
| --- | --- | --- | --- | --- |
| 60 s → 16 MB | 1,984,000 bps | 128k | 1,836,160 | 720p |
| 180 s → 8 MB | 330,667 bps | 64k | 263,360 | 360p + `LOW_QUALITY` |
| 600 s → 16 MB | 198,400 bps | 64k | 132,416 | Infeasible (below 240p floor) |
| 30 s 4K → 16 MB | 3,968,000 bps | 128k | 3,800,320 | 1080p @ 30 fps, tone-mapped if HDR |

The 180 s / 8 MB case lands on **360p with a quality warning** because the comfortable pass only considers 1080p/720p/480p. On the minimum pass, 360p is the highest rung whose 250 kbps floor fits the 263,360 bps video budget. The test suite locks that behavior in.

---

## 🏗 Architecture

### Layering

```
lib/
├── main.dart                      # Initializes services and launches AsagiApp
├── asagi_app.dart                  # Themes, localization, routing
├── modules/compression/          # App flow, Cubit, repository, screens
├── core/compression/             # Shared compression engine
│   ├── compression_engine.dart    # Public export barrel
│   ├── application/
│   │   ├── compression_engine.dart # Orchestration: inspect → plan → encode → verify
│   │   └── encoding_control.dart   # Serialized pause/resume/cancel state
│   ├── domain/
│   │   ├── contracts/             # CompressionPlanner, VideoEncoder, ArtifactStore
│   │   ├── models/                # Immutable, platform-independent models
│   │   └── policies/              # HdrPolicy
│   └── infrastructure/
│       ├── native/                # Pigeon adapter: PlatformVideoEncoder
│       ├── rust/                  # FRB adapter: RustCompressionPlanner
│       └── storage/               # FileArtifactStore
└── core/native/
    ├── pigeon_messages.g.dart     # Generated Pigeon channel types
    └── rust/                      # Generated FRB bindings

rust/src/
├── lib.rs
├── api/calculator.rs              # Thin argument conversion only
└── domain/
    ├── models.rs                  # InputMetadata, CalculationPlan, AttemptReport
    ├── contracts.rs               # CompressionPolicy trait
    ├── planning.rs                # TargetSizePolicy
    └── verification.rs            # Attempt acceptance and retry math

android/app/src/main/kotlin/com/mostafa/sensei/asagi/
├── MainActivity.kt
├── NativeVideoEngine.kt           # Pigeon + EventChannel adapter only
├── MetadataExtractor.kt           # MediaMetadataRetriever
├── contracts/VideoContracts.kt    # Platform-independent models and ports
└── media3/
    ├── AndroidHdrPolicy.kt        # HDR capability checks
    ├── Media3Configuration.kt     # Codec, scaling, tone mapping
    ├── SourceDecodeSupport.kt     # Source audio/video decoder preflight
    └── Media3VideoEncoder.kt      # Export lifetime + controls

ios/Runner/Compression/
├── VideoContracts.swift
├── AVVideoMetadataReader.swift
├── AVHdrPolicy.swift
├── AVPipelineFactory.swift
├── AVTrackPump.swift
├── AVEncodingSession.swift
├── AVFoundationVideoEncoder.swift # Facade
└── NativeVideoEngine.swift        # Channel adapter
```

Dependencies point **inward**. `domain/` and `application/` import neither Flutter, Pigeon, FRB, `dart:io`, nor any package. An architecture test fails the build if that boundary is crossed. Transport DTOs are mapped at adapter edges, which keeps the core testable with plain fakes.

### Compression flow

```
source path + targetMb + workspace
        │
        ▼
  encoder.inspect() ──────────────► VideoMetadata
        │                          (duration, size, rotation, fps, HDR, audio)
        ▼
  planner.plan()  [Rust] ────────► CompressionPlan
        │                          (video/audio bps, w×h, hard limit, warning)
        │
        ├── already under limit and no HDR conversion needed?
        │        └── return source untouched, attempts = 0
        │
        ▼
  artifacts.create(workspace) ───► job/asagi-XXXX/
        │
        ▼
  for attempt in 1..maxAttempts
        │
        ├── encoder.encode() ─────► attempt-N.mp4
        ├── HDR policy verify (if source is HDR)
        ├── measure actual bytes
        ├── planner.verify() [Rust]
        │        ├── 0   → commit + return
        │        ├── > 0 → discard, adjust video bitrate, retry
        │        └── fail after final attempt → E_TARGET_EXCEEDED
        │
        ▼
  job.dispose() (removes the job dir unless committed)
```

### Why Rust owns the math

Bitrate planning is pure arithmetic over a handful of numbers. Keeping it in Rust gives one implementation shared by both platforms, exact integer/float handling, and property-based tests. Rust never touches encoded media and never allocates video buffers; it receives metadata and returned byte counts.

### Why the native layer owns success

Only the encoder knows whether the export actually completed. Android Media3 and iOS AVFoundation report failures (unsupported HDR, no space, output move failure) that Dart cannot infer. The native layer maps those to stable error strings; Dart then decides whether a retry is meaningful.

### Job state

Conceptual lifecycle (not a persisted state machine):

```
IDLE → PLANNING → ENCODING → VERIFYING → ACCEPTED
                      │           │
                      │           └── retry → ENCODING
                      ├── PAUSED ⇄ ENCODING
                      └── CANCELLED / FAILED
```

Pause and cancel are **process-local**. They are not durable across process death. A killed app leaves a marked `.inprogress` job directory that the next launch can sweep.

---

## 📱 Platform support

| | Android | iOS |
| --- | --- | --- |
| Minimum OS | **11 / API 30** (`minSdk = maxOf(30, …)`) | **15.0** |
| Encode stack | Media3 Transformer **1.9.2** | AVAssetReader / AVAssetWriter |
| Default codec | H.264 High + AAC-LC | H.264 High + AAC-LC |
| HDR preserve | HEVC Main10, **API 33+** required | Hardware HEVC, 10-bit buffers |
| HDR → SDR | Media3 OpenGL tone mapping | AVFoundation composition to BT.709 |
| Pause/resume | Media3 resume; may restart an attempt | Reader/writer pumps stop and resume |
| Software fallback | System software codec only | None in v1 |
| Dolby Vision preserve | ❌ Explicit failure | ❌ Explicit failure |

**Not supported in v1:** cloud compression, editing (trim/merge/text), non-mobile platforms, corrupt-file repair, Dolby Vision dynamic metadata preservation, and FFmpeg/x264/x265 software encoding.

### Advanced media and spatial audio

Android decodes source tracks through codecs installed on the device. When compression is needed, its output is H.264 SDR (or HEVC Main10 for supported HDR preservation) with AAC stereo audio in MP4. Before export, the native pipeline checks that the device has decoders for every track it will process. Missing support fails early with `E_AUDIO_DECODER_UNSUPPORTED` or `E_VIDEO_DECODER_UNSUPPORTED`. Choosing **Remove audio** skips the audio check. Decoder presence does not guarantee that every profile or container will work; test actual media on the target device. If the original file is already under the size limit and no transform is requested, Asagi copies it unchanged, so its original tracks remain intact.

| Source track | Formats that the Android pipeline can import when the device provides a decoder |
| --- | --- |
| Audio | AAC, Opus, Vorbis, FLAC, AC-3, E-AC-3 / E-AC-3 JOC (Dolby Atmos), AC-4, DTS / DTS-HD, TrueHD |
| Video | H.264/AVC, H.265/HEVC, VP8, VP9, AV1, MPEG-4 Part 2, Dolby Vision when the device and Media3 can decode/tone-map its profile |

An encoded output **does not preserve Dolby Atmos objects, DTS spatial metadata, surround channels, or the original audio codec**. It is AAC stereo. Asagi does not bundle Dolby/DTS decoders or encoders, and support for importing these sources depends on the installed platform decoder and container extractor. Advanced video sources such as HEVC, VP9, and AV1 are likewise device-dependent; the current output is H.264 SDR or HEVC Main10 for supported HDR preservation. Dolby Vision dynamic metadata is not preserved.

See [Android supported media formats](https://developer.android.com/media/platform/supported-formats), [Media3 Transformer supported formats](https://developer.android.com/media/media3/transformer/supported-formats), and [Media3 sample-format limitations](https://developer.android.com/media/media3/exoplayer/supported-formats).

---

## 🛠 Installation

### Prerequisites

| Tool | Version | Why |
| --- | --- | --- |
| Flutter SDK | Stable channel | App and bindings |
| Dart SDK | `^3.13.7` | Language constraint declared in `pubspec.yaml` |
| Rust toolchain | Stable, 2021 edition | `rust_lib_asagi` |
| `flutter_rust_bridge_codegen` | **2.13.0** | Regenerating FRB bindings |
| Xcode | 15+ (deployment target 15.0) | iOS build (macOS only) |
| Android SDK + NDK | API 30+, current NDK | Android native build and LiteRT-LM runtime |
| CocoaPods | Current | iOS dependency install |

Install the Rust bridge generator once:

```bash
cargo install flutter_rust_bridge_codegen --version 2.13.0
```

Verify your environment:

```bash
flutter doctor -v
rustc --version
cargo --version
flutter_rust_bridge_codegen --version
```

### 1. Clone

```bash
git clone <your-repository-url> asagi
cd asagi
```

### 2. Install Dart dependencies

```bash
flutter pub get
```

`rust_builder/` is a local Cargokit package. It builds the Rust crate per target architecture automatically during a Flutter build; you do not run `cargo build` for app builds.

### 3. Generate bindings (only after changing contracts)

The generated files are committed. Regenerate only when you edit `pigeons/messages.dart` or the Rust API surface:

```bash
flutter_rust_bridge_codegen generate
dart run pigeon --input pigeons/messages.dart
```

- `flutter_rust_bridge.yaml` points `rust_input: crate::api`, `rust_root: rust/`, `dart_output: lib/core/native/rust`.
- Pigeon generates `lib/core/native/pigeon_messages.g.dart` and `android/.../PigeonMessages.g.kt`.

### 4. Run the analyzer and tests

```bash
flutter analyze
flutter test
cargo test --manifest-path rust/Cargo.toml
```

### 5. Build for a device

```bash
# Android (debug)
flutter run -d <android-device-id>

# iOS (debug, macOS only)
cd ios && pod install && cd ..
flutter run -d <ios-device-id>
```

`flutter run` launches the app UI. Choose a video on the home screen, set a size target, review the compression plan, and start the job. The result screen supports saving and sharing.

---

## 💻 Usage

### Basic: compress under a ceiling

```dart
import 'package:path_provider/path_provider.dart';
import 'package:asagi/core/compression/compression_engine.dart';
import 'package:asagi/core/native/pigeon_messages.g.dart';
import 'package:asagi/core/native/rust/frb_generated.dart';

Future<void> compressExample(String sourcePath) async {
  await RustLib.init(); // once per process

  final cache = await getTemporaryDirectory();

  final engine = CompressionEngine(
    planner: RustCompressionPlanner(),
    encoder: PlatformVideoEncoder(NativeMediaApi()),
    artifacts: const FileArtifactStore(),
  );

  final output = await engine.compress(
    source: sourcePath,
    targetMb: 16,
    workspacePath: cache.path,
  );

  print('path:     ${output.path}');
  print('bytes:    ${output.bytes}');
  print('attempts: ${output.attempts}');
  print('warning:  ${output.warning}');
}
```

`CompressionOutput` is either a freshly verified artifact or the original source:

| Field | Meaning |
| --- | --- |
| `path` | Verified file, or the source when `attempts == 0` |
| `bytes` | Measured size in bytes (`≤ targetMb × 1,000,000`) |
| `attempts` | Number of encode attempts; `0` means the source was already small enough |
| `warning` | `ALREADY_WITHIN_LIMIT`, `LOW_QUALITY`, or `null` |

### Progress

```dart
final encoder = PlatformVideoEncoder(NativeMediaApi());

final subscription = encoder.progress.listen(
  (value) => print('${(value * 100).toStringAsFixed(1)}%'),
);

final engine = CompressionEngine(
  planner: RustCompressionPlanner(),
  encoder: encoder,
  artifacts: const FileArtifactStore(),
);

try {
  await engine.compress(
    source: sourcePath,
    targetMb: 8,
    workspacePath: cache.path,
  );
} finally {
  await subscription.cancel();
}
```

Progress is optional: implementations expose it through `EncodingProgressSource`. Non-streaming encoders only need `VideoEncoder`. Verify resumed progress on target Android devices.

### Pause, resume, cancel

```dart
final future = engine.compress(
  source: sourcePath,
  targetMb: 8,
  workspacePath: cache.path,
);

await engine.pause();   // forward pause to the active encoder
await engine.resume();  // idempotent
await engine.cancel();  // fails the pending operation with E_CANCELLED

try {
  await future;
} on StateError catch (error) {
  print(error.message); // E_CANCELLED
}
```

Controls are serialized so they cannot race the encode loop. Calling `pause()` when idle is a no-op. A pause blocks result publication until resumed. These controls do **not** survive process termination.

### HDR

```dart
// Convert HDR to SDR (default). Also runs when the source already fits the size,
// because the user explicitly asked for conversion.
final sdr = await engine.compress(
  source: hdrSourcePath,
  targetMb: 16,
  workspacePath: cache.path,
  hdrMode: HdrMode.toneMapToSdr,
);

// Preserve HDR. Selection may force HEVC Main10 and fail on unsupported devices.
final hdr = await engine.compress(
  source: hdrSourcePath,
  targetMb: 16,
  workspacePath: cache.path,
  hdrMode: HdrMode.preserve,
);
```

`StrictHdrPolicy` verifies the output after encoding:

- `preserve` requires the output to be HDR with the same color transfer; otherwise `E_HDR_NOT_PRESERVED`.
- `toneMapToSdr` requires the output to be SDR; otherwise `E_HDR_CONVERSION_FAILED`.

A failed HDR verification discards the artifact. It can never be published as a success.

### Workspace lifecycle and cleanup

Asagi writes into `workspacePath/asagi-XXXX/attempt-N.mp4`. Ownership of a verified file transfers to the caller on commit.

```dart
// Caller responsibilities after a successful compress:
// 1. Move / share / save output.path.
// 2. Delete the containing job directory (not the file while in use).

final store = const FileArtifactStore();
final removed = await store.cleanupInterrupted(
  cache.path,
  const Duration(hours: 12),
);
print('swept $removed stale job(s)');
```

`cleanupInterrupted` only removes `asagi-*` directories containing a `.inprogress` marker older than the cutoff. It never touches unrelated cache content.

> ⚠️ When `attempts == 0`, `output.path` is the **source file**. Do not delete it as if it were a temporary artifact.

### Custom planner or encoder

Every collaboration point is an interface:

```dart
final class MyPlanner implements CompressionPlanner {
  @override
  Future<CompressionPlan> plan(VideoMetadata info, double targetMb) async {
    // ...
  }

  @override
  Future<int> verify(
    int bytes,
    double duration,
    CompressionPlan plan,
    int attempt,
  ) async {
    return 0; // 0 accepts; a positive value requests a retry at that bitrate.
  }
}
```

Swap `RustCompressionPlanner`, `PlatformVideoEncoder`, `FileArtifactStore`, or `HdrPolicy` independently. Useful for server-side tests, deterministic fixtures, or a different storage backend.

---

## 📚 API reference

### `CompressionEngine`

```dart
CompressionEngine({
  required CompressionPlanner planner,
  required VideoEncoder encoder,
  required ArtifactStore artifacts,
  HdrPolicy hdrPolicy = const StrictHdrPolicy(),
});

Future<CompressionOutput> compress({
  required String source,
  required double targetMb,
  required String workspacePath,
  HdrMode hdrMode = HdrMode.toneMapToSdr,
});

Future<void> pause();
Future<void> resume();
Future<void> cancel();
```

### Models

| Type | Fields |
| --- | --- |
| `CompressionOutput` | `String path`, `int bytes`, `int attempts`, `String? warning` |
| `CompressionPlan` | `targetVideoBitrateBps`, `targetAudioBitrateBps`, `targetWidth`, `targetHeight`, `hardLimitBytes`, `safetyMargin`, `maxAttempts`, `isInfeasible`, `warningMessage` |
| `VideoMetadata` | `durationSecs`, `width`, `height`, `rotation`, `bitrateBps`, `fileSizeBytes`, `hasAudio`, `frameRate`, `isHdr`, `colorTransfer` |
| `EncodeRequest` | `inputPath`, `outputPath`, `plan`, `frameRate`, `hdrMode` |
| `HdrMode` | `preserve`, `toneMapToSdr` |

### Contracts

| Contract | Methods |
| --- | --- |
| `CompressionPlanner` | `plan(info, targetMb)`, `verify(bytes, duration, plan, attempt)` |
| `VideoEncoder` | `inspect(path)`, `encode(request)`, `cancel()`, `pause()`, `resume()` |
| `EncodingProgressSource` | `Stream<double> get progress` |
| `ArtifactStore` | `create(workspacePath)`, `cleanupInterrupted(path, olderThan)` |
| `CompressionWorkspace` | `pathForAttempt(n)`, `measure(path)`, `discard(path)`, `commit()`, `dispose()` |
| `HdrPolicy` | `requiresConversion(source, mode)`, `verify(source, output, mode)` |

### Planner validation rules

The Rust planner rejects invalid input with `E_INVALID_INPUT` when any of these fail:

- Duration is finite and `> 0`
- Width and height are `≥ 2`
- Rotation is one of `0, 90, 180, 270`
- File size and target are non-zero
- Safety margin is within `0.90 … 0.95`

`E_INVALID_TARGET` is returned for a non-positive or otherwise unusable target. `E_INVALID_OUTPUT` is returned for an unusable measured output in verification.

---

## 🚨 Errors

Errors surface as `StateError` whose message is a stable code. Catch and map them at the UI boundary.

### Engine and policy errors (Dart)

| Code | Meaning | Recovery |
| --- | --- | --- |
| `E_BUSY` | Another compression is already running | Await or cancel the active job |
| `E_CANCELLED` | `cancel()` was requested | Treat as user action, not a failure |
| `E_TARGET_INFEASIBLE` | No resolution clears the 240p minimum | Ask for a larger target, trim, or split |
| `E_TARGET_EXCEEDED` | Still over the ceiling after the retry | Do not ship the artifact |
| `E_ENCODING` | Native encoder reported failure | Check device support and logs |
| `E_HDR_NOT_PRESERVED` | `preserve` produced SDR or changed transfer | Use `toneMapToSdr` or another device |
| `E_HDR_CONVERSION_FAILED` | `toneMapToSdr` still produced HDR | Treat device as unsupported |

### Rust validation errors

| Code | Meaning |
| --- | --- |
| `E_INVALID_INPUT` | Metadata failed planner preconditions |
| `E_INVALID_TARGET` | Target size is zero/negative/unusable |
| `E_INVALID_OUTPUT` | Verification input is not measurable |

### Native errors

| Code | Platform | Meaning |
| --- | --- | --- |
| `E_NO_SPACE` | Android | Insufficient disk for the export or resume checkpoints |
| `E_OUTPUT_MOVE` | Android | Output could not be moved into place |
| `E_HDR_UNSUPPORTED` | Both | Device cannot preserve the requested HDR format |
| `E_HDR_DYNAMIC_METADATA_UNSUPPORTED` | Both | Dolby Vision dynamic metadata cannot be preserved |
| `E_AUDIO_DECODER_UNSUPPORTED` | Android | No installed decoder for a source audio track such as E-AC-3 JOC or DTS |
| `E_VIDEO_DECODER_UNSUPPORTED` | Android | No installed decoder for the source video codec/profile |
| `E_ENCODING` | Both | Encoder start/run failure |

### Names reserved by the UI contract

The v1.1 spec reserves these codes for UI mapping. They are not all emitted by the current engine; do not assume a code is implemented just because it appears in the spec:

`E_NO_VIDEO_TRACK`, `E_CORRUPT_INPUT`, `E_UNSUPPORTED_INPUT`, `E_PERMISSION_DENIED`, `E_ENCODER_INIT`, `E_ENCODER_RUNTIME`, `E_SIZE_EXCEEDED`, `E_THERMAL`, `E_INTERRUPTED`, `E_SAVE_FAILED`.

---

## 🧪 Testing

```bash
# Dart unit + architecture tests
flutter test

# Static analysis
flutter analyze

# Rust policy tests (property-based)
cargo test --manifest-path rust/Cargo.toml
```

### What the suite proves

| Test file | Guarantee |
| --- | --- |
| `test/compression_engine_test.dart` | Oversize attempts are deleted, retries return verified output, exhausted retries remove partial files |
| `test/compression_controls_test.dart` | Pause/resume reach the encoder, are idempotent, block publication, cancel fails cleanly |
| `test/compression_controls_test.dart` | HDR mode reaches the encoder; failed preservation/conversion cannot publish; explicit SDR conversion runs even when the source fits |
| `test/compression_architecture_test.dart` | `domain/` and `application/` never import `infrastructure/`, `core/native`, packages, or `dart:io` |
| `test/widget_test.dart` | Pigeon codec round-trips a native compress request (video bitrate, height, frame rate, HDR mode) |
| `rust/src/domain/planning.rs` | Budget math, audio tiers, ladder selection, rotation swap, 180 s/8 MB warning case |
| `rust/src/domain/verification.rs` | Accept/retry/fail decisions, clamp range, 150 kbps floor |

The Dart tests use injected fakes, so they run without a device, emulator, or native build.

### Not covered by automation

Native HDR color accuracy, encoder support differences, A/V sync, orientation on real captures, thermal behavior, and long-video memory pressure all require device validation. The spec's acceptance matrix is the reference for that work.

---

## 🗂 Project configuration

### Versions

| Component | Version |
| --- | --- |
| Package version | `1.0.0+1` |
| Dart SDK | `^3.13.7` |
| `flutter_rust_bridge` | `2.13.0` |
| `pigeon` (dev) | `29.1.0` |
| Media3 | `1.9.2` |
| Android `minSdk` | `maxOf(30, flutter.minSdkVersion)` |
| iOS deployment target | `15.0` |

### Tuning knobs

| Knob | Default | Where | Effect |
| --- | --- | --- | --- |
| Safety margin `k` | `0.93` | Caller/planner | Lower = safer size, lower quality. Valid `0.90–0.95` |
| Max attempts | `2` | `TargetSizePolicy` | One encode + one correction |
| Retry clamp | `0.5–0.98` | `verification.rs` | Bounds correction per attempt |
| Video floor | `150,000 bps` | `verification.rs` | Below this, fail as infeasible |
| Frame rate clamp | `1–30 fps` | Dart request | Drops 60/120/240 fps sources |
| Container reserve | `max(1%, 32 KiB)` | `planning.rs` | MP4 overhead |
| Stale job age | `12 h` | `cleanupInterrupted` call | How old an interrupted job must be |
| Max resolution | `1080p` | Ladder | No 1440p/4K output in v1 |

### Generated code

Do not edit generated files by hand:

- `lib/core/native/pigeon_messages.g.dart`
- `lib/core/native/rust/**` (FRB)
- `android/.../PigeonMessages.g.kt`
- `rust/src/frb_generated.rs`

Edit the source contract (`pigeons/messages.dart`, `rust/src/api/`) and regenerate.

---

## 🩺 Troubleshooting

<details>
<summary><strong>Rust crate fails to build / missing target</strong></summary>

Cargokit builds the crate per architecture. If a target is missing:

```bash
rustup target list --installed
rustup target add aarch64-linux-android armv7-linux-androideabi x86_64-linux-android
```

For iOS, ensure Xcode command-line tools are selected:

```bash
sudo xcode-select -s /Applications/Xcode.app/Contents/Developer
```
</details>

<details>
<summary><strong>Generated bindings are out of date</strong></summary>

Symptoms: analyzer errors about missing FRB methods, or a Pigeon `MissingPluginException`.

```bash
flutter_rust_bridge_codegen generate
dart run pigeon --input pigeons/messages.dart
flutter clean
flutter pub get
```
</details>

<details>
<summary><strong><code>E_TARGET_INFEASIBLE</code> on a long video</strong></summary>

The budget cannot sustain even 240p at the 150 kbps floor. This is expected for very long files at small targets. Options:

- Raise the target size.
- Trim the clip before compressing.
- Split into segments and compress each.
- Accept that no honest encode fits.
</details>

<details>
<summary><strong><code>E_TARGET_EXCEEDED</code> after a retry</strong></summary>

Some encoders overshoot badly under complex motion or VBR. Possible causes:

- Extreme scene complexity at the selected resolution.
- Device encoder ignoring the requested bitrate.
- Audio bitrate consuming an unexpected share.

Check the measured `bytes` in logs, lower `k`, or force a lower resolution by calibrating the ladder. Never work around it by publishing the oversized file.
</details>

<details>
<summary><strong><code>E_HDR_UNSUPPORTED</code> / <code>E_HDR_NOT_PRESERVED</code></strong></summary>

Preservation requires hardware HEVC Main10 and, on Android, API 33+. Dolby Vision dynamic metadata is never preserved. Fall back to `HdrMode.toneMapToSdr`, which is the default and works on SDR output.
</details>

<details>
<summary><strong><code>E_NO_SPACE</code> on Android resume</strong></summary>

Media3 may need additional output-sized space for resume checkpoints. Free storage or disable pause/resume for that job. Checkpoints are cleaned up after completion.
</details>

<details>
<summary><strong>Pause does not appear to stop progress immediately</strong></summary>

Commands run between bounded batches, so pause takes effect at the next sample boundary. Resumed progress may depend on the device and Media3 export state.
</details>

<details>
<summary><strong>Leaked <code>asagi-*</code> directories</strong></summary>

Interrupted jobs are marked `.inprogress` and intentionally left for later cleanup. Call:

```dart
await const FileArtifactStore().cleanupInterrupted(
  cachePath,
  const Duration(hours: 12),
);
```

Only marked `asagi-*` directories older than the cutoff are removed.
</details>

<details>
<summary><strong>iOS build requires macOS</strong></summary>

Swift compilation and CocoaPods cannot run on Linux or Windows. Android work is fully buildable on Linux; iOS needs Xcode on macOS.
</details>

---

## 🚢 Deployment

Asagi is an on-device engine, so deployment is app packaging, not server hosting.

### Android

```bash
flutter build appbundle --release
# or APK per ABI
flutter build apk --release --split-per-abi
```

Checklist:

- `minSdk` is at least 30 for the optional LiteRT-LM runtime (already enforced).
- Media3 dependencies resolve to the pinned `1.9.2`.
- Release signing is configured in `android/key.properties` (not committed).
- Test H.264 encode on a low-end device and HEVC/HDR on an API 33+ device.
- Check gallery saving and foreground-service permissions and service types on each supported Android release.

### iOS

```bash
cd ios && pod install && cd ..
flutter build ipa --release
```

Checklist:

- Deployment target is 15.0.
- Rust static libraries are built for device and simulator architectures by Cargokit.
- Photo-library usage descriptions are present if you add saving.
- Test on a physical device: the simulator does not represent hardware encoder behavior.

### Versioning

Update `version:` in `pubspec.yaml` (`1.0.0+1` → `1.0.1+2`) before a release. The build number must increase for store uploads.

### Operational limits

| Concern | Reality |
| --- | --- |
| App killed mid-encode | No resume; sweep stale jobs on next launch |
| Background encode | Android foreground service runs during an active export; process-death resume is not implemented |
| Thermal throttling | Not handled; long 4K jobs may slow down |
| Storage | Needs source + output + temporary checkpoints |
| Concurrent jobs | One engine/job at a time; `E_BUSY` protects the encoder |

---

## 🔒 Privacy and security

- **On-device processing.** Media, metadata, and compression results remain on the device. The optional AI model catalog requires network access to download model files; local model imports do not. No media upload or cloud compression is implemented.
- **No analytics by default.** The spec allows opt-in crash reporting only; local logs are the default.
- **Location metadata is not explicitly stripped yet.** The v1.1 spec proposes a `strip_location` option defaulting to `true`, but no such control exists in the current engine. Do not claim location removal until it is implemented and tested.
- **Android service permissions are declared.** Gallery access is mediated by the picker; media-processing foreground-service permissions are declared in the manifest.
- **Temporary files are scoped.** Jobs live under `asagi-*` with an `.inprogress` marker and are swept explicitly.
- **No FFmpeg GPL surface.** Only platform codecs are used in v1.

If you add crash reporting, it must be opt-in, disclosed, and off by default. Do not quietly turn on network access and keep the offline claim.

---

## 🗺 Roadmap

### Implemented

- [x] Hard target ceiling with post-encode verification
- [x] One-shot bitrate correction with clamp and feasibility floor
- [x] Audio-before-resolution budget policy
- [x] Rotation-aware, no-upscale, even-dimension planning
- [x] HDR preserve / tone-map with strict output verification
- [x] Pause / resume / cancel with serialized commands
- [x] Marked workspaces and stale-job cleanup
- [x] Dependency-direction tests

### Next

- [x] App UI: picker, target selector, progress, result, share, and history
- [x] User-triggered gallery save
- [x] Android media-processing foreground service during export
- [ ] Run the [device validation matrix](docs/device_validation_matrix.md): HDR color, A/V sync, orientation, thermals
- [x] Offline encoder overshoot calibration by Android device, HDR mode, and resolution bucket
- [x] Android software-codec selection when no hardware encoder supports the requested format
- [ ] SAR/VFR detection and full audio-timeline normalization
- [x] Faststart validation on Android encoded MP4 output
- [ ] Persistent resume across process death
- [ ] Optional spatial-audio passthrough/encoding, subject to container, device, and licensing support
- [ ] VMAF-calibrated "comfortable" thresholds
- Dolby Vision dynamic metadata preservation



### Explicitly out of scope for v1

- Cloud compression
- Video editing (trim, merge, captions)
- Web, desktop, or server targets
- Corrupt-file repair
- FFmpeg / x264 / x265

---

## 🤝 Contributing

1. Fork and branch from `main`.
2. Keep the layering intact: `domain/` and `application/` must not import outward. The architecture test enforces it.
3. Add tests with behavior changes. Dart tests use fakes; Rust policy changes need `proptest` coverage where the math is involved.
4. Regenerate bindings if you change a contract, and commit the generated output.
5. Run before opening a PR:

```bash
dart format .
flutter analyze
flutter test
cargo test --manifest-path rust/Cargo.toml
```

6. Describe device validation in the PR if you touched native code. "Compiles" is not "works on a phone."

### Code style

- Dart: `flutter_lints` (`analysis_options.yaml`), `final class` for value types, explicit imports.
- Rust: `rustfmt`, small modules, traits at the domain boundary, no video buffers.
- Kotlin/Swift: adapter classes stay thin; policy and lifetime live in dedicated types.

---

## 📄 License

**No license file is present in this repository yet.** The v1.1 specification flags licensing and trademark clearance as pending legal review before release.

Until a license is added:

- Do not assume MIT, Apache-2.0, or any other grant.
- Do not redistribute the code or assets publicly.
- Do not ship the Asagi name or mascot commercially without clearance.
