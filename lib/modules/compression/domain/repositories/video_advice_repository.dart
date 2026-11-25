import '../../../../core/compression/domain/models/compression_preferences.dart';
import '../models/selected_video.dart';

abstract interface class VideoAdviceRepository {
  Future<CompressionPreferences> advise(
    SelectedVideo video,
    double targetMb,
    CompressionPreferences preferences,
  );
}
