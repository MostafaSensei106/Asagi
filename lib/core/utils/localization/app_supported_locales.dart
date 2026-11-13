import 'package:flutter/widgets.dart';

import '../../../l10n/app_localizations.dart';

/// Country-specific locales shown in the language picker.
///
/// Flutter gen-l10n requires base language ARBs as fallbacks, so its generated
/// list also contains language-only locales. Those are not separate choices.
abstract final class AppSupportedLocales {
  static final List<Locale> values = List.unmodifiable(
    AppLocalizations.supportedLocales.where(
      (locale) => locale.countryCode != null,
    ),
  );

  static Locale? resolve(String code, {Locale? systemLocale}) {
    final normalizedCode = code.replaceAll('-', '_');
    for (final locale in values) {
      if (locale.toString() == normalizedCode) return locale;
    }

    final languageCode = normalizedCode.split('_').first;
    final matches = values.where(
      (locale) => locale.languageCode == languageCode,
    );
    if (matches.isEmpty) return null;

    if (systemLocale?.languageCode == languageCode) {
      for (final locale in matches) {
        if (locale.countryCode == systemLocale?.countryCode) return locale;
      }
    }

    final defaultCountryCode = lookupAppLocalizations(Locale(languageCode))
        .countryCode;
    for (final locale in matches) {
      if (locale.countryCode == defaultCountryCode) return locale;
    }
    return matches.first;
  }
}
