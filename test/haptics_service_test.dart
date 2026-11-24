import 'package:asagi/core/services/haptics/haptics_service.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

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
      final service = HapticsService();
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
    final service = HapticsService();
    await service.play(HapticCategory.buttons);
    await service.play(HapticCategory.buttons);
    expect(calls, ['HapticFeedbackType.lightImpact']);
  });
}
