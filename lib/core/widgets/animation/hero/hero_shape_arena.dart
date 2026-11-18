import 'dart:math' as math;

import 'package:flutter/scheduler.dart';
import 'package:material_ui/material_ui.dart';

import 'expressive_morph.dart';
import 'hero_shape.dart';

final class _Body {
  _Body({
    required this.index,
    required this.size,
    required this.pos,
    required this.vel,
  });

  final int index;
  final double size;
  Offset pos;
  Offset vel;

  // Shapes are not perfect circles, so shrink the collision radius a little.
  double get radius => size / 2 * 0.92;
  double get mass => radius * radius;
}

/// A tiny physics playground: the shapes sit still until the device's sensors
/// move them, then bounce off the walls and collide with each other.
final class HeroShapeArena extends StatefulWidget {
  const HeroShapeArena({required this.shapes, required this.height, super.key});

  final List<HeroShape> shapes;
  final double height;

  @override
  State<HeroShapeArena> createState() => _HeroShapeArenaState();
}

final class _HeroShapeArenaState extends State<HeroShapeArena>
    with SingleTickerProviderStateMixin {
  static const double _friction = 1.8; // how fast shapes settle again
  static const double _maxSpeed = 520;

  // The shapes stay put until the phone moves: changing its tilt rolls them,
  // rotating it nudges them, and shaking it sends them flying.
  static const double _tiltStrength = 45; // px/s² per m/s² of tilt change
  static const double _gyroStrength = 55; // px/s² per rad/s of rotation
  static const double _shakeThreshold = 12; // m/s² away from 1g
  static const Duration _shakeCooldown = Duration(milliseconds: 450);

  late final Ticker _ticker;
  final List<_Body> _bodies = [];
  final ValueNotifier<int> _frame = ValueNotifier<int>(0);
  final math.Random _random = math.Random(7);

  final Size _size = Size.zero;
  final Duration _last = Duration.zero;

  final Offset _tilt = Offset.zero; // change in tilt, in screen space
  Offset? _tiltBaseline; // slowly follows the resting orientation
  // screen-space push from the gyroscope
  final DateTime _lastShake = DateTime.fromMillisecondsSinceEpoch(0);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      width: double.infinity,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            clipBehavior: Clip.none,
            children: [
              for (final body in _bodies)
                AnimatedBuilder(
                  key: ValueKey(body.index),
                  animation: _frame,
                  child: ExpressiveMorph(
                    size: body.size,
                    color: widget.shapes[body.index].color,
                    duration: widget.shapes[body.index].morph,
                    spinDuration: widget.shapes[body.index].spin,
                    initialShapeIndex: widget.shapes[body.index].shapeIndex,
                    reverseSpin: widget.shapes[body.index].reverse,
                  ),
                  builder: (context, child) => Positioned(
                    left: body.pos.dx - body.size / 2,
                    top: body.pos.dy - body.size / 2,
                    child: child!,
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}
