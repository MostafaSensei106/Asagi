enum AppPermissionStatus {
  granted,
  limited,
  denied,
  permanentlyDenied,
  restricted,
  unsupported,
}

abstract interface class PermissionRepository {
  Future<AppPermissionStatus> notificationStatus();
  Future<AppPermissionStatus> requestNotifications();
  Future<bool> openSettings();
}
