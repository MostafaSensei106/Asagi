import '../../../native/rust/api/calculator.dart' as rust;
import '../../../native/rust/domain/models.dart' as wire;
import '../../../native/rust/domain/presets.dart' as wire_presets;
import '../../domain/contracts/compression_planner.dart';
import '../../domain/models/compression_plan.dart';
import '../../domain/models/compression_preferences.dart';
import '../../domain/models/encode_request.dart';
import '../../domain/models/share_preset.dart';
import '../../domain/models/video_metadata.dart';

final class RustCompressionPlanner implements CompressionPlanner {
  List<SharePreset>? _presets;

  @override
  Future<CompressionPlan> plan(
    VideoMetadata info,
    double targetMb, {
    CompressionPreferences preferences = const CompressionPreferences(),
  }) async {
    preferences.validate();
    final sourceShortEdge = info.displayShortEdge;
    final p = await rust.calculateCustomCompressionPlan(
      info: _toWireMetadata(info),
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
    return _toPlan(p);
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

  @override
  Future<List<SharePreset>> presets() async {
    final cached = _presets;
    if (cached != null) return cached;
    final table = (await rust.platformPresets()).map(_toSharePreset).toList();
    return _presets = List.unmodifiable(table);
  }

  @override
  Future<SharePresetPlan> resolvePreset(
    VideoMetadata info,
    SharePresetId id,
  ) async {
    final resolved = await rust.resolvePlatformPreset(
      info: _toWireMetadata(info),
      presetId: _toPresetId(id),
    );
    final preset = await _presetById(id);
    return SharePresetPlan(
      preset: preset,
      tier: _toTier(resolved.tier),
      effectiveTargetMb: resolved.effectiveTargetMb,
      plan: _toPlan(resolved.plan),
    );
  }

  Future<SharePreset> _presetById(SharePresetId id) async {
    for (final preset in await presets()) {
      if (preset.id == id) return preset;
    }
    throw StateError('E_UNKNOWN_PRESET: ${id.name}');
  }

  CompressionPlan _toPlan(wire.CalculationPlan p) => CompressionPlan(
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

  SharePreset _toSharePreset(wire_presets.PlatformPreset p) => SharePreset(
    id: _toSharePresetId(p.id),
    targetMb: p.targetMb,
    relaxedTargetMb: p.relaxedTargetMb,
    // The wire uses zero for "no ceiling"; the domain uses null.
    maxShortEdge: p.maxShortEdge == 0 ? null : p.maxShortEdge,
    maxFps: p.maxFps,
    videoBitrateCeilingKbps: p.bitrateCapBps == 0
        ? null
        : p.bitrateCapBps ~/ 1000,
    requireFaststart: p.requireFaststart,
    verifiedOn: p.verifiedOn,
  );

  wire.InputMetadata _toWireMetadata(VideoMetadata info) => wire.InputMetadata(
    durationSecs: info.durationSecs,
    width: info.width,
    height: info.height,
    rotation: info.rotation,
    bitrateBps: info.bitrateBps,
    fileSizeBytes: BigInt.from(info.fileSizeBytes),
    hasAudio: info.hasAudio,
    pixelAspectRatio: info.pixelAspectRatio,
  );

  SharePresetId _toSharePresetId(wire_presets.PresetId id) => switch (id) {
    wire_presets.PresetId.whatsapp => SharePresetId.whatsapp,
    wire_presets.PresetId.whatsappHd => SharePresetId.whatsappHd,
    wire_presets.PresetId.discord => SharePresetId.discord,
    wire_presets.PresetId.instagramReels => SharePresetId.instagramReels,
    wire_presets.PresetId.tikTok => SharePresetId.tikTok,
    wire_presets.PresetId.facebook => SharePresetId.facebook,
    wire_presets.PresetId.x => SharePresetId.x,
    wire_presets.PresetId.youTubeShorts => SharePresetId.youTubeShorts,
    wire_presets.PresetId.email => SharePresetId.email,
  };

  wire_presets.PresetId _toPresetId(SharePresetId id) => switch (id) {
    SharePresetId.whatsapp => wire_presets.PresetId.whatsapp,
    SharePresetId.whatsappHd => wire_presets.PresetId.whatsappHd,
    SharePresetId.discord => wire_presets.PresetId.discord,
    SharePresetId.instagramReels => wire_presets.PresetId.instagramReels,
    SharePresetId.tikTok => wire_presets.PresetId.tikTok,
    SharePresetId.facebook => wire_presets.PresetId.facebook,
    SharePresetId.x => wire_presets.PresetId.x,
    SharePresetId.youTubeShorts => wire_presets.PresetId.youTubeShorts,
    SharePresetId.email => wire_presets.PresetId.email,
  };

  SharePresetTier _toTier(wire_presets.PresetTier tier) => switch (tier) {
    wire_presets.PresetTier.exact => SharePresetTier.exact,
    wire_presets.PresetTier.reducedQuality => SharePresetTier.reducedQuality,
    wire_presets.PresetTier.relaxedSize => SharePresetTier.relaxedSize,
    wire_presets.PresetTier.unsatisfiable => SharePresetTier.unsatisfiable,
  };
}
