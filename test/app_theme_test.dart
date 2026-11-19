import 'package:asagi/core/utils/theme/app_theme.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';

void main() {
  group('AppTheme', () {
    test('light theme brightness matches its color scheme', () {
      final theme = AppTheme.light();
      expect(theme.brightness, Brightness.light);
      expect(theme.colorScheme.brightness, Brightness.light);
      expect(theme.colorScheme.primary, const Color(0xff3c6090));
    });

    test('dark theme brightness matches its color scheme', () {
      final theme = AppTheme.dark();
      expect(theme.brightness, Brightness.dark);
      expect(theme.colorScheme.brightness, Brightness.dark);
      expect(theme.colorScheme.primary, const Color(0xffa5c8ff));
    });

    test('medium contrast light and dark return expected schemes', () {
      final lightMed = AppTheme.lightMediumContrast();
      final darkMed = AppTheme.darkMediumContrast();

      expect(lightMed.colorScheme.primary, const Color(0xff093764));
      expect(darkMed.colorScheme.primary, const Color(0xffcaddff));
    });

    test(
      'dark high contrast uses AMOLED pure black with base primary/secondary',
      () {
        final darkHigh = AppTheme.darkHighContrast();
        final scheme = darkHigh.colorScheme;

        // Pure black surfaces for AMOLED
        expect(scheme.surface, const Color(0xff000000));
        expect(darkHigh.scaffoldBackgroundColor, const Color(0xff000000));
        expect(scheme.onSurface, const Color(0xffffffff));

        // Base primary and secondary are preserved
        expect(scheme.primary, const Color(0xffa5c8ff));
        expect(scheme.secondary, const Color(0xffbcc7dc));
      },
    );

    test('light high contrast uses pure white with base primary/secondary', () {
      final lightHigh = AppTheme.lightHighContrast();
      final scheme = lightHigh.colorScheme;

      expect(scheme.surface, const Color(0xffffffff));
      expect(lightHigh.scaffoldBackgroundColor, const Color(0xffffffff));
      expect(scheme.onSurface, const Color(0xff000000));

      // Base primary and secondary are preserved
      expect(scheme.primary, const Color(0xff3c6090));
      expect(scheme.secondary, const Color(0xff545f71));
    });

    test('MaterialTheme wrapper provides matching schemes and themes', () {
      const materialTheme = MaterialTheme(TextTheme());
      expect(materialTheme.light().brightness, Brightness.light);
      expect(materialTheme.dark().brightness, Brightness.dark);
      expect(
        materialTheme.darkHighContrast().colorScheme.surface,
        const Color(0xff000000),
      );
    });
  });
}
