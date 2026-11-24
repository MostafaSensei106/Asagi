import 'package:injectable/injectable.dart';

import '../../../../core/constants/types/type_def.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/notifications/domain/entities/notification_request.dart';
import '../../../../core/utils/result/result.dart';
import '../../../../core/utils/use_case/use_case_base.dart';
import '../repositories/notification_repository.dart';

@lazySingleton
final class ShowNotificationUseCase
    implements UseCaseBase<bool, LocalNotificationRequest> {
  const ShowNotificationUseCase(this._repository);
  final NotificationRepository _repository;
  @override
  Future<ApiResult<bool>> call(LocalNotificationRequest params) =>
      Result.tryCatching(
        action: () => _repository.show(params),
        onError: (error, stackTrace) =>
            const UnknownFailure('E_NOTIFICATION_DELIVERY'),
      );
}
