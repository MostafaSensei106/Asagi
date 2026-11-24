import 'package:freezed_annotation/freezed_annotation.dart';

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
    @Default(true) bool buttonHaptics,
    @Default(true) bool selectionHaptics,
    @Default(true) bool gestureHaptics,
    @Default(true) bool successHaptics,
    @Default(true) bool errorHaptics,
  }) = _NotificationSettings;
}
