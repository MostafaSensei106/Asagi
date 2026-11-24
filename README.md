# Asagi

Offline target-size video compression for Android, built with Flutter, Kotlin,
and Android Media3. Video processing stays on the device.

## Features

- Custom target sizes and share presets, with previews of resolution and bitrate.
- Source-aware resolution selection, automatic audio budgeting, manual limits,
  rotation, and non-square pixel handling.
- H.264/AAC MP4 output; HDR preservation or SDR tone mapping when the device
  supports the requested mode.
- Progress, pause/resume/cancel, interrupted-job recovery, local history,
  gallery saving, and sharing.
- Localized UI with light and dark themes.

Compression currently runs on Android only (minimum API 30). Other platforms
show an unsupported-platform message. The iOS project and AVFoundation encoder
source remain available, but there is no iOS planner implementation.

Android uses installed platform codecs through Media3, including its encoder
fallbacks. Sources whose video or audio codec cannot be decoded fail with a clear
message. There is no bundled FFmpeg decoder fallback.

## Architecture

| Layer | Responsibility |
| --- | --- |
| Flutter presentation | Screens, Cubit state, selection, progress, and user feedback |
| Dart domain and application | Platform-independent contracts, compression orchestration, controls, artifact verification and cleanup |
| Dart infrastructure | Pigeon mappings, native planner/encoder adapters, and file storage |
| Kotlin planning | Target-size arithmetic, presets, resolution selection, and retry decisions |
| Android media | Metadata extraction, Media3 encoding, HDR capabilities, and foreground processing service |

Dart domain and application code depend on contracts rather than plugins or native
DTOs. Kotlin planning classes contain no Android or Flutter dependencies.
`NativeCompressionPlanner` maps Pigeon messages to those policies.
`NativeVideoEngine` adapts media operations and the encoding progress channel.
Video buffers never travel through Dart.

Relevant directories:

```text
lib/core/compression/
  domain/          contracts, models, and HDR policy
  application/     orchestration and serialized encoding controls
  infrastructure/  native adapters and file storage
lib/modules/compression/  app repository, state management, and screens
pigeons/messages.dart     source native API contracts
android/app/src/main/kotlin/com/mostafa/sensei/asagi/app/
  planning/        pure Kotlin planning, presets, and verification
  media3/          Android encoding and codec support
  contracts/       native media models and interfaces
android/app/src/test/kotlin/  Kotlin policy tests
```

## Planning and size verification

Sizes use decimal megabytes: `16 MB = 16,000,000 bytes`. The default planning
safety margin is 0.98; existing custom preferences and device calibration can
reduce the effective budget.

```text
total_bitrate = target_bytes × safety_margin × 8 / duration
container_reserve = max(total_bitrate × 0.01, 32768 × 8 / duration)
video_bitrate = total_bitrate − container_reserve − audio_bitrate
```

Audio normally receives 128, 96, or 64 kbps depending on the budget, or zero when
there is no audio. Custom preferences may choose a bitrate or remove audio.
Known source bitrate caps video at 90% of the source rate, and manual/preset
bitrate ceilings are applied before resolution selection.

The resolution ladder includes the source short edge and standard sizes from
4320 down to 240 pixels. It first chooses a comfortable bitrate at 480 pixels or
above, then tries minimum usable thresholds. Dimensions are even, rotation-aware,
and expressed in display pixels after pixel aspect ratio correction.

If the requested budget cannot fund a usable rendition, the planner produces a
best-effort plan with `TARGET_SIZE_UNREACHABLE`; the UI reports the actual output
size. Presets can relax their target and report `exact`, `reducedQuality`,
`relaxedSize`, or `unsatisfiable`. Existing preset values and their verification
date are stored together in Kotlin.

Ordinary plans verify the actual artifact size after encoding. An oversized
artifact requests a lower video bitrate, with the correction clamped to
0.5–0.98 of the current rate. Two attempts allow one correction. Exhausted
attempts fail with `E_TARGET_EXCEEDED`; a retry below 150 kbps fails with
`E_TARGET_INFEASIBLE`. Already-small sources may pass through without encoding
unless selected transforms require it.

At a custom safety margin of 0.93, a 60-second 1920×1080 source rotated 90°,
with audio, targeting 16 MB produces a 720×1280 plan at 1,836,160 video bps and
128,000 audio bps. Kotlin regression tests preserve that result.

## Development

Use the Flutter/Dart versions compatible with `pubspec.yaml`, Java 17, and the
Android SDK required by the Android project. Release builds require configured
signing properties in `android/key.properties`; never commit signing credentials.

```bash
flutter pub get
flutter run
flutter analyze
flutter test
flutter build apk --debug --target-platform android-arm64
```

Run Kotlin tests from `android/`:

```bash
./gradlew :app:testDebugUnitTest -Ptarget-platform=android-arm64
```

Regenerate native contracts after editing `pigeons/messages.dart`:

```bash
dart run pigeon --input pigeons/messages.dart
```

Regenerate dependency injection or translations after relevant source changes:

```bash
dart run build_runner build --build-filter=lib/core/di/di.config.dart
flutter gen-l10n
```

## Compression core usage

The Flutter engine registers the Pigeon APIs during Android startup; no separate
native library initialization is needed.

```dart
final encoder = PlatformVideoEncoder(NativeMediaApi());
final engine = CompressionEngine(
  planner: PlatformCompressionPlanner(NativeCompressionPlannerApi()),
  encoder: encoder,
  artifacts: const FileArtifactStore(),
);
final output = await engine.compress(
  source: localPath,
  targetMb: 16,
  workspacePath: cachePath,
  preferences: const CompressionPreferences(),
);
```

Subscribe to `encoder.progress` and use the engine's pause, resume, and cancel
commands while compression is pending. Save or share the verified output before
cleaning its job directory. An untouched source returned with `attempts == 0`
is not a temporary artifact and must not be deleted.

## Errors and validation

Native planner errors retain stable codes through Pigeon `PlatformException`s.
The presentation layer maps errors to localized messages without displaying file
paths or implementation details.

| Code | Meaning |
| --- | --- |
| `E_PLATFORM_UNSUPPORTED` | Compression is unavailable on this platform |
| `E_INVALID_INPUT` | Source metadata or planning inputs are invalid |
| `E_INVALID_TARGET` | Target size is invalid or outside the native integer range |
| `E_INVALID_PREFERENCES` | Manual planning preferences are invalid |
| `E_INVALID_OUTPUT` | Output verification inputs are invalid |
| `E_TARGET_EXCEEDED` | Output still exceeds its limit after retries |
| `E_TARGET_INFEASIBLE` | Available bitrate cannot support a retry |
| `E_VIDEO_DECODER_UNSUPPORTED` | The device cannot decode the source video |
| `E_AUDIO_DECODER_UNSUPPORTED` | The device cannot decode the source audio |
| `E_ENCODER_UNSUPPORTED` | The device cannot encode the requested format |
| `E_NO_SPACE` | Insufficient storage for output or resume checkpoints |
| `E_HDR_UNSUPPORTED` | The requested HDR processing mode is unavailable |

Tests cover planning arithmetic, presets, invalid inputs, retries, transport
mapping, architecture boundaries, artifact cleanup, and controls. Validate HDR
colors, A/V synchronization, orientation, codec support, and pause/resume on real
Android hardware. iOS builds require macOS/Xcode and do not enable compression.

## Contributing

Follow `AGENTS.md`, preserve the existing feature/domain boundaries, format Dart
changes, and run the analyzer plus relevant Dart and Kotlin tests. Keep generated
Pigeon and localization files synchronized with their sources. Package license
notices are available through Flutter's license screen.
