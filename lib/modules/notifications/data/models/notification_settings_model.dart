import 'package:json_annotation/json_annotation.dart';

part 'notification_settings_model.g.dart';

@JsonSerializable()
final class NotificationSettingsModel {
  const NotificationSettingsModel({
    this.jobCompletion = true,
    this.backgroundStatus = true,
    this.errorAlerts = true,
    this.completionSound = false,
    this.productUpdates = true,
    this.savingsDigest = true,
    this.buttonHaptics = true,
    this.selectionHaptics = true,
    this.gestureHaptics = true,
    this.successHaptics = true,
    this.errorHaptics = true,
  });

  factory NotificationSettingsModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationSettingsModelFromJson(json);
  final bool jobCompletion;
  final bool backgroundStatus;
  final bool errorAlerts;
  final bool completionSound;
  final bool productUpdates;
  final bool savingsDigest;
  final bool buttonHaptics;
  final bool selectionHaptics;
  final bool gestureHaptics;
  final bool successHaptics;
  final bool errorHaptics;

  Map<String, dynamic> toJson() => _$NotificationSettingsModelToJson(this);
}
