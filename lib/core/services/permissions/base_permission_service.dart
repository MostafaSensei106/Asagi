import 'package:permission_handler/permission_handler.dart';

abstract class BasePermissionService {
  Future<PermissionStatus> getStatus(Permission permission);

  Future<PermissionStatus> requestPermission(Permission permission);

  /// Requests notifications on iOS and Android 13+.
  Future<bool> requestNotificationPermission();

  Future<bool> openAppSettings();
}
