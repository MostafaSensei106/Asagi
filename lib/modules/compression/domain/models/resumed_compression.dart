import '../../../../core/compression/domain/models/compression_output.dart';
import 'selected_video.dart';

final class ResumedCompression {
  const ResumedCompression({required this.video, required this.output});

  final SelectedVideo video;
  final CompressionOutput output;
}
