import 'package:freezed_annotation/freezed_annotation.dart';

import 'notification_settings.dart';

part 'notification_data.freezed.dart';

@freezed
sealed class NotificationData with _$NotificationData {
  const factory NotificationData({
    @Default(NotificationSettings()) NotificationSettings settings,
    DateTime? nextReleaseCheck,
    int? lastNotifiedReleaseId,
    DateTime? digestSince,
    String? interruptedSignature,
  }) = _NotificationData;
}
