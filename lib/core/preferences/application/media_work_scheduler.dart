import 'dart:async';

import 'package:injectable/injectable.dart';

/// Serializes heavyweight native work. Encoding is served before queued AI work.
@lazySingleton
final class MediaWorkScheduler {
  final List<_WaitingWork> _waiting = [];
  bool _busy = false;
  Future<MediaWorkLease> acquire({int priority = 1, Future<void>? cancelled}) {
    final work = _WaitingWork(priority);
    _waiting.add(work);
    if (cancelled != null) {
      unawaited(
        cancelled.then((_) {
          if (_waiting.remove(work)) {
            work.completer.completeError(StateError('E_AI_CANCELLED'));
          }
        }),
      );
    }
    _drain();
    return work.completer.future;
  }

  void _drain() {
    if (_busy || _waiting.isEmpty) return;
    var next = 0;
    for (var i = 1; i < _waiting.length; i++) {
      if (_waiting[i].priority < _waiting[next].priority) next = i;
    }
    final work = _waiting.removeAt(next);
    _busy = true;
    work.completer.complete(
      MediaWorkLease._(() {
        _busy = false;
        _drain();
      }),
    );
  }
}

final class MediaWorkLease {
  MediaWorkLease._(this._release);
  final void Function() _release;
  bool _released = false;
  void release() {
    if (!_released) {
      _released = true;
      _release();
    }
  }
}

final class _WaitingWork {
  _WaitingWork(this.priority);
  final int priority;
  final completer = Completer<MediaWorkLease>();
}
