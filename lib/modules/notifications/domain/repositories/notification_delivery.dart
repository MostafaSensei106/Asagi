import '../entities/notification_event.dart';

abstract interface class NotificationDelivery {
  Future<bool> publish(NotificationEvent event, {required bool foreground});
}
