import '../domain/contracts/artifact_store.dart';
import '../domain/contracts/compression_planner.dart';
import '../domain/contracts/video_encoder.dart';
import '../domain/models/compression_output.dart';
import '../domain/models/encode_request.dart';
import '../domain/policies/hdr_policy.dart';
import 'encoding_control.dart';

/// Orchestrates contracts only. It does not import Flutter, Pigeon, FFI or dart:io.
final class CompressionEngine {
  CompressionEngine({
    required this.planner,
    required this.encoder,
    required this.artifacts,
    this.hdrPolicy = const StrictHdrPolicy(),
  }) : _control = EncodingControl(encoder);
  final CompressionPlanner planner;
  final VideoEncoder encoder;
  final ArtifactStore artifacts;
  final HdrPolicy hdrPolicy;
  final EncodingControl _control;

  Future<void> pause() => _control.pause();
  Future<void> resume() => _control.resume();
  Future<void> cancel() => _control.cancel();

  Future<CompressionOutput> compress({
    required String source,
    required double targetMb,
    required String workspacePath,
    HdrMode hdrMode = HdrMode.toneMapToSdr,
  }) async {
    _control.begin();
    CompressionWorkspace? job;
    try {
      final info = await encoder.inspect(source);
      var plan = await planner.plan(info, targetMb);
      await _control.checkpoint();
      if (info.fileSizeBytes <= plan.hardLimitBytes &&
          !hdrPolicy.requiresConversion(info, hdrMode)) {
        return CompressionOutput(
          source,
          info.fileSizeBytes,
          0,
          plan.warningMessage,
        );
      }
      if (plan.isInfeasible) throw StateError('E_TARGET_INFEASIBLE');
      job = await artifacts.create(workspacePath);
      for (var attempt = 1; attempt <= plan.maxAttempts; attempt++) {
        await _control.checkpoint();
        final path = job.pathForAttempt(attempt);
        _control.encoding = true;
        try {
          await encoder.encode(
            EncodeRequest(
              inputPath: source,
              outputPath: path,
              plan: plan,
              frameRate: info.frameRate.clamp(1, 30).toDouble(),
              hdrMode: hdrMode,
            ),
          );
        } finally {
          _control.encoding = false;
        }
        await _control.checkpoint();
        if (info.isHdr)
          hdrPolicy.verify(info, await encoder.inspect(path), hdrMode);
        final bytes = await job.measure(path);
        final next = await planner.verify(
          bytes,
          info.durationSecs,
          plan,
          attempt,
        );
        await _control.checkpoint();
        if (next == 0) {
          await job.commit();
          return CompressionOutput(path, bytes, attempt, plan.warningMessage);
        }
        await job.discard(path);
        plan = plan.withVideoBitrate(next);
      }
      throw StateError('E_TARGET_EXCEEDED');
    } finally {
      try {
        await job?.dispose();
      } finally {
        await _control.finish();
      }
    }
  }
}
