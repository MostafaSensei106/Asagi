// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_settings_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationSettingsModel _$NotificationSettingsModelFromJson(
  Map<String, dynamic> json,
) => NotificationSettingsModel(
  jobCompletion: json['jobCompletion'] as bool? ?? true,
  backgroundStatus: json['backgroundStatus'] as bool? ?? true,
  errorAlerts: json['errorAlerts'] as bool? ?? true,
  completionSound: json['completionSound'] as bool? ?? false,
  productUpdates: json['productUpdates'] as bool? ?? true,
  savingsDigest: json['savingsDigest'] as bool? ?? true,
  buttonHaptics: json['buttonHaptics'] as bool? ?? true,
  selectionHaptics: json['selectionHaptics'] as bool? ?? true,
  gestureHaptics: json['gestureHaptics'] as bool? ?? true,
  successHaptics: json['successHaptics'] as bool? ?? true,
  errorHaptics: json['errorHaptics'] as bool? ?? true,
);

Map<String, dynamic> _$NotificationSettingsModelToJson(
  NotificationSettingsModel instance,
) => <String, dynamic>{
  'jobCompletion': instance.jobCompletion,
  'backgroundStatus': instance.backgroundStatus,
  'errorAlerts': instance.errorAlerts,
  'completionSound': instance.completionSound,
  'productUpdates': instance.productUpdates,
  'savingsDigest': instance.savingsDigest,
  'buttonHaptics': instance.buttonHaptics,
  'selectionHaptics': instance.selectionHaptics,
  'gestureHaptics': instance.gestureHaptics,
  'successHaptics': instance.successHaptics,
  'errorHaptics': instance.errorHaptics,
};
