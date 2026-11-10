import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/design_system/tokens/tokens.dart';
import '../../../../core/widgets/widgets.dart';

final class AboutRow {
  const AboutRow({
    required this.title,
    required this.icon,
    this.subtitle,
    this.onTap,
  });

  final String title;
  final String? subtitle;
  final IconData icon;
  final VoidCallback? onTap;
}

final class AboutSection extends StatelessWidget {
  const AboutSection({
    required this.title,
    required this.icon,
    required this.children,
    super.key,
  });

  final String title;
  final IconData icon;
  final List<AboutRow> children;

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      ExpressiveSectionHeader(
        icon: icon,
        shape: ExpressiveIconShape.sunny,
        title: title,
      ),
      const Gap(AppSpacing.small),
      for (var index = 0; index < children.length; index++)
        _tile(children[index], index),
    ],
  );

  Widget _tile(AboutRow row, int index) {
    final isFirst = index == 0;
    final isLast = index == children.length - 1;
    if (isFirst && isLast) {
      return ListTileIconComponent(
        title: row.title,
        subtitle: row.subtitle,
        leading: row.icon,
        shape: ExpressiveIconShape.sunny,
        showChevron: row.onTap != null,
        onTap: row.onTap,
      );
    }
    if (isFirst) {
      return ListTileIconComponent.top(
        title: row.title,
        subtitle: row.subtitle,
        leading: row.icon,
        shape: ExpressiveIconShape.sunny,
        showChevron: row.onTap != null,
        onTap: row.onTap,
      );
    }
    if (isLast) {
      return ListTileIconComponent.bottom(
        title: row.title,
        subtitle: row.subtitle,
        leading: row.icon,
        shape: ExpressiveIconShape.sunny,
        showChevron: row.onTap != null,
        onTap: row.onTap,
      );
    }
    return ListTileIconComponent.middle(
      title: row.title,
      subtitle: row.subtitle,
      leading: row.icon,
      shape: ExpressiveIconShape.sunny,
      showChevron: row.onTap != null,
      onTap: row.onTap,
    );
  }
}
