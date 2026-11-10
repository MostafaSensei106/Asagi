// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:connectivity_plus/connectivity_plus.dart' as _i895;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:package_info_plus/package_info_plus.dart' as _i655;
import 'package:share_plus/share_plus.dart' as _i998;
import 'package:shared_preferences/shared_preferences.dart' as _i460;
import 'package:zumi/core/di/injection_module.dart' as _i837;
import 'package:zumi/core/services/app_info/app_info_service.dart' as _i481;
import 'package:zumi/core/services/app_info/interface/base_app_info_service.dart'
    as _i248;
import 'package:zumi/core/services/app_info/interface/base_package_info_adapter.dart'
    as _i283;
import 'package:zumi/core/services/app_info/package_info_plus_adapter.dart'
    as _i647;
import 'package:zumi/core/services/file_opener/base_file_opener_service.dart'
    as _i255;
import 'package:zumi/core/services/file_opener/url_file_opener_service.dart'
    as _i385;
import 'package:zumi/core/services/l10n/l10n_service.dart' as _i664;
import 'package:zumi/core/services/permissions/base_permission_service.dart'
    as _i43;
import 'package:zumi/core/services/permissions/permission_handler_service.dart'
    as _i358;
import 'package:zumi/core/services/security/audit/app_audit_logger.dart'
    as _i603;
import 'package:zumi/core/services/security/audit/base_audit_logger.dart'
    as _i459;
import 'package:zumi/core/services/security/clipboard_guard_service.dart'
    as _i356;
import 'package:zumi/core/services/security/secure_vault_service.dart' as _i698;
import 'package:zumi/core/services/session/user_session_service.dart' as _i1064;
import 'package:zumi/core/services/share/base_share_service.dart' as _i763;
import 'package:zumi/core/services/share/share_plus_service.dart' as _i491;
import 'package:zumi/core/services/shared_prefs/base_pref_storage_service.dart'
    as _i969;
import 'package:zumi/core/services/shared_prefs/secure_storage_service.dart'
    as _i606;
import 'package:zumi/core/services/shared_prefs/shared_prefs_service.dart'
    as _i994;
import 'package:zumi/core/services/shared_prefs/storage_facade.dart' as _i887;
import 'package:zumi/core/services/theme/theme_service.dart' as _i813;
import 'package:zumi/core/services/toast/base_toast_service.dart' as _i666;
import 'package:zumi/core/services/toast/toastification_service.dart' as _i524;
import 'package:zumi/core/services/url_launcher/base_url_launcher_services.dart'
    as _i91;
import 'package:zumi/core/services/url_launcher/url_launcher_service.dart'
    as _i704;
import 'package:zumi/core/utils/cache/cache_manager.dart' as _i613;
import 'package:zumi/core/utils/localization/data/base_localization_repository.dart'
    as _i699;
import 'package:zumi/core/utils/localization/data/localization_repository.dart'
    as _i875;
import 'package:zumi/core/utils/localization/logic/cubit/localization_cubit.dart'
    as _i1015;
import 'package:zumi/core/utils/network/logic/cubit/network_cubit.dart'
    as _i944;
import 'package:zumi/core/utils/theme/data/base_theme_repository.dart' as _i882;
import 'package:zumi/core/utils/theme/data/theme_repository.dart' as _i538;
import 'package:zumi/core/utils/theme/logic/cubit/theme_cubit.dart' as _i839;
import 'package:zumi/modules/about/data/about_app_repsitory.dart' as _i529;
import 'package:zumi/modules/about/data/base_about_app_repository.dart'
    as _i374;
