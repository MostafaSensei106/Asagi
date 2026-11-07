import 'package:material_ui/material_ui.dart';

import '../../constants/design_system/tokens/tokens.dart';
import 'expressive_icon.dart';

class ExpressiveSectionHeader extends StatelessWidget {
  const ExpressiveSectionHeader({
    required this.title,
    required this.icon,
    super.key,
  });

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ExpressiveIcon(icon: icon, shape: ExpressiveIconShape.clover, size: 36),
        const SizedBox(width: AppSpacing.small),
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
