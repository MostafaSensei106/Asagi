import '../../../native/pigeon_messages.g.dart' as wire;
import '../../domain/contracts/compression_planner.dart';
import '../../domain/models/compression_plan.dart';
import '../../domain/models/compression_preferences.dart';
import '../../domain/models/encode_request.dart';
import '../../domain/models/share_preset.dart';
import '../../domain/models/video_metadata.dart';

final class PlatformCompressionPlanner implements CompressionPlanner {
  PlatformCompressionPlanner(this.api);
  final wire.NativeCompressionPlannerApi api;
  List<SharePreset>? _presets;

  @override
  Future<CompressionPlan> plan(
    VideoMetadata info,
    double targetMb, {
    CompressionPreferences preferences = const CompressionPreferences(),
    SharePresetId? presetId,
  }) async {
    preferences.validate();
    if (presetId != null) {
      return (await resolvePreset(info, presetId)).plan;
    }
    final sourceShortEdge = info.displayShortEdge;
    final p = await api.plan(
      _toWireMetadata(info),
      targetMb,
      preferences.safetyMargin,
      wire.NativePlanningPreferences(
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
  ) => api.verify(
    bytes,
    duration,
    wire.NativeCompressionPlan(
      targetVideoBitrateBps: p.targetVideoBitrateBps,
      targetAudioBitrateBps: p.targetAudioBitrateBps,
      targetWidth: p.targetWidth,
      targetHeight: p.targetHeight,
      hardLimitBytes: p.hardLimitBytes,
      safetyMargin: p.safetyMargin,
      maxAttempts: p.maxAttempts,
      isInfeasible: p.isInfeasible,
      warningMessage: p.warningMessage,
    ),
    attempt,
  );

  @override
  Future<List<SharePreset>> presets() async {
    final cached = _presets;
    if (cached != null) return cached;
    final table = (await api.presets()).map(_toSharePreset).toList();
    return _presets = List.unmodifiable(table);
  }

  @override
  Future<SharePresetPlan> resolvePreset(
    VideoMetadata info,
    SharePresetId id,
  ) async {
    final resolved = await api.resolvePreset(
      _toWireMetadata(info),
      _toPresetId(id),
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

  CompressionPlan _toPlan(wire.NativeCompressionPlan p) => CompressionPlan(
    targetVideoBitrateBps: p.targetVideoBitrateBps,
    targetAudioBitrateBps: p.targetAudioBitrateBps,
    targetWidth: p.targetWidth,
    targetHeight: p.targetHeight,
    hardLimitBytes: p.hardLimitBytes,
    safetyMargin: p.safetyMargin,
    maxAttempts: p.maxAttempts,
    isInfeasible: p.isInfeasible,
    warningMessage: p.warningMessage,
  );

  SharePreset _toSharePreset(wire.NativeSharePreset p) => SharePreset(
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

  wire.NativePlanningMetadata _toWireMetadata(VideoMetadata info) =>
      wire.NativePlanningMetadata(
        durationSecs: info.durationSecs,
        width: info.width,
        height: info.height,
        rotation: info.rotation,
        bitrateBps: info.bitrateBps,
        fileSizeBytes: info.fileSizeBytes,
        hasAudio: info.hasAudio,
        pixelAspectRatio: info.pixelAspectRatio,
      );

  SharePresetId _toSharePresetId(wire.NativeSharePresetId id) => switch (id) {
    wire.NativeSharePresetId.whatsapp => SharePresetId.whatsapp,
    wire.NativeSharePresetId.whatsappHd => SharePresetId.whatsappHd,
    wire.NativeSharePresetId.discord => SharePresetId.discord,
    wire.NativeSharePresetId.instagramReels => SharePresetId.instagramReels,
    wire.NativeSharePresetId.tikTok => SharePresetId.tikTok,
    wire.NativeSharePresetId.facebook => SharePresetId.facebook,
    wire.NativeSharePresetId.x => SharePresetId.x,
    wire.NativeSharePresetId.youTubeShorts => SharePresetId.youTubeShorts,
    wire.NativeSharePresetId.email => SharePresetId.email,
  };

  wire.NativeSharePresetId _toPresetId(SharePresetId id) => switch (id) {
    SharePresetId.whatsapp => wire.NativeSharePresetId.whatsapp,
    SharePresetId.whatsappHd => wire.NativeSharePresetId.whatsappHd,
    SharePresetId.discord => wire.NativeSharePresetId.discord,
    SharePresetId.instagramReels => wire.NativeSharePresetId.instagramReels,
    SharePresetId.tikTok => wire.NativeSharePresetId.tikTok,
    SharePresetId.facebook => wire.NativeSharePresetId.facebook,
    SharePresetId.x => wire.NativeSharePresetId.x,
    SharePresetId.youTubeShorts => wire.NativeSharePresetId.youTubeShorts,
    SharePresetId.email => wire.NativeSharePresetId.email,
  };

  SharePresetTier _toTier(wire.NativeSharePresetTier tier) => switch (tier) {
    wire.NativeSharePresetTier.exact => SharePresetTier.exact,
    wire.NativeSharePresetTier.reducedQuality => SharePresetTier.reducedQuality,
    wire.NativeSharePresetTier.relaxedSize => SharePresetTier.relaxedSize,
    wire.NativeSharePresetTier.unsatisfiable => SharePresetTier.unsatisfiable,
  };
}
