// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_preferences_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationPreferencesDto _$NotificationPreferencesDtoFromJson(
  Map<String, dynamic> json,
) => NotificationPreferencesDto(
  settings: NotificationSettingsModel.fromJson(
    json['settings'] as Map<String, dynamic>,
  ),
  version: (json['version'] as num?)?.toInt() ?? 1,
  nextReleaseCheck: json['nextReleaseCheck'] == null
      ? null
      : DateTime.parse(json['nextReleaseCheck'] as String),
  lastNotifiedReleaseId: (json['lastNotifiedReleaseId'] as num?)?.toInt(),
  digestSince: json['digestSince'] == null
      ? null
      : DateTime.parse(json['digestSince'] as String),
  interruptedSignature: json['interruptedSignature'] as String?,
);

Map<String, dynamic> _$NotificationPreferencesDtoToJson(
  NotificationPreferencesDto instance,
) => <String, dynamic>{
  'version': instance.version,
  'settings': instance.settings.toJson(),
  'nextReleaseCheck': instance.nextReleaseCheck?.toIso8601String(),
  'lastNotifiedReleaseId': instance.lastNotifiedReleaseId,
  'digestSince': instance.digestSince?.toIso8601String(),
  'interruptedSignature': instance.interruptedSignature,
};
