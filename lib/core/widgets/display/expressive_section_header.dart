import 'package:material_ui/material_ui.dart';

import '../../constants/design_system/tokens/tokens.dart';
import '../../extensions/extensions.dart';
import '../layout/gap.dart';

/// Section heading with an expressive badge and a title.
class ExpressiveSectionHeader extends StatelessWidget {
  const ExpressiveSectionHeader({required this.title, super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Gap.horizontal(AppSpacing.small),
        Expanded(child: Text(title, style: context.textTheme.titleMedium)),
      ],
    );
  }
}
