import '../../domain/models/notification_data.dart';
import '../../domain/models/notification_settings.dart';

/// Only durable preferences/delivery markers cross the hydration boundary.
abstract final class NotificationPreferencesDto {
  static NotificationData? decode(dynamic value) {
    if (value is! Map<String, dynamic>) return null;
    try {
      final raw = Map<String, dynamic>.from(value['settings'] as Map? ?? value);
      final oldHaptics = raw['hapticFeedback'];
      if (oldHaptics is bool) {
        for (final key in [
          'buttonHaptics',
          'selectionHaptics',
          'gestureHaptics',
          'successHaptics',
          'errorHaptics',
        ]) {
          raw.putIfAbsent(key, () => oldHaptics);
        }
      }
      return NotificationData(
        settings: NotificationSettings(
          jobCompletion: _boolean(raw, 'jobCompletion', true),
          backgroundStatus: _boolean(raw, 'backgroundStatus', true),
          errorAlerts: _boolean(raw, 'errorAlerts', true),
          completionSound: _boolean(raw, 'completionSound', false),
          productUpdates: _boolean(raw, 'productUpdates', true),
          savingsDigest: _boolean(raw, 'savingsDigest', true),
          buttonHaptics: _boolean(raw, 'buttonHaptics', true),
          selectionHaptics: _boolean(raw, 'selectionHaptics', true),
          gestureHaptics: _boolean(raw, 'gestureHaptics', true),
          successHaptics: _boolean(raw, 'successHaptics', true),
          errorHaptics: _boolean(raw, 'errorHaptics', true),
        ),
        nextReleaseCheck: DateTime.tryParse(
          value['nextReleaseCheck'] as String? ?? '',
        ),
        lastNotifiedReleaseId: value['lastNotifiedReleaseId'] as int?,
        digestSince: DateTime.tryParse(value['digestSince'] as String? ?? ''),
        interruptedSignature: value['interruptedSignature'] as String?,
      );
    } catch (_) {
      return null;
    }
  }

  static Map<String, dynamic> encode(NotificationData data) => {
    'version': 1,
    'settings': {
      'jobCompletion': data.settings.jobCompletion,
      'backgroundStatus': data.settings.backgroundStatus,
      'errorAlerts': data.settings.errorAlerts,
      'completionSound': data.settings.completionSound,
      'productUpdates': data.settings.productUpdates,
      'savingsDigest': data.settings.savingsDigest,
      'buttonHaptics': data.settings.buttonHaptics,
      'selectionHaptics': data.settings.selectionHaptics,
      'gestureHaptics': data.settings.gestureHaptics,
      'successHaptics': data.settings.successHaptics,
      'errorHaptics': data.settings.errorHaptics,
    },
    'nextReleaseCheck': data.nextReleaseCheck?.toUtc().toIso8601String(),
    'lastNotifiedReleaseId': data.lastNotifiedReleaseId,
    'digestSince': data.digestSince?.toUtc().toIso8601String(),
    'interruptedSignature': data.interruptedSignature,
  };
  static bool _boolean(Map<String, dynamic> raw, String key, bool fallback) {
    final value = raw[key];
    if (value == null) return fallback;
    if (value is! bool) {
      throw const FormatException('Invalid notification preference');
    }
    return value;
  }
}
