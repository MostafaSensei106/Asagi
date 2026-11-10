import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../services/shared_prefs/base_pref_storage_service.dart';
import '../services/shared_prefs/storage_facade.dart';

@module
abstract class InjectionModule {
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  @preResolve
  Future<PackageInfo> get packageInfo => PackageInfo.fromPlatform();

  @lazySingleton
  FlutterSecureStorage get secureStorage => const FlutterSecureStorage();

  @lazySingleton
  SharePlus get sharePlus => SharePlus.instance;

  @lazySingleton
  Connectivity get connectivity => Connectivity();

  // @lazySingleton
  // FirebaseMessaging get firebaseMessaging => FirebaseMessaging.instance;

  @lazySingleton
  StorageFacade storageFacade(BasePrefStorageService service) =>
      service as StorageFacade;
}
