import '../legacy/notification_data.dart';
import '../models/notification_preferences_dto.dart';
import 'notification_preferences_mapper.dart';

/// Migration/validation only. JSON field serialization is generated on the models.
abstract final class NotificationPreferencesCodec {
  static NotificationData? decode(dynamic value) {
    if (value is! Map<String, dynamic>) return null;
    try {
      final json = Map<String, dynamic>.of(value);
      final settings = Map<String, dynamic>.from(
        json['settings'] as Map? ?? json,
      );
      final legacyHaptics = settings.remove('hapticFeedback');
      if (legacyHaptics is bool) {
        for (final key in [
          'buttonHaptics',
          'selectionHaptics',
          'gestureHaptics',
          'successHaptics',
          'errorHaptics',
        ]) {
          settings.putIfAbsent(key, () => legacyHaptics);
        }
      }
      json['settings'] = settings;
      return NotificationPreferencesDto.fromJson(json).toEntity();
    } on Object {
      return null;
    }
  }

  static Map<String, dynamic> encode(NotificationData data) =>
      data.toModel().toJson();
}
