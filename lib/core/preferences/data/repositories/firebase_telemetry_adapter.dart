import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_performance/firebase_performance.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../../../../firebase_options.dart';
import '../../domain/repositories/telemetry_adapter.dart';

@LazySingleton(as: TelemetryAdapter)
final class FirebaseTelemetryAdapter implements TelemetryAdapter {
  bool get _supported =>
      !kIsWeb &&
      (defaultTargetPlatform == TargetPlatform.android ||
          defaultTargetPlatform == TargetPlatform.iOS);
  Future<void>? _initialization;
  @override
  Future<void> initialize() async {
    if (!_supported) return;
    try {
      await (_initialization ??= Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      ).then<void>((_) {}));
    } on Object {
      _initialization = null;
      rethrow;
    }
  }

  @override
  Future<void> setCrashCollection(bool enabled) async {
    if (!_supported) return;
    await initialize();
    await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(enabled);
  }

  @override
  Future<void> setPerformanceCollection(bool enabled) async {
    if (!_supported) return;
    await initialize();
    await FirebasePerformance.instance.setPerformanceCollectionEnabled(enabled);
  }

  @override
  Future<void> deletePendingCrashReports() async {
    if (!_supported) return;
    await initialize();
    await FirebaseCrashlytics.instance.deleteUnsentReports();
  }

  @override
  Future<void> recordFailure(String code, {required bool fatal}) async {
    if (!_supported) return;
    await FirebaseCrashlytics.instance.recordError(
      StateError(code),
      null,
      reason: code,
      fatal: fatal,
      printDetails: false,
    );
  }
}
