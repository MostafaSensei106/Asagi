import 'package:material_ui/material_ui.dart';

import 'app_nav_item.dart';

/// Maps logical destinations to the LTR order required by glass navigation.
final class NavigationItemOrder {
  const NavigationItemOrder({
    required this.items,
    required this.currentIndex,
    required this.textDirection,
  });

  final List<AppNavItem> items;
  final int currentIndex;
  final TextDirection textDirection;

  bool get _isRtl => textDirection == TextDirection.rtl;

  Iterable<AppNavItem> get displayedItems => _isRtl ? items.reversed : items;

  int get displayedIndex => logicalIndex(currentIndex);

  int logicalIndex(int displayedIndex) =>
      _isRtl ? items.length - 1 - displayedIndex : displayedIndex;
}
