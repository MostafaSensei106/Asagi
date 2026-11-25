import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:kuymo/core/preferences/data/repositories/local_settings_repository.dart';
import 'package:kuymo/core/preferences/data/repositories/privacy_settings_repository.dart';
import 'package:kuymo/core/preferences/domain/entities/privacy_settings.dart';
import 'package:kuymo/core/preferences/domain/repositories/settings_repository.dart';

import 'support/memory_preference_storage.dart';

void main() {
  LocalSettingsRepository<int> counter(
    MemoryPreferenceStorage storage, {
    String key = 'counter',
  }) => LocalSettingsRepository(
    storage: storage,
    key: key,
    defaults: 0,
    decode: (json) => json['count'] as int,
    encode: (count) => {'count': count},
  );
  test(
    'concurrent updates serialize against the latest durable value',
    () async {
      final storage = MemoryPreferenceStorage();
      final repository = counter(storage);
      await Future.wait(
        List.generate(30, (_) => repository.update((n) => n + 1)),
      );
      expect(repository.current, 30);
      expect(await counter(storage).load(), 30);
      await repository.dispose();
    },
  );
  test(
    'failed save preserves current, emits nothing, and allows retry',
    () async {
      final storage = MemoryPreferenceStorage();
      final repository = counter(storage);
      await repository.load();
      final emitted = <int>[];
      final subscription = repository.changes.listen(emitted.add);
      storage.writable = false;
      await expectLater(repository.update((_) => 7), throwsStateError);
      expect(repository.current, 0);
      expect(emitted, isEmpty);
      storage.writable = true;
      await repository.update((_) => 8);
      expect(emitted, [8]);
      await subscription.cancel();
      await repository.dispose();
    },
  );
  test('reset affects only its own group', () async {
    final storage = MemoryPreferenceStorage();
    final first = counter(storage);
    final second = counter(storage, key: 'other');
    await first.update((_) => 2);
    await second.update((_) => 3);
    await first.reset();
    expect(await counter(storage).load(), 0);
    expect(await counter(storage, key: 'other').load(), 3);
  });
  test(
    'malformed data uses defaults without silently replacing original',
    () async {
      final storage = MemoryPreferenceStorage()..values['counter'] = '{broken';
      final repository = counter(storage);
      expect(await repository.load(), 0);
      expect(repository.recovered, isTrue);
      expect(storage.values['counter'], '{broken');
      await repository.reset();
      expect(repository.recovered, isFalse);
      expect(await counter(storage).load(), 0);
    },
  );
  test('unknown newer versions are neither consumed nor overwritten', () async {
    final raw = jsonEncode({
      'version': 9,
      'value': {'count': 42},
    });
    final storage = MemoryPreferenceStorage()..values['counter'] = raw;
    final repository = counter(storage);
    await expectLater(
      repository.load(),
      throwsA(isA<UnsupportedSettingsVersion>()),
    );
    await expectLater(
      repository.update((_) => 1),
      throwsA(isA<UnsupportedSettingsVersion>()),
    );
    await expectLater(
      repository.reset(),
      throwsA(isA<UnsupportedSettingsVersion>()),
    );
    expect(storage.values['counter'], raw);
  });
  test('load is deduplicated and no-op updates avoid storage writes', () async {
    final storage = MemoryPreferenceStorage();
    var migrations = 0;
    final repository = LocalSettingsRepository<int>(
      storage: storage,
      key: 'x',
      defaults: 0,
      decode: (j) => j['count'] as int,
      encode: (v) => {'count': v},
      migrate: () async {
        migrations++;
        await Future<void>.delayed(Duration.zero);
        return null;
      },
    );
    await Future.wait(List.generate(10, (_) => repository.load()));
    await repository.update((n) => n);
    expect(migrations, 1);
    expect(storage.values, isEmpty);
  });
  test('failed migration is retryable and keeps its source', () async {
    final storage = MemoryPreferenceStorage()
      ..values['old'] = 4
      ..writable = false;
    final repository = LocalSettingsRepository<int>(
      storage: storage,
      key: 'new',
      defaults: 0,
      decode: (j) => j['count'] as int,
      encode: (v) => {'count': v},
      migrate: () async => storage.values['old'] as int,
    );
    await expectLater(repository.load(), throwsStateError);
    expect(repository.current, 0);
    expect(storage.values['old'], 4);
    storage.writable = true;
    expect(await repository.load(), 4);
    expect(await counter(storage, key: 'new').load(), 4);
  });
  test(
    'diagnostics and conversation history are opt-in on first install',
    () async {
      final settings = await PrivacySettingsRepository(
        MemoryPreferenceStorage(),
      ).load();
      expect(settings.crashReports, isFalse);
      expect(settings.performanceTelemetry, isFalse);
      expect(settings.saveChatHistory, isFalse);
      expect(settings, const PrivacySettings());
    },
  );
}
