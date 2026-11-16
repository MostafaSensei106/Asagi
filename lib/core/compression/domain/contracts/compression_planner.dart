import '../models/compression_plan.dart';
import '../models/compression_preferences.dart';
import '../models/share_preset.dart';
import '../models/video_metadata.dart';

abstract interface class CompressionPlanner {
  Future<CompressionPlan> plan(
    VideoMetadata info,
    double targetMb, {
    CompressionPreferences preferences = const CompressionPreferences(),
  });

  /// Zero accepts the artifact; positive values request a retry at that bitrate.
  Future<int> verify(
    int bytes,
    double duration,
    CompressionPlan plan,
    int attempt,
  );

  /// The destination presets this build knows about.
  Future<List<SharePreset>> presets();

  /// Resolves [id] against [info], degrading to a larger size or a smaller
  /// resolution when the preset as written cannot hold a usable bitrate.
  Future<SharePresetPlan> resolvePreset(VideoMetadata info, SharePresetId id);
}
