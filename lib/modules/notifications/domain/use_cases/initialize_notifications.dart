import 'package:injectable/injectable.dart';

import '../../../../core/constants/types/type_def.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/utils/result/result.dart';
import '../../../../core/utils/use_case/use_case_base.dart';
import '../repositories/notification_repository.dart';

@lazySingleton
final class InitializeNotificationsUseCase
    implements UseCaseBase<void, NoParams> {
  const InitializeNotificationsUseCase(this._repository);
  final NotificationRepository _repository;
  @override
  Future<ApiResult<void>> call(NoParams params) => Result.tryCatching(
    action: _repository.initialize,
    onError: (error, stackTrace) =>
        const UnknownFailure('E_NOTIFICATION_INITIALIZATION'),
  );
}
