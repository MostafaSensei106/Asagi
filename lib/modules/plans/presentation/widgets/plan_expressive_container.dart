import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/design_system/tokens/tokens.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/widgets.dart';

/// Soft, shaped section surface used by the plans feature.
final class PlanExpressiveContainer extends StatelessWidget {
  const PlanExpressiveContainer({
    required this.title,
    required this.icon,
    required this.shape,
    required this.child,
    super.key,
  });

  final String title;
  final IconData icon;
  final ExpressiveIconShape shape;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            ExpressiveIcon(
              icon: icon,
              shape: shape,
              size: 36,
              backgroundColor: scheme.primaryContainer,
              foregroundColor: scheme.onPrimaryContainer,
            ),
            const Gap.horizontal(AppSpacing.medium),
            Expanded(
              child: Text(
                title,
                style: context.textTheme.titleSmall?.copyWith(
                  color: scheme.onSurface,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ],
        ),
        const Gap(AppSpacing.small),
        child,
      ],
    );
  }
}
