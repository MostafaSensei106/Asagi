import 'dart:async';

import 'package:bloc_signals_hydrate/bloc_signals_hydrate.dart';
import 'package:injectable/injectable.dart';

import '../../../services/shared_prefs/base_pref_storage_service.dart';
import '../../domain/entities/notification_settings.dart';
import '../../domain/repositories/notification_preferences_repository.dart';
import '../mappers/notification_preferences_codec.dart';
import '../mappers/notification_preferences_mapper.dart';
import '../models/notification_settings_model.dart';

@LazySingleton(as: NotificationPreferencesRepository)
final class SharedNotificationPreferences
    implements NotificationPreferencesRepository {
  SharedNotificationPreferences(this._storage);
  final BasePrefStorageService _storage;
  static const key = 'notification.preferences.v2';
  final _changes = StreamController<NotificationSettings>.broadcast(sync: true);
  NotificationSettings _current = const NotificationSettings();
  Future<NotificationSettings>? _loading;
  Future<void> _writes = Future<void>.value();

  @override
  NotificationSettings get current => _current;
  @override
  Stream<NotificationSettings> get changes => _changes.stream;

  @override
  Future<NotificationSettings> load() async {
    await (_loading ??= _load().catchError((Object error, StackTrace stack) {
      _loading = null;
      Error.throwWithStackTrace(error, stack);
    }));
    return _current;
  }

  Future<NotificationSettings> _load() async {
    final saved = await _storage.getData<Map<String, dynamic>>(key: key);
    if (saved != null) {
      _current = NotificationSettingsModel.fromJson(saved).toEntity();
    } else {
      final legacy = NotificationPreferencesCodec.decode(
        HydratedStorage.storage?.read('NotificationsCubit'),
      );
      if (legacy != null) {
        // Keep the old snapshot until every destination has been saved.
        final updates = await _storage.getData<Map<String, dynamic>>(
          key: 'updates.runtime.v1',
        );
        if (updates == null &&
            !await _storage.setData(
              key: 'updates.runtime.v1',
              value: {
                'nextReleaseCheck': legacy.nextReleaseCheck?.toIso8601String(),
                'lastNotifiedReleaseId': legacy.lastNotifiedReleaseId,
              },
            )) {
          throw StateError('E_PREFERENCES_MIGRATION');
        }
        final compression = await _storage.getData<Map<String, dynamic>>(
          key: 'compression.alerts.v1',
        );
        if (compression == null &&
            !await _storage.setData(
              key: 'compression.alerts.v1',
              value: {
                'digestSince': legacy.digestSince?.toIso8601String(),
                'interruptedSignature': legacy.interruptedSignature,
              },
            )) {
          throw StateError('E_PREFERENCES_MIGRATION');
        }
        if (!await _storage.setData(
          key: key,
          value: legacy.settings.toModel().toJson(),
        )) {
          throw StateError('E_PREFERENCES_MIGRATION');
        }
        _current = legacy.settings;
        try {
          await HydratedStorage.storage?.delete('NotificationsCubit');
        } on Object {
          /* The new preferences already take precedence over this snapshot. */
        }
      }
    }
    _changes.add(_current);
    return _current;
  }

  @override
  Future<NotificationSettings> update(
    NotificationSettings Function(NotificationSettings) change,
  ) {
    final task = _writes.then((_) async {
      await load();
      final next = change(_current);
      if (next == _current) return _current;
      if (!await _storage.setData(key: key, value: next.toModel().toJson())) {
        throw StateError('E_PREFERENCES_WRITE');
      }
      _current = next;
      _changes.add(next);
      return next;
    });
    _writes = task.then<void>((_) {}, onError: (Object _, StackTrace _) {});
    return task;
  }

  @override
  Future<NotificationSettings> reset() =>
      update((_) => const NotificationSettings());

  @override
  @disposeMethod
  Future<void> dispose() => _changes.close();
}
