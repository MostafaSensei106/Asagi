import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:kuymo/core/preferences/application/media_work_scheduler.dart';

void main() {
  test(
    'encoding is served ahead of queued AI and equal priorities remain FIFO',
    () async {
      final scheduler = MediaWorkScheduler();
      final active = await scheduler.acquire();
      final order = <String>[];
      final ai = scheduler.acquire(priority: 2).then((lease) {
        order.add('ai');
        lease.release();
      });
      final first = scheduler.acquire(priority: 0).then((lease) {
        order.add('first encoding');
        lease.release();
      });
      final second = scheduler.acquire(priority: 0).then((lease) {
        order.add('second encoding');
        lease.release();
      });
      active.release();
      active.release();
      await Future.wait([ai, first, second]);
      expect(order, ['first encoding', 'second encoding', 'ai']);
    },
  );
  test(
    'cancelling queued AI does not release the active encoder lease',
    () async {
      final scheduler = MediaWorkScheduler();
      final encoding = await scheduler.acquire(priority: 0);
      final cancelled = Completer<void>();
      final queued = scheduler.acquire(cancelled: cancelled.future);
      final failure = expectLater(queued, throwsStateError);
      cancelled.complete();
      await failure;
      var ran = false;
      final next = scheduler.acquire().then((lease) {
        ran = true;
        lease.release();
      });
      await Future<void>.delayed(Duration.zero);
      expect(ran, isFalse);
      encoding.release();
      await next;
      expect(ran, isTrue);
    },
  );
}
