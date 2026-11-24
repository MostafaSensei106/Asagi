import 'dart:async';

import 'package:injectable/injectable.dart';

import '../../../core/error/failures.dart';
import '../../../core/preferences/domain/entities/notification_settings.dart';
import '../../../core/preferences/domain/repositories/notification_preferences_repository.dart';
import '../../../core/services/app_info/interface/base_package_info_adapter.dart';
import '../../notifications/domain/entities/notification_event.dart';
import '../../notifications/domain/repositories/notification_delivery.dart';
import '../domain/entities/update_check_status.dart';
import '../domain/repositories/update_check_repository.dart';
import '../domain/use_cases/check_app_update.dart';

@lazySingleton
final class AppUpdateService {
  AppUpdateService(
    this._preferences,
    this._storage,
    this._check,
    this._package,
    this._delivery,
  );
  final NotificationPreferencesRepository _preferences;
  final UpdateCheckRepository _storage;
  final CheckAppUpdateUseCase _check;
  final BasePackageInfoAdapter _package;
  final NotificationDelivery _delivery;
  bool _checking = false;
  StreamSubscription<NotificationSettings>? _subscription;
  bool _enabled = true;

  Future<void> start() async {
    await _preferences.load();
    _enabled = _preferences.current.productUpdates;
    _subscription ??= _preferences.changes.listen((settings) {
      final enabled = !_enabled && settings.productUpdates;
      _enabled = settings.productUpdates;
      if (enabled) unawaited(check());
    });
  }

  @disposeMethod
  Future<void> dispose() async {
    await _subscription?.cancel();
    _subscription = null;
  }

  Future<void> check() async {
    if (_checking) return;
    _checking = true;
    try {
      await _preferences.load();
      if (!_preferences.current.productUpdates) return;
      final state = await _storage.read();
      final now = DateTime.now().toUtc();
      if (state.nextReleaseCheck?.isAfter(now) == true) return;
      final result = await _check(_package.packageInfo.version);
      var next = now.add(const Duration(days: 1));
      var notified = state.lastNotifiedReleaseId;
      await result.when<Future<void>>(
        success: (release) async {
          if (release != null &&
              release.id != notified &&
              _preferences.current.productUpdates) {
            if (await _delivery.publish(
              NotificationEvent.release(release: release),
              foreground: false,
            )) {
              notified = release.id;
            } else {
              next = now.add(const Duration(minutes: 15));
            }
          }
        },
        failure: (error) async {
          next =
              error is RateLimitFailure && error.retryAt?.isAfter(now) == true
              ? error.retryAt!
              : now.add(const Duration(minutes: 15));
        },
      );
      await _storage.save(
        UpdateCheckStatus(
          nextReleaseCheck: next,
          lastNotifiedReleaseId: notified,
        ),
      );
    } on Object {
      // Optional checks never block startup or a compression job.
    } finally {
      _checking = false;
    }
  }
}
