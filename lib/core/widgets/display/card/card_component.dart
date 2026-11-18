import 'package:material_ui/material_ui.dart';

import '../../../constants/app_config.dart';

/// Surface treatments available to [CardComponent].
enum CardVariant { filled, outlined, elevated }

/// Rounded content container used as the app's base surface.
final class CardComponent extends StatelessWidget {
  const CardComponent({
    required this.child,
    super.key,
    this.padding,
    this.color,
    this.variant = CardVariant.filled,
    this.onTap,
    this.borderRadius,
  });

  const CardComponent.filled({
    required this.child,
    super.key,
    this.padding,
    this.color,
    this.onTap,
    this.borderRadius,
  }) : variant = CardVariant.filled;

  const CardComponent.outlined({
    required this.child,
    super.key,
    this.padding,
    this.color,
    this.onTap,
    this.borderRadius,
  }) : variant = CardVariant.outlined;

  const CardComponent.elevated({
    required this.child,
    super.key,
    this.padding,
    this.color,
    this.onTap,
    this.borderRadius,
  }) : variant = CardVariant.elevated;

  final Widget child;
  final EdgeInsetsGeometry? padding;
  final Color? color;
  final CardVariant variant;
  final VoidCallback? onTap;

  /// Overrides the default corner radius.
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final radius = BorderRadius.circular(
      borderRadius ?? AppConfig.outBorderRadius,
    );

    final decoration = switch (variant) {
      CardVariant.filled => BoxDecoration(
        color: color ?? colorScheme.surfaceContainer,
        borderRadius: radius,
      ),
      CardVariant.outlined => BoxDecoration(
        color: color ?? colorScheme.surface,
        borderRadius: radius,
        border: Border.all(color: colorScheme.outlineVariant),
      ),
      CardVariant.elevated => BoxDecoration(
        color: color ?? colorScheme.surfaceContainerLow,
        borderRadius: radius,
        boxShadow: [
          BoxShadow(
            color: colorScheme.shadow.withValues(alpha: 0.08),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
    };

    final content = Container(
      padding: padding ?? const EdgeInsets.all(AppConfig.paddingHalf),
      decoration: decoration,
      child: child,
    );

    if (onTap == null) return content;

    return Material(
      color: Colors.transparent,
      borderRadius: radius,
      clipBehavior: Clip.antiAlias,
      child: InkWell(onTap: onTap, child: content),
    );
  }
}