import 'package:zumi/modules/about/logic/cubit/about_app_cubit.dart' as _i811;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final injectionModule = _$InjectionModule();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => injectionModule.prefs,
      preResolve: true,
    );
    await gh.factoryAsync<_i655.PackageInfo>(
      () => injectionModule.packageInfo,
      preResolve: true,
    );
    gh.lazySingleton<_i558.FlutterSecureStorage>(
      () => injectionModule.secureStorage,
    );
    gh.lazySingleton<_i998.SharePlus>(() => injectionModule.sharePlus);
    gh.lazySingleton<_i895.Connectivity>(() => injectionModule.connectivity);
    gh.lazySingleton<_i664.L10nService>(() => _i664.L10nService());
    gh.lazySingleton<_i813.ThemeService>(() => _i813.ThemeService());
    gh.lazySingleton<_i613.CacheManager>(() => _i613.CacheManager());
    gh.lazySingleton<_i283.BasePackageInfoAdapter>(
      () => _i647.PackageInfoPlusAdapter(gh<_i655.PackageInfo>()),
    );
    gh.lazySingleton<_i459.BaseAuditLogger>(() => const _i603.AppAuditLogger());
    gh.lazySingleton<_i43.BasePermissionService>(
      () => const _i358.PermissionHandlerService(),
    );
    gh.lazySingleton<_i666.BaseToastService>(
      () => _i524.ToastificationService(gh<_i813.ThemeService>()),
    );
    gh.lazySingleton<_i763.BaseShareService>(
      () => _i491.SharePlusService(gh<_i998.SharePlus>()),
    );
    gh.lazySingleton<_i1015.LocalizationCubit>(
      () => _i1015.LocalizationCubit(l10nService: gh<_i664.L10nService>()),
    );
    gh.lazySingleton<_i698.BaseSecureVaultService>(
      () => _i698.SecureVaultService(
        gh<_i558.FlutterSecureStorage>(),
        gh<_i459.BaseAuditLogger>(),
      ),
    );
    gh.lazySingleton<_i606.SecureStorageService>(
      () => _i606.SecureStorageService(gh<_i558.FlutterSecureStorage>()),
    );
    gh.lazySingleton<_i994.SharedPrefsService>(
      () => _i994.SharedPrefsService(gh<_i460.SharedPreferences>()),
    );
    gh.lazySingleton<_i356.BaseClipboardGuardService>(
      () => _i356.ClipboardGuardService(gh<_i459.BaseAuditLogger>()),
    );
    gh.lazySingleton<_i944.NetworkCubit>(
      () => _i944.NetworkCubit(gh<_i895.Connectivity>()),
    );
    gh.lazySingleton<_i91.BaseUrlLauncherServices>(
      () => _i704.UrlLauncherService(gh<_i459.BaseAuditLogger>()),
    );
    gh.lazySingleton<_i248.BaseAppInfoService>(
      () => _i481.AppInfoService(gh<_i283.BasePackageInfoAdapter>()),
    );
    gh.factory<_i255.BaseFileOpenerService>(
      () => _i385.UrlFileOpenerService(
        gh<_i91.BaseUrlLauncherServices>(),
        gh<_i459.BaseAuditLogger>(),
      ),
    );
    gh.lazySingleton<_i969.BasePrefStorageService>(
      () => _i887.StorageFacade(
        sharedPrefsService: gh<_i994.SharedPrefsService>(),
        secureStorageService: gh<_i606.SecureStorageService>(),
      ),
    );
    gh.lazySingleton<_i374.BaseAboutAppRepository>(
      () => _i529.AboutAppRepsitory(gh<_i248.BaseAppInfoService>()),
    );
    gh.lazySingleton<_i699.BaseLocalizationRepository>(
      () => _i875.LocalizationRepository(
        storage: gh<_i969.BasePrefStorageService>(),
        l10nService: gh<_i664.L10nService>(),
      ),
    );
    gh.lazySingleton<_i882.BaseThemeRepository>(
      () => _i538.ThemeRepository(gh<_i969.BasePrefStorageService>()),
    );
    gh.factory<_i811.AboutAppCubit>(
      () => _i811.AboutAppCubit(gh<_i374.BaseAboutAppRepository>()),
    );
    gh.lazySingleton<_i887.StorageFacade>(
      () => injectionModule.storageFacade(gh<_i969.BasePrefStorageService>()),
    );
    gh.lazySingleton<_i1064.UserSessionServiceBase>(
      () => _i1064.UserSessionService(gh<_i887.StorageFacade>()),
    );
    gh.lazySingleton<_i839.ThemeCubit>(
      () => _i839.ThemeCubit(gh<_i882.BaseThemeRepository>()),
    );
    return this;
  }

  _i664.L10nService get l10nService => get<_i664.L10nService>();

  _i813.ThemeService get themeService => get<_i813.ThemeService>();

  _i613.CacheManager get cacheManager => get<_i613.CacheManager>();

  _i647.PackageInfoPlusAdapter get packageInfoPlusAdapter =>
      get<_i647.PackageInfoPlusAdapter>();

  _i603.AppAuditLogger get appAuditLogger => get<_i603.AppAuditLogger>();

  _i358.PermissionHandlerService get permissionHandlerService =>
      get<_i358.PermissionHandlerService>();

  _i524.ToastificationService get toastificationService =>
      get<_i524.ToastificationService>();

  _i491.SharePlusService get sharePlusService => get<_i491.SharePlusService>();

  _i1015.LocalizationCubit get localizationCubit =>
      get<_i1015.LocalizationCubit>();

  _i698.SecureVaultService get secureVaultService =>
      get<_i698.SecureVaultService>();

  _i606.SecureStorageService get secureStorageService =>
      get<_i606.SecureStorageService>();

  _i994.SharedPrefsService get sharedPrefsService =>
      get<_i994.SharedPrefsService>();

  _i356.ClipboardGuardService get clipboardGuardService =>
      get<_i356.ClipboardGuardService>();

  _i944.NetworkCubit get networkCubit => get<_i944.NetworkCubit>();

  _i704.UrlLauncherService get urlLauncherService =>
      get<_i704.UrlLauncherService>();

  _i481.AppInfoService get appInfoService => get<_i481.AppInfoService>();

  _i385.UrlFileOpenerService get urlFileOpenerService =>
      get<_i385.UrlFileOpenerService>();

  _i887.StorageFacade get storageFacade => get<_i887.StorageFacade>();

  _i529.AboutAppRepsitory get aboutAppRepsitory =>
      get<_i529.AboutAppRepsitory>();

  _i875.LocalizationRepository get localizationRepository =>
      get<_i875.LocalizationRepository>();

  _i538.ThemeRepository get themeRepository => get<_i538.ThemeRepository>();

  _i811.AboutAppCubit get aboutAppCubit => get<_i811.AboutAppCubit>();

  _i1064.UserSessionService get userSessionService =>
      get<_i1064.UserSessionService>();

  _i839.ThemeCubit get themeCubit => get<_i839.ThemeCubit>();
}

class _$InjectionModule extends _i837.InjectionModule {}
