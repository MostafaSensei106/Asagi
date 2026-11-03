import '../models/encode_request.dart';
import '../models/video_metadata.dart';

abstract interface class HdrPolicy {
  bool requiresConversion(VideoMetadata source, HdrMode mode);
  void verify(VideoMetadata source, VideoMetadata output, HdrMode mode);
}

final class StrictHdrPolicy implements HdrPolicy {
  const StrictHdrPolicy();
  @override
  bool requiresConversion(VideoMetadata source, HdrMode mode) =>
      source.isHdr && mode == HdrMode.toneMapToSdr;
  @override
  void verify(VideoMetadata source, VideoMetadata output, HdrMode mode) {
    if (!source.isHdr) return;
    if (mode == HdrMode.preserve &&
        (!output.isHdr || output.colorTransfer != source.colorTransfer)) {
      throw StateError('E_HDR_NOT_PRESERVED');
    }
    if (mode == HdrMode.toneMapToSdr && output.isHdr) {
      throw StateError('E_HDR_CONVERSION_FAILED');
    }
  }
}
