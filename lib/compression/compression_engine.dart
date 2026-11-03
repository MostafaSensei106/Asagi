import 'dart:io';
import 'package:flutter/services.dart';

import '../core/native/pigeon_messages.g.dart';
import '../core/native/rust/api/calculator.dart' as rust;

abstract interface class CompressionPlanner {
  Future<rust.CalculationPlan> plan(rust.InputMetadata info, double targetMb);
  Future<int> verify(
    int bytes,
    double duration,
    rust.CalculationPlan plan,
    int attempt,
  );
}

final class RustCompressionPlanner implements CompressionPlanner {
  @override
  Future<rust.CalculationPlan> plan(rust.InputMetadata info, double targetMb) =>
      rust.calculateCompressionPlan(info: info, targetSizeMb: targetMb);
  @override
  Future<int> verify(
    int bytes,
    double duration,
    rust.CalculationPlan plan,
    int attempt,
  ) => rust.verifyAttempt(
    actualBytes: BigInt.from(bytes),
    durationSecs: duration,
    plan: plan,
    attempt: attempt,
  );
}

abstract interface class VideoEncoder {
  Future<NativeVideoMetadata> inspect(String path);
  Future<void> encode(NativeCompressRequest request);
  Future<void> cancel();
}

final class PlatformVideoEncoder implements VideoEncoder {
  PlatformVideoEncoder(this.api);
  final NativeMediaApi api;
  /// Presentation-time progress for the current attempt, resets on retry.
  Stream<double> get progress => const EventChannel(
    'zumi/encoding_progress',
  ).receiveBroadcastStream().map((value) => (value as num).toDouble());
  @override
  Future<NativeVideoMetadata> inspect(String path) =>
      api.extractVideoMetadata(path);
  @override
  Future<void> encode(NativeCompressRequest request) async {
    if (!await api.startHardwareEncoding(request)) {
      throw StateError('E_ENCODING');
    }
  }

  @override
  Future<void> cancel() => api.cancelEncoding();
}

final class CompressionOutput {
  const CompressionOutput(this.path, this.bytes, this.attempts, this.warning);
  final String path;
  final int bytes;
  final int attempts;
  final String? warning;
}

/// Application use case, independent of widgets and state management.
/// One engine instance owns at most one native encoding operation.
final class CompressionEngine {
  CompressionEngine({required this.planner, required this.encoder});
  final CompressionPlanner planner;
  final VideoEncoder encoder;
  bool _busy = false;
  bool _cancelled = false;
  Future<void> cancel() async {
    _cancelled = true;
    await encoder.cancel();
  }

  Future<CompressionOutput> compress({
    required String source,
    required double targetMb,
    required Directory workspace,
  }) async {
    if (_busy) throw StateError('E_BUSY');
    _busy = true;
    _cancelled = false;
    Directory? job;
    try {
      final m = await encoder.inspect(source);
      final info = rust.InputMetadata(
        durationSecs: m.durationSeconds ?? 0,
        width: m.width ?? 0,
        height: m.height ?? 0,
        rotation: m.rotation ?? 0,
        bitrateBps: m.bitrateBps ?? 0,
        fileSizeBytes: BigInt.from(m.fileSizeBytes ?? 0),
        hasAudio: m.hasAudio ?? false,
      );
      var plan = await planner.plan(info, targetMb);
      if (_cancelled) throw StateError('E_CANCELLED');
      if (info.fileSizeBytes <= plan.hardLimitBytes) {
        return CompressionOutput(
          source,
          info.fileSizeBytes.toInt(),
          0,
          plan.warningMessage,
        );
      }
      if (plan.isInfeasible) throw StateError('E_TARGET_INFEASIBLE');
      await workspace.create(recursive: true);
      job = await workspace.createTemp('zumi-');
      for (var attempt = 1; attempt <= 2; attempt++) {
        if (_cancelled) throw StateError('E_CANCELLED');
        final output = File('${job!.path}/attempt-$attempt.mp4');
        await encoder.encode(
          NativeCompressRequest(
            inputPath: source,
            outputPath: output.path,
            targetVideoBitrateBps: plan.targetVideoBitrateBps,
            targetAudioBitrateBps: plan.targetAudioBitrateBps,
            targetWidth: plan.targetWidth,
            targetHeight: plan.targetHeight,
            frameRate: (m.frameRate ?? 30).clamp(1, 30).toDouble(),
          ),
        );
        if (_cancelled) throw StateError('E_CANCELLED');
        final size = await output.length();
        final next = await planner.verify(
          size,
          info.durationSecs,
          plan,
          attempt,
        );
        if (next == 0) {
          // Caller owns the verified output and must move/delete it when finished.
          job = null;
          return CompressionOutput(
            output.path,
            size,
            attempt,
            plan.warningMessage,
          );
        }
        await output.delete();
        plan = rust.CalculationPlan(
          targetVideoBitrateBps: next,
          targetAudioBitrateBps: plan.targetAudioBitrateBps,
          targetWidth: plan.targetWidth,
          targetHeight: plan.targetHeight,
          hardLimitBytes: plan.hardLimitBytes,
          isInfeasible: false,
          warningMessage: plan.warningMessage,
        );
      }
      throw StateError('E_TARGET_EXCEEDED');
    } finally {
      if (job != null && await job.exists()) await job.delete(recursive: true);
      _busy = false;
    }
  }
}
