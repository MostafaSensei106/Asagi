import 'package:material_ui/material_ui.dart';

import '../../constants/design_system/tokens/tokens.dart';
import '../../extensions/extensions.dart';
import 'tab_bar/tab_bar_component.dart';

/// Pinned tab bar for pages whose content lives in a [TabBarView] under a
/// hero header.
///
/// It paints the surface behind the tabs so the list scrolling underneath does
/// not bleed through, and keeps the same height whether the page is expanded
/// or collapsed.
final class SliverTabBarComponent extends StatelessWidget {
  const SliverTabBarComponent({
    required this.labels,
    super.key,
    this.controller,
    this.isScrollable = false,
  });

  final List<String> labels;
  final TabController? controller;
  final bool isScrollable;

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: _TabBarHeaderDelegate(
        labels: labels,
        controller: controller,
        isScrollable: isScrollable,
      ),
    );
  }
}

final class _TabBarHeaderDelegate extends SliverPersistentHeaderDelegate {
  const _TabBarHeaderDelegate({
    required this.labels,
    required this.controller,
    required this.isScrollable,
  });

  final List<String> labels;
  final TabController? controller;
  final bool isScrollable;

  static const double _height = AppSpacing.xxxLarge + AppSpacing.small;

  @override
  double get minExtent => _height;

  @override
  double get maxExtent => _height;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return SizedBox(
      height: _height,
      child: ColoredBox(
        color: context.colorScheme.surface,
        child: Padding(
          padding: const EdgeInsetsDirectional.symmetric(
            horizontal: AppSpacing.large,
          ),
          child: TabBarComponent.labels(
            labels: labels,
            controller: controller,
            isScrollable: isScrollable,
          ),
        ),
      ),
    );
  }

  @override
  bool shouldRebuild(_TabBarHeaderDelegate oldDelegate) =>
      oldDelegate.labels != labels ||
      oldDelegate.controller != controller ||
      oldDelegate.isScrollable != isScrollable;
}
