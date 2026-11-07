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
  });
}
