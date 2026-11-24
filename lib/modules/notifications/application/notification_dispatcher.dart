import 'package:injectable/injectable.dart';

import '../../../core/preferences/domain/repositories/notification_preferences_repository.dart';
import '../../../core/services/haptics/haptics_service.dart';
import '../../../core/utils/use_case/use_case_base.dart';
import '../../../l10n/app_localizations.dart';
import '../domain/entities/notification_event.dart';
import '../domain/repositories/notification_delivery.dart';
import '../domain/repositories/notification_repository.dart';
import '../domain/use_cases/read_notification_access.dart';
import '../domain/use_cases/show_notification.dart';
import 'notification_message_factory.dart';

@lazySingleton
final class NotificationDispatcher implements NotificationDelivery {
  NotificationDispatcher(
    this._preferences,
    this._access,
    this._show,
    this._haptics,
  );
  final NotificationPreferencesRepository _preferences;
  final ReadNotificationAccessUseCase _access;
  final ShowNotificationUseCase _show;
  final HapticsService _haptics;
  AppLocalizations? _text;
  void configureLanguage(AppLocalizations text) => _text = text;

  @override
  Future<bool> publish(
    NotificationEvent event, {
    required bool foreground,
  }) async {
    final settings = await _preferences.load();
    if (foreground && event is JobCompletedNotification) {
      await _haptics.play(HapticCategory.success);
    }
    if (foreground && event is JobFailedNotification) {
      await _haptics.play(HapticCategory.errors);
    }
    if (foreground &&
        (event is JobCompletedNotification || event is JobFailedNotification)) {
      return false;
    }
    final allowed = switch (event) {
      JobCompletedNotification() => settings.jobCompletion,
      JobFailedNotification() ||
      JobsInterruptedNotification() => settings.errorAlerts,
      ReleaseNotification() => settings.productUpdates,
      SavingsNotification() => settings.savingsDigest,
    };
    final text = _text;
    if (!allowed || text == null) return false;
    final access = await _access(const NoParams());
    final granted = access.when(
      success: (value) => value.permission == NotificationPermission.granted,
      failure: (_) => false,
    );
    if (!granted) return false;
    // Re-read after the asynchronous permission query: a switch may have changed.
    final current = _preferences.current;
    final stillAllowed = switch (event) {
      JobCompletedNotification() => current.jobCompletion,
      JobFailedNotification() ||
      JobsInterruptedNotification() => current.errorAlerts,
      ReleaseNotification() => current.productUpdates,
      SavingsNotification() => current.savingsDigest,
    };
    if (!stillAllowed) return false;
    return (await _show(
      NotificationMessageFactory(text).create(event, current),
    )).when(success: (shown) => shown, failure: (_) => false);
  }
}
