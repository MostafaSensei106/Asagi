import 'package:flutter_animate/flutter_animate.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:material_ui/material_ui.dart';

import '../../../extensions/extensions.dart';
import '../../display/expressive_icon.dart';

/// Animated, widget-based visual for a feature explanation sheet.
final class InfoBottomSheetIllustration extends StatelessWidget {
  const InfoBottomSheetIllustration({
    required this.icon,
    this.inputIcon = LucideIcons.fileInput,
    this.outputIcon = LucideIcons.check,
    super.key,
  });

  final IconData icon;
  final IconData inputIcon;
  final IconData outputIcon;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final arrowIcon = context.isArabic
        ? LucideIcons.arrowLeft
        : LucideIcons.arrowRight;

    return Semantics(
      excludeSemantics: true,
      child: Container(
        height: 132,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: scheme.surfaceContainer,
          borderRadius: BorderRadius.circular(28),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _StepIcon(
              icon: inputIcon,
              backgroundColor: scheme.secondaryContainer,
              foregroundColor: scheme.onSecondaryContainer,
            ).animate().fadeIn(duration: 260.ms).slideX(begin: -0.25),
            const SizedBox(width: 12),
            Icon(
              arrowIcon,
              size: 18,
              color: scheme.onSurfaceVariant,
            ).animate(delay: 120.ms).fadeIn(duration: 220.ms),
            const SizedBox(width: 12),
            ExpressiveIcon(
                  icon: icon,
                  shape: ExpressiveIconShape.softBurst,
                  size: 72,
                  backgroundColor: scheme.primaryContainer,
                  foregroundColor: scheme.onPrimaryContainer,
                )
                .animate(delay: 100.ms)
                .fadeIn(duration: 300.ms)
                .scale(
                  begin: const Offset(0.78, 0.78),
                  curve: Curves.easeOutBack,
                ),
            const SizedBox(width: 12),
            Icon(
              arrowIcon,
              size: 18,
              color: scheme.onSurfaceVariant,
            ).animate(delay: 220.ms).fadeIn(duration: 220.ms),
            const SizedBox(width: 12),
            _StepIcon(
                  icon: outputIcon,
                  backgroundColor: scheme.tertiaryContainer,
                  foregroundColor: scheme.onTertiaryContainer,
                )
                .animate(delay: 300.ms)
                .fadeIn(duration: 260.ms)
                .slideX(begin: 0.25),
          ],
        ),
      ),
    );
  }
}

final class _StepIcon extends StatelessWidget {
  const _StepIcon({
    required this.icon,
    required this.backgroundColor,
    required this.foregroundColor,
  });

  final IconData icon;
  final Color backgroundColor;
  final Color foregroundColor;

  @override
  Widget build(BuildContext context) {
    return ExpressiveIcon(
      icon: icon,
      shape: ExpressiveIconShape.pill,
      size: 48,
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
    );
  }
}
