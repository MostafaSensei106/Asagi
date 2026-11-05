import '../models/encode_request.dart';
import '../models/video_metadata.dart';

abstract interface class VideoEncoder {
  Future<VideoMetadata> inspect(String path);
  Future<void> encode(EncodeRequest request);
  Future<void> cancel();
  Future<void> pause();
  Future<void> resume();
}

/// Optional capability; non-streaming implementations need only VideoEncoder.
abstract interface class EncodingProgressSource {
  Stream<double> get progress;
}
