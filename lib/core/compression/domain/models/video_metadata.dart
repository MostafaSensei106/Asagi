/// Platform-independent source description. No Flutter/FFI types cross this boundary.
final class VideoMetadata {
  const VideoMetadata({
    required this.durationSecs,
    required this.width,
    required this.height,
    required this.rotation,
    required this.bitrateBps,
    required this.fileSizeBytes,
    required this.hasAudio,
    this.frameRate = 30,
    this.isHdr = false,
    this.colorTransfer = 'sdr',
    this.pixelAspectRatio = 1.0,
  });
  final double durationSecs;
  final int width, height, rotation, bitrateBps, fileSizeBytes;
  final bool hasAudio, isHdr;
  final double frameRate;
  final String colorTransfer;

  /// Horizontal stretch for non-square pixels. `1.0` is square pixels, so the
  /// stored `width` is also the displayed width.
  final double pixelAspectRatio;

  /// Width in displayed (square) pixels.
  double get displayWidth => width * pixelAspectRatio;

  /// Short edge in displayed pixels, which is the unit planning limits use.
  double get displayShortEdge =>
      displayWidth < height ? displayWidth : height.toDouble();
}
