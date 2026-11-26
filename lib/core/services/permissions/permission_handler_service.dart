import 'package:injectable/injectable.dart';
import 'package:permission_handler/permission_handler.dart' as ph;

import 'base_permission_service.dart';

@LazySingleton(as: BasePermissionService)
class PermissionHandlerService implements BasePermissionService {
  const PermissionHandlerService();

  @override
  Future<ph.PermissionStatus> getStatus(ph.Permission permission) =>
      permission.status;

  @override
  Future<ph.PermissionStatus> requestPermission(ph.Permission permission) =>
      permission.request();

  @override
  Future<bool> requestNotificationPermission() async {
    final status = await ph.Permission.notification.request();
    return status.isGranted;
  }

  @override
  Future<bool> openAppSettings() => ph.openAppSettings();
}
