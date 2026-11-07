import 'package:material_ui/material_ui.dart';

import '../../../constants/design_system/tokens/tokens.dart';
import '../../../extensions/extensions.dart';
import '../../display/expressive_icon.dart';

final class HeroTitle extends StatelessWidget {
  const HeroTitle({
    required this.title,
    required this.icon,
    this.accent = 0,
    this.subtitle,
    super.key,
  });

  final IconData icon;
  final int accent;
  final String title;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        ExpressiveIcon(
          icon: icon,
          size: 64,
          shape: ExpressiveIconShape
              .values[accent % ExpressiveIconShape.values.length],
          backgroundColor: scheme.primary,
          foregroundColor: scheme.onPrimary,
        ),
        const SizedBox(height: AppSpacing.medium),
        Text(
          title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: context.textTheme.displaySmall?.copyWith(
            color: scheme.onPrimaryContainer,
            letterSpacing: -1,
            height: 1.05,
          ),
        ),
        if (subtitle != null) ...[
          const SizedBox(height: AppSpacing.small),
          Text(
            subtitle!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: context.textTheme.bodyLarge?.copyWith(
              color: scheme.onPrimaryContainer.withValues(alpha: 0.78),
            ),
          ),
        ],
      ],
    );
  }
}
