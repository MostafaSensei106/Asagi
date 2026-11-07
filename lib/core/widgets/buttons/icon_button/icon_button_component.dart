import 'dart:async';

import 'package:flutter/services.dart';
import 'package:material_ui/material_ui.dart';

import '../../../constants/app_config.dart';

enum IconButtonVariant { standard, filled, tonal, outlined }

/// Icon-only action button.
///
/// Supports the four Material icon-button treatments through [variant].
/// When [selectedIcon] and [isSelected] are supplied the button renders as a
/// toggle, showing [selectedIcon] while selected.
final class IconButtonComponent extends StatelessWidget {
  const IconButtonComponent({
    required this.icon,
    super.key,
    this.onPressed,
    this.variant = IconButtonVariant.standard,
    this.selectedIcon,
    this.isSelected = false,
    this.useInBorderRadius = false,
    this.toolTip,
    this.backgroundColor,
    this.foregroundColor,
    this.iconSize,
    this.padding,
  });

  final IconData icon;
  final VoidCallback? onPressed;
  final IconButtonVariant variant;

  final IconData? selectedIcon;
  final bool isSelected;
  final bool useInBorderRadius;

  final String? toolTip;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double? iconSize;
  final double? padding;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final effectiveIcon = isSelected ? (selectedIcon ?? icon) : icon;

    final callback = onPressed == null
        ? null
        : () {
            unawaited(HapticFeedback.vibrate());
            onPressed!();
          };

    final widget = Icon(effectiveIcon, size: iconSize ?? AppConfig.iconSize);

    final radius = BorderRadius.circular(
      useInBorderRadius ? AppConfig.inBorderRadius : AppConfig.outBorderRadius,
    );

    switch (variant) {
      case IconButtonVariant.standard:
        return IconButton(
          icon: widget,
          onPressed: callback,
          tooltip: toolTip,
          color: foregroundColor ?? colorScheme.primary,
        );
      case IconButtonVariant.filled:
        return IconButton.filled(
          icon: widget,
          onPressed: callback,
          tooltip: toolTip,
          style: IconButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: radius),
            backgroundColor: backgroundColor ?? colorScheme.primaryContainer,
            foregroundColor: foregroundColor ?? colorScheme.onPrimaryContainer,
          ),
        );
      case IconButtonVariant.tonal:
        return IconButton.filledTonal(
          icon: widget,
          onPressed: callback,
          tooltip: toolTip,
          style: IconButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: radius),
            backgroundColor: backgroundColor ?? colorScheme.secondaryContainer,
            foregroundColor:
                foregroundColor ?? colorScheme.onSecondaryContainer,
            padding: EdgeInsets.all(padding ?? 4),
          ),
        );
      case IconButtonVariant.outlined:
        return IconButton.outlined(
          icon: widget,
          onPressed: callback,
          tooltip: toolTip,
          style: IconButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: radius),
            padding: EdgeInsets.all(padding ?? 4),
            side: BorderSide(
              color: backgroundColor ?? colorScheme.outlineVariant,
            ),
            foregroundColor: foregroundColor ?? colorScheme.primary,
          ),
        );
    }
  }
}
