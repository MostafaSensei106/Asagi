import 'package:material_ui/material_ui.dart';

final class AppNavItem {
  const AppNavItem({
    required this.label,
    required this.icon,
    required this.iosSystemImage,
    this.activeIcon,
    this.iosSelectedSystemImage,
  });

  final String label;
  final IconData icon;
  final IconData? activeIcon;
  final String iosSystemImage;
  final String? iosSelectedSystemImage;
}
