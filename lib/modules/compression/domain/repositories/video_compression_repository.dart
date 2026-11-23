import '../../../../core/compression/domain/models/compression_output.dart';
import '../../../../core/compression/domain/models/compression_plan.dart';
import '../../../../core/compression/domain/models/compression_preferences.dart';
import '../../../../core/compression/domain/models/compression_step.dart';
import '../../../../core/compression/domain/models/interrupted_compression_job.dart';
import '../../../../core/compression/domain/models/share_preset.dart';
import '../models/compression_record.dart';
import '../models/resumed_compression.dart';
import '../models/selected_video.dart';

abstract interface class VideoCompressionRepository {
  Stream<double> get progress;

  Future<SelectedVideo?> pickVideo();
  Future<CompressionOutput> compress(
    SelectedVideo video,
    double targetMb,
    CompressionPreferences preferences, {
    SharePresetId? presetId,
    void Function(CompressionStep step)? onStep,
  });
  Future<CompressionPlan> previewPlan(
    SelectedVideo video,
    double targetMb,
    CompressionPreferences preferences,
  );
  Future<CompressionPreferences> loadPreferences();
  Future<void> savePreferences(CompressionPreferences preferences);
  Future<List<CompressionRecord>> history();
  Future<void> clearHistory();
  Future<List<InterruptedCompressionJob>> recoverInterrupted();
  Future<ResumedCompression> resumeInterrupted(
    InterruptedCompressionJob job, {
    void Function(CompressionStep step)? onStep,
    void Function(SelectedVideo video)? onVideoReady,
  });
  Future<void> discardInterrupted(String jobId);
  Future<double> defaultTargetMb();
  Future<void> setDefaultTargetMb(double targetMb);
  Future<List<SharePreset>> presets();
  Future<SharePresetPlan> resolvePreset(SelectedVideo video, SharePresetId id);
  Future<void> pause();
  Future<void> resume();
  Future<void> cancel();
  Future<void> saveToGallery(String path);
}
