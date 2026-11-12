import 'package:material_ui/material_ui.dart';

import '../../constants/app_config.dart';

final class AppTheme {
  static const String fontFamily = 'GoogleSans';

  static TextStyle variableTextStyle({
    double weight = 400,
    double grade = 0,
    TextStyle? base,
  }) {
    return (base ?? const TextStyle()).copyWith(
      fontWeight: _fontWeightFor(weight),
      fontVariations: [
        FontVariation('wght', weight),
        if (grade != 0) FontVariation('GRAD', grade),
      ],
    );
  }

  static FontWeight _fontWeightFor(double weight) =>
      FontWeight.values[((weight / 100).round() - 1).clamp(0, 8)];

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
  );

  static ThemeData dark = ThemeData(
    useMaterial3: true,
    brightness: .dark,

    fontFamily: fontFamily,
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
