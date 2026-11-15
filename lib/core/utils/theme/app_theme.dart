import 'package:material_ui/material_ui.dart';

import '../../constants/app_config.dart';

/// Application themes with explicit, hand-tuned [ColorScheme]s.
///
/// Features 3 levels of contrast (Standard, Medium, High) with an AMOLED
/// pure black-and-white high-contrast mode preserving primary and secondary
/// brand accents.
final class AppTheme {
  static const String fontFamily = 'GoogleSans';

  /// Cached per brightness/contrast level so rebuilds don't rebuild the theme.
  static final Map<(Brightness, int), ThemeData> _cache = {};

  static ThemeData light() => _theme(Brightness.light, contrastLevel: 0);

  static ThemeData lightMediumContrast() =>
      _theme(Brightness.light, contrastLevel: 1);

  static ThemeData lightHighContrast() =>
      _theme(Brightness.light, contrastLevel: 2);

  static ThemeData dark() => _theme(Brightness.dark, contrastLevel: 0);

  static ThemeData darkMediumContrast() =>
      _theme(Brightness.dark, contrastLevel: 1);

  static ThemeData darkHighContrast() =>
      _theme(Brightness.dark, contrastLevel: 2);

  static ThemeData _theme(Brightness brightness, {required int contrastLevel}) {
    return _cache[(brightness, contrastLevel)] ??= _build(
      _schemeFor(brightness, contrastLevel: contrastLevel),
    );
  }

  static ColorScheme _schemeFor(
    Brightness brightness, {
    required int contrastLevel,
  }) {
    if (brightness == Brightness.light) {
      return switch (contrastLevel) {
        1 => lightMediumContrastScheme(),
        2 => lightHighContrastScheme(),
        _ => lightScheme(),
      };
    } else {
      return switch (contrastLevel) {
        1 => darkMediumContrastScheme(),
        2 => darkHighContrastScheme(),
        _ => darkScheme(),
      };
    }
  }

  static ThemeData _build(ColorScheme colorScheme) {
    return ThemeData(
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

  /// Level 1: Standard Light ColorScheme.
  static const ColorScheme _lightScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xff3c6090),
    surfaceTint: Color(0xff3c6090),
    onPrimary: Color(0xffffffff),
    primaryContainer: Color(0xffd4e3ff),
    onPrimaryContainer: Color(0xff214876),
    secondary: Color(0xff545f71),
    onSecondary: Color(0xffffffff),
    secondaryContainer: Color(0xffd8e3f8),
    onSecondaryContainer: Color(0xff3d4758),
    tertiary: Color(0xff6d5676),
    onTertiary: Color(0xffffffff),
    tertiaryContainer: Color(0xfff7d9ff),
    onTertiaryContainer: Color(0xff553f5e),
    error: Color(0xffba1a1a),
    onError: Color(0xffffffff),
    errorContainer: Color(0xffffdad6),
    onErrorContainer: Color(0xff93000a),
    surface: Color(0xfff9f9ff),
    onSurface: Color(0xff191c20),
    onSurfaceVariant: Color(0xff43474e),
    outline: Color(0xff74777f),
    outlineVariant: Color(0xffc3c6cf),
    shadow: Color(0xff000000),
    scrim: Color(0xff000000),
    inverseSurface: Color(0xff2e3035),
    inversePrimary: Color(0xffa5c8ff),
    primaryFixed: Color(0xffd4e3ff),
    onPrimaryFixed: Color(0xff001c3a),
    primaryFixedDim: Color(0xffa5c8ff),
    onPrimaryFixedVariant: Color(0xff214876),
    secondaryFixed: Color(0xffd8e3f8),
    onSecondaryFixed: Color(0xff111c2b),
    secondaryFixedDim: Color(0xffbcc7dc),
    onSecondaryFixedVariant: Color(0xff3d4758),
    tertiaryFixed: Color(0xfff7d9ff),
    onTertiaryFixed: Color(0xff271430),
    tertiaryFixedDim: Color(0xffdabde2),
    onTertiaryFixedVariant: Color(0xff553f5e),
    surfaceDim: Color(0xffd9dae0),
    surfaceBright: Color(0xfff9f9ff),
    surfaceContainerLowest: Color(0xffffffff),
    surfaceContainerLow: Color(0xfff2f3fa),
    surfaceContainer: Color(0xffededf4),
    surfaceContainerHigh: Color(0xffe7e8ee),
    surfaceContainerHighest: Color(0xffe1e2e9),
  );

