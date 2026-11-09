import '../models/compression_plan.dart';
import '../models/compression_preferences.dart';
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
}
