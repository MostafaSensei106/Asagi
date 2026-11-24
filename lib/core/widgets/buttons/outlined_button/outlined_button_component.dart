import 'dart:async';

import 'package:material_ui/material_ui.dart';

import '../../../constants/app_config.dart';
import '../../../services/haptics/haptics_service.dart';

/// Outlined (secondary) action button.
///
/// Grows to fill the available width when [expand] is `true`, otherwise sizes
/// itself to its content. Passing a `null` [onPressed], or setting
/// [isEnabled] / [isLoading] to a disabled value, renders a disabled button.
final class OutlinedButtonComponent extends StatelessWidget {
  const OutlinedButtonComponent({
    required this.label,
    super.key,
    this.onPressed,
    this.icon,
    this.isEnabled = true,
    this.isLoading = false,
    this.isDestructive = false,
    this.expand = false,
    this.useInBorderRadius = false,
    this.width,
    this.height,
    this.backgroundColor,
    this.foregroundColor,
  });

  const OutlinedButtonComponent.icon({
    required this.icon,
    required this.label,
    super.key,
    this.onPressed,
    this.isEnabled = true,
    this.isLoading = false,
    this.isDestructive = false,
    this.expand = false,
    this.useInBorderRadius = false,
    this.width,
    this.height,
    this.backgroundColor,
    this.foregroundColor,
  });

  final String label;
  final VoidCallback? onPressed;
  final IconData? icon;
  final bool isEnabled;
  final bool isLoading;
  final bool isDestructive;
  final bool expand;
  final bool useInBorderRadius;
  final double? width;
  final double? height;
  final Color? backgroundColor;
  final Color? foregroundColor;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final foreground = isDestructive
        ? colorScheme.error
        : foregroundColor ?? colorScheme.primary;
    final borderColor = isDestructive
        ? colorScheme.error
        : backgroundColor ?? colorScheme.outline;

    final style = _getButtonStyle(
      borderColor: borderColor,
      foreground: foreground,
    );

    final enabled = isEnabled && !isLoading && onPressed != null;
    final callback = enabled
        ? () {
            unawaited(AppHaptics.button());
            onPressed!();
          }
        : null;

    if (isLoading) {
      return OutlinedButton(
        onPressed: null,
        style: style,
        child: SizedBox(
          height: AppConfig.iconSizeHalf,
          width: AppConfig.iconSizeHalf,
          child: CircularProgressIndicator(strokeWidth: 2, color: foreground),
        ),
      );
    }

    if (icon != null) {
      return OutlinedButton.icon(
        onPressed: callback,
        style: style,
        icon: Icon(icon, size: AppConfig.iconSize),
        label: Text(label),
      );
    }

    return OutlinedButton(
      onPressed: callback,
      style: style,
      child: Text(label),
    );
  }

  ButtonStyle _getButtonStyle({
    required Color borderColor,
    required Color foreground,
  }) => OutlinedButton.styleFrom(
    side: BorderSide(color: borderColor),
    foregroundColor: foreground,
    minimumSize: Size(
      expand ? (width ?? double.infinity) : (width ?? 0),
      height ?? AppConfig.buttonHeight,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: useInBorderRadius
          ? BorderRadius.circular(AppConfig.inBorderRadius)
          : BorderRadius.circular(AppConfig.outBorderRadius),
    ),
  );
}
