import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zumi/core/utils/localization/app_supported_locales.dart';
import 'package:zumi/l10n/app_localizations.dart';

void main() {
  test('language choices are unique country-specific locales', () {
    final locales = AppSupportedLocales.values;
    expect(locales.length, 30);
    expect(locales.map((locale) => locale.toString()).toSet().length, 30);

    for (final locale in locales) {
      expect(locale.countryCode, isNotNull);
      expect(lookupAppLocalizations(locale).countryCode, locale.countryCode);
    }
  });

  test('country labels follow the current display language', () {
    expect(
      lookupAppLocalizations(const Locale('en', 'US')).countryName('EG'),
      'Egypt',
    );
    expect(
      lookupAppLocalizations(const Locale('ja', 'JP')).countryName('EG'),
      'エジプト',
    );
    expect(
      lookupAppLocalizations(const Locale('ar', 'EG')).countryName('JP'),
      'اليابان',
    );
  });

  test(
    'locale selection keeps the country and migrates old language codes',
    () {
      expect(
        AppSupportedLocales.resolve(
          'en_GB',
          systemLocale: const Locale('en', 'US'),
        ),
        const Locale('en', 'GB'),
      );
      expect(
        AppSupportedLocales.resolve(
          'en',
          systemLocale: const Locale('en', 'GB'),
        ),
        const Locale('en', 'GB'),
      );
      expect(
        AppSupportedLocales.resolve(
          'en',
          systemLocale: const Locale('fr', 'FR'),
        ),
        const Locale('en', 'US'),
      );
      expect(AppSupportedLocales.resolve('xx'), isNull);
    },
  );
}
