import 'package:material_ui/material_ui.dart';

import '../../constants/app_config.dart';
import 'generated_color_schemes.dart';

/// Offline Material palettes; Auto combines Kuymo's three brand families.
enum KuymoColorSchemeVariant {
  auto,
  tonalSpot,
  fidelity,
  content,
  expressive,
  fruitSalad,
  monochrome,
  neutral,
  rainbow,
  vibrant,
}

final class AppTheme {
  static const String fontFamily = 'GoogleSans';

  static final Map<(Brightness, KuymoColorSchemeVariant, bool), ThemeData>
  _cache = {};

  static ThemeData light({
    KuymoColorSchemeVariant variant = KuymoColorSchemeVariant.auto,
    bool highContrast = false,
  }) => _theme(Brightness.light, variant, highContrast);

  static ThemeData dark({
    KuymoColorSchemeVariant variant = KuymoColorSchemeVariant.auto,
    bool highContrast = false,
  }) => _theme(Brightness.dark, variant, highContrast);

  static ThemeData lightHighContrast({
    KuymoColorSchemeVariant variant = KuymoColorSchemeVariant.auto,
  }) => light(variant: variant, highContrast: true);

  static ThemeData darkHighContrast({
    KuymoColorSchemeVariant variant = KuymoColorSchemeVariant.auto,
  }) => dark(variant: variant, highContrast: true);

  static ThemeData _theme(
    Brightness brightness,
    KuymoColorSchemeVariant variant,
    bool highContrast,
  ) => _cache[(brightness, variant, highContrast)] ??= _build(
    matugenColorScheme(
      variant: variant.name,
      brightness: brightness,
      highContrast: highContrast,
    ),
  );

  static ThemeData _build(ColorScheme colorScheme) => ThemeData(
    useMaterial3: true,
    brightness: colorScheme.brightness,
    colorScheme: colorScheme,
    scaffoldBackgroundColor: colorScheme.surface,
    canvasColor: colorScheme.surface,
    fontFamily: fontFamily,
    cardTheme: CardThemeData(
      color: colorScheme.surfaceContainerLow,
      elevation: 0,
    ),
    dividerTheme: DividerThemeData(color: colorScheme.outlineVariant),
    inputDecorationTheme: InputDecorationThemeData(
      filled: true,
      fillColor: colorScheme.surfaceContainerHigh,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppConfig.outBorderRadius),
        borderSide: BorderSide(color: colorScheme.outline),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppConfig.outBorderRadius),
        borderSide: BorderSide(color: colorScheme.primary, width: 2),
      ),
    ),
    appBarTheme: const AppBarTheme(
      elevation: 0,
      scrolledUnderElevation: 0,
      centerTitle: true,
    ),
    dialogTheme: DialogThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppConfig.outBorderRadius),
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(AppConfig.outBorderRadius),
        ),
      ),
    ),
  );
}
