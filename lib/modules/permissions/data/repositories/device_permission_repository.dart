import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../../core/services/permissions/base_permission_service.dart';
import '../../domain/repositories/permission_repository.dart';

@LazySingleton(as: PermissionRepository)
final class DevicePermissionRepository implements PermissionRepository {
  DevicePermissionRepository(this._service);
  final BasePermissionService _service;
  bool get _supported =>
      !kIsWeb &&
      (defaultTargetPlatform == TargetPlatform.android ||
          defaultTargetPlatform == TargetPlatform.iOS);
  AppPermissionStatus _map(PermissionStatus status) => switch (status) {
    PermissionStatus.granted ||
    PermissionStatus.provisional => AppPermissionStatus.granted,
    PermissionStatus.limited => AppPermissionStatus.limited,
    PermissionStatus.permanentlyDenied => AppPermissionStatus.permanentlyDenied,
    PermissionStatus.restricted => AppPermissionStatus.restricted,
    PermissionStatus.denied => AppPermissionStatus.denied,
  };
  @override
  Future<AppPermissionStatus> notificationStatus() async => _supported
      ? _map(await _service.getStatus(Permission.notification))
      : AppPermissionStatus.unsupported;
  @override
  Future<AppPermissionStatus> requestNotifications() async => _supported
      ? _map(await _service.requestPermission(Permission.notification))
      : AppPermissionStatus.unsupported;
  @override
  Future<bool> openSettings() => _service.openAppSettings();
}
