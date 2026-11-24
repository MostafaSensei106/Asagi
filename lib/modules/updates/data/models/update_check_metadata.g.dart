// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_check_metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateCheckMetadata _$UpdateCheckMetadataFromJson(Map<String, dynamic> json) =>
    UpdateCheckMetadata(
      nextReleaseCheck: json['nextReleaseCheck'] as String?,
      lastNotifiedReleaseId: (json['lastNotifiedReleaseId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$UpdateCheckMetadataToJson(
  UpdateCheckMetadata instance,
) => <String, dynamic>{
  'nextReleaseCheck': instance.nextReleaseCheck,
  'lastNotifiedReleaseId': instance.lastNotifiedReleaseId,
};
