import 'dart:async';

import '../domain/contracts/video_encoder.dart';

/// Per-job coordination only; independent of UI state-management frameworks.
final class EncodingControl {
  EncodingControl(this.encoder);
  final VideoEncoder encoder;
  bool _busy = false, _cancelled = false;
  bool encoding = false;
  Completer<void>? _gate;
  Future<void> _commands = Future.value();

  void begin() {
    if (_busy) throw StateError('E_BUSY');
    _busy = true;
    _cancelled = false;
  }

  Future<void> _enqueue(Future<void> Function() command) {
    final operation = _commands.then((_) => command());
    // A failed platform command must not prevent a subsequent cancel/resume.
    _commands = operation.then<void>(
      (_) {},
      onError: (Object _, StackTrace _) {},
    );
    return operation;
  }

  Future<void> pause() {
    if (!_busy || _gate != null || _cancelled) return Future.value();
    final gate = _gate = Completer<void>();
    return _enqueue(() async {
      try {
        if (encoding && !_cancelled) await encoder.pause();
      } catch (_) {
        if (identical(_gate, gate)) {
          _gate = null;
          if (!gate.isCompleted) gate.complete();
        }
        rethrow;
      }
    });
  }

  Future<void> resume() => _enqueue(() async {
    final gate = _gate;
    if (gate == null) return;
    if (encoding && !_cancelled) await encoder.resume();
    if (!gate.isCompleted) gate.complete();
    if (identical(_gate, gate)) _gate = null;
  });
  Future<void> checkpoint() async {
    await _commands;
    await _gate?.future;
    if (_cancelled) throw StateError('E_CANCELLED');
  }

  Future<void> cancel() {
    if (!_busy) return Future.value();
    _cancelled = true;
    _gate?.complete();
    _gate = null;
    return _enqueue(() async {
      if (encoding) await encoder.cancel();
    });
  }

  Future<void> finish() async {
    encoding = false;
    _gate?.complete();
    _gate = null;
    await _commands;
    _busy = false;
  }
}
