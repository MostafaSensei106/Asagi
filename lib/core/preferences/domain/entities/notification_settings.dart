import 'package:freezed_annotation/freezed_annotation.dart';

import 'haptic_settings.dart';

part 'notification_settings.freezed.dart';

@freezed
sealed class NotificationSettings with _$NotificationSettings {
  const factory NotificationSettings({
    @Default(true) bool jobCompletion,
    @Default(true) bool backgroundStatus,
    @Default(true) bool errorAlerts,
    @Default(false) bool completionSound,
    @Default(true) bool productUpdates,
    @Default(true) bool savingsDigest,
    @Default(HapticSettings()) HapticSettings haptics,
  }) = _NotificationSettings;
}
