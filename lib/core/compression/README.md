# Compression core

The public `compression_engine.dart` barrel exposes domain contracts, models,
application orchestration, and infrastructure adapters.

- `domain/`: immutable metadata, plans, preferences, output, contracts, and HDR policy.
- `application/`: compression/retry orchestration and serialized encoding controls.
- `infrastructure/native/`: Pigeon mappings for the Kotlin planner and Media3 encoder.
- `infrastructure/storage/`: artifact workspaces, recovery, and MP4 checks.

Domain and application import neither Flutter nor native transport types or
`dart:io`. Tests enforce this dependency boundary. Platform DTOs are mapped by
adapters; alternative planners, encoders, and storage implementations can be
injected independently.

## Native planning

Android's pure Kotlin `app/planning/` classes own target-size arithmetic, the
resolution ladder, preset policy, and output-size retry decisions. They have no
Android or Flutter imports. `NativeCompressionPlanner` implements the generated
`NativeCompressionPlannerApi` and maps validation failures to stable error codes.

The Dart `PlatformCompressionPlanner` implements `CompressionPlanner`, maps
metadata/preferences/plans, and caches the preset table. Public domain types and
application orchestration remain independent of Kotlin or Pigeon.

## Wiring

```dart
final encoder = PlatformVideoEncoder(NativeMediaApi());
final engine = CompressionEngine(
  planner: PlatformCompressionPlanner(NativeCompressionPlannerApi()),
  encoder: encoder,
  artifacts: const FileArtifactStore(),
);
final result = await engine.compress(
  source: localPath,
  targetMb: 16,
  workspacePath: cachePath,
  preferences: const CompressionPreferences(hdrMode: HdrMode.preserve),
);
```

Android registers both host APIs during Flutter engine configuration; no separate
initialization is required. Compression is Android-only. Other platforms are
gated in presentation and rejected by the device repository.

Subscribe to encoder progress and use `engine.pause()`, `resume()`, and `cancel()`
while compression is active. The caller saves/shares the verified output before
cleaning the job directory. A source returned untouched with zero attempts must
never be deleted as temporary output.

## Media behavior

Media3 handles encoding, HDR capability checks, and its own encoder fallback.
Unsupported video/audio decoders produce localized errors. The application
verifies size, HDR behavior, output dimensions, and MP4 streaming readiness.
Device-specific encoder overshoot calibration remains in the app repository.

Pause retains Media3 checkpoints; resume can restart when a checkpoint is unusable.
Cancel removes temporary work through application orchestration. The Android
foreground service tracks active media work. Device validation remains necessary
for HDR colors, A/V sync, orientation, codec support, and interruption behavior.

The iOS AVFoundation encoder source is retained for future platform support;
there is currently no iOS planner implementation.

## Verification

Run `flutter analyze` and `flutter test` at the repository root, and
`./gradlew :app:testDebugUnitTest -Ptarget-platform=android-arm64` in `android/`.
Regenerate Pigeon contracts with `dart run pigeon --input pigeons/messages.dart`.
