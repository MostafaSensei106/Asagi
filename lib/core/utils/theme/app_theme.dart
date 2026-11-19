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
    brightness: .light,
    primary: Color(0xff006877),
    surfaceTint: Color(0xff006877),
    onPrimary: Color(0xffffffff),
    primaryContainer: Color(0xffa2eeff),
    onPrimaryContainer: Color(0xff004e5a),
    secondary: Color(0xff4a6268),
    onSecondary: Color(0xffffffff),
    secondaryContainer: Color(0xffcde7ed),
    onSecondaryContainer: Color(0xff334a50),
    tertiary: Color(0xff545d7e),
    onTertiary: Color(0xffffffff),
    tertiaryContainer: Color(0xffdbe1ff),
    onTertiaryContainer: Color(0xff3d4665),
    error: Color(0xffba1a1a),
    onError: Color(0xffffffff),
    errorContainer: Color(0xffffdad6),
    onErrorContainer: Color(0xff93000a),
    surface: Color(0xfff5fafc),
    onSurface: Color(0xff171d1e),
    onSurfaceVariant: Color(0xff3f484a),
    outline: Color(0xff6f797b),
    outlineVariant: Color(0xffbfc8cb),
    shadow: Color(0xff000000),
    scrim: Color(0xff000000),
    inverseSurface: Color(0xff2b3133),
    inversePrimary: Color(0xff83d2e3),
    primaryFixed: Color(0xffa2eeff),
    onPrimaryFixed: Color(0xff001f25),
    primaryFixedDim: Color(0xff83d2e3),
    onPrimaryFixedVariant: Color(0xff004e5a),
    secondaryFixed: Color(0xffcde7ed),
    onSecondaryFixed: Color(0xff051f23),
    secondaryFixedDim: Color(0xffb1cbd1),
    onSecondaryFixedVariant: Color(0xff334a50),
    tertiaryFixed: Color(0xffdbe1ff),
    onTertiaryFixed: Color(0xff101a37),
    tertiaryFixedDim: Color(0xffbcc5eb),
    onTertiaryFixedVariant: Color(0xff3d4665),
    surfaceDim: Color(0xffd5dbdd),
    surfaceBright: Color(0xfff5fafc),
    surfaceContainerLowest: Color(0xffffffff),
    surfaceContainerLow: Color(0xffeff5f6),
    surfaceContainer: Color(0xffe9eff0),
    surfaceContainerHigh: Color(0xffe3e9eb),
    surfaceContainerHighest: Color(0xffdee3e5),
  );

  /// Level 2: Medium Contrast Light ColorScheme.
  static const ColorScheme _lightMediumContrastScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xff003c45),
    surfaceTint: Color(0xff006877),
    onPrimary: Color(0xffffffff),
    primaryContainer: Color(0xff1b7787),
    onPrimaryContainer: Color(0xffffffff),
    secondary: Color(0xff223a3f),
    onSecondary: Color(0xffffffff),
    secondaryContainer: Color(0xff597177),
    onSecondaryContainer: Color(0xffffffff),
    tertiary: Color(0xff2c3553),
    onTertiary: Color(0xffffffff),
    tertiaryContainer: Color(0xff636c8d),
    onTertiaryContainer: Color(0xffffffff),
    error: Color(0xff740006),
    onError: Color(0xffffffff),
    errorContainer: Color(0xffcf2c27),
    onErrorContainer: Color(0xffffffff),
    surface: Color(0xfff5fafc),
    onSurface: Color(0xff0c1213),
    onSurfaceVariant: Color(0xff2f383a),
    outline: Color(0xff4b5456),
    outlineVariant: Color(0xff656f71),
    shadow: Color(0xff000000),
    scrim: Color(0xff000000),
    inverseSurface: Color(0xff2b3133),
    inversePrimary: Color(0xff83d2e3),
    primaryFixed: Color(0xff1b7787),
    onPrimaryFixed: Color(0xffffffff),
    primaryFixedDim: Color(0xff005e6b),
    onPrimaryFixedVariant: Color(0xffffffff),
    secondaryFixed: Color(0xff597177),
    onSecondaryFixed: Color(0xffffffff),
    secondaryFixedDim: Color(0xff41595e),
    onSecondaryFixedVariant: Color(0xffffffff),
    tertiaryFixed: Color(0xff636c8d),
    onTertiaryFixed: Color(0xffffffff),
    tertiaryFixedDim: Color(0xff4b5474),
    onTertiaryFixedVariant: Color(0xffffffff),
    surfaceDim: Color(0xffc2c7c9),
    surfaceBright: Color(0xfff5fafc),
    surfaceContainerLowest: Color(0xffffffff),
    surfaceContainerLow: Color(0xffeff5f6),
    surfaceContainer: Color(0xffe3e9eb),
    surfaceContainerHigh: Color(0xffd8dedf),
    surfaceContainerHighest: Color(0xffcdd3d4),
  );

  /// Level 3: High Contrast Light ColorScheme (Pure white/black with preserved base primary & secondary).
  static const ColorScheme _lightHighContrastScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xff003139),
    surfaceTint: Color(0xff006877),
    onPrimary: Color(0xffffffff),
    primaryContainer: Color(0xff00515d),
    onPrimaryContainer: Color(0xffffffff),
    secondary: Color(0xff183034),
    onSecondary: Color(0xffffffff),
    secondaryContainer: Color(0xff354d52),
    onSecondaryContainer: Color(0xffffffff),
    tertiary: Color(0xff222b48),
    onTertiary: Color(0xffffffff),
    tertiaryContainer: Color(0xff3f4867),
    onTertiaryContainer: Color(0xffffffff),
    error: Color(0xff600004),
    onError: Color(0xffffffff),
    errorContainer: Color(0xff98000a),
    onErrorContainer: Color(0xffffffff),
    surface: Color(0xfff5fafc),
    onSurface: Color(0xff000000),
    onSurfaceVariant: Color(0xff000000),
    outline: Color(0xff252e30),
    outlineVariant: Color(0xff424b4d),
    shadow: Color(0xff000000),
    scrim: Color(0xff000000),
    inverseSurface: Color(0xff2b3133),
    inversePrimary: Color(0xff83d2e3),
    primaryFixed: Color(0xff00515d),
    onPrimaryFixed: Color(0xffffffff),
    primaryFixedDim: Color(0xff003841),
    onPrimaryFixedVariant: Color(0xffffffff),
    secondaryFixed: Color(0xff354d52),
    onSecondaryFixed: Color(0xffffffff),
    secondaryFixedDim: Color(0xff1f363b),
    onSecondaryFixedVariant: Color(0xffffffff),
    tertiaryFixed: Color(0xff3f4867),
    onTertiaryFixed: Color(0xffffffff),
    tertiaryFixedDim: Color(0xff28314f),
    onTertiaryFixedVariant: Color(0xffffffff),
    surfaceDim: Color(0xffb4babb),
    surfaceBright: Color(0xfff5fafc),
    surfaceContainerLowest: Color(0xffffffff),
    surfaceContainerLow: Color(0xffecf2f3),
    surfaceContainer: Color(0xffdee3e5),
    surfaceContainerHigh: Color(0xffd0d5d7),
    surfaceContainerHighest: Color(0xffc2c7c9),
  );

  /// Level 1: Standard Dark ColorScheme.
  static const ColorScheme _darkScheme = ColorScheme(
    brightness: .dark,
    primary: Color(0xff83d2e3),
    surfaceTint: Color(0xff83d2e3),
    onPrimary: Color(0xff00363e),
    primaryContainer: Color(0xff004e5a),
    onPrimaryContainer: Color(0xffa2eeff),
    secondary: Color(0xffb1cbd1),
    onSecondary: Color(0xff1c3439),
    secondaryContainer: Color(0xff334a50),
    onSecondaryContainer: Color(0xffcde7ed),
    tertiary: Color(0xffbcc5eb),
    onTertiary: Color(0xff262f4d),
    tertiaryContainer: Color(0xff3d4665),
    onTertiaryContainer: Color(0xffdbe1ff),
    error: Color(0xffffb4ab),
    onError: Color(0xff690005),
    errorContainer: Color(0xff93000a),
    onErrorContainer: Color(0xffffdad6),
    surface: Color(0xff0e1416),
    onSurface: Color(0xffdee3e5),
    onSurfaceVariant: Color(0xffbfc8cb),
    outline: Color(0xff899295),
    outlineVariant: Color(0xff3f484a),
    shadow: Color(0xff000000),
    scrim: Color(0xff000000),
    inverseSurface: Color(0xffdee3e5),
    inversePrimary: Color(0xff006877),
    primaryFixed: Color(0xffa2eeff),
    onPrimaryFixed: Color(0xff001f25),
    primaryFixedDim: Color(0xff83d2e3),
    onPrimaryFixedVariant: Color(0xff004e5a),
    secondaryFixed: Color(0xffcde7ed),
    onSecondaryFixed: Color(0xff051f23),
    secondaryFixedDim: Color(0xffb1cbd1),
    onSecondaryFixedVariant: Color(0xff334a50),
    tertiaryFixed: Color(0xffdbe1ff),
    onTertiaryFixed: Color(0xff101a37),
    tertiaryFixedDim: Color(0xffbcc5eb),
    onTertiaryFixedVariant: Color(0xff3d4665),
    surfaceDim: Color(0xff0e1416),
    surfaceBright: Color(0xff343a3c),
    surfaceContainerLowest: Color(0xff090f10),
    surfaceContainerLow: Color(0xff171d1e),
    surfaceContainer: Color(0xff1b2122),
    surfaceContainerHigh: Color(0xff252b2c),
    surfaceContainerHighest: Color(0xff303637),
  );

  /// Level 2: Medium Contrast Dark ColorScheme.
  static const ColorScheme _darkMediumContrastScheme = ColorScheme(
    brightness: .dark,
    primary: Color(0xff99e9fa),
    surfaceTint: Color(0xff83d2e3),
    onPrimary: Color(0xff002a31),
    primaryContainer: Color(0xff4a9cac),
    onPrimaryContainer: Color(0xff000000),
    secondary: Color(0xffc7e1e7),
    onSecondary: Color(0xff11292e),
    secondaryContainer: Color(0xff7c959b),
    onSecondaryContainer: Color(0xff000000),
    tertiary: Color(0xffd3dbff),
    onTertiary: Color(0xff1b2441),
    tertiaryContainer: Color(0xff868fb3),
    onTertiaryContainer: Color(0xff000000),
    error: Color(0xffffd2cc),
    onError: Color(0xff540003),
    errorContainer: Color(0xffff5449),
    onErrorContainer: Color(0xff000000),
    surface: Color(0xff0e1416),
    onSurface: Color(0xffffffff),
    onSurfaceVariant: Color(0xffd5dee0),
    outline: Color(0xffaab3b6),
    outlineVariant: Color(0xff899294),
    shadow: Color(0xff000000),
    scrim: Color(0xff000000),
    inverseSurface: Color(0xffdee3e5),
    inversePrimary: Color(0xff00505b),
    primaryFixed: Color(0xffa2eeff),
    onPrimaryFixed: Color(0xff001418),
    primaryFixedDim: Color(0xff83d2e3),
    onPrimaryFixedVariant: Color(0xff003c45),
    secondaryFixed: Color(0xffcde7ed),
    onSecondaryFixed: Color(0xff001418),
    secondaryFixedDim: Color(0xffb1cbd1),
    onSecondaryFixedVariant: Color(0xff223a3f),
    tertiaryFixed: Color(0xffdbe1ff),
    onTertiaryFixed: Color(0xff050f2c),
    tertiaryFixedDim: Color(0xffbcc5eb),
    onTertiaryFixedVariant: Color(0xff2c3553),
    surfaceDim: Color(0xff0e1416),
    surfaceBright: Color(0xff3f4547),
    surfaceContainerLowest: Color(0xff040809),
    surfaceContainerLow: Color(0xff191f20),
    surfaceContainer: Color(0xff23292a),
    surfaceContainerHigh: Color(0xff2e3435),
    surfaceContainerHighest: Color(0xff393f40),
  );

  /// Level 3: High Contrast Dark ColorScheme (True AMOLED pure pitch black
  /// with base primary and secondary colors preserved).
  static const ColorScheme _darkHighContrastScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xffd2f6ff),
    surfaceTint: Color(0xff83d2e3),
    onPrimary: Color(0xff000000),
    primaryContainer: Color(0xff7fcfdf),
    onPrimaryContainer: Color(0xff000d11),
    secondary: Color(0xffdbf5fb),
    onSecondary: Color(0xff000000),
    secondaryContainer: Color(0xffaec7cd),
    onSecondaryContainer: Color(0xff000d11),
    tertiary: Color(0xffeeefff),
    onTertiary: Color(0xff000000),
    tertiaryContainer: Color(0xffb8c1e7),
    onTertiaryContainer: Color(0xff010926),
    error: Color(0xffffece9),
    onError: Color(0xff000000),
    errorContainer: Color(0xffffaea4),
    onErrorContainer: Color(0xff220001),
    surface: Color(0xff0e1416),
    onSurface: Color(0xffffffff),
    onSurfaceVariant: Color(0xffffffff),
    outline: Color(0xffe8f2f4),
    outlineVariant: Color(0xffbbc4c7),
    shadow: Color(0xff000000),
    scrim: Color(0xff000000),
    inverseSurface: Color(0xffdee3e5),
    inversePrimary: Color(0xff00505b),
    primaryFixed: Color(0xffa2eeff),
    onPrimaryFixed: Color(0xff000000),
    primaryFixedDim: Color(0xff83d2e3),
    onPrimaryFixedVariant: Color(0xff001418),
    secondaryFixed: Color(0xffcde7ed),
    onSecondaryFixed: Color(0xff000000),
    secondaryFixedDim: Color(0xffb1cbd1),
    onSecondaryFixedVariant: Color(0xff001418),
    tertiaryFixed: Color(0xffdbe1ff),
    onTertiaryFixed: Color(0xff000000),
    tertiaryFixedDim: Color(0xffbcc5eb),
    onTertiaryFixedVariant: Color(0xff050f2c),
    surfaceDim: Color(0xff0e1416),
    surfaceBright: Color(0xff4b5153),
    surfaceContainerLowest: Color(0xff000000),
    surfaceContainerLow: Color(0xff1b2122),
    surfaceContainer: Color(0xff2b3133),
    surfaceContainerHigh: Color(0xff363c3e),
    surfaceContainerHighest: Color(0xff424849),
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
