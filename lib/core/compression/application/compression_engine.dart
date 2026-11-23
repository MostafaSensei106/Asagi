import '../domain/contracts/artifact_store.dart';
import '../domain/contracts/compression_planner.dart';
import '../domain/contracts/video_encoder.dart';
import '../domain/models/compression_output.dart';
import '../domain/models/compression_plan.dart';
import '../domain/models/compression_preferences.dart';
import '../domain/models/compression_step.dart';
import '../domain/models/encode_request.dart';
import '../domain/models/share_preset.dart';
import '../domain/models/video_metadata.dart';
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
    int? acceptedMaxBytes,
    Future<void> Function(CompressionPlan, VideoMetadata, int)?
    onAttemptMeasured,
    HdrMode? hdrMode,
    CompressionPreferences preferences = const CompressionPreferences(),
    String? sourceName,
    SharePresetId? presetId,
    void Function(CompressionStep step)? onStep,
    void Function(double start, double end)? onAttemptRange,
  }) async {
    preferences.validate();
    onStep?.call(CompressionStep.preparing);
    final effectiveHdrMode = hdrMode ?? preferences.hdrMode;
    _control.begin();
    CompressionWorkspace? job;
    try {
      final info = await encoder.inspect(source);
      final sourceShortEdge = info.displayShortEdge;
      var plan = await planner.plan(
        info,
        targetMb,
        preferences: preferences,
        presetId: presetId,
      );
      await _control.checkpoint();
      final requiresUserTransform =
          (preferences.maxShortEdge != null &&
              sourceShortEdge > preferences.maxShortEdge!) ||
          preferences.audioBitrateKbps != null ||
          preferences.videoBitrateCeilingKbps != null ||
          (preferences.maxFrameRate != 30 &&
              info.frameRate > preferences.maxFrameRate);
      if (info.fileSizeBytes <= plan.hardLimitBytes &&
          !requiresUserTransform &&
          !hdrPolicy.requiresConversion(info, effectiveHdrMode)) {
        return CompressionOutput(
          source,
          info.fileSizeBytes,
          0,
          plan.warningMessage,
        );
      }
      if (plan.isInfeasible) throw StateError('E_TARGET_INFEASIBLE');
      job = await artifacts.create(workspacePath);
      Future<void> saveJobState(String phase, int attempt) =>
          job!.saveJobState({
            'version': 1,
            'source': source,
            'sourceName': sourceName ?? source,
            'targetMb': targetMb,
            'preferences': {
              'maxShortEdge': preferences.maxShortEdge,
              'maxFrameRate': preferences.maxFrameRate,
              'audioBitrateKbps': preferences.audioBitrateKbps,
              'videoBitrateCeilingKbps': preferences.videoBitrateCeilingKbps,
              'hdrMode': preferences.hdrMode.name,
            },
            'phase': phase,
            'attempt': attempt,
            'updatedAt': DateTime.now().toUtc().toIso8601String(),
          });

      await saveJobState('planned', 1);
      for (var attempt = 1; attempt <= plan.maxAttempts; attempt++) {
        await _control.checkpoint();
        await saveJobState('encoding', attempt);
        final path = job.pathForAttempt(attempt);
        _control.encoding = true;
        try {
          onAttemptRange?.call(
            (attempt - 1) / plan.maxAttempts,
            attempt / plan.maxAttempts,
          );
          onStep?.call(CompressionStep.encoding);
          await encoder.encode(
            EncodeRequest(
              inputPath: source,
              outputPath: path,
              plan: plan,
              frameRate: info.frameRate
                  .clamp(1, preferences.maxFrameRate)
                  .toDouble(),
              hdrMode: effectiveHdrMode,
              isHdr: info.isHdr,
            ),
          );
        } finally {
          _control.encoding = false;
        }
        await _control.checkpoint();
        await saveJobState('verifying', attempt);
        onStep?.call(CompressionStep.verifying);
        final encoded = await encoder.inspect(path);
        final durationTolerance = info.durationSecs * 0.05 > 1
            ? info.durationSecs * 0.05
            : 1.0;
        if (!encoded.durationSecs.isFinite ||
            encoded.durationSecs <= 0 ||
            encoded.width < 2 ||
            encoded.height < 2 ||
            (encoded.durationSecs - info.durationSecs).abs() >
                durationTolerance ||
            (info.hasAudio &&
                plan.targetAudioBitrateBps > 0 &&
                !encoded.hasAudio)) {
          throw StateError('E_INVALID_OUTPUT');
        }
        if (info.isHdr) {
          hdrPolicy.verify(info, encoded, effectiveHdrMode);
        }
        final bytes = await job.measure(path);
        if (onAttemptMeasured != null) {
          try {
            await onAttemptMeasured(plan, info, bytes);
          } catch (_) {
            // Calibration is best-effort; a verified encode remains valid.
          }
        }
        if (bytes <= 0) throw StateError('E_INVALID_OUTPUT');
        // A stricter planning target can be used to compensate for hardware
        // bitrate overshoot while retaining the user's original hard limit.
        if (acceptedMaxBytes != null &&
            bytes > 0 &&
            bytes <= acceptedMaxBytes) {
          await _control.checkpoint();
          await saveJobState('complete', attempt);
          await job.commit();
          return CompressionOutput(
            path,
            bytes,
            attempt,
            plan.warningMessage == 'TARGET_SIZE_UNREACHABLE'
                ? null
                : plan.warningMessage,
          );
        }
        if (attempt == plan.maxAttempts) {
          await _control.checkpoint();
          await saveJobState('complete', attempt);
          await job.commit();
          return CompressionOutput(
            path,
            bytes,
            attempt,
            'TARGET_SIZE_UNREACHABLE',
          );
        }
        late final int next;
        try {
          next = await planner.verify(bytes, info.durationSecs, plan, attempt);
        } catch (error) {
          if (!'$error'.contains('E_TARGET_INFEASIBLE')) rethrow;
          await _control.checkpoint();
          await saveJobState('complete', attempt);
          await job.commit();
          return CompressionOutput(
            path,
            bytes,
            attempt,
            'TARGET_SIZE_UNREACHABLE',
          );
        }
        await _control.checkpoint();
        if (next == 0) {
          await saveJobState('complete', attempt);
          await job.commit();
          return CompressionOutput(path, bytes, attempt, plan.warningMessage);
        }
        await job.discard(path);
        onStep?.call(CompressionStep.replanning);
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
