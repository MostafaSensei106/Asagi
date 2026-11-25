enum NotificationCategory { completion, error, release, savings }

final class NotificationChannelSpec {
  const NotificationChannelSpec({
    required this.id,
    required this.name,
    required this.description,
    required this.sound,
    required this.vibration,
    this.urgent = false,
  });
  final String id, name, description;
  final bool sound, vibration, urgent;
}

final class LocalNotificationRequest {
  const LocalNotificationRequest({
    required this.id,
    required this.channel,
    required this.title,
    required this.body,
    required this.payload,
  });
  final int id;
  final NotificationChannelSpec channel;
  final String title, body, payload;
}

abstract final class NotificationChannels {
  static const progress = 'kuymo_media_processing';
  static const release = 'kuymo_releases_v1';
  static const savings = 'kuymo_savings_v1';
  static String completion({required bool sound, required bool vibration}) =>
      'kuymo_completion_s${sound ? 1 : 0}_v${vibration ? 1 : 0}_v1';
  static String error({required bool vibration}) =>
      'kuymo_errors_v${vibration ? 1 : 0}_v1';
}
