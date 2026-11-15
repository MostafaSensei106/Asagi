import 'package:material_ui/material_ui.dart';

abstract class BaseThemeRepository {
  Future<void> cacheThemeMode(ThemeMode themeMode);
  Future<ThemeMode> getThemeMode();

  Future<void> cacheHighContrast(bool highContrast);
  Future<bool> getHighContrast();
}
