import '../../../native/rust/api/calculator.dart' as rust;
import '../../../native/rust/domain/models.dart' as wire;
import '../../domain/contracts/compression_planner.dart';
import '../../domain/models/compression_plan.dart';
import '../../domain/models/compression_preferences.dart';
import '../../domain/models/encode_request.dart';
import '../../domain/models/video_metadata.dart';

final class RustCompressionPlanner implements CompressionPlanner {
  @override
  Future<CompressionPlan> plan(
    VideoMetadata info,
    double targetMb, {
    CompressionPreferences preferences = const CompressionPreferences(),
  }) async {
    preferences.validate();
    final sourceShortEdge = info.displayShortEdge;
    final p = await rust.calculateCustomCompressionPlan(
      info: wire.InputMetadata(
        durationSecs: info.durationSecs,
        width: info.width,
        height: info.height,
        rotation: info.rotation,
        bitrateBps: info.bitrateBps,
        fileSizeBytes: BigInt.from(info.fileSizeBytes),
        hasAudio: info.hasAudio,
        pixelAspectRatio: info.pixelAspectRatio,
      ),
      targetSizeMb: targetMb,
      preferences: wire.PlanningPreferences(
        forceEncode:
            (preferences.maxShortEdge != null &&
                sourceShortEdge > preferences.maxShortEdge!) ||
            preferences.audioBitrateKbps != null ||
            preferences.videoBitrateCeilingKbps != null ||
            (info.isHdr && preferences.hdrMode == HdrMode.toneMapToSdr) ||
            (preferences.maxFrameRate != 30 &&
                info.frameRate > preferences.maxFrameRate),
        maxShortEdge: preferences.maxShortEdge ?? 0,
        audioBitrateBps: preferences.audioBitrateKbps == null
            ? -1
            : preferences.audioBitrateKbps! * 1000,
        videoBitrateCeilingBps:
            (preferences.videoBitrateCeilingKbps ?? 0) * 1000,
      ),
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
