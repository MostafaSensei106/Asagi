import 'package:injectable/injectable.dart';
import 'package:material_ui/material_ui.dart';

@lazySingleton
class ThemeService {
  ColorScheme get(BuildContext context) => Theme.of(context).colorScheme;
  TextTheme getTextTheme(BuildContext context) => Theme.of(context).textTheme;
}
