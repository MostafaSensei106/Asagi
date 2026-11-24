import 'dart:async';

import 'package:material_ui/material_ui.dart';

import '../../../constants/app_config.dart';
import '../../../services/haptics/haptics_service.dart';

/// Filled (primary) action button.
///
/// Grows to fill the available width when [expand] is `true`, otherwise sizes
/// itself to its content. Passing a `null` [onPressed], or setting
/// [isEnabled] / [isLoading] to a disabled value, renders a disabled button.
final class FilledButtonComponent extends StatelessWidget {
  const FilledButtonComponent({
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

  const FilledButtonComponent.icon({
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
    final colors = isDestructive
        ? (
            background: Theme.of(context).colorScheme.error,
            foreground: Theme.of(context).colorScheme.onError,
          )
        : (
            background:
                backgroundColor ?? Theme.of(context).colorScheme.primary,
            foreground:
                foregroundColor ?? Theme.of(context).colorScheme.onPrimary,
          );

    final style = _getButtonStyle(
      background: colors.background,
      foreground: colors.foreground,
    );

    final enabled = isEnabled && !isLoading && onPressed != null;
    final callback = enabled
        ? () {
            unawaited(AppHaptics.button());
            onPressed!();
          }
        : null;

    if (isLoading) {
      return FilledButton(
        onPressed: null,
        style: style,
        child: SizedBox(
          height: AppConfig.iconSizeHalf,
          width: AppConfig.iconSizeHalf,
          child: CircularProgressIndicator(
            strokeWidth: 2,
            color: colors.foreground,
          ),
        ),
      );
    }

    if (icon != null) {
      return FilledButton.icon(
        onPressed: callback,
        style: style,
        icon: Icon(icon, size: AppConfig.iconSize),
        label: Text(label),
      );
    }

    return FilledButton(onPressed: callback, style: style, child: Text(label));
  }

  ButtonStyle _getButtonStyle({
    required Color background,
    required Color foreground,
  }) => FilledButton.styleFrom(
    backgroundColor: background,
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
