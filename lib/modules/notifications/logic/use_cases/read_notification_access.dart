import 'package:injectable/injectable.dart';

import '../../../../core/constants/types/type_def.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/utils/result/result.dart';
import '../../../../core/utils/use_case/use_case_base.dart';
import '../entities/notification_access.dart';
import '../repositories/notification_repository.dart';

@lazySingleton
final class ReadNotificationAccess
    implements UseCaseBase<NotificationAccess, NoParams> {
  const ReadNotificationAccess(this._repository);
  final NotificationRepository _repository;
  @override
  Future<ApiResult<NotificationAccess>> call(NoParams params) =>
      Result.tryCatching(
        action: () async => NotificationAccess(
          permission: await _repository.permission(),
          blockedChannels: await _repository.blockedChannels(),
        ),
        onError: (error, stackTrace) =>
            const UnknownFailure('E_NOTIFICATION_ACCESS'),
      );
}
