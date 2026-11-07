import 'package:material_ui/material_ui.dart';

import '../../constants/design_system/tokens/tokens.dart';
import '../layout/gap.dart';
import 'expressive_icon.dart';

/// Section heading with an expressive badge, title, and optional one-line
/// summary.
class ExpressiveSectionHeader extends StatelessWidget {
  const ExpressiveSectionHeader({
    required this.title,
    required this.icon,
    this.subtitle,
    this.shape = ExpressiveIconShape.clover,
    super.key,
  });

  final String title;
  final IconData icon;
  final String? subtitle;
  final ExpressiveIconShape shape;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final scheme = Theme.of(context).colorScheme;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ExpressiveIcon(icon: icon, shape: shape, size: 40),
        const Gap.horizontal(AppSpacing.medium),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
              if (subtitle != null) ...[
                const Gap(AppSpacing.xSmall),
                Text(
                  subtitle!,
                  style: textTheme.bodySmall?.copyWith(
                    color: scheme.onSurfaceVariant,
                  ),
                ),
              ],
            ],
          ),
        ),
      ],
    );
  }
}
