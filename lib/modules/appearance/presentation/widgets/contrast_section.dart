import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/widgets.dart';

/// Toggles the high-contrast variant of the current theme.
final class ContrastSection extends StatelessWidget {
  const ContrastSection({
    required this.enabled,
    required this.onChanged,
    super.key,
  });

  final bool enabled;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    final title = context.localeKeys.highContrast;

    return ListTileIconComponent(
      title: title,
      subtitle: context.localeKeys.sharperTextAndSurfaces,
      leading: LucideIcons.contrast,
      shape: ExpressiveIconShape.diamond,
      showChevron: false,
      trailing: SwitchComponent(
        label: title,
        value: enabled,
        onChanged: onChanged,
      ),
      onTap: () => onChanged(!enabled),
    );
  }
}
