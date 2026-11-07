import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:material_ui/material_ui.dart';

import '../../extensions/extensions.dart';
import 'hero/hero_flexible_space.dart';

/// Collapsing gradient header used by every non-auth screen.
///
/// It carries the same visual language as the auth hero — a soft
/// primary/tertiary gradient fading into the surface, an organic brand badge,
/// and a heavy display title — without the physics playground, which stays
/// exclusive to the sign-in and sign-up screens.
///
/// The header is a sliver: put it first in a [CustomScrollView] (or in the
/// `headerSliverBuilder` of a [NestedScrollView] when the page has tabs).
final class AppHeroSliver extends StatelessWidget {
  const AppHeroSliver({
    required this.title,
    this.expandedContent,
    super.key,
    this.subtitle,
    this.icon = LucideIcons.sparkles,
    this.onBack,
    this.actions = const <Widget>[],
    this.expandedHeight = 300,
    this.accent = 0,
  });

  /// Large title shown while the header is expanded and in the compact bar.
  final Widget? expandedContent;
  final String title;

  /// Optional one-liner under the title.
  final String? subtitle;

  /// Icon inside the brand badge.
  final IconData icon;

  /// Shows a back button when non-null.
  final VoidCallback? onBack;

  /// Optional actions pinned to the top-right of the header.
  final List<Widget> actions;

  /// Height of the header when fully expanded.
  final double expandedHeight;

  /// Rotates the decorative shapes' colours (0, 1 or 2).
  final int accent;

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;

    return SliverAppBar(
      pinned: true,
      stretch: true,
      automaticallyImplyLeading: false,
      expandedHeight: expandedHeight,
      elevation: 0,
      scrolledUnderElevation: 0,
      backgroundColor: scheme.surface,
      surfaceTintColor: Colors.transparent,
      flexibleSpace: HeroFlexibleSpace(
        title: title,
        expandedContent: expandedContent,
        subtitle: subtitle,
        icon: icon,
        onBack: onBack,
        actions: actions,
        expandedHeight: expandedHeight,
        accent: accent,
      ),
    );
  }
}
