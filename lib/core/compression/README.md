# Compression core

`compression_engine.dart` is a public export barrel. The implementation is divided
by responsibility, with dependencies pointing toward the domain:

```
application/       CompressionEngine + per-job EncodingControl
       ↓
domain/contracts/  CompressionPlanner, VideoEncoder, ArtifactStore
                   CompressionWorkspace, EncodingProgressSource
 domain/models/    immutable platform-independent inputs and outputs
 domain/policies/  HdrPolicy
       ↑
infrastructure/    rust/, native/, storage/ adapters
```

Domain and application import neither Flutter nor Pigeon, FRB, or dart:io.
Transport DTOs are mapped at the adapter boundary. A new platform implements
VideoEncoder (optionally EncodingProgressSource). Alternative planners, storage
and HDR validation policies can be injected independently. No UI/state-management
or DI framework is involved. Tests enforce the inward dependency boundary.

## Wiring

Initialize `RustLib.init()` once, then wire the contracts manually:

```dart
final encoder = PlatformVideoEncoder(NativeMediaApi());
final engine = CompressionEngine(
  planner: RustCompressionPlanner(),
  encoder: encoder,
  artifacts: const FileArtifactStore(),
);
final result = await engine.compress(
  source: localPath,
  targetMb: 16,
  workspacePath: cacheDirectory.path,
  hdrMode: HdrMode.preserve, // or toneMapToSdr (default)
);
```

Subscribe to `encoder.progress`. Use `engine.pause()`, `engine.resume()` and
`engine.cancel()` while the returned compression Future is pending. These are
process-local controls, not recovery after process termination.

The verified result belongs to the caller: move/share/save it, then delete its
job directory. A source already within the target is returned directly unless HDR
to SDR conversion was explicitly requested. Never delete that source as temporary
output. At startup, call `FileArtifactStore.cleanupInterrupted(cachePath,
Duration(hours: 12))` to remove marked interrupted jobs.

## Native modules

Kotlin: `contracts/` defines platform-independent models and ports;
`MetadataExtractor` reads track metadata; `media3/AndroidHdrPolicy` checks HDR
capabilities; `Media3Configuration` builds encoder settings/compositions;
`Media3VideoEncoder` owns export lifetime and controls; `NativeVideoEngine` only
adapts Pigeon and EventChannel.

Swift: `VideoContracts` defines models and ports; `AVVideoMetadataReader`,
`AVHdrPolicy`, `AVPipelineFactory`, `AVTrackPump`, `AVEncodingSession` and
`AVFoundationVideoEncoder` separate metadata, policy, graph construction, sample
transport, lifetime and command serialization. `NativeVideoEngine` is the channel
adapter. These source files are registered in the Xcode target.

Rust: `domain/models`, `contracts`, `planning`, `verification` separate entities,
traits and policy implementations. `api/calculator` only converts API arguments
and delegates to domain traits. Video buffers never pass through Dart/Rust.

## HDR and pause semantics

- `preserve`: HDR HLG/PQ selects HEVC/Main10 and matching BT.2020 transfer/color
  properties. Android requires API 33+ and a Main10 encoder; unsupported devices
  fail. iOS uses 10-bit pixel buffers and copies available static HDR metadata.
- `toneMapToSdr`: Media3 OpenGL tone mapping on Android; AVFoundation composition
  converts to BT.709/8-bit H.264 on iOS. Device-level visual validation is required.
- Re-encoding with preservation of Dolby Vision dynamic metadata is not supported:
  it fails explicitly instead of silently losing that metadata. SDR conversion can
  be requested. An untouched already-small source retains its original metadata.
- The application inspects HDR output before publishing it. A preservation failure
  or failed SDR conversion removes the artifact and throws an error.
- Android pause cancels native export while retaining checkpoints. Resume uses
  Media3's resume API for continuous audio/video. Media3 may restart if a checkpoint
  is unusable; video-only inputs restart the current attempt. Resumed progress is
  unavailable in Media3 1.5.1 until completion. Checkpoints are cleaned up.
- iOS pause stops reader/writer sample pumps at their current positions. Resume
  restarts those pumps without shifting media timestamps. Commands run between
  bounded batches so pause/cancel cannot starve behind a large sample loop.
- Android can temporarily require additional output-sized disk space to resume.
  Paused iOS sessions retain codec resources. Background execution is separate.

## Verification and remaining platform work

Rust handles decimal MB budgets, safety margin, audio/container reserve, source
bitrate caps, resolution and bounded size retries. Dart tests cover retries,
cleanup, pause/resume/cancel and HDR policy failures through substituted contracts.
The documented 180-second/8MB example takes priority over the conflicting
comfortable-240p rule: 360p is selected with a quality warning.

Still requires native build/device validation for HDR color accuracy, encoder
support, A/V sync and orientation. Background service/lifecycle, persistent resume,
encoder quirks/calibration/software fallback, SAR/VFR detection, complete audio
timeline normalization, Android faststart validation and gallery saving remain
outside this implementation. Swift compilation requires macOS/Xcode.

Regenerate contracts after changing them:

```
flutter_rust_bridge_codegen generate
dart run pigeon --input pigeons/messages.dart
```
