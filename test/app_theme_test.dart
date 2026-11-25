import 'package:cupertino_ui/cupertino_ui.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kuymo/core/utils/theme/app_theme.dart';
import 'package:kuymo/core/utils/theme/generated_color_schemes.dart';
import 'package:kuymo/l10n/app_localizations.dart';
import 'package:kuymo/modules/appearance/presentation/widgets/color_scheme_section.dart';
import 'package:material_ui/material_ui.dart';

double ratio(Color a, Color b) {
  final first = a.computeLuminance();
  final second = b.computeLuminance();
  return first > second
      ? (first + .05) / (second + .05)
      : (second + .05) / (first + .05);
}

void main() {
  test(
    'all forty schemes retain readable paired roles and ordered surfaces',
    () {
      for (final variant in KuymoColorSchemeVariant.values) {
        for (final dark in [false, true]) {
          for (final high in [false, true]) {
            final theme = dark
                ? AppTheme.dark(variant: variant, highContrast: high)
                : AppTheme.light(variant: variant, highContrast: high);
            final colors = theme.colorScheme;
            final reason = '${variant.name} dark=$dark high=$high';
            for (final pair in [
              (colors.primary, colors.onPrimary),
              (colors.primaryContainer, colors.onPrimaryContainer),
              (colors.secondary, colors.onSecondary),
              (colors.secondaryContainer, colors.onSecondaryContainer),
              (colors.tertiary, colors.onTertiary),
              (colors.tertiaryContainer, colors.onTertiaryContainer),
              (colors.error, colors.onError),
              (colors.errorContainer, colors.onErrorContainer),
              (colors.surface, colors.onSurface),
              (colors.surfaceContainerHighest, colors.onSurfaceVariant),
            ]) {
              expect(
                ratio(pair.$1, pair.$2),
                greaterThanOrEqualTo(high ? 7 : 4.5),
                reason: reason,
              );
            }
            final surfaces = [
              colors.surfaceContainerLowest,
              colors.surfaceContainerLow,
              colors.surfaceContainer,
              colors.surfaceContainerHigh,
              colors.surfaceContainerHighest,
            ].map((color) => color.computeLuminance()).toList();
            for (var i = 1; i < surfaces.length; i++) {
              expect(
                dark
                    ? surfaces[i] >= surfaces[i - 1]
                    : surfaces[i] <= surfaces[i - 1],
                isTrue,
                reason: reason,
              );
            }
            expect(theme.scaffoldBackgroundColor, colors.surface);
            expect(theme.cardTheme.elevation, 0);
            expect(theme.dividerTheme.color, colors.outlineVariant);
          }
        }
      }
    },
  );

  test('auto uses the Japanese palette with independently paired accents', () {
    expect(kuymoSeedColor, const Color(0xFF283D50));
    final light = AppTheme.light().colorScheme;
    expect(light.surface, const Color(0xFFF5F1E8));
    expect(light.primary, const Color(0xFFC64B36));
    expect(light.onSurface, const Color(0xFF283D50));
    expect(
      light.primary,
      isNot(
        AppTheme.light(variant: KuymoColorSchemeVariant.tonalSpot)
            .colorScheme
            .primary,
      ),
    );
    final monochrome = AppTheme.dark(
      variant: KuymoColorSchemeVariant.monochrome,
    ).colorScheme;
    expect(monochrome.primary.r, monochrome.primary.g);
    expect(monochrome.primary.g, monochrome.primary.b);
  });

  for (final locale in [const Locale('en'), const Locale('ar')]) {
    for (final dark in [false, true]) {
      testWidgets(
        'palette choices lay out in ${locale.languageCode}, dark=$dark',
        (tester) async {
          KuymoColorSchemeVariant? selected;
          await tester.pumpWidget(
            MaterialApp(
              locale: locale,
              localizationsDelegates: const [
                GlobalMaterialLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
                ...AppLocalizations.localizationsDelegates,
              ],
              supportedLocales: AppLocalizations.supportedLocales,
              theme: dark ? AppTheme.dark() : AppTheme.light(),
              home: Scaffold(
                body: SingleChildScrollView(
                  child: ColorSchemeSection(
                    selectedVariant: KuymoColorSchemeVariant.auto,
                    onChanged: (value) => selected = value,
                  ),
                ),
              ),
            ),
          );
          await tester.pumpAndSettle();
          expect(find.byType(ChoiceChip), findsNWidgets(10));
          await tester.tap(find.byType(ChoiceChip).at(1));
          expect(selected, KuymoColorSchemeVariant.tonalSpot);
          expect(tester.takeException(), isNull);
        },
      );
    }
  }
}
