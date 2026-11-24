import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/repositories/notification_repository.dart';

part 'notification_access_state.freezed.dart';

@freezed
sealed class NotificationAccessState with _$NotificationAccessState {
  const factory NotificationAccessState.ready({
    @Default(NotificationPermission.denied) NotificationPermission permission,
    @Default(<String>{}) Set<String> blockedChannels,
  }) = NotificationAccessReady;
  const factory NotificationAccessState.requesting({
    required NotificationPermission permission,
    @Default(<String>{}) Set<String> blockedChannels,
  }) = NotificationAccessRequesting;
  const factory NotificationAccessState.failure({
    required NotificationPermission permission,
    @Default(<String>{}) Set<String> blockedChannels,
  }) = NotificationAccessFailure;
}
