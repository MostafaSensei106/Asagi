import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../../core/services/notifications/base_local_notification_service.dart';
import '../../../../core/services/notifications/notification_request.dart';
import '../../../../core/services/permissions/base_permission_service.dart';
import '../../logic/repositories/notification_repository.dart';

@LazySingleton(as: NotificationRepository)
final class DeviceNotificationRepository implements NotificationRepository {
  DeviceNotificationRepository(this._service, this._permissions);
  final BaseLocalNotificationService _service;
  final BasePermissionService _permissions;
  @override
  Stream<void> get interactions => _service.interactions;
  @override
  List<String> takePendingInteractions() => _service.takePendingInteractions();
  @override
  Future<void> initialize() => _service.initialize();
  @override
  Future<NotificationPermission> permission() async {
    if (!Platform.isAndroid) return NotificationPermission.unsupported;
    if (await _service.enabled()) return NotificationPermission.granted;
    final status = await _permissions.getStatus(Permission.notification);
    return status.isPermanentlyDenied || status.isRestricted
        ? NotificationPermission.permanentlyDenied
        : NotificationPermission.denied;
  }

  @override
  Future<NotificationPermission> requestPermission() async {
    if (await permission() == NotificationPermission.permanentlyDenied) {
      await _permissions.openAppSettings();
    } else if (Platform.isAndroid) {
      await _permissions.requestNotificationPermission();
    }
    return permission();
  }

  @override
  Future<bool> show(LocalNotificationRequest request) => _service.show(request);
  @override
  Future<Set<String>> blockedChannels() => _service.blockedChannels();
  @override
  Future<void> openChannelSettings(String channelId) =>
      _service.openChannelSettings(channelId);
  @override
  Future<void> configureProgress(Map<String, Object?> configuration) =>
      _service.configureProgress(configuration);
}
