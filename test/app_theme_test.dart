import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';
import 'package:zumi/core/utils/theme/app_theme.dart';

void main() {
  group('AppTheme', () {
    test('light theme brightness matches its color scheme', () {
      expect(AppTheme.light.brightness, Brightness.light);
      expect(AppTheme.light.colorScheme.brightness, Brightness.light);
    });

    test('dark theme brightness matches its color scheme', () {
      expect(AppTheme.dark.brightness, Brightness.dark);
      expect(AppTheme.dark.colorScheme.brightness, Brightness.dark);
    });

    for (final (name, theme) in [
      ('light', AppTheme.light),
      ('dark', AppTheme.dark),
    ]) {
      test('$name theme uses the static Google Sans family by default', () {
        expect(theme.textTheme.bodyMedium?.fontFamily, AppTheme.fontFamily);
        expect(theme.textTheme.labelLarge?.fontFamily, AppTheme.fontFamily);
      });

      test('$name theme uses the variable Google Sans family for headings', () {
        final display = theme.textTheme.displayLarge;

        expect(display?.fontFamily, AppTheme.variableFontFamily);
        expect(
          display?.fontVariations,
          contains(const FontVariation('wght', 400)),
        );
      });
    }

    test('variableTextStyle writes arbitrary weights to the wght axis', () {
      final style = AppTheme.variableTextStyle(weight: 550, grade: -25);

      expect(style.fontFamily, AppTheme.variableFontFamily);
      expect(style.fontWeight, FontWeight.w600);
      expect(style.fontVariations, [
        const FontVariation('wght', 550),
        const FontVariation('GRAD', -25),
      ]);
    });
  });
}
