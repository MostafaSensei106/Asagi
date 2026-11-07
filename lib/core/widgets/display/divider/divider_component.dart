import 'package:material_ui/material_ui.dart';

/// Thin separation line between content blocks.
///
/// Use the default constructor for a horizontal rule and
/// [DividerComponent.vertical] for column separators.
final class DividerComponent extends StatelessWidget {
  const DividerComponent({
    super.key,
    this.indent,
    this.endIndent,
    this.thickness,
    this.space,
    this.color,
  }) : isVertical = false;

  const DividerComponent.vertical({
    super.key,
    this.indent,
    this.endIndent,
    this.thickness,
    this.space,
    this.color,
  }) : isVertical = true;

  final double? indent;
  final double? endIndent;

  /// Line thickness. Defaults to the framework value (1 logical pixel).
  final double? thickness;

  /// Height of a horizontal divider or width of a vertical divider.
  final double? space;

  final Color? color;

  final bool isVertical;

  @override
  Widget build(BuildContext context) {
    final effectiveColor =
        color ?? Theme.of(context).colorScheme.outlineVariant;

    if (isVertical) {
      return VerticalDivider(
        width: space ?? 1,
        thickness: thickness ?? 1,
        indent: indent ?? 0,
        endIndent: endIndent ?? 0,
        color: effectiveColor,
      );
    }

    return Divider(
      height: space ?? 1,
      thickness: thickness ?? 1,
      indent: indent ?? 0,
      endIndent: endIndent ?? 0,
      color: effectiveColor,
    );
  }
}
