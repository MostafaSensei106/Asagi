# Compression core

Initialize `RustLib.init()` once. Construct `CompressionEngine` with
`RustCompressionPlanner()` and `PlatformVideoEncoder(NativeMediaApi())`.
Subscribe to `PlatformVideoEncoder.progress` for native progress.
Call `cleanupInterruptedCompressions(cacheDirectory)` during startup.
Call `compress(source: localPath, targetMb: 16, workspace: cacheDirectory)`.
The returned verified file belongs to the caller: move/share/save it, then delete
its job directory. An already-small source is returned directly and remains owned
by the caller; never delete the source as temporary output.

Rust owns bitrate/resolution policy and size correction. Dart owns orchestration
through injectable interfaces. Pigeon transports commands and metadata to Kotlin
(Media3) and Swift (AVAssetReader/Writer). Video bytes never cross Flutter/FFI.
No widgets, state management, DI framework or picker/save/share packages are added.

Generate bindings after changing either contract:

```
flutter_rust_bridge_codegen generate
dart run pigeon --input pigeons/messages.dart
```

Implemented: input validation, decimal MB budgets, 0.93 safety margin, minimum
container reserve, audio budgeting, source bitrate cap, portrait-aware even
resolution without upscaling, two-attempt size verification, cancellation commands,
single-operation guard, native progress events, disk-capacity checks, interrupted-job markers and cleanup of failed attempts. The pipeline selects the
first audio/video track; extra tracks and source metadata are not copied.
For constrained budgets the documented 180-second example takes priority over the
conflicting comfortable-240p rule: minimum-acceptable 360p is selected with warning.

Remaining device-dependent work before release: background lifecycle/service,
persistent crash recovery/resume, encoder calibration/quirks and software fallback, explicit HDR capability
validation/tone mapping, SAR and VFR detection, audio timeline normalization,
Android faststart validation, and gallery saving. The native pipelines require
real-device A/V sync, orientation/mirroring, HDR and codec tests. Swift builds
require macOS/Xcode; Linux checks do not establish iOS build correctness.
