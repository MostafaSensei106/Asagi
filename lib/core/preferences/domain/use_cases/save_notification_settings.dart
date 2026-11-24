import 'package:injectable/injectable.dart';

import '../../../constants/types/type_def.dart';
import '../../../error/failures.dart';
import '../../../utils/result/result.dart';
import '../../../utils/use_case/use_case_base.dart';
import '../entities/notification_settings.dart';
import '../repositories/notification_preferences_repository.dart';

@lazySingleton
final class SaveNotificationSettingsUseCase
    implements
        UseCaseBase<
          NotificationSettings,
          NotificationSettings Function(NotificationSettings)
        > {
  const SaveNotificationSettingsUseCase(this._repository);
  final NotificationPreferencesRepository _repository;
  @override
  Future<ApiResult<NotificationSettings>> call(
    NotificationSettings Function(NotificationSettings) params,
  ) => Result.tryCatching(
    action: () => _repository.update(params),
    catchErrors: true,
    onError: (error, stack) => const LocalStorageFailure('E_PREFERENCES'),
  );
}
