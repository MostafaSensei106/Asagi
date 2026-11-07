import 'package:material_ui/material_ui.dart';

import 'app_nav_item.dart';

class MaterialBottomNavigationBar extends StatelessWidget {
  const MaterialBottomNavigationBar({
    required this.currentIndex,
    required this.items,
    required this.onTap,
    super.key,
  });

  final int currentIndex;
  final List<AppNavItem> items;
  final void Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      key: const Key('material_bottom_nav'),
      selectedIndex: currentIndex,
      onDestinationSelected: onTap,
      destinations: [
        for (final item in items)
          NavigationDestination(
            icon: Icon(item.icon),
            selectedIcon: Icon(item.activeIcon ?? item.icon),
            label: item.label,
          ),
      ],
    );
  }
}
