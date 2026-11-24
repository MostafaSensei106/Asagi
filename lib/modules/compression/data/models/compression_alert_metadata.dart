import 'package:json_annotation/json_annotation.dart';

part 'compression_alert_metadata.g.dart';

@JsonSerializable()
final class CompressionAlertMetadata {
  const CompressionAlertMetadata({this.digestSince, this.interruptedSignature});
  factory CompressionAlertMetadata.fromJson(Map<String, dynamic> json) =>
      _$CompressionAlertMetadataFromJson(json);
  final String? digestSince;
  final String? interruptedSignature;
  Map<String, dynamic> toJson() => _$CompressionAlertMetadataToJson(this);
}
