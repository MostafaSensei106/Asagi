import 'dart:async';

import 'package:injectable/injectable.dart';

import '../../../../core/preferences/domain/entities/notification_settings.dart';
import '../../../../core/preferences/domain/repositories/notification_preferences_repository.dart';
import '../../../../core/services/notifications/notification_request.dart';
import '../../../../l10n/app_localizations.dart';
import '../../../notifications/data/mappers/notification_payload_codec.dart';
import '../../../notifications/domain/entities/notification_event.dart';
import '../../../notifications/domain/entities/notification_target.dart';
import '../../../notifications/domain/repositories/notification_delivery.dart';
import '../../../notifications/domain/repositories/notification_repository.dart';

@lazySingleton
final class CompressionNotificationService {
  CompressionNotificationService(
    this._preferences,
    this._repository,
    this._delivery,
  );
  final NotificationPreferencesRepository _preferences;
  final NotificationRepository _repository;
  final NotificationDelivery _delivery;
  StreamSubscription<NotificationSettings>? _subscription;
  AppLocalizations? _text;
  String? _job;
  String _phase = 'running';
  final Set<String> _delivered = {};
  Future<void> _configuration = Future<void>.value();

  Future<void> start(AppLocalizations text) async {
    _text = text;
    await _preferences.load();
    _subscription ??= _preferences.changes.listen(
      (_) => unawaited(_configureSafely()),
    );
    await _configureSafely();
  }

  Future<void> setCurrentJob(String? id, String phase) async {
    if (_job == id && _phase == phase) return;
    _job = id;
    _phase = phase;
    await _configureSafely();
  }

  Future<void> _configureSafely() {
    _configuration = _configuration.then((_) => _configure()).catchError((
      Object _,
    ) {
      // Native foreground-service defaults remain available if configuration fails.
    });
    return _configuration;
  }

  Future<void> _configure() async {
    final text = _text;
    if (text == null) return;
    await _repository.configureProgress({
      'channelId': NotificationChannels.progress,
      'channelName': text.notificationProgressChannel,
      'title': switch (_phase) {
        'paused' => text.notificationPausedTitle,
        'saving' => text.notificationSavingTitle,
        _ => text.notificationProgressTitle,
      },
      'body': text.notificationProgressBody,
      'showDetails': _preferences.current.backgroundStatus,
      'payload': NotificationPayloadCodec.encode(
        _job == null
            ? const NotificationTarget.recovery()
            : NotificationTarget.progress(_job!),
      ),
    });
  }

  Future<void> publish(
    NotificationEvent event, {
    required bool foreground,
  }) async {
    final key = switch (event) {
      JobCompletedNotification(:final jobId) => 'completed:$jobId',
      JobFailedNotification(:final jobId) => 'failed:$jobId',
      _ => null,
    };
    if (key != null && !_delivered.add(key)) return;
    await _delivery.publish(event, foreground: foreground);
  }

  @disposeMethod
  Future<void> dispose() async {
    await _subscription?.cancel();
    _subscription = null;
  }
}
