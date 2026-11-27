import 'dart:async';

import 'package:injectable/injectable.dart';

import '../domain/entities/privacy_settings.dart';
import '../domain/repositories/settings_repository.dart';
import '../domain/repositories/telemetry_adapter.dart';

@lazySingleton
final class TelemetryConsentCoordinator {
  TelemetryConsentCoordinator(this._settings, this._adapter);
  final SettingsRepository<PrivacySettings> _settings;
  final TelemetryAdapter _adapter;
  final _changes = StreamController<bool>.broadcast(sync: true);
  StreamSubscription<PrivacySettings>? _subscription;
  Future<void>? _initialization;
  Future<void> _queue = Future<void>.value();
  bool? _applied;
  bool _crashEnabled = false;
  bool? get applied => _applied;
  Stream<bool> get changes => _changes.stream;

  Future<void> initialize() => _initialization ??= _initialize();
  Future<void> _initialize() async {
    _subscription ??= _settings.changes.listen((_) {
      unawaited(apply());
    });
    try {
      await _adapter.initialize();
      await _settings.load();
      await apply();
    } on Object {
      _crashEnabled = false;
      try {
        await _adapter.setCrashCollection(false);
        await _adapter.setPerformanceCollection(false);
        await _adapter.deletePendingCrashReports();
      } on Object {
        /* Native defaults also disable automatic collection. */
      }
      _applied = false;
      _changes.add(false);
      _initialization = null;
    }
  }

  Future<void> retry() async {
    await initialize();
    if (_applied != true) await apply();
  }

  Future<void> apply() {
    final task = _queue.then((_) async {
      final previouslyEnabled = _crashEnabled;
      _crashEnabled = false;
      var success = true;
      // Read at execution time, never apply a queued stale snapshot.
      final settings = _settings.current;
      try {
        // Stop collection before discarding reports gathered without consent.
        await _adapter.setCrashCollection(false);
        if (!previouslyEnabled || !settings.crashReports) {
          await _adapter.deletePendingCrashReports();
        }
        if (settings.crashReports && _settings.current.crashReports) {
          await _adapter.setCrashCollection(true);
          _crashEnabled = true;
        }
      } on Object {
        success = false;
      }
      try {
        await _adapter.setPerformanceCollection(
          _settings.current.performanceTelemetry,
        );
      } on Object {
        success = false;
      }
      _applied = success;
      _changes.add(success);
    });
    _queue = task.then<void>((_) {}, onError: (Object _, StackTrace _) {});
    return task;
  }

  Future<void> recordFailure(String code, {bool fatal = false}) async {
    if (!_crashEnabled || !_settings.current.crashReports) return;
    // Only explicitly classified application codes cross the diagnostics boundary.
    if (!RegExp(r'^E_[A-Z0-9_]{1,64}$').hasMatch(code)) return;
    try {
      await _adapter.recordFailure(code, fatal: fatal);
    } on Object {
      /* Diagnostics must not interrupt the app. */
    }
  }

  @disposeMethod
  Future<void> dispose() async {
    await _subscription?.cancel();
    await _queue;
    await _changes.close();
  }
}
