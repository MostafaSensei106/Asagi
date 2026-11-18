import 'package:material_ui/material_ui.dart';

import '../../constants/design_system/tokens/tokens.dart';
import '../../extensions/extensions.dart';
import '../layout/gap.dart';
import 'expressive_icon.dart';

/// Section heading with an expressive badge and a title.
class ExpressiveSectionHeader extends StatelessWidget {
  const ExpressiveSectionHeader({
    required this.title,
    this.icon,
    this.shape,
    super.key,
  });

  final String title;
  final IconData? icon;
  final ExpressiveIconShape? shape;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppSpacing.xSmall),
      child: Row(
        children: [
          if (icon != null) ...[
            ExpressiveIcon(
              icon: icon!,
              shape: shape ?? ExpressiveIconShape.gem,
              size: 26,
              backgroundColor: scheme.primaryContainer,
              foregroundColor: scheme.onPrimaryContainer,
            ),
            const Gap.horizontal(AppSpacing.small),
          ] else ...[
            const Gap.horizontal(AppSpacing.xSmall),
          ],
          Expanded(
            child: Text(
              title,
              style: context.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: scheme.onSurface,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
