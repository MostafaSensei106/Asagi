import '../../../../core/compression/domain/models/compression_output.dart';
import '../models/compression_record.dart';
import '../models/selected_video.dart';

abstract interface class VideoCompressionRepository {
  Stream<double> get progress;

  Future<SelectedVideo?> pickVideo();
  Future<CompressionOutput> compress(SelectedVideo video, double targetMb);
  Future<List<CompressionRecord>> history();
  Future<double> defaultTargetMb();
  Future<void> setDefaultTargetMb(double targetMb);
  Future<void> pause();
  Future<void> resume();
  Future<void> cancel();
  Future<void> saveToGallery(String path);
}
