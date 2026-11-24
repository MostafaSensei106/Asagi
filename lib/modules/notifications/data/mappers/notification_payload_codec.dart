import 'dart:convert';

import '../../../../core/network/api_client_config.dart';
import '../../domain/models/notification_target.dart';

abstract final class NotificationPayloadCodec {
  static String encode(NotificationTarget target) => jsonEncode({
    'version': 1,
    ...switch (target) {
      NotificationResultTarget(:final jobId) => {'type': 'result', 'id': jobId},
      NotificationProgressTarget(:final jobId) => {
        'type': 'progress',
        'id': jobId,
      },
      NotificationRecoveryTarget() => {'type': 'recovery'},
      NotificationHistoryTarget() => {'type': 'history'},
      NotificationReleaseTarget(:final url) => {
        'type': 'release',
        'url': url.toString(),
      },
    },
  });

  static NotificationTarget? decode(String payload) {
    try {
      if (payload.length > 4096) return null;
      final data = jsonDecode(payload);
      if (data is! Map<String, dynamic> || data['version'] != 1) return null;
      final id = data['id'];
      switch (data['type']) {
        case 'result':
        case 'progress':
          if (id is! String || id.isEmpty || id.length > 256) return null;
          return data['type'] == 'result'
              ? NotificationTarget.result(id)
              : NotificationTarget.progress(id);
        case 'recovery':
          return const NotificationTarget.recovery();
        case 'history':
          return const NotificationTarget.history();
        case 'release':
          if (data['url'] is! String) return null;
          final url = Uri.tryParse(data['url'] as String);
          if (url == null ||
              url.scheme != 'https' ||
              url.host != 'github.com' ||
              url.hasPort ||
              url.userInfo.isNotEmpty ||
              !url.path.startsWith(
                '/${ApiClientConfig.githubOwner}/${ApiClientConfig.githubRepository}/releases/tag/',
              )) {
            return null;
          }
          return NotificationTarget.release(url);
      }
    } on FormatException {
      return null;
    }
    return null;
  }
}
