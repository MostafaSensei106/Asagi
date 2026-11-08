import '../../../../core/compression/domain/models/video_metadata.dart';

final class SelectedVideo {
  const SelectedVideo({
    required this.path,
    required this.name,
    required this.metadata,
  });

  final String path;
  final String name;
  final VideoMetadata metadata;
}
