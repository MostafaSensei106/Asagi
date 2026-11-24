import '../../../core/preferences/domain/entities/notification_settings.dart';
import '../../../core/services/notifications/notification_request.dart';
import '../../../l10n/app_localizations.dart';
import '../../compression/presentation/widgets/compression_error_text.dart';
import '../data/mappers/notification_payload_codec.dart';
import '../domain/entities/notification_event.dart';
import '../domain/entities/notification_target.dart';

final class NotificationMessageFactory {
  const NotificationMessageFactory(this.text);
  final AppLocalizations text;

  LocalNotificationRequest create(
    NotificationEvent event,
    NotificationSettings settings,
  ) {
    final (key, title, body, target, channel) = switch (event) {
      JobCompletedNotification(
        :final jobId,
        :final sourceName,
        :final originalBytes,
        :final outputBytes,
        :final warning,
      ) =>
        (
          'result:$jobId',
          text.notificationCompletedTitle,
          warning == null
              ? text.notificationCompletedBody(
                  sourceName,
                  _mb(outputBytes),
                  _mb((originalBytes - outputBytes).clamp(0, originalBytes)),
                )
              : text.notificationCompletedWarningBody(
                  sourceName,
                  _mb(outputBytes),
                ),
          NotificationTarget.result(jobId),
          NotificationChannelSpec(
            id: NotificationChannels.completion(
              sound: settings.completionSound,
              vibration: settings.haptics.success,
            ),
            name: text.notificationCompletionChannel,
            description: text.jobCompletedDetails,
            sound: settings.completionSound,
            vibration: settings.haptics.success,
          ),
        ),
      JobFailedNotification(:final jobId, :final errorCode) => (
        'error:$jobId',
        text.notificationFailedTitle,
        compressionErrorMessage(text, errorCode),
        const NotificationTarget.recovery(),
        NotificationChannelSpec(
          id: NotificationChannels.error(vibration: settings.haptics.errors),
          name: text.notificationErrorChannel,
          description: text.interruptionErrorDetails,
          sound: true,
          vibration: settings.haptics.errors,
          urgent: true,
        ),
      ),
      JobsInterruptedNotification(:final count) => (
        'interrupted',
        text.notificationFailedTitle,
        text.notificationInterruptedBody('$count'),
        const NotificationTarget.recovery(),
        NotificationChannelSpec(
          id: NotificationChannels.error(vibration: settings.haptics.errors),
          name: text.notificationErrorChannel,
          description: text.interruptionErrorDetails,
          sound: true,
          vibration: settings.haptics.errors,
          urgent: true,
        ),
      ),
      ReleaseNotification(:final release) => (
        'release:${release.id}',
        text.notificationReleaseTitle(release.version),
        release.title,
        NotificationTarget.release(release.url),
        NotificationChannelSpec(
          id: NotificationChannels.release,
          name: text.notificationReleaseChannel,
          description: text.productUpdatesDetails,
          sound: false,
          vibration: false,
        ),
      ),
      SavingsNotification(:final count, :final savedBytes) => (
        'savings',
        text.notificationSavingsTitle,
        text.notificationSavingsBody('$count', _mb(savedBytes)),
        const NotificationTarget.history(),
        NotificationChannelSpec(
          id: NotificationChannels.savings,
          name: text.notificationSavingsChannel,
          description: text.savingsDigestDetails,
          sound: false,
          vibration: false,
        ),
      ),
    };
    // Stable across process launches, unlike Object.hashCode.
    var id = 2166136261;
    for (final unit in key.codeUnits) {
      id = ((id ^ unit) * 16777619) & 0x7fffffff;
    }
    return LocalNotificationRequest(
      id: id,
      channel: channel,
      title: title,
      body: body,
      payload: NotificationPayloadCodec.encode(target),
    );
  }

  static String _mb(int bytes) => (bytes / 1000000).toStringAsFixed(1);
}
