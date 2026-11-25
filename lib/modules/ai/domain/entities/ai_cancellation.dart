import 'dart:async';

/// Cancellation belongs to a request, so closing one page cannot stop another.
final class AiCancellation {
  final _cancelled = Completer<void>();
  bool get isCancelled => _cancelled.isCompleted;
  Future<void> get whenCancelled => _cancelled.future;
  void cancel() {
    if (!isCancelled) _cancelled.complete();
  }

  void check() {
    if (isCancelled) throw StateError('E_AI_CANCELLED');
  }
}
