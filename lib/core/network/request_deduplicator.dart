import 'dart:async';

import 'package:injectable/injectable.dart';

/// Shares identical in-flight requests, and releases entries on success or failure.
@lazySingleton
final class RequestDeduplicator {
  final Map<String, Future<dynamic>> _inFlight = {};

  Future<T> run<T>({
    required String key,
    required Future<T> Function() action,
  }) {
    final existing = _inFlight[key];
    if (existing != null) return existing as Future<T>;
    final future = Future<T>.sync(action).whenComplete(() {
      unawaited(_inFlight.remove(key));
    });
    _inFlight[key] = future;
    return future;
  }
}
