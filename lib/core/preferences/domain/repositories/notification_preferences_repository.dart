import '../entities/notification_settings.dart';

abstract interface class NotificationPreferencesRepository {
  NotificationSettings get current;
  Stream<NotificationSettings> get changes;
  Future<NotificationSettings> load();
  Future<void> dispose();
  Future<NotificationSettings> reset();
  Future<NotificationSettings> update(
    NotificationSettings Function(NotificationSettings current) change,
  );
}
