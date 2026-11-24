import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

import '../../di/di.dart';

enum HapticCategory { buttons, selections, gestures, success, errors }

@lazySingleton
class HapticsService {
  Map<HapticCategory, bool> _enabled = {};
  final Stopwatch _clock = Stopwatch()..start();
  int? _lastFeedback;

  void configure(Map<HapticCategory, bool> enabled) =>
      _enabled = Map.unmodifiable(enabled);

  Future<void> play(HapticCategory category) async {
    if (_enabled[category] == false) return;
    final now = _clock.elapsedMilliseconds;
    // Shared controls and their callers can describe the same interaction.
    if (_lastFeedback != null && now - _lastFeedback! < 80) return;
    _lastFeedback = now;
    switch (category) {
      case HapticCategory.buttons:
        await HapticFeedback.lightImpact();
      case HapticCategory.selections:
        await HapticFeedback.selectionClick();
      case HapticCategory.gestures:
        await HapticFeedback.lightImpact();
      case HapticCategory.success:
        await HapticFeedback.mediumImpact();
      case HapticCategory.errors:
        await HapticFeedback.heavyImpact();
    }
  }
}

/// Shared widgets remain usable in previews/tests before dependency injection.
abstract final class AppHaptics {
  static final _fallback = HapticsService();
  static HapticsService get _service => getIt.isRegistered<HapticsService>()
      ? getIt<HapticsService>()
      : _fallback;
  static Future<void> feedback(HapticCategory category) =>
      _service.play(category);
  static Future<void> button() => _service.play(HapticCategory.buttons);
  static Future<void> selection() => _service.play(HapticCategory.selections);
  static Future<void> gesture() => _service.play(HapticCategory.gestures);
}
