import 'package:material_ui/material_ui.dart';

import 'app_bar/app_bar_component.dart';
import 'page_scroll_content.dart';

/// Standard page frame: a compact app bar followed by padded scrollable content.
///
/// The large collapsing hero is reserved for authentication flows. App pages
/// keep their title and actions in a compact app bar so content is immediately
/// visible and scrolling stays focused on the page itself.
final class AppPageScaffold extends StatelessWidget {
  const AppPageScaffold({
    required this.title,
    required this.icon,
    required this.slivers,
    super.key,
    this.subtitle,
    this.onBack,
    this.actions = const <Widget>[],
    this.expandedHeight = 300,
    this.accent = 0,
    this.onRefresh,
    this.padded = true,
  });

  final String title;
  final String? subtitle;
  final IconData icon;
  final VoidCallback? onBack;
  final List<Widget> actions;
  final double expandedHeight;
  final int accent;
  final Future<void> Function()? onRefresh;

  /// Scrollable page content.
  final List<Widget> slivers;

  /// Adds the shared horizontal padding and bottom inset around [slivers].
  final bool padded;

  @override
  Widget build(BuildContext context) {
    final content = PageScrollContent(
      subtitle: subtitle,
      padded: padded,
      slivers: slivers,
    );

    return Scaffold(
      appBar: AppBarComponent(
        title: title,
        leading: onBack == null ? null : BackButton(onPressed: onBack),
        actions: actions,
      ),
      body: onRefresh == null
          ? content
          : RefreshIndicator.adaptive(onRefresh: onRefresh!, child: content),
    );
  }
}
