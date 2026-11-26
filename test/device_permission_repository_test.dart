import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kuymo/core/services/permissions/base_permission_service.dart';
import 'package:kuymo/modules/permissions/data/repositories/device_permission_repository.dart';
import 'package:kuymo/modules/permissions/domain/repositories/permission_repository.dart';
import 'package:mocktail/mocktail.dart';
import 'package:permission_handler/permission_handler.dart';

class _Permissions extends Mock implements BasePermissionService {}

void main() {
  late _Permissions permissions;
  late DevicePermissionRepository repository;

  setUp(() {
    debugDefaultTargetPlatformOverride = TargetPlatform.android;
    permissions = _Permissions();
    repository = DevicePermissionRepository(permissions);
  });

  tearDown(() => debugDefaultTargetPlatformOverride = null);

  test(
    'maps notification permission status without requesting access',
    () async {
      for (final entry in {
        PermissionStatus.granted: AppPermissionStatus.granted,
        PermissionStatus.provisional: AppPermissionStatus.granted,
        PermissionStatus.limited: AppPermissionStatus.limited,
        PermissionStatus.denied: AppPermissionStatus.denied,
        PermissionStatus.permanentlyDenied:
            AppPermissionStatus.permanentlyDenied,
        PermissionStatus.restricted: AppPermissionStatus.restricted,
      }.entries) {
        when(() => permissions.getStatus(Permission.notification))
            .thenAnswer((_) async => entry.key);
        expect(await repository.notificationStatus(), entry.value);
      }
      verifyNever(() => permissions.requestPermission(Permission.notification));
    },
  );

  test(
    'explicit request asks only for notifications and handles denial',
    () async {
      when(() => permissions.requestPermission(Permission.notification))
          .thenAnswer((_) async => PermissionStatus.denied);

      expect(
        await repository.requestNotifications(),
        AppPermissionStatus.denied,
      );
      verify(() => permissions.requestPermission(Permission.notification))
          .called(1);
      verifyNoMoreInteractions(permissions);
    },
  );

  test('opens system settings through the permission adapter', () async {
    when(() => permissions.openAppSettings()).thenAnswer((_) async => true);
    expect(await repository.openSettings(), isTrue);
    verify(() => permissions.openAppSettings()).called(1);
  });

  test('unsupported platforms never call the permission plugin', () async {
    debugDefaultTargetPlatformOverride = TargetPlatform.linux;
    expect(
      await repository.notificationStatus(),
      AppPermissionStatus.unsupported,
    );
    expect(
      await repository.requestNotifications(),
      AppPermissionStatus.unsupported,
    );
    verifyZeroInteractions(permissions);
  });
}
