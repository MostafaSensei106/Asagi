import 'package:flutter_test/flutter_test.dart';
import 'package:kuymo/core/preferences/data/mappers/notification_preferences_codec.dart';
import 'package:kuymo/modules/notifications/data/mappers/notification_payload_codec.dart';
import 'package:kuymo/modules/notifications/domain/entities/notification_target.dart';

void main() {
  test('all destinations survive serialization without file paths', () {
    final targets = [
      const NotificationTarget.result('saved-123'),
      const NotificationTarget.progress('running-123'),
      const NotificationTarget.history(),
      const NotificationTarget.recovery(),
      NotificationTarget.release(
        Uri.parse(
          'https://github.com/MostafaSensei106/Kuymo/releases/tag/v2.0.0',
        ),
      ),
    ];
    for (final target in targets) {
      expect(
        NotificationPayloadCodec.decode(
          NotificationPayloadCodec.encode(target),
        ),
        target,
      );
    }
  });
  test('invalid and unsupported payloads are ignored', () {
    for (final payload in [
      'invalid',
      '{}',
      '[]',
      '{"version":2,"type":"history"}',
      '{"version":1,"type":"result"}',
      '{"version":1,"type":"release","url":"https://evil.com"}',
    ]) {
      expect(NotificationPayloadCodec.decode(payload), isNull);
    }
  });
  test('legacy haptics migrate to five independent settings; runtime permission is not persisted', () {
    final data = NotificationPreferencesCodec.decode({
      'settings': {'hapticFeedback': false},
    })!;
    expect(data.settings.haptics.buttons, isFalse);
    expect(data.settings.haptics.selections, isFalse);
    expect(data.settings.haptics.gestures, isFalse);
    expect(data.settings.haptics.success, isFalse);
    expect(data.settings.haptics.errors, isFalse);
    final updated = data.copyWith(
      settings: data.settings.copyWith(
        haptics: data.settings.haptics.copyWith(selections: true),
      ),
    );
    expect(
      NotificationPreferencesCodec.decode(
        NotificationPreferencesCodec.encode(updated),
      ),
      updated,
    );
    expect(
      NotificationPreferencesCodec.encode(updated).containsKey('permission'),
      isFalse,
    );
    expect(
      NotificationPreferencesCodec.decode({
        'settings': {'jobCompletion': 'bad'},
      }),
      isNull,
    );
  });
}
