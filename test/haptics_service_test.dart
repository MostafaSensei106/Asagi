import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kuymo/core/preferences/data/repositories/shared_notification_preferences.dart';
import 'package:kuymo/core/services/haptics/haptics_service.dart';

import 'support/memory_preference_storage.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  final calls = <String>[];
  setUp(() {
    calls.clear();
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(SystemChannels.platform, (call) async {
          if (call.method == 'HapticFeedback.vibrate') {
            calls.add(call.arguments as String);
          }
          return null;
        });
  });
  tearDown(
    () => TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(SystemChannels.platform, null),
  );

  test('all five categories can be enabled independently', () async {
    for (final selected in HapticCategory.values) {
      final service = HapticsService.fallback();
      service.configure({
        for (final category in HapticCategory.values)
          category: category == selected,
      });
      final before = calls.length;
      for (final category in HapticCategory.values) {
        await service.play(category);
      }
      expect(calls.length, before + 1, reason: selected.name);
    }
  });
  test('a shared control and its caller produce only one pulse', () async {
    final service = HapticsService.fallback();
    await service.play(HapticCategory.buttons);
    await service.play(HapticCategory.buttons);
    expect(calls, ['HapticFeedbackType.lightImpact']);
  });

  test(
    'haptics read persisted preferences without an instantiated settings cubit',
    () async {
      final preferences = SharedNotificationPreferences(
        MemoryPreferenceStorage(),
      );
      await preferences.update(
        (current) =>
            current.copyWith(haptics: current.haptics.copyWith(buttons: false)),
      );
      final service = HapticsService(preferences);
      await service.play(HapticCategory.buttons);
      expect(calls, isEmpty);
      await preferences.update(
        (current) =>
            current.copyWith(haptics: current.haptics.copyWith(buttons: true)),
      );
      await service.play(HapticCategory.buttons);
      expect(calls, ['HapticFeedbackType.lightImpact']);
      await preferences.dispose();
    },
  );
}
