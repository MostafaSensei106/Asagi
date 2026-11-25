import 'package:cupertino_ui/cupertino_ui.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kuymo/core/utils/localization/app_supported_locales.dart';
import 'package:kuymo/l10n/app_localizations.dart';
import 'package:material_ui/material_ui.dart';

void main() {
  test('all selectable locales use the approved Kuymo product name', () {
    for (final locale in AppSupportedLocales.values) {
      final strings = lookupAppLocalizations(locale);
      expect(strings.kuymo, 'Kuymo', reason: '$locale');
      expect(strings.welcomeToKuymo, contains('Kuymo'), reason: '$locale');
      expect(strings.kuymoAssistant, contains('Kuymo'), reason: '$locale');
      expect(strings.aboutKuymo, contains('Kuymo'), reason: '$locale');
    }
  });

  test('language choices are unique country-specific locales', () {
    final locales = AppSupportedLocales.values;
    final tags = locales.map((locale) => locale.toString()).toList();

    // One selectable region per language, except Chinese which offers
    // several written standards.
    expect(tags.toSet(), {
      'ar_EG',
      'de_DE',
      'en_GB',
      'es_ES',
      'id_ID',
      'it_IT',
      'ja_JP',
      'ko_KR',
      'nl_BE',
      'pl_PL',
      'pt_BR',
      'ru_RU',
      'sv_SE',
      'th_TH',
      'tr_TR',
      'zh_CN',
      'zh_HK',
      'zh_SG',
      'zh_TW',
    });
    expect(tags.toSet(), hasLength(tags.length));
    expect(locales.where((locale) => locale.languageCode == 'hi'), isEmpty);

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
    expect(
      lookupAppLocalizations(const Locale('zh', 'CN')).countryName('US'),
      '美国',
    );
    expect(
      lookupAppLocalizations(const Locale('zh', 'TW')).countryName('US'),
      '美國',
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
        const Locale('en', 'GB'),
      );
      expect(AppSupportedLocales.resolve('xx'), isNull);

      expect(
        AppSupportedLocales.resolve(
          'zh',
          systemLocale: const Locale('zh', 'TW'),
        ),
        const Locale('zh', 'TW'),
      );
      expect(
        AppSupportedLocales.resolve(
          'zh_Hant_TW',
          systemLocale: const Locale('en', 'US'),
        ),
        const Locale('zh', 'TW'),
      );
      expect(
        AppSupportedLocales.resolve(
          'pt',
          systemLocale: const Locale('pt', 'BR'),
        ),
        const Locale('pt', 'BR'),
      );
    },
  );

  testWidgets('MaterialApp loads the selected Chinese region', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        locale: const Locale('zh', 'TW'),
        supportedLocales: AppSupportedLocales.values,
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          ...AppLocalizations.localizationsDelegates,
        ],
        home: Builder(
          builder: (context) =>
              Text(AppLocalizations.of(context)!.countryName('US')),
        ),
      ),
    );

    expect(find.text('美國'), findsOneWidget);
  });
}
