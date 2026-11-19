import 'package:material_ui/material_ui.dart';

import '../../constants/app_config.dart';
import 'generated_color_schemes.dart';

/// Brand palettes generated offline by matugen from Asagi's identity colors.
enum AsagiColorSchemeVariant {
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

  static final Map<(Brightness, AsagiColorSchemeVariant, bool), ThemeData>
  _cache = {};

  static ThemeData light({
    AsagiColorSchemeVariant variant = AsagiColorSchemeVariant.auto,
    bool highContrast = false,
  }) => _theme(Brightness.light, variant, highContrast);

  static ThemeData dark({
    AsagiColorSchemeVariant variant = AsagiColorSchemeVariant.auto,
    bool highContrast = false,
  }) => _theme(Brightness.dark, variant, highContrast);

  static ThemeData lightHighContrast({
    AsagiColorSchemeVariant variant = AsagiColorSchemeVariant.auto,
  }) => light(variant: variant, highContrast: true);

  static ThemeData darkHighContrast({
    AsagiColorSchemeVariant variant = AsagiColorSchemeVariant.auto,
  }) => dark(variant: variant, highContrast: true);

  static ThemeData _theme(
    Brightness brightness,
    AsagiColorSchemeVariant variant,
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
