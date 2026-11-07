import 'dart:async';
import 'dart:math' as math;

import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:material_ui/material_ui.dart';
import 'package:sensors_plus/sensors_plus.dart';

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

  Size _size = Size.zero;
  Duration _last = Duration.zero;

  StreamSubscription<AccelerometerEvent>? _accelSub;
  StreamSubscription<GyroscopeEvent>? _gyroSub;
  Offset _tilt = Offset.zero; // change in tilt, in screen space
  Offset? _tiltBaseline; // slowly follows the resting orientation
  Offset _gyro = Offset.zero; // screen-space push from the gyroscope
  DateTime _lastShake = DateTime.fromMillisecondsSinceEpoch(0);

  @override
  void initState() {
    super.initState();
    _ticker = createTicker(_onTick);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    if (MediaQuery.disableAnimationsOf(context)) {
      _ticker.stop();
    } else if (!_ticker.isActive) {
      _last = Duration.zero;
      _ticker.start();
    }

    _syncSensors(
      active:
          !MediaQuery.disableAnimationsOf(context) &&
          TickerMode.valuesOf(context).enabled,
    );
  }

  void _syncSensors({required bool active}) {
    if (!active) {
      unawaited(_accelSub?.cancel());
      unawaited(_gyroSub?.cancel());
      _accelSub = null;
      _gyroSub = null;
      _tilt = Offset.zero;
      _tiltBaseline = null;
      _gyro = Offset.zero;
      return;
    }

    // Sensors are missing on web / desktop / emulators, so errors are ignored.
    _accelSub ??= accelerometerEventStream(
      samplingPeriod: SensorInterval.gameInterval,
    ).listen(_onAccelerometer, onError: (_) {});

    _gyroSub ??=
        gyroscopeEventStream(samplingPeriod: SensorInterval.gameInterval)
            .listen(
              (event) =>
                  _gyro = Offset.lerp(_gyro, Offset(event.y, event.x), 0.35)!,
              onError: (_) {},
            );
  }

  void _onAccelerometer(AccelerometerEvent event) {
    // Device axes -> screen axes: right side down gives a negative x reading,
    // and an upright phone gives a positive y reading.
    final raw = Offset(-event.x, event.y);

    // Only *changes* in orientation push the shapes: the baseline slowly
    // adopts however the phone is being held, so holding it still = no force.
    final baseline = _tiltBaseline == null
        ? raw
        : Offset.lerp(_tiltBaseline, raw, 0.02)!;
    _tiltBaseline = baseline;
    _tilt = Offset.lerp(_tilt, raw - baseline, 0.25)!;

    final magnitude = math.sqrt(
      event.x * event.x + event.y * event.y + event.z * event.z,
    );
    final now = DateTime.now();

    if ((magnitude - 9.81).abs() > _shakeThreshold &&
        now.difference(_lastShake) > _shakeCooldown) {
      _lastShake = now;
      _shake();
    }
  }

  void _shake() {
    unawaited(HapticFeedback.heavyImpact());

    for (final body in _bodies) {
      body.vel += Offset.fromDirection(
        _random.nextDouble() * 2 * math.pi,
        360 + _random.nextDouble() * 160,
      );
    }
  }

  @override
  void dispose() {
    unawaited(_accelSub?.cancel());
    unawaited(_gyroSub?.cancel());
    _ticker.dispose();
    _frame.dispose();
    super.dispose();
  }

  void _ensureBodies(Size size) {
    if (_bodies.isNotEmpty || size.isEmpty) return;

    for (var i = 0; i < widget.shapes.length; i++) {
      final shape = widget.shapes[i];
      _bodies.add(
        _Body(
          index: i,
          size: shape.size,
          pos: Offset(shape.fx * size.width, shape.fy * size.height),
          vel: Offset.zero,
        ),
      );
    }

    // Push apart anything that starts overlapping.
    for (var pass = 0; pass < 12; pass++) {
      _collide(bounce: false);
      for (final body in _bodies) {
        _walls(body);
      }
    }
  }

  void _onTick(Duration elapsed) {
    if (_bodies.isEmpty || _size.isEmpty) return;

    final dt = ((elapsed - _last).inMicroseconds / 1e6).clamp(0.0, 1 / 30);
    _last = elapsed;
    if (dt == 0) return;

    final push = _tilt * _tiltStrength + _gyro * _gyroStrength;

    for (final body in _bodies) {
      body.vel += push * dt;
      body.pos += body.vel * dt;
      _walls(body);

      // Friction: shapes come to rest on their own after being pushed.
      body.vel *= math.max(0.0, 1 - _friction * dt);

      final speed = body.vel.distance;
      if (speed > _maxSpeed) body.vel *= _maxSpeed / speed;
    }

    _collide(bounce: true);
    _frame.value++;
  }

  void _walls(_Body body) {
    final r = body.radius;
    final maxX = math.max(r, _size.width - r);
    final maxY = math.max(r, _size.height - r);

    var p = body.pos;
    var v = body.vel;

    if (p.dx < r) {
      p = Offset(r, p.dy);
      v = Offset(v.dx.abs(), v.dy);
    } else if (p.dx > maxX) {
      p = Offset(maxX, p.dy);
      v = Offset(-v.dx.abs(), v.dy);
    }

    if (p.dy < r) {
      p = Offset(p.dx, r);
      v = Offset(v.dx, v.dy.abs());
    } else if (p.dy > maxY) {
      p = Offset(p.dx, maxY);
      v = Offset(v.dx, -v.dy.abs());
    }

    body.pos = p;
    body.vel = v;
  }

  void _collide({required bool bounce}) {
    for (var i = 0; i < _bodies.length; i++) {
      for (var j = i + 1; j < _bodies.length; j++) {
        final a = _bodies[i];
        final b = _bodies[j];

        final delta = b.pos - a.pos;
        final minDistance = a.radius + b.radius;
        var distance = delta.distance;

        if (distance >= minDistance) continue;

        // Same spot (rare): pick an arbitrary axis.
        final normal = distance < 0.001 ? const Offset(1, 0) : delta / distance;
        distance = math.max(distance, 0.001);

        // Separate, weighted by mass (heavier shapes move less).
        final overlap = minDistance - distance;
        final totalMass = a.mass + b.mass;
        a.pos -= normal * (overlap * b.mass / totalMass);
        b.pos += normal * (overlap * a.mass / totalMass);

        if (!bounce) continue;

        // Elastic impulse along the collision normal.
        final relative = b.vel - a.vel;
        final along = relative.dx * normal.dx + relative.dy * normal.dy;
        if (along >= 0) continue;

        final impulse = -2 * along / (1 / a.mass + 1 / b.mass);
        a.vel -= normal * (impulse / a.mass);
        b.vel += normal * (impulse / b.mass);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      width: double.infinity,
      child: LayoutBuilder(
        builder: (context, constraints) {
          _size = Size(constraints.maxWidth, constraints.maxHeight);
          _ensureBodies(_size);

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
