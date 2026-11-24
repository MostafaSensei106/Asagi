import 'package:injectable/injectable.dart';

import '../../../../core/constants/types/type_def.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/utils/result/result.dart';
import '../../../../core/utils/use_case/use_case_base.dart';
import '../repositories/notification_repository.dart';

@lazySingleton
final class OpenNotificationChannelUseCase
    implements UseCaseBase<void, String> {
  const OpenNotificationChannelUseCase(this._repository);
  final NotificationRepository _repository;
  @override
  Future<ApiResult<void>> call(String channel) => Result.tryCatching(
    action: () => _repository.openChannelSettings(channel),
    onError: (error, stack) => const UnknownFailure('E_NOTIFICATION_SETTINGS'),
  );
}
