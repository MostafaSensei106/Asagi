import 'dart:async';

import 'package:injectable/injectable.dart';

import '../../../../core/preferences/domain/entities/notification_settings.dart';
import '../../../../core/preferences/domain/repositories/notification_preferences_repository.dart';
import '../../../notifications/domain/entities/notification_event.dart';
import '../../../notifications/domain/repositories/notification_delivery.dart';
import '../../domain/entities/compression_alert_status.dart';
import '../../domain/repositories/compression_alert_repository.dart';
import '../../domain/use_cases/read_notification_insights.dart';

@lazySingleton
final class CompressionInsightsService {
  CompressionInsightsService(
    this._preferences,
    this._storage,
    this._read,
    this._delivery,
  );
  final NotificationPreferencesRepository _preferences;
  final CompressionAlertRepository _storage;
  final ReadNotificationInsightsUseCase _read;
  final NotificationDelivery _delivery;
  StreamSubscription<NotificationSettings>? _subscription;
  bool _enabled = true;
  Future<void> _queue = Future<void>.value();
  bool _checking = false;

  Future<void> start() async {
    await _preferences.load();
    _enabled = _preferences.current.savingsDigest;
    _subscription ??= _preferences.changes.listen((settings) {
      final reenabled = !_enabled && settings.savingsDigest;
      _enabled = settings.savingsDigest;
      if (reenabled) {
        _queue = _queue
            .then((_) async {
              final state = await _storage.read();
              await _storage.save(
                CompressionAlertStatus(
                  digestSince: DateTime.now().toUtc(),
                  interruptedSignature: state.interruptedSignature,
                ),
              );
            })
            .catchError((Object _) {});
      }
    });
  }

  Future<void> check() async {
    if (_checking) return;
    _checking = true;
    try {
      await _queue;
      await _preferences.load();
      final state = await _storage.read();
      final now = DateTime.now().toUtc();
      var since = state.digestSince ?? now;
      var signature = state.interruptedSignature;
      final result = await _read(
        NotificationInsightsWindow(since: since, until: now),
      );
      await result.when<Future<void>>(
        success: (insights) async {
          if (_preferences.current.savingsDigest &&
              now.difference(since) >= const Duration(days: 7)) {
            if (insights.savedBytes <= 0 ||
                await _delivery.publish(
                  NotificationEvent.savings(
                    count: insights.completedCount,
                    savedBytes: insights.savedBytes,
                  ),
                  foreground: false,
                )) {
              since = now;
            }
          }
          final ids = insights.interruptedJobIds;
          if (ids.isEmpty) {
            signature = null;
          } else if (_preferences.current.errorAlerts &&
              ids.join('|') != signature &&
              await _delivery.publish(
                NotificationEvent.interrupted(count: ids.length),
                foreground: false,
              )) {
            signature = ids.join('|');
          }
          await _storage.save(
            CompressionAlertStatus(
              digestSince: since,
              interruptedSignature: signature,
            ),
          );
        },
        failure: (_) async {},
      );
    } on Object {
      // Optional summaries retry on a later resume without blocking compression.
    } finally {
      _checking = false;
    }
  }

  @disposeMethod
  Future<void> dispose() async {
    await _subscription?.cancel();
    _subscription = null;
  }
}
