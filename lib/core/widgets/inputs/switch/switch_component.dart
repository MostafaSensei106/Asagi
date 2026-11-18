// ignore_for_file: avoid_positional_boolean_parameters

import 'package:lucide_icons_flutter/lucide_icons_500.dart';
import 'package:material_ui/material_ui.dart';

final class SwitchComponent extends StatelessWidget {
  const SwitchComponent({
    required this.value,
    required this.onChanged,
    super.key,
  });
  final bool value;
  final void Function(bool) onChanged;

  @override
  Widget build(BuildContext context) => Switch(
    value: value,
    onChanged: onChanged,
    activeTrackColor: Theme.of(context).colorScheme.primary,
    thumbIcon: WidgetStateProperty.resolveWith<Icon?>((states) {
      if (states.contains(WidgetState.selected)) {
        return const Icon(LucideIcons500.check);
      }
      return const Icon(Icons.close);
    }),
  );
}
