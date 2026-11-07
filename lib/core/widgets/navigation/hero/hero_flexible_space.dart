import 'dart:math' as math;

import 'package:material_ui/material_ui.dart';

import '../../../constants/design_system/tokens/tokens.dart';
import 'hero_background.dart';
import 'hero_title.dart';
import 'hero_toolbar.dart';

final class HeroFlexibleSpace extends StatelessWidget {
  const HeroFlexibleSpace({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.onBack,
    required this.actions,
    required this.expandedHeight,
    required this.accent,
    this.expandedContent,
    super.key,
  });

  final Widget? expandedContent;
  final String title;
  final String? subtitle;
  final IconData icon;
  final VoidCallback? onBack;
  final List<Widget> actions;
  final double expandedHeight;
  final int accent;

  @override
  Widget build(BuildContext context) {
    final settings = context
        .dependOnInheritedWidgetOfExactType<FlexibleSpaceBarSettings>();

    final topPadding = MediaQuery.paddingOf(context).top;

    return LayoutBuilder(
      builder: (context, constraints) {
        final minExtent = settings?.minExtent ?? kToolbarHeight + topPadding;
        final maxExtent = settings?.maxExtent ?? expandedHeight;
        final current = settings?.currentExtent ?? constraints.maxHeight;

        final range = math.max(1.0, maxExtent - minExtent);
        final collapse = ((current - minExtent) / range).clamp(0.0, 1.0);

        // Expanded content fades out early; the compact title fades in at the
        // end of the collapse so the bar never shows two titles at once.
        final expandedOpacity = ((collapse - 0.45) / 0.55).clamp(0.0, 1.0);
        final compactOpacity = ((0.3 - collapse) / 0.3).clamp(0.0, 1.0);
        final parallax = (1 - collapse) * 48;

        return ClipRect(
          child: Stack(
            fit: StackFit.expand,
            children: [
              HeroBackground(parallax: parallax, accent: accent),

              // Expanded copy -------------------------------------------------
              PositionedDirectional(
                start: AppSpacing.large,
                end: AppSpacing.large,
                bottom: AppSpacing.xLarge,
                child: Opacity(
                  opacity: expandedOpacity,
                  child: Transform.translate(
                    offset: Offset(0, (1 - collapse) * 18),
                    child:
                        expandedContent ??
                        HeroTitle(
                          title: title,
                          subtitle: subtitle,
                          icon: icon,
                          accent: accent,
                        ),
                  ),
                ),
              ),

              // Compact bar ---------------------------------------------------
              PositionedDirectional(
                top: topPadding,
                start: AppSpacing.small,
                end: AppSpacing.small,
                height: kToolbarHeight,
                child: HeroToolbar(
                  title: title,
                  opacity: compactOpacity,
                  onBack: onBack,
                  actions: actions,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
