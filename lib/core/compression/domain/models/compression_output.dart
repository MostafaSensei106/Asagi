final class CompressionOutput {
  const CompressionOutput(this.path, this.bytes, this.attempts, this.warning);
  final String path;
  final int bytes, attempts;
  final String? warning;
}
