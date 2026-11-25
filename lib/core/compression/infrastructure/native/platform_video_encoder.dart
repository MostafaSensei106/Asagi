import 'package:flutter/services.dart';

import '../../../native/pigeon_messages.g.dart' as wire;
import '../../domain/contracts/video_encoder.dart';
import '../../domain/models/encode_request.dart';
import '../../domain/models/video_metadata.dart';

final class PlatformVideoEncoder
    implements VideoEncoder, EncodingProgressSource {
  PlatformVideoEncoder(this.api);
  final wire.NativeMediaApi api;
  @override
  late final Stream<double> progress = const EventChannel(
    'kuymo/encoding_progress',
  ).receiveBroadcastStream().map((value) => (value as num).toDouble());
  @override
  Future<VideoMetadata> inspect(String path) async {
    final m = await api.extractVideoMetadata(path);
    return VideoMetadata(
      durationSecs: m.durationSeconds ?? 0,
      width: m.width ?? 0,
      height: m.height ?? 0,
      rotation: m.rotation ?? 0,
      bitrateBps: m.bitrateBps ?? 0,
      fileSizeBytes: m.fileSizeBytes ?? 0,
      hasAudio: m.hasAudio ?? false,
      frameRate: m.frameRate ?? 30,
      isHdr: m.isHdr ?? false,
      colorTransfer: m.colorTransfer ?? 'unknown',
      pixelAspectRatio: _sanitizeAspectRatio(m.pixelAspectRatio),
    );
  }

  /// A malformed container must not poison the planner, which rejects
  /// non-finite or non-positive aspect ratios outright.
  static double _sanitizeAspectRatio(double? value) =>
      value != null && value.isFinite && value > 0 ? value : 1.0;

  @override
  Future<void> encode(EncodeRequest request) async {
    final p = request.plan;
    final nativeRequest = wire.NativeCompressRequest(
      inputPath: request.inputPath,
      outputPath: request.outputPath,
      targetVideoBitrateBps: p.targetVideoBitrateBps,
      targetAudioBitrateBps: p.targetAudioBitrateBps,
      targetWidth: p.targetWidth,
      targetHeight: p.targetHeight,
      frameRate: request.frameRate,
      hdrMode: switch (request.hdrMode) {
        HdrMode.preserve => wire.NativeHdrMode.preserve,
        HdrMode.toneMapToSdr => wire.NativeHdrMode.toneMapToSdr,
      },
    );
    final success = await api.startHardwareEncoding(nativeRequest);
    if (!success) throw StateError('E_ENCODING');
  }

  @override
  Future<void> cancel() => api.cancelEncoding();
  @override
  Future<void> pause() => api.pauseEncoding();
  @override
  Future<void> resume() => api.resumeEncoding();
}
