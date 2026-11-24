import '../../../../core/notifications/domain/models/notification_request.dart';

enum NotificationPermission { granted, denied, permanentlyDenied, unsupported }

abstract interface class NotificationRepository {
  Stream<void> get interactions;
  List<String> takePendingInteractions();
  Future<void> initialize();
  Future<NotificationPermission> permission();
  Future<NotificationPermission> requestPermission();
  Future<bool> show(LocalNotificationRequest request);
  Future<Set<String>> blockedChannels();
  Future<void> openChannelSettings(String channelId);
  Future<void> configureProgress(Map<String, Object?> configuration);
}
