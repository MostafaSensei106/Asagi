final class CompressionOutput {
  const CompressionOutput(
    this.path,
    this.bytes,
    this.attempts,
    this.warning, {
    this.jobId,
  });
  final String path;
  final String? jobId;
  final int bytes, attempts;
  final String? warning;
}
