import 'package:material_ui/material_ui.dart';

import 'app_hero_sliver.dart';
import 'page_scroll_content.dart';

/// Collapsing expressive page title above the shared padded sliver content.
class AppHeroPageScaffold extends StatelessWidget {
  const AppHeroPageScaffold({
    required this.title,
    required this.icon,
    required this.slivers,
    this.subtitle,
    this.bottomNavigationBar,
    this.expandedContent,
    this.expandedHeight = 320,
    this.onBack,
    this.accent = 0,
    super.key,
  });

  final Widget? bottomNavigationBar;
  final Widget? expandedContent;
  final double expandedHeight;
  final String title;
  final String? subtitle;
  final IconData icon;
  final VoidCallback? onBack;
  final int accent;
  final List<Widget> slivers;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomNavigationBar,
      body: PageScrollContent(
        padded: true,
        headerSlivers: [
          AppHeroSliver(
            title: title,
            subtitle: subtitle,
            icon: icon,
            onBack: onBack,
            accent: accent,
            expandedHeight: expandedHeight,
            expandedContent: expandedContent,
          ),
        ],
        slivers: slivers,
      ),
    );
  }
}
