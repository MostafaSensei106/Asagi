import 'dart:math' as math;

import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/compression/domain/models/compression_plan.dart';

/// Local estimate of a device encoder's byte overshoot for a format bucket.
final class EncoderCalibrationStore {
  const EncoderCalibrationStore(this.preferences);

  static const _prefix = 'encoder_overshoot_v1_';
  final SharedPreferences preferences;

  double recommendedFactor(String profile) {
    final ratio = preferences.getDouble('$_prefix$profile');
    if (ratio == null || !ratio.isFinite || ratio <= 1) return 1;
    return (1 / ratio).clamp(0.65, 1.0);
  }

  Future<void> observe(
    String profile,
    CompressionPlan plan,
    double durationSeconds,
    int actualBytes,
  ) async {
    if (!durationSeconds.isFinite || durationSeconds <= 0 || actualBytes <= 0) {
      return;
    }
    final overhead = math.max(plan.hardLimitBytes * 0.01, 32768.0);
    final expectedBytes =
        (plan.targetVideoBitrateBps + plan.targetAudioBitrateBps) *
            durationSeconds /
            8 +
        overhead;
    if (expectedBytes <= 0) return;
    final observed = (actualBytes / expectedBytes).clamp(1.0, 1.54);
    if (observed <= 1.02) return;
    final previous = preferences.getDouble('$_prefix$profile');
    final estimate = previous == null || !previous.isFinite
        ? observed
        : (previous * 0.75 + observed * 0.25).clamp(1.0, 1.54);
    await preferences.setDouble('$_prefix$profile', estimate);
  }
}
