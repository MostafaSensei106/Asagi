import 'package:freezed_annotation/freezed_annotation.dart';

import '../repositories/notification_repository.dart';

part 'notification_access.freezed.dart';

@freezed
sealed class NotificationAccess with _$NotificationAccess {
  const factory NotificationAccess({
    required NotificationPermission permission,
    required Set<String> blockedChannels,
  }) = _NotificationAccess;
}
