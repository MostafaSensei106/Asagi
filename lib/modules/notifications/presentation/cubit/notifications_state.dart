import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/preferences/domain/entities/notification_settings.dart';

part 'notifications_state.freezed.dart';

@freezed
sealed class NotificationsState with _$NotificationsState {
  const factory NotificationsState.initializing({
    @Default(NotificationSettings()) NotificationSettings settings,
  }) = NotificationsInitializing;
  const factory NotificationsState.ready({
    required NotificationSettings settings,
  }) = NotificationsReady;
  const factory NotificationsState.failure({
    required NotificationSettings settings,
  }) = NotificationsFailure;
}
