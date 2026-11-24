import 'package:freezed_annotation/freezed_annotation.dart';

import '../entities/notification_data.dart';
import '../repositories/notification_repository.dart';

part 'notifications_state.freezed.dart';

@freezed
sealed class NotificationsState with _$NotificationsState {
  const factory NotificationsState.initializing({
    @Default(NotificationData()) NotificationData data,
    @Default(NotificationPermission.denied) NotificationPermission permission,
    @Default(<String>{}) Set<String> blockedChannels,
  }) = NotificationsInitializing;
  const factory NotificationsState.ready({
    required NotificationData data,
    required NotificationPermission permission,
    @Default(<String>{}) Set<String> blockedChannels,
  }) = NotificationsReady;
  const factory NotificationsState.requestingPermission({
    required NotificationData data,
    required NotificationPermission permission,
    @Default(<String>{}) Set<String> blockedChannels,
  }) = NotificationsRequestingPermission;
  const factory NotificationsState.failure({
    required NotificationData data,
    required NotificationPermission permission,
    @Default(<String>{}) Set<String> blockedChannels,
  }) = NotificationsFailure;
}
