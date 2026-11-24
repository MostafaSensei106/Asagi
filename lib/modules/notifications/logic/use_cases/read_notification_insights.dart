import 'package:injectable/injectable.dart';

import '../../../../core/constants/types/type_def.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/utils/result/result.dart';
import '../../../../core/utils/use_case/use_case_base.dart';
import '../../../compression/domain/entities/notification_insights.dart';
import '../../../compression/domain/repositories/video_compression_repository.dart';

final class NotificationInsightsWindow {
  const NotificationInsightsWindow({required this.since, required this.until});
  final DateTime since, until;
}

@lazySingleton
final class ReadNotificationInsights
    implements UseCaseBase<NotificationInsights, NotificationInsightsWindow> {
  const ReadNotificationInsights(this._repository);
  final VideoCompressionRepository _repository;

  @override
  Future<ApiResult<NotificationInsights>> call(
    NotificationInsightsWindow params,
  ) => Result.tryCatching(
    action: () async {
      final history = await _repository.history();
      final jobs = await _repository.recoverInterrupted();
      final records = history.where(
        (record) =>
            record.createdAt.isAfter(params.since) &&
            !record.createdAt.isAfter(params.until),
      );
      final saved = records.fold<int>(
        0,
        (sum, record) =>
            sum +
            (record.originalBytes > record.bytes
                ? record.originalBytes - record.bytes
                : 0),
      );
      final ids = jobs.map((job) => job.id).toList()..sort();
      return NotificationInsights(
        completedCount: records.length,
        savedBytes: saved,
        interruptedJobIds: ids,
      );
    },
    onError: (error, stackTrace) =>
        const LocalStorageFailure('E_NOTIFICATION_INSIGHTS'),
  );
}
