import 'dart:ui' as ui;

import 'package:injectable/injectable.dart';

import '../../../preferences/domain/entities/language_settings.dart';
import '../../../preferences/domain/repositories/settings_repository.dart';
import '../../../services/l10n/l10n_service.dart';
import '../app_supported_locales.dart';
import 'base_localization_repository.dart';

@LazySingleton(as: BaseLocalizationRepository)
class LocalizationRepository implements BaseLocalizationRepository {
  LocalizationRepository({required this._storage, required this._l10nService});

  final SettingsRepository<LanguageSettings> _storage;
  final L10nService _l10nService;

  @override
  Future<void> cacheLanguageCode(String langCode) async {
    await _storage.update((_) => LanguageSettings(localeCode: langCode));
  }

  @override
  Future<String> getLanguageCode() async {
    final cachedLanguage = (await _storage.load()).localeCode;
    final systemLocale = ui.PlatformDispatcher.instance.locale;
    if (cachedLanguage != null) {
      final cachedLocale = AppSupportedLocales.resolve(
        cachedLanguage,
        systemLocale: systemLocale,
      );
      if (cachedLocale != null) return cachedLocale.toString();
    }

    return (AppSupportedLocales.resolve(
              systemLocale.toString(),
              systemLocale: systemLocale,
            ) ??
            _l10nService.supportedLocales.first)
        .toString();
  }
}
