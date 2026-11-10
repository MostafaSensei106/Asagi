import 'encode_request.dart';

/// User choices that can be applied by the current Android encoder.
final class CompressionPreferences {
  const CompressionPreferences({
    this.maxShortEdge,
    this.maxFrameRate = 30,
    this.audioBitrateKbps,
    this.videoBitrateCeilingKbps,
    this.hdrMode = HdrMode.toneMapToSdr,
  });

  /// Null lets the planner select a resolution. Values use displayed pixels.
  final int? maxShortEdge;
  final int maxFrameRate;

  /// Null lets the planner choose; zero removes audio.
  final int? audioBitrateKbps;

  /// Null lets the planner choose. A ceiling never overrides the size limit.
  final int? videoBitrateCeilingKbps;
  final HdrMode hdrMode;

  CompressionPreferences copyWith({
    int? maxShortEdge,
    bool clearMaxShortEdge = false,
    int? maxFrameRate,
    int? audioBitrateKbps,
    bool clearAudioBitrate = false,
    int? videoBitrateCeilingKbps,
    bool clearVideoBitrate = false,
    HdrMode? hdrMode,
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
        !{0, 48, 64, 96, 128}.contains(audioBitrateKbps)) {
      throw ArgumentError.value(audioBitrateKbps, 'audioBitrateKbps');
    }
    if (videoBitrateCeilingKbps != null &&
        (videoBitrateCeilingKbps! < 150 || videoBitrateCeilingKbps! > 500000)) {
      throw ArgumentError.value(
        videoBitrateCeilingKbps,
        'videoBitrateCeilingKbps',
      );
    }
  }
}
