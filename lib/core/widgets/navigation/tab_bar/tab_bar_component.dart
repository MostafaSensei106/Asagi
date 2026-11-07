import 'package:material_ui/material_ui.dart';

class TabBarComponent extends StatelessWidget {
  const TabBarComponent({
    required this.tabs,
    super.key,
    this.controller,
    this.isScrollable = false,
  });

  /// Builds the bar from plain label strings.
  TabBarComponent.labels({
    required List<String> labels,
    super.key,
    this.controller,
    this.isScrollable = false,
  }) : tabs = labels.map((label) => Tab(text: label)).toList();

  final List<Tab> tabs;
  final TabController? controller;
  final bool isScrollable;

  @override
  Widget build(BuildContext context) => TabBar(
    controller: controller,
    tabs: tabs,
    isScrollable: isScrollable,
    labelColor: Theme.of(context).colorScheme.primary,
    unselectedLabelColor: Theme.of(context).colorScheme.onSurfaceVariant,
    indicatorColor: Theme.of(context).colorScheme.primary,
  );
}

/// The page view paired with a [TabBarComponent].
class TabBarViewComponent extends StatelessWidget {
  const TabBarViewComponent({
    required this.children,
    super.key,
    this.controller,
  });

  final List<Widget> children;
  final TabController? controller;

  @override
  Widget build(BuildContext context) =>
      TabBarView(controller: controller, children: children);
}
