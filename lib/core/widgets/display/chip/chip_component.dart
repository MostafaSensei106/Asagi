import 'package:material_ui/material_ui.dart';

/// Filter/selection chip.
///
/// Renders a static [Chip] when neither [onPressed] nor [onDeleted] is supplied,
/// and a [ChoiceChip] when [onPressed] is provided.
final class ChipComponent extends StatelessWidget {
  const ChipComponent({
    required this.label,
    super.key,
    this.onDeleted,
    this.onPressed,
    this.selected = false,
    this.icon,
    this.showCheckMark,
    this.showBorder = true,
  });

  final String label;
  final bool showBorder;
  final VoidCallback? onDeleted;
  final VoidCallback? onPressed;
  final bool selected;
  final IconData? icon;
  final bool? showCheckMark;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    if (onPressed != null) {
      return ChoiceChip(
        showCheckmark: showCheckMark ?? true,
        label: Text(label),
        selected: selected,
        avatar: icon == null ? null : Icon(icon, size: 16),
        onSelected: (_) => onPressed!(),
        backgroundColor: colorScheme.surfaceContainerHighest,
        selectedColor: colorScheme.primaryContainer,
        labelStyle: TextStyle(
          color: selected
              ? colorScheme.onPrimaryContainer
              : colorScheme.onSurfaceVariant,
        ),
        side: selected && showBorder
            ? BorderSide(color: colorScheme.primary)
            : BorderSide.none,
      );
    }

    return Chip(
      label: Text(label),
      side: showBorder ? null : BorderSide.none,
      avatar: icon == null ? null : Icon(icon, size: 16),
      onDeleted: onDeleted,
      backgroundColor: colorScheme.secondaryContainer,
      labelStyle: TextStyle(color: colorScheme.onSecondaryContainer),
    );
  }
}
