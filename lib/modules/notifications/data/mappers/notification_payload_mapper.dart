import '../../../../core/network/api_client_config.dart';
import '../../logic/entities/notification_target.dart';
import '../models/notification_payload_model.dart';

extension NotificationTargetMapping on NotificationTarget {
  NotificationPayloadModel toModel() => switch (this) {
    NotificationResultTarget(:final jobId) => NotificationPayloadModel(
      type: 'result',
      id: jobId,
    ),
    NotificationProgressTarget(:final jobId) => NotificationPayloadModel(
      type: 'progress',
      id: jobId,
    ),
    NotificationRecoveryTarget() => const NotificationPayloadModel(
      type: 'recovery',
    ),
    NotificationHistoryTarget() => const NotificationPayloadModel(
      type: 'history',
    ),
    NotificationReleaseTarget(:final url) => NotificationPayloadModel(
      type: 'release',
      url: url.toString(),
    ),
  };
}

extension NotificationPayloadModelMapping on NotificationPayloadModel {
  NotificationTarget? toEntity() {
    if (version != 1) return null;
    switch (type) {
      case 'result':
      case 'progress':
        if (id == null || id!.isEmpty || id!.length > 256) return null;
        return type == 'result'
            ? NotificationTarget.result(id!)
            : NotificationTarget.progress(id!);
      case 'recovery':
        return const NotificationTarget.recovery();
      case 'history':
        return const NotificationTarget.history();
      case 'release':
        final uri = Uri.tryParse(url ?? '');
        if (uri == null ||
            uri.scheme != 'https' ||
            uri.host != 'github.com' ||
            uri.hasPort ||
            uri.userInfo.isNotEmpty ||
            !uri.path.startsWith(
              '/${ApiClientConfig.githubOwner}/${ApiClientConfig.githubRepository}/releases/tag/',
            )) {
          return null;
        }
        return NotificationTarget.release(uri);
      default:
        return null;
    }
  }
}
