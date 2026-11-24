import 'notification_request.dart';

abstract interface class BaseLocalNotificationService {
  Stream<void> get interactions;
  List<String> takePendingInteractions();
  Future<void> initialize();
  Future<bool> show(LocalNotificationRequest request);
  Future<Set<String>> blockedChannels();
  Future<bool> enabled();
  Future<void> openChannelSettings(String channelId);
  Future<void> configureProgress(Map<String, Object?> configuration);
}
