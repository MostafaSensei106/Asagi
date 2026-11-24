import 'package:json_annotation/json_annotation.dart';

import 'notification_settings_model.dart';

part 'notification_preferences_dto.g.dart';

/// Durable hydration data; runtime permission and loading states are excluded.
@JsonSerializable(explicitToJson: true)
final class NotificationPreferencesDto {
  const NotificationPreferencesDto({
    required this.settings,
    this.version = 1,
    this.nextReleaseCheck,
    this.lastNotifiedReleaseId,
    this.digestSince,
    this.interruptedSignature,
  });

  factory NotificationPreferencesDto.fromJson(Map<String, dynamic> json) =>
      _$NotificationPreferencesDtoFromJson(json);

  final int version;
  final NotificationSettingsModel settings;
  final DateTime? nextReleaseCheck;
  final int? lastNotifiedReleaseId;
  final DateTime? digestSince;
  final String? interruptedSignature;

  Map<String, dynamic> toJson() => _$NotificationPreferencesDtoToJson(this);
}
