import 'dart:async';

import 'package:injectable/injectable.dart';

import '../../../core/utils/use_case/use_case_base.dart';
import '../data/mappers/notification_payload_codec.dart';
import '../domain/entities/notification_target.dart';
import '../domain/repositories/notification_repository.dart';
import '../domain/use_cases/initialize_notifications.dart';

@lazySingleton
final class NotificationInteractions {
  NotificationInteractions(this._repository, this._initialize);
  final NotificationRepository _repository;
  final InitializeNotificationsUseCase _initialize;
  StreamSubscription<void>? _subscription;
  Future<void>? _starting;
  final _changes = StreamController<void>.broadcast();
  final _pending = <NotificationTarget>[];
  Stream<void> get changes => _changes.stream;
  Future<void> start() =>
      _starting ??= _start().catchError((Object error, StackTrace stack) {
        _starting = null;
        Error.throwWithStackTrace(error, stack);
      });
  Future<void> _start() async {
    (await _initialize(const NoParams())).getOrThrow();
    _subscription ??= _repository.interactions.listen((_) => _drain());
    _drain();
  }

  void _drain() {
    for (final payload in _repository.takePendingInteractions()) {
      final target = NotificationPayloadCodec.decode(payload);
      if (target != null && !_pending.contains(target)) _pending.add(target);
    }
    if (_pending.isNotEmpty) _changes.add(null);
  }

  List<NotificationTarget> takePending() {
    final result = List<NotificationTarget>.of(_pending);
    _pending.clear();
    return result;
  }

  @disposeMethod
  Future<void> dispose() async {
    await _subscription?.cancel();
    await _changes.close();
  }
}
