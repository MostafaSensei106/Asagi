import '../../logic/entities/notification_data.dart';
import '../../logic/entities/notification_settings.dart';
import '../models/notification_preferences_dto.dart';
import '../models/notification_settings_model.dart';

extension NotificationSettingsModelMapping on NotificationSettingsModel {
  NotificationSettings toEntity() => NotificationSettings(
    jobCompletion: jobCompletion,
    backgroundStatus: backgroundStatus,
    errorAlerts: errorAlerts,
    completionSound: completionSound,
    productUpdates: productUpdates,
    savingsDigest: savingsDigest,
    buttonHaptics: buttonHaptics,
    selectionHaptics: selectionHaptics,
    gestureHaptics: gestureHaptics,
    successHaptics: successHaptics,
    errorHaptics: errorHaptics,
  );
}

extension NotificationSettingsMapping on NotificationSettings {
  NotificationSettingsModel toModel() => NotificationSettingsModel(
    jobCompletion: jobCompletion,
    backgroundStatus: backgroundStatus,
    errorAlerts: errorAlerts,
    completionSound: completionSound,
    productUpdates: productUpdates,
    savingsDigest: savingsDigest,
    buttonHaptics: buttonHaptics,
    selectionHaptics: selectionHaptics,
    gestureHaptics: gestureHaptics,
    successHaptics: successHaptics,
    errorHaptics: errorHaptics,
  );
}

extension NotificationPreferencesDtoMapping on NotificationPreferencesDto {
  NotificationData toEntity() => NotificationData(
    settings: settings.toEntity(),
    nextReleaseCheck: nextReleaseCheck,
    lastNotifiedReleaseId: lastNotifiedReleaseId,
    digestSince: digestSince,
    interruptedSignature: interruptedSignature,
  );
}

extension NotificationDataMapping on NotificationData {
  NotificationPreferencesDto toModel() => NotificationPreferencesDto(
    settings: settings.toModel(),
    nextReleaseCheck: nextReleaseCheck?.toUtc(),
    lastNotifiedReleaseId: lastNotifiedReleaseId,
    digestSince: digestSince?.toUtc(),
    interruptedSignature: interruptedSignature,
  );
}
