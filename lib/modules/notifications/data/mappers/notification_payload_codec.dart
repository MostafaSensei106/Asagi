import 'dart:convert';

import '../../logic/entities/notification_target.dart';
import '../models/notification_payload_model.dart';
import 'notification_payload_mapper.dart';

abstract final class NotificationPayloadCodec {
  static String encode(NotificationTarget target) =>
      jsonEncode(target.toModel().toJson());

  static NotificationTarget? decode(String payload) {
    if (payload.length > 4096) return null;
    try {
      final json = jsonDecode(payload);
      if (json is! Map<String, dynamic> || !json.containsKey('version')) {
        return null;
      }
      return NotificationPayloadModel.fromJson(json).toEntity();
    } on Object {
      return null;
    }
  }
}
