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
  });
  final double durationSecs;
  final int width, height, rotation, bitrateBps, fileSizeBytes;
  final bool hasAudio, isHdr;
  final double frameRate;
  final String colorTransfer;
}
