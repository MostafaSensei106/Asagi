import 'package:flutter_test/flutter_test.dart';
import 'package:kuymo/core/preferences/application/telemetry_consent_coordinator.dart';
import 'package:kuymo/core/preferences/data/repositories/privacy_settings_repository.dart';
import 'package:kuymo/core/preferences/domain/repositories/telemetry_adapter.dart';

import 'support/memory_preference_storage.dart';

final class RecordingTelemetry implements TelemetryAdapter {
  bool crash = false;
  bool performance = false;
  int deletions = 0;
  final failures = <String>[];
  bool rejectPerformance = false;
  @override
  Future<void> initialize() async {}
  @override
  Future<void> setCrashCollection(bool enabled) async {
    crash = enabled;
  }

  @override
  Future<void> setPerformanceCollection(bool enabled) async {
    if (rejectPerformance) throw StateError('SDK failed');
    performance = enabled;
  }

  @override
  Future<void> deletePendingCrashReports() async {
    deletions++;
  }

  @override
  Future<void> recordFailure(String code, {required bool fatal}) async {
    failures.add(code);
  }
}

void main() {
  test(
    'no consent disables both SDKs and drops pending crash reports',
    () async {
      final settings = PrivacySettingsRepository(MemoryPreferenceStorage());
      final sdk = RecordingTelemetry()
        ..crash = true
        ..performance = true;
      final coordinator = TelemetryConsentCoordinator(settings, sdk);
      await coordinator.initialize();
      expect(sdk.crash, isFalse);
      expect(sdk.performance, isFalse);
      expect(sdk.deletions, greaterThan(0));
      await coordinator.recordFailure('E_FLUTTER_FATAL');
      expect(sdk.failures, isEmpty);
      await coordinator.dispose();
      await settings.dispose();
    },
  );
  test(
    'consents are independent, revocable, and do not send raw content',
    () async {
      final settings = PrivacySettingsRepository(MemoryPreferenceStorage());
      final sdk = RecordingTelemetry();
      final coordinator = TelemetryConsentCoordinator(settings, sdk);
      await coordinator.initialize();
      await settings.update((s) => s.copyWith(crashReports: true));
      await coordinator.apply();
      expect(sdk.crash, isTrue);
      expect(sdk.performance, isFalse);
      await coordinator.recordFailure('/private/video.mp4');
      await coordinator.recordFailure('E_FLUTTER_FATAL');
      expect(sdk.failures, ['E_FLUTTER_FATAL']);
      await settings.update(
        (s) => s.copyWith(crashReports: false, performanceTelemetry: true),
      );
      await coordinator.apply();
      expect(sdk.crash, isFalse);
      expect(sdk.performance, isTrue);
      await coordinator.recordFailure('E_PLATFORM_FATAL');
      expect(sdk.failures, ['E_FLUTTER_FATAL']);
      await coordinator.dispose();
      await settings.dispose();
    },
  );
  test(
    'SDK application failure is visible and can be retried independently',
    () async {
      final settings = PrivacySettingsRepository(MemoryPreferenceStorage());
      final sdk = RecordingTelemetry()..rejectPerformance = true;
      final coordinator = TelemetryConsentCoordinator(settings, sdk);
      await coordinator.initialize();
      expect(coordinator.applied, isFalse);
      sdk.rejectPerformance = false;
      await coordinator.apply();
      expect(coordinator.applied, isTrue);
      await coordinator.dispose();
      await settings.dispose();
    },
  );
}
