import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:material_ui/material_ui.dart';

import '../../../constants/design_system/tokens/tokens.dart';
import 'app_nav_item.dart';

class GoogleNavBar extends StatelessWidget {
  const GoogleNavBar({
    required this.currentIndex,
    required this.items,
    required this.onTap,
    super.key,
  });

  final int currentIndex;
  final List<AppNavItem> items;
  final ValueChanged<int> onTap;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Material(
      color: scheme.surface,
      child: SafeArea(
        top: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.large,
            vertical: AppSpacing.small,
          ),
          child: GNav(
            key: const Key('google_bottom_nav'),
            selectedIndex: currentIndex,
            onTabChange: onTap,
            gap: AppSpacing.small,
            color: scheme.onSurfaceVariant,
            activeColor: scheme.onSecondaryContainer,
            tabBackgroundColor: scheme.secondaryContainer,
            duration: const Duration(milliseconds: 250),
            padding: const EdgeInsets.all(AppSpacing.medium),
            tabs: [
              for (var index = 0; index < items.length; index++)
                GButton(
                  icon: index == currentIndex
                      ? items[index].activeIcon ?? items[index].icon
                      : items[index].icon,
                  text: items[index].label,
                  semanticLabel: items[index].label,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
