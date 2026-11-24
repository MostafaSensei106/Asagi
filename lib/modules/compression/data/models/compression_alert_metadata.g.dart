// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'compression_alert_metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompressionAlertMetadata _$CompressionAlertMetadataFromJson(
  Map<String, dynamic> json,
) => CompressionAlertMetadata(
  digestSince: json['digestSince'] as String?,
  interruptedSignature: json['interruptedSignature'] as String?,
);

Map<String, dynamic> _$CompressionAlertMetadataToJson(
  CompressionAlertMetadata instance,
) => <String, dynamic>{
  'digestSince': instance.digestSince,
  'interruptedSignature': instance.interruptedSignature,
};
