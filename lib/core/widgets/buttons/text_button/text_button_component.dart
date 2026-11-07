import 'dart:async';

import 'package:flutter/services.dart';
import 'package:material_ui/material_ui.dart';

import '../../../constants/app_config.dart';

/// Text (tertiary) action button.
///
/// Passing a `null` [onPressed], or setting [isEnable] / [isLoading] to a
/// disabled value, renders a disabled button.
final class TextButtonComponent extends StatelessWidget {
  const TextButtonComponent({
    required this.label,
    super.key,
    this.onPressed,
    this.icon,
    this.isEnable = true,
    this.isLoading = false,
    this.isDestructive = false,
    this.expand = false,
    this.useInBorderRadius = false,
    this.backgroundColor,
    this.foregroundColor,
  });

  const TextButtonComponent.icon({
    required this.icon,
    required this.label,
    super.key,
    this.onPressed,
    this.isEnable = true,
    this.isLoading = false,
    this.isDestructive = false,
    this.expand = false,
    this.useInBorderRadius = false,
    this.backgroundColor,
    this.foregroundColor,
  });

  final String label;
  final VoidCallback? onPressed;
  final bool useInBorderRadius;
  final IconData? icon;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final bool isEnable;
  final bool isLoading;
  final bool isDestructive;
  final bool expand;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final foreground = isDestructive ? colorScheme.error : foregroundColor;

    final style = TextButton.styleFrom(
      backgroundColor: backgroundColor,
      foregroundColor: foreground,
      minimumSize: Size(expand ? double.infinity : 0, AppConfig.buttonHeight),
      shape: RoundedRectangleBorder(
        borderRadius: useInBorderRadius
            ? BorderRadius.circular(AppConfig.inBorderRadius)
            : BorderRadius.circular(AppConfig.outBorderRadius),
      ),
    );

    final enabled = isEnable && !isLoading && onPressed != null;
    final callback = enabled
        ? () {
            unawaited(HapticFeedback.vibrate());
            onPressed!();
          }
        : null;

    if (isLoading) {
      return TextButton(
        onPressed: null,
        style: style,
        child: SizedBox(
          height: AppConfig.iconSizeHalf,
          width: AppConfig.iconSizeHalf,
          child: CircularProgressIndicator(
            strokeWidth: 2,
            color: foreground ?? colorScheme.primary,
          ),
        ),
      );
    }

    if (icon != null) {
      return TextButton.icon(
        onPressed: callback,
        style: style,
        icon: Icon(icon, size: AppConfig.iconSize),
        label: Text(label),
      );
    }

    return TextButton(onPressed: callback, style: style, child: Text(label));
  }
}
