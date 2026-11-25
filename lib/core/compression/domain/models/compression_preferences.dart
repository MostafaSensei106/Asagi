import 'encode_request.dart';

/// User choices that can be applied by the current Android encoder.
final class CompressionPreferences {
  const CompressionPreferences({
    this.maxShortEdge,
    this.maxFrameRate = 30,
    this.audioBitrateKbps,
    this.videoBitrateCeilingKbps,
    this.hdrMode = HdrMode.toneMapToSdr,
    this.safetyMargin,
  });

  /// Null lets the planner select a resolution. Values use displayed pixels.
  final int? maxShortEdge;
  final int maxFrameRate;

  /// Null lets the planner choose; zero removes audio.
  final int? audioBitrateKbps;

  /// Null lets the planner choose. A ceiling never overrides the size limit.
  final int? videoBitrateCeilingKbps;
  final HdrMode hdrMode;

  /// Null uses the planner's default 0.98 safety margin. Range is 0.85 to 0.98.
  final double? safetyMargin;

  CompressionPreferences copyWith({
    int? maxShortEdge,
    bool clearMaxShortEdge = false,
    int? maxFrameRate,
    int? audioBitrateKbps,
    bool clearAudioBitrate = false,
    int? videoBitrateCeilingKbps,
    bool clearVideoBitrate = false,
    HdrMode? hdrMode,
    double? safetyMargin,
    bool clearSafetyMargin = false,
  }) => CompressionPreferences(
    maxShortEdge: clearMaxShortEdge ? null : maxShortEdge ?? this.maxShortEdge,
    maxFrameRate: maxFrameRate ?? this.maxFrameRate,
    audioBitrateKbps: clearAudioBitrate
        ? null
        : audioBitrateKbps ?? this.audioBitrateKbps,
    videoBitrateCeilingKbps: clearVideoBitrate
        ? null
        : videoBitrateCeilingKbps ?? this.videoBitrateCeilingKbps,
    hdrMode: hdrMode ?? this.hdrMode,
    safetyMargin: clearSafetyMargin ? null : safetyMargin ?? this.safetyMargin,
  );

  void validate() {
    if (maxShortEdge != null &&
        (maxShortEdge! < 240 || maxShortEdge! > 16384 || maxShortEdge!.isOdd)) {
      throw ArgumentError.value(maxShortEdge, 'maxShortEdge');
    }
    if (!{24, 25, 30, 60, 120}.contains(maxFrameRate)) {
      throw ArgumentError.value(maxFrameRate, 'maxFrameRate');
    }
    if (audioBitrateKbps != null &&
        !{
          0,
          32,
          48,
          64,
          96,
          128,
          160,
          192,
          256,
          320,
        }.contains(audioBitrateKbps)) {
      throw ArgumentError.value(audioBitrateKbps, 'audioBitrateKbps');
    }
    if (videoBitrateCeilingKbps != null &&
        (videoBitrateCeilingKbps! < 50 || videoBitrateCeilingKbps! > 500000)) {
      throw ArgumentError.value(
        videoBitrateCeilingKbps,
        'videoBitrateCeilingKbps',
      );
    }
    if (safetyMargin != null &&
        (!safetyMargin!.isFinite ||
            safetyMargin! < 0.85 ||
            safetyMargin! > 0.98)) {
      throw ArgumentError.value(safetyMargin, 'safetyMargin');
    }
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CompressionPreferences &&
          other.maxShortEdge == maxShortEdge &&
          other.maxFrameRate == maxFrameRate &&
          other.audioBitrateKbps == audioBitrateKbps &&
          other.videoBitrateCeilingKbps == videoBitrateCeilingKbps &&
          other.hdrMode == hdrMode &&
          other.safetyMargin == safetyMargin;
  @override
  int get hashCode => Object.hash(
    maxShortEdge,
    maxFrameRate,
    audioBitrateKbps,
    videoBitrateCeilingKbps,
    hdrMode,
    safetyMargin,
  );
}
