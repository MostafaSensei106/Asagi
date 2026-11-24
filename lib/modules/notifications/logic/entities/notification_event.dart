import 'package:freezed_annotation/freezed_annotation.dart';

import 'app_release.dart';

part 'notification_event.freezed.dart';

@freezed
sealed class NotificationEvent with _$NotificationEvent {
  const factory NotificationEvent.completed({
    required String jobId,
    required String sourceName,
    required int originalBytes,
    required int outputBytes,
    String? warning,
  }) = JobCompletedNotification;
  const factory NotificationEvent.failed({
    required String jobId,
    required String errorCode,
  }) = JobFailedNotification;
  const factory NotificationEvent.interrupted({required int count}) =
      JobsInterruptedNotification;
  const factory NotificationEvent.release({required AppRelease release}) =
      ReleaseNotification;
  const factory NotificationEvent.savings({
    required int count,
    required int savedBytes,
  }) = SavingsNotification;
}
