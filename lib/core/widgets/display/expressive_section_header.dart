import 'package:material_ui/material_ui.dart';

import '../../constants/design_system/tokens/tokens.dart';
import '../layout/gap.dart';
import 'expressive_icon.dart';

/// Section heading with an expressive badge and a title.
class ExpressiveSectionHeader extends StatelessWidget {
  const ExpressiveSectionHeader({
    required this.title,
    required this.icon,
    this.shape = ExpressiveIconShape.clover,
    this.badgeSize = 44,
    super.key,
  });

  final String title;
  final IconData icon;
  final ExpressiveIconShape shape;

  /// Edge length of the expressive badge behind [icon].
  final double badgeSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ExpressiveIcon(icon: icon, shape: shape, size: badgeSize),
        const Gap.horizontal(AppSpacing.medium),
        Expanded(
          child: Text(
            title,
            style: Theme.of(context).textTheme.titleMedium
                ?.copyWith(fontWeight: FontWeight.w700),
          ),
        ),
      ],
    );
  }
}
