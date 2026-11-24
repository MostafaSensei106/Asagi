import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_target.freezed.dart';

@freezed
sealed class NotificationTarget with _$NotificationTarget {
  const factory NotificationTarget.result(String jobId) =
      NotificationResultTarget;
  const factory NotificationTarget.progress(String jobId) =
      NotificationProgressTarget;
  const factory NotificationTarget.recovery() = NotificationRecoveryTarget;
  const factory NotificationTarget.history() = NotificationHistoryTarget;
  const factory NotificationTarget.release(Uri url) = NotificationReleaseTarget;
}
