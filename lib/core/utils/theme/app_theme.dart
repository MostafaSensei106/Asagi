import 'package:flutter/cupertino.dart';
import 'package:material_ui/material_ui.dart';

import '../../constants/app_config.dart';

/// Google Sans typography for the app.
///
/// Two families are registered in `pubspec.yaml`:
/// * [fontFamily] — static instances (400/500/600/700, upright and italic).
///   It is the default family for every text style.
/// * [variableFontFamily] — the variable font with `wght` (400–700) and
///   `GRAD` (-50–200) axes. Display and headline styles use it so weights are
///   set precisely, and [variableTextStyle] exposes it for in-between weights
///   such as 550.
final class AppTheme {
  static const String fontFamily = 'GoogleSans';
  static const String variableFontFamily = 'GoogleSansVariable';

  /// Creates a [TextStyle] backed by the Google Sans variable font.
  ///
  /// [weight] is written to the `wght` axis, so values between the static
  /// steps (450, 550, 650…) render correctly. [grade] adjusts the `GRAD` axis,
  /// which changes apparent weight without changing metrics; pass a negative
  /// value for light text on dark backgrounds.
  static TextStyle variableTextStyle({
    double weight = 400,
    double grade = 0,
    TextStyle? base,
  }) {
    return (base ?? const TextStyle()).copyWith(
      fontFamily: variableFontFamily,
      fontWeight: _fontWeightFor(weight),
      fontVariations: [
        FontVariation('wght', weight),
        if (grade != 0) FontVariation('GRAD', grade),
      ],
    );
  }

  /// Rounds a numeric weight to the closest [FontWeight] so fallback fonts and
  /// widget tests still see a sensible value.
  static FontWeight _fontWeightFor(double weight) =>
      FontWeight.values[((weight / 100).round() - 1).clamp(0, 8)];

  /// Display, headline and large title styles rendered with the variable font.
  ///
  /// Sizes, letter spacing and colors are inherited from the Material 3
  /// typography that [ThemeData] merges underneath these styles.
  static TextTheme _textTheme() => TextTheme(
    displayLarge: variableTextStyle(),
    displayMedium: variableTextStyle(),
    displaySmall: variableTextStyle(),
    headlineLarge: variableTextStyle(),
    headlineMedium: variableTextStyle(),
    headlineSmall: variableTextStyle(),
    titleLarge: variableTextStyle(),
  );

  static ThemeData light = ThemeData(
    useMaterial3: true,
    brightness: .light,

    fontFamily: fontFamily,
    // The variable font covers the same glyphs as the static family, so it is
    // only used as a fallback when a static face is missing on a platform.
    fontFamilyFallback: const [variableFontFamily],
    textTheme: _textTheme(),

    colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
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

    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.android: ZoomPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        TargetPlatform.linux: ZoomPageTransitionsBuilder(),
        TargetPlatform.macOS: CupertinoPageTransitionsBuilder(),
        TargetPlatform.windows: ZoomPageTransitionsBuilder(),
      },
    ),
  );

  static ThemeData dark = ThemeData(
    useMaterial3: true,
    brightness: .dark,

    fontFamily: fontFamily,
    fontFamilyFallback: const [variableFontFamily],
    textTheme: _textTheme(),

    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.purple,
      brightness: Brightness.dark,
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
