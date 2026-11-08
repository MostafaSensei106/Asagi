import 'package:material_ui/material_ui.dart';

final class AppNavItem {
  const AppNavItem({required this.label, required this.icon, this.activeIcon});

  final String label;
  final IconData icon;
  final IconData? activeIcon;
}
