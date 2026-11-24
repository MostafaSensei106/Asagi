// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_payload_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationPayloadModel _$NotificationPayloadModelFromJson(
  Map<String, dynamic> json,
) => NotificationPayloadModel(
  type: json['type'] as String,
  version: (json['version'] as num?)?.toInt() ?? 1,
  id: json['id'] as String?,
  url: json['url'] as String?,
);

Map<String, dynamic> _$NotificationPayloadModelToJson(
  NotificationPayloadModel instance,
) => <String, dynamic>{
  'version': instance.version,
  'type': instance.type,
  'id': ?instance.id,
  'url': ?instance.url,
};
