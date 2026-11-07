import 'dart:async';
import 'dart:math' as math;

import 'package:flutter/physics.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:material_ui/material_ui.dart';

/// Morphs between the predefined Material 3 Expressive shapes while spinning.
///
/// Tapping it squishes + bounces it on a spring, gives it an extra spin kick,
/// and makes it morph faster for a few cycles. Honors "reduce motion".
final class ExpressiveMorph extends StatefulWidget {
  const ExpressiveMorph({
    required this.size,
    required this.color,
    required this.duration,
    required this.spinDuration,
    super.key,
    this.initialShapeIndex = 0,
    this.reverseSpin = false,
  });

  final double size;
  final Color color;
  final Duration duration;
  final Duration spinDuration;
  final int initialShapeIndex;
  final bool reverseSpin;

  @override
  State<ExpressiveMorph> createState() => _ExpressiveMorphState();
}

final class _ExpressiveMorphState extends State<ExpressiveMorph>
    with TickerProviderStateMixin {
  static final List<RoundedPolygon> _shapes = MaterialShapes.all;

  // Built once and shared by every instance.
  static final List<ShapeBorderTween> _tweens = [
    for (var index = 0; index < _shapes.length; index++)
      ShapeBorderTween(
        begin: MaterialShapeBorder(shape: _shapes[index]),
        end: MaterialShapeBorder(shape: _shapes[(index + 1) % _shapes.length]),
      ),
  ];

  static final SpringDescription _spring = SpringDescription.withDampingRatio(
    mass: 1,
    stiffness: 320,
    ratio: 0.4,
  );

  late final AnimationController _controller; // morph progress 0 -> 1
  late final AnimationController _spin; // continuous rotation, in turns
  late final AnimationController _kick; // extra rotation added by taps
  late final AnimationController _pop; // spring scale offset (0 = rest)

  late int _shapeIndex;
  Timer? _startTimer;
  int _boostCycles = 0;
  double _kickTarget = 0;

  @override
  void initState() {
    super.initState();

    _shapeIndex = widget.initialShapeIndex % _shapes.length;

    _controller = AnimationController.unbounded(vsync: this);
    _kick = AnimationController.unbounded(vsync: this);
    _pop = AnimationController.unbounded(vsync: this);
    _spin = AnimationController(vsync: this, duration: widget.spinDuration);

    // Let the hero settle before the first morph.
    _startTimer = Timer(const Duration(milliseconds: 450), _morph);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (MediaQuery.disableAnimationsOf(context)) {
      _spin.stop();
    } else if (!_spin.isAnimating) {
      _spin.repeat();
    }
  }

  Future<void> _morph() async {
    while (mounted) {
      if (MediaQuery.disableAnimationsOf(context)) return;

      final boosted = _boostCycles > 0;
      if (boosted) _boostCycles--;

      _controller.value = 0;

      await _controller.animateTo(
        1,
        duration: boosted ? widget.duration * 0.45 : widget.duration,
        curve: Curves.easeInOutCubicEmphasized,
      );

      if (!mounted) return;

      setState(() => _shapeIndex = (_shapeIndex + 1) % _tweens.length);
    }
  }

  void _onTap() {
    unawaited(HapticFeedback.selectionClick());

    // Faster morphing for the next few cycles.
    _boostCycles = 4;

    // Squish, then bounce back on a spring.
    _pop.value = -0.22;
    unawaited(_pop.animateWith(SpringSimulation(_spring, -0.22, 0, 0)));

    // Extra spin kick that decelerates smoothly.
    _kickTarget += 0.6;
    unawaited(
      _kick.animateTo(
        _kickTarget,
        duration: const Duration(milliseconds: 900),
        curve: Curves.easeOutCubic,
      ),
    );
  }

  @override
  void dispose() {
    _startTimer?.cancel();
    _controller.dispose();
    _spin.dispose();
    _kick.dispose();
    _pop.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final reduceMotion = MediaQuery.disableAnimationsOf(context);
    final direction = widget.reverseSpin ? -1.0 : 1.0;

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: _onTap,
      child: RepaintBoundary(
        child: SizedBox.square(
          dimension: widget.size,
          child: AnimatedBuilder(
            animation: Listenable.merge([_controller, _spin, _kick, _pop]),
            builder: (context, child) {
              final turns = reduceMotion
                  ? 0.0
                  : (_spin.value + _kick.value) * direction;

              return Transform.scale(
                scale: 1 + _pop.value,
                child: Transform.rotate(
                  angle: turns * 2 * math.pi,
                  child: DecoratedBox(
                    decoration: ShapeDecoration(
                      color: widget.color,
                      shape: _tweens[_shapeIndex].evaluate(_controller)!,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    ).animate().fadeIn(duration: 650.ms, curve: Curves.easeOutCubic);
  }
}
