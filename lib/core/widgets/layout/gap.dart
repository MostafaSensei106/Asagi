import 'package:material_ui/material_ui.dart';

/// Empty space between two widgets.
///
/// A named alternative to scattering `SizedBox(height: …)` through the code.
/// The value should come from `AppSpacing` so vertical rhythm stays identical
/// from screen to screen.
final class Gap extends StatelessWidget {
  /// Vertical gap of [size] logical pixels.
  const Gap(this.size, {super.key}) : axis = Axis.vertical;

  /// Horizontal gap of [size] logical pixels.
  const Gap.horizontal(this.size, {super.key}) : axis = Axis.horizontal;

  final double size;
  final Axis axis;

  @override
  Widget build(BuildContext context) => SizedBox(
    width: axis == Axis.horizontal ? size : null,
    height: axis == Axis.vertical ? size : null,
  );
}
