import '../../../../core/compression/domain/models/compression_output.dart';
import '../../../../core/compression/domain/models/compression_plan.dart';
import '../../../../core/compression/domain/models/compression_preferences.dart';
import '../../../../core/compression/domain/models/share_preset.dart';
import '../models/compression_record.dart';
import '../models/selected_video.dart';

abstract interface class VideoCompressionRepository {
  Stream<double> get progress;

  Future<SelectedVideo?> pickVideo();
  Future<CompressionOutput> compress(
    SelectedVideo video,
    double targetMb,
    CompressionPreferences preferences,
  );
  Future<CompressionPlan> previewPlan(
    SelectedVideo video,
    double targetMb,
    CompressionPreferences preferences,
  );
  Future<CompressionPreferences> loadPreferences();
  Future<void> savePreferences(CompressionPreferences preferences);
  Future<List<CompressionRecord>> history();
  Future<void> clearHistory();
  Future<int> recoverInterrupted();
  Future<double> defaultTargetMb();
  Future<void> setDefaultTargetMb(double targetMb);
  Future<List<SharePreset>> presets();
  Future<SharePresetPlan> resolvePreset(SelectedVideo video, SharePresetId id);
  Future<void> pause();
  Future<void> resume();
  Future<void> cancel();
  Future<void> saveToGallery(String path);
}
