import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_insights.freezed.dart';

@freezed
sealed class NotificationInsights with _$NotificationInsights {
  const factory NotificationInsights({
    required int completedCount,
    required int savedBytes,
    required List<String> interruptedJobIds,
  }) = _NotificationInsights;
}
