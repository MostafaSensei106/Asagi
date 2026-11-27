import 'compression_plan.dart';
import 'compression_preferences.dart';

/// A destination-specific size and quality target, such as a chat app's media
/// limit.
///
/// The table lives in the native planner so the platform limits have one source of truth.
/// This mirrors it without exposing generated bridge types to the domain.
final class SharePreset {
  const SharePreset({
    required this.id,
    required this.targetMb,
    required this.relaxedTargetMb,
    required this.maxFps,
    required this.requireFaststart,
    required this.verifiedOn,
    this.maxShortEdge,
    this.videoBitrateCeilingKbps,
  });

  final SharePresetId id;

  /// Size limit for the destination, in megabytes.
  final int targetMb;

  /// The next size the destination tolerates when [targetMb] cannot hold a
  /// usable bitrate. Never smaller than [targetMb].
  final int relaxedTargetMb;

  /// Ceiling for the short edge in displayed pixels. Null means no ceiling.
  final int? maxShortEdge;

  /// Frame-rate ceiling. The encoder applies this; bitrate planning does not.
  final int maxFps;

  /// Ceiling for the video bitrate in kilobits per second. Null means no
  /// ceiling.
  final int? videoBitrateCeilingKbps;

  /// Whether the destination rejects MP4s whose `moov` atom follows `mdat`.
  final bool requireFaststart;

  /// The date these platform limits were last checked, as `YYYY-MM-DD`.
  final String verifiedOn;

  /// The preferences that reproduce this preset.
  ///
  /// Audio stays null so the planner sizes it from the budget. Zero would
  /// remove audio entirely, which no preset wants.
  CompressionPreferences get preferences => CompressionPreferences(
    maxShortEdge: maxShortEdge,
    maxFrameRate: maxFps,
    videoBitrateCeilingKbps: videoBitrateCeilingKbps,
  );

  @override
  String toString() => 'SharePreset(${id.name}, $targetMb MB)';
}

/// The platform a preset targets. Labels are localized, so the identifier is
/// the only stable contract.
enum SharePresetId {
  whatsapp,
  whatsappHd,
  discord,
  instagramReels,
  tikTok,
  facebook,
  x,
  youTubeShorts,
  email,
  linkedIn,
  telegram,
  snapchat,
}

/// How closely a resolved plan matches the preset as written, ordered from best
/// to worst.
enum SharePresetTier {
  /// The size, edge, and bitrate limits all hold.
  exact,

  /// The size limit holds, but the budget only affords a smaller resolution
  /// than the preset asks for.
  reducedQuality,

  /// The preset's own size limit cannot hold a usable bitrate, so a larger
  /// fallback size was used. The user must be told.
  relaxedSize,

  /// No supported size produces a usable plan.
  unsatisfiable;

  /// Whether the plan is worth encoding.
  bool get isUsable => this != unsatisfiable;

  /// Whether the plan spends more space than the preset asks for.
  bool get shiftsSize => this == relaxedSize;

  /// Whether the plan spends less resolution than the preset asks for.
  bool get shiftsQuality => this == reducedQuality;
}

/// A [SharePreset] resolved against one source video.
final class SharePresetPlan {
  /// Derives and validates [preferences] from [preset] so the two can never
  /// disagree.
  factory SharePresetPlan({
    required SharePreset preset,
    required SharePresetTier tier,
    required int effectiveTargetMb,
    required CompressionPlan plan,
  }) {
    final preferences = preset.preferences..validate();
    return SharePresetPlan._(
      preset: preset,
      tier: tier,
      effectiveTargetMb: effectiveTargetMb,
      plan: plan,
      preferences: preferences,
    );
  }

  const SharePresetPlan._({
    required this.preset,
    required this.tier,
    required this.effectiveTargetMb,
    required this.plan,
    required this.preferences,
  });

  final SharePreset preset;
  final SharePresetTier tier;

  /// The size actually used. Differs from [SharePreset.targetMb] when [tier]
  /// is [SharePresetTier.relaxedSize], so the UI can show the real number.
  final int effectiveTargetMb;
  final CompressionPlan plan;
  final CompressionPreferences preferences;

  /// Whether encoding this plan can produce a usable result.
  bool get isUsable => tier.isUsable && !plan.isInfeasible;
}
