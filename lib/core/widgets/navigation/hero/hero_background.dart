import 'package:material_ui/material_ui.dart';

import '../../../extensions/extensions.dart';
import '../../animation/hero/hero_shape.dart';
import '../../animation/hero/hero_shape_arena.dart';

final class HeroBackground extends StatelessWidget {
  const HeroBackground({
    required this.parallax,
    required this.accent,
    super.key,
  });

  final double parallax;
  final int accent;

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    return Stack(
      fit: StackFit.expand,
      children: [
        DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: const [0, 0.55, 1],
              colors: [
                scheme.primaryContainer,
                Color.lerp(
                  scheme.primaryContainer,
                  scheme.tertiaryContainer,
                  0.55,
                )!,
                scheme.surface,
              ],
            ),
          ),
        ),

        Positioned(
          top: -parallax * 0.7,
          left: 0,
          right: 0,
          height: 180,
          child: HeroShapeArena(
            shapes: heroShapes(scheme, accent),
            height: 180,
          ),
        ),
      ],
    );
  }
}