  /// Level 2: Medium Contrast Light ColorScheme.
  static const ColorScheme _lightMediumContrastScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xff093764),
    surfaceTint: Color(0xff3c6090),
    onPrimary: Color(0xffffffff),
    primaryContainer: Color(0xff4b6e9f),
    onPrimaryContainer: Color(0xffffffff),
    secondary: Color(0xff2c3747),
    onSecondary: Color(0xffffffff),
    secondaryContainer: Color(0xff636e80),
    onSecondaryContainer: Color(0xffffffff),
    tertiary: Color(0xff432e4c),
    onTertiary: Color(0xffffffff),
    tertiaryContainer: Color(0xff7d6586),
    onTertiaryContainer: Color(0xffffffff),
    error: Color(0xff740006),
    onError: Color(0xffffffff),
    errorContainer: Color(0xffcf2c27),
    onErrorContainer: Color(0xffffffff),
    surface: Color(0xfff9f9ff),
    onSurface: Color(0xff0f1116),
    onSurfaceVariant: Color(0xff32363d),
    outline: Color(0xff4f535a),
    outlineVariant: Color(0xff696d75),
    shadow: Color(0xff000000),
    scrim: Color(0xff000000),
    inverseSurface: Color(0xff2e3035),
    inversePrimary: Color(0xffa5c8ff),
    primaryFixed: Color(0xff4b6e9f),
    onPrimaryFixed: Color(0xffffffff),
    primaryFixedDim: Color(0xff315685),
    onPrimaryFixedVariant: Color(0xffffffff),
    secondaryFixed: Color(0xff636e80),
    onSecondaryFixed: Color(0xffffffff),
    secondaryFixedDim: Color(0xff4b5567),
    onSecondaryFixedVariant: Color(0xffffffff),
    tertiaryFixed: Color(0xff7d6586),
    onTertiaryFixed: Color(0xffffffff),
    tertiaryFixedDim: Color(0xff634d6c),
    onTertiaryFixedVariant: Color(0xffffffff),
    surfaceDim: Color(0xffc5c6cc),
    surfaceBright: Color(0xfff9f9ff),
    surfaceContainerLowest: Color(0xffffffff),
    surfaceContainerLow: Color(0xfff2f3fa),
    surfaceContainer: Color(0xffe7e8ee),
    surfaceContainerHigh: Color(0xffdbdce3),
    surfaceContainerHighest: Color(0xffd0d1d8),
  );

  /// Level 3: High Contrast Light ColorScheme (Pure white/black with preserved base primary & secondary).
  static const ColorScheme _lightHighContrastScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xff3c6090),
    surfaceTint: Color(0xff3c6090),
    onPrimary: Color(0xffffffff),
    primaryContainer: Color(0xffd4e3ff),
    onPrimaryContainer: Color(0xff214876),
    secondary: Color(0xff545f71),
    onSecondary: Color(0xffffffff),
    secondaryContainer: Color(0xffd8e3f8),
    onSecondaryContainer: Color(0xff3d4758),
    tertiary: Color(0xff6d5676),
    onTertiary: Color(0xffffffff),
    tertiaryContainer: Color(0xfff7d9ff),
    onTertiaryContainer: Color(0xff553f5e),
    error: Color(0xffba1a1a),
    onError: Color(0xffffffff),
    errorContainer: Color(0xffffdad6),
    onErrorContainer: Color(0xff93000a),
    surface: Color(0xffffffff),
    onSurface: Color(0xff000000),
    onSurfaceVariant: Color(0xff000000),
    outline: Color(0xff000000),
    outlineVariant: Color(0xff606060),
    shadow: Color(0xff000000),
    scrim: Color(0xff000000),
    inverseSurface: Color(0xff000000),
    inversePrimary: Color(0xffa5c8ff),
    primaryFixed: Color(0xffd4e3ff),
    onPrimaryFixed: Color(0xff000000),
    primaryFixedDim: Color(0xffa5c8ff),
    onPrimaryFixedVariant: Color(0xff214876),
    secondaryFixed: Color(0xffd8e3f8),
    onSecondaryFixed: Color(0xff000000),
    secondaryFixedDim: Color(0xffbcc7dc),
    onSecondaryFixedVariant: Color(0xff3d4758),
    tertiaryFixed: Color(0xfff7d9ff),
    onTertiaryFixed: Color(0xff000000),
    tertiaryFixedDim: Color(0xffdabde2),
    onTertiaryFixedVariant: Color(0xff553f5e),
    surfaceDim: Color(0xffeaeaea),
    surfaceBright: Color(0xffffffff),
    surfaceContainerLowest: Color(0xffffffff),
    surfaceContainerLow: Color(0xfff7f7f7),
    surfaceContainer: Color(0xffffffff),
    surfaceContainerHigh: Color(0xffeeeeee),
    surfaceContainerHighest: Color(0xffe5e5e5),
  );

  /// Level 1: Standard Dark ColorScheme.
  static const ColorScheme _darkScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xffa5c8ff),
    surfaceTint: Color(0xffa5c8ff),
    onPrimary: Color(0xff00315e),
    primaryContainer: Color(0xff214876),
    onPrimaryContainer: Color(0xffd4e3ff),
    secondary: Color(0xffbcc7dc),
    onSecondary: Color(0xff263141),
    secondaryContainer: Color(0xff3d4758),
    onSecondaryContainer: Color(0xffd8e3f8),
    tertiary: Color(0xffdabde2),
    onTertiary: Color(0xff3d2946),
    tertiaryContainer: Color(0xff553f5e),
    onTertiaryContainer: Color(0xfff7d9ff),
    error: Color(0xffffb4ab),
    onError: Color(0xff690005),
    errorContainer: Color(0xff93000a),
    onErrorContainer: Color(0xffffdad6),
    surface: Color(0xff111318),
    onSurface: Color(0xffe1e2e9),
    onSurfaceVariant: Color(0xffc3c6cf),
    outline: Color(0xff8d9199),
    outlineVariant: Color(0xff43474e),
    shadow: Color(0xff000000),
    scrim: Color(0xff000000),
    inverseSurface: Color(0xffe1e2e9),
    inversePrimary: Color(0xff3c6090),
    primaryFixed: Color(0xffd4e3ff),
    onPrimaryFixed: Color(0xff001c3a),
    primaryFixedDim: Color(0xffa5c8ff),
    onPrimaryFixedVariant: Color(0xff214876),
    secondaryFixed: Color(0xffd8e3f8),
    onSecondaryFixed: Color(0xff111c2b),
    secondaryFixedDim: Color(0xffbcc7dc),
    onSecondaryFixedVariant: Color(0xff3d4758),
    tertiaryFixed: Color(0xfff7d9ff),
    onTertiaryFixed: Color(0xff271430),
    tertiaryFixedDim: Color(0xffdabde2),
    onTertiaryFixedVariant: Color(0xff553f5e),
    surfaceDim: Color(0xff111318),
    surfaceBright: Color(0xff37393e),
    surfaceContainerLowest: Color(0xff0c0e13),
    surfaceContainerLow: Color(0xff191c20),
    surfaceContainer: Color(0xff1d2024),
    surfaceContainerHigh: Color(0xff282a2f),
    surfaceContainerHighest: Color(0xff32353a),
  );

  /// Level 2: Medium Contrast Dark ColorScheme.
  static const ColorScheme _darkMediumContrastScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xffcaddff),
    surfaceTint: Color(0xffa5c8ff),
    onPrimary: Color(0xff00264b),
    primaryContainer: Color(0xff6f92c5),
    onPrimaryContainer: Color(0xff000000),
    secondary: Color(0xffd2ddf2),
    onSecondary: Color(0xff1c2636),
    secondaryContainer: Color(0xff8791a4),
    onSecondaryContainer: Color(0xff000000),
    tertiary: Color(0xfff0d2f9),
    onTertiary: Color(0xff321e3b),
    tertiaryContainer: Color(0xffa288ab),
    onTertiaryContainer: Color(0xff000000),
    error: Color(0xffffd2cc),
    onError: Color(0xff540003),
    errorContainer: Color(0xffff5449),
    onErrorContainer: Color(0xff000000),
    surface: Color(0xff111318),
    onSurface: Color(0xffffffff),
    onSurfaceVariant: Color(0xffd9dce5),
    outline: Color(0xffafb2bb),
    outlineVariant: Color(0xff8d9099),
    shadow: Color(0xff000000),
    scrim: Color(0xff000000),
    inverseSurface: Color(0xffe1e2e9),
    inversePrimary: Color(0xff234977),
    primaryFixed: Color(0xffd4e3ff),
    onPrimaryFixed: Color(0xff001128),
    primaryFixedDim: Color(0xffa5c8ff),
    onPrimaryFixedVariant: Color(0xff093764),
    secondaryFixed: Color(0xffd8e3f8),
    onSecondaryFixed: Color(0xff071120),
    secondaryFixedDim: Color(0xffbcc7dc),
    onSecondaryFixedVariant: Color(0xff2c3747),
    tertiaryFixed: Color(0xfff7d9ff),
    onTertiaryFixed: Color(0xff1c0925),
    tertiaryFixedDim: Color(0xffdabde2),
    onTertiaryFixedVariant: Color(0xff432e4c),
    surfaceDim: Color(0xff111318),
    surfaceBright: Color(0xff42444a),
    surfaceContainerLowest: Color(0xff05070b),
    surfaceContainerLow: Color(0xff1b1e22),
    surfaceContainer: Color(0xff25282d),
    surfaceContainerHigh: Color(0xff303338),
    surfaceContainerHighest: Color(0xff3b3e43),
  );

  /// Level 3: High Contrast Dark ColorScheme (True AMOLED pure pitch black
  /// with base primary and secondary colors preserved).
  static const ColorScheme _darkHighContrastScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xffa5c8ff),
    surfaceTint: Color(0xffa5c8ff),
    onPrimary: Color(0xff00315e),
    primaryContainer: Color(0xff214876),
    onPrimaryContainer: Color(0xffd4e3ff),
    secondary: Color(0xffbcc7dc),
    onSecondary: Color(0xff263141),
    secondaryContainer: Color(0xff3d4758),
    onSecondaryContainer: Color(0xffd8e3f8),
    tertiary: Color(0xffdabde2),
    onTertiary: Color(0xff3d2946),
    tertiaryContainer: Color(0xff553f5e),
    onTertiaryContainer: Color(0xfff7d9ff),
    error: Color(0xffffb4ab),
    onError: Color(0xff690005),
    errorContainer: Color(0xff93000a),
    onErrorContainer: Color(0xffffdad6),
    surface: Color(0xff000000),
    onSurface: Color(0xffffffff),
    onSurfaceVariant: Color(0xffffffff),
    outline: Color(0xffffffff),
    outlineVariant: Color(0xff444444),
    shadow: Color(0xff000000),
    scrim: Color(0xff000000),
    inverseSurface: Color(0xffffffff),
    inversePrimary: Color(0xff3c6090),
    primaryFixed: Color(0xffd4e3ff),
    onPrimaryFixed: Color(0xff000000),
    primaryFixedDim: Color(0xffa5c8ff),
    onPrimaryFixedVariant: Color(0xff214876),
    secondaryFixed: Color(0xffd8e3f8),
    onSecondaryFixed: Color(0xff000000),
    secondaryFixedDim: Color(0xffbcc7dc),
    onSecondaryFixedVariant: Color(0xff3d4758),
    tertiaryFixed: Color(0xfff7d9ff),
    onTertiaryFixed: Color(0xff000000),
    tertiaryFixedDim: Color(0xffdabde2),
    onTertiaryFixedVariant: Color(0xff553f5e),
    surfaceDim: Color(0xff000000),
    surfaceBright: Color(0xff121212),
    surfaceContainerLowest: Color(0xff000000),
    surfaceContainerLow: Color(0xff000000),
    surfaceContainer: Color(0xff050505),
    surfaceContainerHigh: Color(0xff101010),
    surfaceContainerHighest: Color(0xff181818),
  );

  static ColorScheme lightScheme() => _lightScheme;
  static ColorScheme lightMediumContrastScheme() => _lightMediumContrastScheme;
  static ColorScheme lightHighContrastScheme() => _lightHighContrastScheme;

  static ColorScheme darkScheme() => _darkScheme;
  static ColorScheme darkMediumContrastScheme() => _darkMediumContrastScheme;
  static ColorScheme darkHighContrastScheme() => _darkHighContrastScheme;
}

