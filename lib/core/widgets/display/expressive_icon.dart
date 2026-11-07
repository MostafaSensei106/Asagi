import 'package:material_ui/material_ui.dart';

/// Expressive badge shapes used by icons across the app.
///
/// Each value maps to a Material 3 polygon. Polygons are resolved lazily
/// because [MaterialShapes] exposes them as `static final` values rather than
/// compile-time constants.
enum ExpressiveIconShape {
  blossom,
  clover,
  gem,
  sunny,
  arch,
  diamond,
  softBurst,
  heart,
  pill,
  pentagon,
  cookie,
  semiCircle,
  burst,
  puffyDiamond,
  fan;

  RoundedPolygon get _polygon => switch (this) {
    ExpressiveIconShape.blossom => MaterialShapes.flower,
    ExpressiveIconShape.clover => MaterialShapes.clover4Leaf,
    ExpressiveIconShape.gem => MaterialShapes.gem,
    ExpressiveIconShape.sunny => MaterialShapes.sunny,
    ExpressiveIconShape.arch => MaterialShapes.arch,
    ExpressiveIconShape.diamond => MaterialShapes.diamond,
    ExpressiveIconShape.softBurst => MaterialShapes.softBurst,
    ExpressiveIconShape.heart => MaterialShapes.heart,
    ExpressiveIconShape.pill => MaterialShapes.pill,
    ExpressiveIconShape.pentagon => MaterialShapes.pentagon,
    ExpressiveIconShape.cookie => MaterialShapes.cookie4Sided,
    ExpressiveIconShape.semiCircle => MaterialShapes.semiCircle,
    ExpressiveIconShape.burst => MaterialShapes.burst,
    ExpressiveIconShape.puffyDiamond => MaterialShapes.puffyDiamond,
    ExpressiveIconShape.fan => MaterialShapes.fan,
  };

  /// Border that paints this shape inside a square badge.
  ///
  /// The default `squash` of `0` keeps the polygon's aspect ratio uniform, so
  /// a square badge never distorts the shape.
  ShapeBorder get border => MaterialShapeBorder(shape: _polygon);
}

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

    return Material(
      color: backgroundColor ?? scheme.primaryContainer,
      shape: shape.border,
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
