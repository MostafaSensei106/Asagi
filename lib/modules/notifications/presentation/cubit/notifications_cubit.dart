import 'dart:async';

import 'package:bloc_signals/bloc_signals.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/preferences/domain/entities/notification_settings.dart';
import '../../../../core/preferences/domain/repositories/notification_preferences_repository.dart';
import '../../../../core/preferences/domain/use_cases/load_notification_settings.dart';
import '../../../../core/preferences/domain/use_cases/save_notification_settings.dart';
import '../../../../core/utils/use_case/use_case_base.dart';
import 'notifications_state.dart';

@lazySingleton
final class NotificationsCubit extends CubitSignal<NotificationsState> {
  NotificationsCubit(
    NotificationPreferencesRepository repository,
    this._load,
    this._save,
  ) : super(
        initialState: NotificationsState.initializing(
          settings: repository.current,
        ),
      ) {
    _subscription = repository.changes.listen((settings) {
      if (!isClosed) emit(NotificationsState.ready(settings: settings));
    });
  }
  final LoadNotificationSettingsUseCase _load;
  final SaveNotificationSettingsUseCase _save;
  late final StreamSubscription<NotificationSettings> _subscription;
  NotificationSettings get settings => stateValue.settings;

  Future<void> initialize() async {
    final result = await _load(const NoParams());
    if (isClosed) return;
    result.when(
      success: (settings) => emit(NotificationsState.ready(settings: settings)),
      failure: (_) => emit(NotificationsState.failure(settings: settings)),
    );
  }

  Future<void> updateSettings(
    NotificationSettings Function(NotificationSettings) change,
  ) async {
    final result = await _save(change);
    if (isClosed) return;
    result.when(
      success: (settings) => emit(NotificationsState.ready(settings: settings)),
      failure: (_) => emit(NotificationsState.failure(settings: settings)),
    );
  }

  @override
  Future<void> close() async {
    await _subscription.cancel();
    return super.close();
  }
}
