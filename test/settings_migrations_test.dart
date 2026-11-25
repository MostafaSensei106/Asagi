import 'dart:convert';

import 'package:bloc_signals_hydrate/bloc_signals_hydrate.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kuymo/core/constants/pref_keys.dart';
import 'package:kuymo/core/preferences/data/repositories/compression_defaults_repository.dart';
import 'package:kuymo/core/preferences/data/repositories/language_settings_repository.dart';
import 'package:kuymo/core/preferences/domain/entities/compression_defaults.dart';

import 'support/memory_preference_storage.dart';

void main() {
  setUp(() {
    HydratedStorage.storage = MemoryHydratedStorage();
  });
  tearDown(() {
    HydratedStorage.storage = null;
  });
  test('language prefers the active hydrated value and commits before deleting sources', () async {
    final storage = MemoryPreferenceStorage()
      ..values[PrefKeys.language] = 'en_US';
    await HydratedStorage.storage!.write('LocalizationCubit', {
      'langCode': 'ar_EG',
    });
    final repository = LanguageSettingsRepository(storage);
    expect((await repository.load()).localeCode, 'ar_EG');
    expect(HydratedStorage.storage!.read('LocalizationCubit'), isNull);
    expect(storage.values[PrefKeys.language], isNull);
    expect(
      (await LanguageSettingsRepository(storage).load()).localeCode,
      'ar_EG',
    );
  });
  test(
    'a failed language migration never deletes the only saved choice',
    () async {
      final storage = MemoryPreferenceStorage()..writable = false;
      await HydratedStorage.storage!.write('LocalizationCubit', {
        'langCode': 'ar_EG',
      });
      final repository = LanguageSettingsRepository(storage);
      await expectLater(repository.load(), throwsStateError);
      expect(HydratedStorage.storage!.read('LocalizationCubit'), isNotNull);
      storage.writable = true;
      expect((await repository.load()).localeCode, 'ar_EG');
    },
  );
  test('legacy compression target and quality migrate together and reset independently', () async {
    final storage = MemoryPreferenceStorage()
      ..values['compression_default_target_mb_v1'] = 25.0
      ..values['compression_preferences_v1'] = jsonEncode({
        'maxFrameRate': 60,
        'audioBitrateKbps': 96,
      });
    final repository = CompressionDefaultsRepository(storage);
    final value = await repository.load();
    expect(value.targetMb, 25);
    expect(value.preferences.maxFrameRate, 60);
    expect(value.preferences.audioBitrateKbps, 96);
    final restored = await CompressionDefaultsRepository(storage).load();
    expect(restored.targetMb, 25);
    await repository.reset();
    expect(
      await CompressionDefaultsRepository(storage).load(),
      const CompressionDefaults(),
    );
  });
}
