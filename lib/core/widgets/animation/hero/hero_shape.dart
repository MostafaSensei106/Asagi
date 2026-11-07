import 'package:material_ui/material_ui.dart';

/// Description of one floating shape in the auth hero.
final class HeroShape {
  const HeroShape({
    required this.size,
    required this.color,
    required this.fx,
    required this.fy,
    required this.shapeIndex,
    required this.morph,
    required this.spin,
    this.reverse = false,
  });

  final double size;
  final Color color;

  /// Starting position as a fraction of the arena (0..1).
  final double fx;
  final double fy;

  final int shapeIndex;
  final Duration morph;
  final Duration spin;
  final bool reverse;
}

/// Four small solid shapes, each in a different scheme color.
List<HeroShape> baseHeroShapes(ColorScheme scheme) => [
  HeroShape(
    size: 112,
    color: scheme.primary,
    fx: 0.76,
    fy: 0.34,
    shapeIndex: 0,
    morph: const Duration(milliseconds: 800),
    spin: const Duration(seconds: 10),
  ),
  HeroShape(
    size: 84,
    color: scheme.tertiary,
    fx: 0.34,
    fy: 0.62,
    shapeIndex: 7,
    morph: const Duration(milliseconds: 650),
    spin: const Duration(seconds: 6),
    reverse: true,
  ),
  HeroShape(
    size: 64,
    color: scheme.secondaryFixedDim,
    fx: 0.55,
    fy: 0.78,
    shapeIndex: 13,
    morph: const Duration(milliseconds: 720),
    spin: const Duration(milliseconds: 7500),
  ),
  HeroShape(
    size: 52,
    color: scheme.inversePrimary,
    fx: 0.14,
    fy: 0.24,
    shapeIndex: 20,
    morph: const Duration(milliseconds: 900),
    spin: const Duration(seconds: 12),
    reverse: true,
  ),
];

/// Same four shapes, with the colors rotated and the starting shapes shifted
/// by [variant] so each screen feels related but not identical.
List<HeroShape> heroShapes(ColorScheme scheme, int variant) {
  final base = baseHeroShapes(scheme);

  return [
    for (var i = 0; i < base.length; i++)
      HeroShape(
        size: base[i].size,
        color: base[(i + variant) % base.length].color,
        fx: base[i].fx,
        fy: base[i].fy,
        shapeIndex: base[i].shapeIndex + variant * 5,
        morph: base[i].morph,
        spin: base[i].spin,
        reverse: base[i].reverse,
      ),
  ];
}
