import '../../../native/rust/api/calculator.dart' as rust;
import '../../../native/rust/domain/models.dart' as wire;
import '../../domain/contracts/compression_planner.dart';
import '../../domain/models/compression_plan.dart';
import '../../domain/models/video_metadata.dart';

final class RustCompressionPlanner implements CompressionPlanner {
  @override
  Future<CompressionPlan> plan(VideoMetadata info, double targetMb) async {
    final p = await rust.calculateCompressionPlan(
      info: wire.InputMetadata(
        durationSecs: info.durationSecs,
        width: info.width,
        height: info.height,
        rotation: info.rotation,
        bitrateBps: info.bitrateBps,
        fileSizeBytes: BigInt.from(info.fileSizeBytes),
        hasAudio: info.hasAudio,
      ),
      targetSizeMb: targetMb,
    );
    return CompressionPlan(
      targetVideoBitrateBps: p.targetVideoBitrateBps,
      targetAudioBitrateBps: p.targetAudioBitrateBps,
      targetWidth: p.targetWidth,
      targetHeight: p.targetHeight,
      hardLimitBytes: p.hardLimitBytes.toInt(),
      safetyMargin: p.safetyMargin,
      maxAttempts: p.maxAttempts,
      isInfeasible: p.isInfeasible,
      warningMessage: p.warningMessage,
    );
  }

  @override
  Future<int> verify(
    int bytes,
    double duration,
    CompressionPlan p,
    int attempt,
  ) => rust.verifyAttempt(
    actualBytes: BigInt.from(bytes),
    durationSecs: duration,
    plan: wire.CalculationPlan(
      targetVideoBitrateBps: p.targetVideoBitrateBps,
      targetAudioBitrateBps: p.targetAudioBitrateBps,
      targetWidth: p.targetWidth,
      targetHeight: p.targetHeight,
      hardLimitBytes: BigInt.from(p.hardLimitBytes),
      safetyMargin: p.safetyMargin,
      maxAttempts: p.maxAttempts,
      isInfeasible: p.isInfeasible,
      warningMessage: p.warningMessage,
    ),
    attempt: attempt,
  );
}
