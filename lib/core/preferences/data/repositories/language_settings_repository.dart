import 'package:bloc_signals_hydrate/bloc_signals_hydrate.dart';
import 'package:injectable/injectable.dart';

import '../../../constants/pref_keys.dart';
import '../../../services/shared_prefs/base_pref_storage_service.dart';
import '../../domain/entities/language_settings.dart';
import '../../domain/repositories/settings_repository.dart';
import 'local_settings_repository.dart';

@LazySingleton(as: SettingsRepository<LanguageSettings>)
final class LanguageSettingsRepository
    extends LocalSettingsRepository<LanguageSettings> {
  LanguageSettingsRepository(BasePrefStorageService storage)
    : super(
        storage: storage,
        key: 'language.preferences.v1',
        defaults: const LanguageSettings(),
        decode: (json) =>
            LanguageSettings(localeCode: json['localeCode'] as String?),
        encode: (value) => {'localeCode': value.localeCode},
        migrate: () async {
          final hydrated = HydratedStorage.storage?.read('LocalizationCubit');
          if (hydrated is Map && hydrated['langCode'] is String) {
            return LanguageSettings(localeCode: hydrated['langCode'] as String);
          }
          final old = await storage.getData<String>(key: PrefKeys.language);
          return old == null ? null : LanguageSettings(localeCode: old);
        },
      );
  bool _legacyCleaned = false;
  @override
  Future<LanguageSettings> load() async {
    final value = await super.load();
    // Only delete legacy sources after the replacement is durable.
    if (!_legacyCleaned && await storage.getData<Object>(key: key) != null) {
      _legacyCleaned = true;
      try {
        await HydratedStorage.storage?.delete('LocalizationCubit');
        await storage.removeData(key: PrefKeys.language);
      } on Object {
        /* Migration remains idempotent. */
      }
    }
    return value;
  }

  @override
  @disposeMethod
  Future<void> dispose() => super.dispose();
}
