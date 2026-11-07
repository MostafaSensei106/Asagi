import 'package:material_ui/material_ui.dart';

enum ExpressiveIconShape { blossom, clover, gem, sunny }

/// Shared Material expressive badge for hero titles and list destinations.
class ExpressiveIcon extends StatelessWidget {
  const ExpressiveIcon({
    required this.icon,
    this.shape = ExpressiveIconShape.blossom,
    this.size = 48,
    this.backgroundColor,
    this.foregroundColor,
    super.key,
  });

  final IconData icon;
  final ExpressiveIconShape shape;
  final double size;
  final Color? backgroundColor;
  final Color? foregroundColor;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final border = switch (shape) {
      ExpressiveIconShape.blossom => RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      ExpressiveIconShape.clover => RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      ExpressiveIconShape.gem => RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      ExpressiveIconShape.sunny => const CircleBorder(),
    };

    return Material(
      color: backgroundColor ?? scheme.primaryContainer,
      shape: border,
      child: SizedBox.square(
        dimension: size,
        child: Icon(
          icon,
          size: size * 0.46,
          color: foregroundColor ?? scheme.onPrimaryContainer,
        ),
      ),
    );
  }
}
