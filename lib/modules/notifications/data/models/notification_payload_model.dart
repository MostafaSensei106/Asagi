import 'package:json_annotation/json_annotation.dart';

part 'notification_payload_model.g.dart';

@JsonSerializable(includeIfNull: false)
final class NotificationPayloadModel {
  const NotificationPayloadModel({
    required this.type,
    this.version = 1,
    this.id,
    this.url,
  });

  factory NotificationPayloadModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationPayloadModelFromJson(json);
  final int version;
  final String type;
  final String? id;
  final String? url;

  Map<String, dynamic> toJson() => _$NotificationPayloadModelToJson(this);
}
