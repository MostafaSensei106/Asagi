final class CompressionRecord {
  const CompressionRecord({
    required this.path,
    required this.sourceName,
    required this.bytes,
    required this.createdAt,
  });

  final String path;
  final String sourceName;
  final int bytes;
  final DateTime createdAt;
}
