import 'package:material_ui/material_ui.dart';

import 'app_nav_item.dart';
import 'google_nav_bar.dart';

export 'app_nav_item.dart';

class BottomNavBarComponent extends StatelessWidget {
  const BottomNavBarComponent({
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
    return GoogleNavBar(currentIndex: currentIndex, items: items, onTap: onTap);
  }
}
