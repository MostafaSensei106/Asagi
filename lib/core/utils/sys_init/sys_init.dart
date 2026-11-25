import 'dart:async';

import 'package:bloc_signals/bloc_signals.dart';
import 'package:bloc_signals_hydrate/bloc_signals_hydrate.dart';
import 'package:bloc_signals_hydrate/secure_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../../modules/ai/data/repositories/ai_runtime_lifecycle.dart';
import '../../di/di.dart' as di;
import '../../preferences/application/telemetry_consent_coordinator.dart';
import '../../preferences/domain/entities/language_settings.dart';
import '../../preferences/domain/repositories/settings_repository.dart';
import '../bloc/bloc_observer.dart';
import 'hydrated_boot.dart';

/// The entry point of the application.
final class SysInit {
  const SysInit._();

  /// Non-sensitive boot diagnostics, reported to the crash sink once it is
  /// up (see [initializeDeferredServices]). Never contains secrets  only
  /// [HydratedBootDecision] names.
  // static String? _pendingStorageIssue;

  /// Performs only the initialization required before the first frame.
  static Future<void> initializeCriticalServices() async {
    WidgetsFlutterBinding.ensureInitialized();
    BlocSignalObserver.observer = const AppBlocObserver();

    // Initialize only services required for the app's first frame and core
    // state. Notifications and other non-essential services are deferred to
    // [initializeDeferredServices] so they do not delay the initial UI.
    // Resolve the app directory once and derive every storage path from it,
    // so DI / Dio / cache construction below performs zero I/O of its own.
    //
    // Web has no filesystem: `path_provider` throws there. The Hive HTTP
    // cache store accepts a null directory on web and transparently falls
    // back to IndexedDB, so we pass an empty path through DI instead.
    HydratedStorage.storage = await _buildHydratedStorage();

    await di.configureDependencies();
    try {
      await di.getIt<SettingsRepository<LanguageSettings>>().load();
    } on Object {
      /* Render using the system locale if local storage is unavailable. */
    }

    //  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    // Install fatal handlers early so crashes during deferred startup are
    // captured.
    if (kReleaseMode) {
      FlutterError.onError = (details) {
        FlutterError.presentError(details);
        unawaited(
          di.getIt<TelemetryConsentCoordinator>().recordFailure(
            'E_FLUTTER_FATAL',
            fatal: true,
          ),
        );
      };

      PlatformDispatcher.instance.onError = (error, stack) {
        unawaited(
          di.getIt<TelemetryConsentCoordinator>().recordFailure(
            'E_PLATFORM_FATAL',
            fatal: true,
          ),
        );
        return false;
      };
    }
  }

  /// Defers non-critical startup work until after the app is already visible.
  static Future<void> initializeDeferredServices() async {
    try {
      di.getIt<AiRuntimeLifecycle>().start();
      await di.getIt<TelemetryConsentCoordinator>().initialize();
    } catch (_) {
      // Startup must never crash the app. Failures here are non-critical.
    }
  }

  /// Builds hydrated storage backed by the platform secure store
  /// (Keychain / Keystore), with an explicit fail-closed boot decision
  /// (see [HydratedBootDecision]).
  ///
  /// - Secure storage available → [SecureHydratedStorage], encrypted at rest
  ///   by the platform.
  /// - Secure storage unavailable → persistence disabled
  ///   ([DisabledStorage]), never plaintext.
  static Future<HydratedStorage> _buildHydratedStorage() async {
    try {
      final storage = await SecureHydratedStorage.build(
        const FlutterSecureStorage(),
        prefix: 'hydrated:',
      );
      return storage;
    } catch (_) {
      return const DisabledStorage();
    }
  }
}