/// Helper matching Material Theme Builder structure.
class MaterialTheme {
  const MaterialTheme(this.textTheme);

  final TextTheme textTheme;

  static ColorScheme lightScheme() => AppTheme.lightScheme();
  static ColorScheme lightMediumContrastScheme() =>
      AppTheme.lightMediumContrastScheme();
  static ColorScheme lightHighContrastScheme() =>
      AppTheme.lightHighContrastScheme();

  static ColorScheme darkScheme() => AppTheme.darkScheme();
  static ColorScheme darkMediumContrastScheme() =>
      AppTheme.darkMediumContrastScheme();
  static ColorScheme darkHighContrastScheme() =>
      AppTheme.darkHighContrastScheme();

  ThemeData light() => AppTheme.light();
  ThemeData lightMediumContrast() => AppTheme.lightMediumContrast();
  ThemeData lightHighContrast() => AppTheme.lightHighContrast();

  ThemeData dark() => AppTheme.dark();
  ThemeData darkMediumContrast() => AppTheme.darkMediumContrast();
  ThemeData darkHighContrast() => AppTheme.darkHighContrast();

  ThemeData theme(ColorScheme colorScheme) => AppTheme._build(colorScheme);

  List<ExtendedColor> get extendedColors => const [];
}

class ExtendedColor {
  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });

  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
