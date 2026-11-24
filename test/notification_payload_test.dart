import 'package:asagi/modules/notifications/data/mappers/notification_payload_codec.dart';
import 'package:asagi/modules/notifications/data/models/notification_preferences_dto.dart';
import 'package:asagi/modules/notifications/domain/models/notification_target.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('all destinations survive serialization without file paths', () {
    final targets = [
      const NotificationTarget.result('saved-123'),
      const NotificationTarget.progress('running-123'),
      const NotificationTarget.history(),
      const NotificationTarget.recovery(),
      NotificationTarget.release(
        Uri.parse(
          'https://github.com/MostafaSensei106/Asagi/releases/tag/v2.0.0',
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
    final data = NotificationPreferencesDto.decode({
      'settings': {'hapticFeedback': false},
    })!;
    expect(data.settings.buttonHaptics, isFalse);
    expect(data.settings.selectionHaptics, isFalse);
    expect(data.settings.gestureHaptics, isFalse);
    expect(data.settings.successHaptics, isFalse);
    expect(data.settings.errorHaptics, isFalse);
    final updated = data.copyWith(
      settings: data.settings.copyWith(selectionHaptics: true),
    );
    expect(
      NotificationPreferencesDto.decode(
        NotificationPreferencesDto.encode(updated),
      ),
      updated,
    );
    expect(
      NotificationPreferencesDto.encode(updated).containsKey('permission'),
      isFalse,
    );
    expect(
      NotificationPreferencesDto.decode({
        'settings': {'jobCompletion': 'bad'},
      }),
      isNull,
    );
  });
}
