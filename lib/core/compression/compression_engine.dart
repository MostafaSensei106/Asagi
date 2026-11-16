/// Public entry point. Core modules depend only on inward-facing contracts.
library;

export 'application/compression_engine.dart';
export 'domain/contracts/artifact_store.dart';
export 'domain/contracts/compression_planner.dart';
export 'domain/contracts/video_encoder.dart';
export 'domain/models/compression_output.dart';
export 'domain/models/compression_plan.dart';
export 'domain/models/compression_preferences.dart';
export 'domain/models/encode_request.dart';
export 'domain/models/share_preset.dart';
export 'domain/models/video_metadata.dart';
export 'domain/policies/hdr_policy.dart';
export 'infrastructure/native/platform_video_encoder.dart';
export 'infrastructure/rust/rust_compression_planner.dart';
export 'infrastructure/storage/file_artifact_store.dart';
