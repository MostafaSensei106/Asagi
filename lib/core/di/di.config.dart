// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:asagi/core/compression/domain/contracts/artifact_store.dart'
    as _i0;
import 'package:asagi/core/di/injection_module.dart' as _i938;
import 'package:asagi/core/services/ai/ai_model_service.dart' as _i491;
import 'package:asagi/core/services/ai/interface/base_ai_model_service.dart'
    as _i454;
import 'package:asagi/core/services/app_info/app_info_service.dart' as _i822;
import 'package:asagi/core/services/app_info/interface/base_app_info_service.dart'
    as _i752;
import 'package:asagi/core/services/app_info/interface/base_package_info_adapter.dart'
    as _i615;
import 'package:asagi/core/services/app_info/package_info_plus_adapter.dart'
    as _i132;
import 'package:asagi/core/services/file_opener/base_file_opener_service.dart'
    as _i1039;
import 'package:asagi/core/services/file_opener/url_file_opener_service.dart'
    as _i283;
import 'package:asagi/core/services/l10n/l10n_service.dart' as _i843;
import 'package:asagi/core/services/permissions/base_permission_service.dart'
    as _i415;
import 'package:asagi/core/services/permissions/permission_handler_service.dart'
    as _i47;
import 'package:asagi/core/services/security/audit/app_audit_logger.dart'
    as _i923;
import 'package:asagi/core/services/security/audit/base_audit_logger.dart'
    as _i619;
import 'package:asagi/core/services/security/clipboard_guard_service.dart'
    as _i586;
import 'package:asagi/core/services/security/secure_vault_service.dart'
    as _i590;
import 'package:asagi/core/services/session/user_session_service.dart' as _i849;
import 'package:asagi/core/services/share/base_share_service.dart' as _i550;
import 'package:asagi/core/services/share/share_plus_service.dart' as _i770;
import 'package:asagi/core/services/shared_prefs/base_pref_storage_service.dart'
    as _i896;
import 'package:asagi/core/services/shared_prefs/secure_storage_service.dart'
    as _i559;
import 'package:asagi/core/services/shared_prefs/shared_prefs_service.dart'
    as _i883;
import 'package:asagi/core/services/shared_prefs/storage_facade.dart' as _i960;
import 'package:asagi/core/services/theme/theme_service.dart' as _i264;
import 'package:asagi/core/services/toast/base_toast_service.dart' as _i630;
import 'package:asagi/core/services/toast/toastification_service.dart' as _i885;
import 'package:asagi/core/services/url_launcher/base_url_launcher_services.dart'
    as _i1073;
import 'package:asagi/core/services/url_launcher/url_launcher_service.dart'
    as _i31;
import 'package:asagi/core/utils/cache/cache_manager.dart' as _i866;
import 'package:asagi/core/utils/localization/data/base_localization_repository.dart'
    as _i604;
import 'package:asagi/core/utils/localization/data/localization_repository.dart'
    as _i676;
import 'package:asagi/core/utils/localization/logic/cubit/localization_cubit.dart'
    as _i1040;
import 'package:asagi/core/utils/network/logic/cubit/network_cubit.dart'
    as _i295;
import 'package:asagi/core/utils/theme/logic/cubit/theme_cubit.dart' as _i664;
import 'package:asagi/modules/about/data/about_app_repsitory.dart' as _i382;
import 'package:asagi/modules/about/data/base_about_app_repository.dart'
    as _i812;
import 'package:asagi/modules/about/data/repositories/asset_open_source_license_repository.dart'
    as _i560;
import 'package:asagi/modules/about/domain/repositories/open_source_license_repository.dart'
    as _i433;
import 'package:asagi/modules/about/logic/cubit/about_app_cubit.dart' as _i188;
import 'package:asagi/modules/about/logic/open_source_licenses_cubit.dart'
    as _i37;
import 'package:asagi/modules/storage/data/repositories/file_storage_repository.dart'
    as _i806;
import 'package:asagi/modules/storage/domain/repositories/storage_repository.dart'
    as _i547;
import 'package:asagi/modules/storage/logic/storage_settings_cubit.dart'
    as _i633;
import 'package:connectivity_plus/connectivity_plus.dart' as _i895;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:package_info_plus/package_info_plus.dart' as _i655;
import 'package:share_plus/share_plus.dart' as _i998;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

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
    gh.lazySingleton<_i0.ArtifactStore>(() => injectionModule.artifactStore);
    gh.lazySingleton<_i843.L10nService>(() => _i843.L10nService());
    gh.lazySingleton<_i264.ThemeService>(() => _i264.ThemeService());
    gh.lazySingleton<_i866.CacheManager>(() => _i866.CacheManager());
    gh.lazySingleton<_i664.ThemeCubit>(() => _i664.ThemeCubit());
    gh.lazySingleton<_i1040.LocalizationCubit>(
      () => _i1040.LocalizationCubit(l10nService: gh<_i843.L10nService>()),
    );
    gh.lazySingleton<_i454.BaseAiModelService>(() => _i491.AiModelService());
    gh.lazySingleton<_i619.BaseAuditLogger>(() => const _i923.AppAuditLogger());
    gh.lazySingleton<_i1073.BaseUrlLauncherServices>(
      () => _i31.UrlLauncherService(gh<_i619.BaseAuditLogger>()),
    );
    gh.lazySingleton<_i615.BasePackageInfoAdapter>(
      () => _i132.PackageInfoPlusAdapter(gh<_i655.PackageInfo>()),
    );
    gh.lazySingleton<_i415.BasePermissionService>(
      () => const _i47.PermissionHandlerService(),
    );
    gh.lazySingleton<_i550.BaseShareService>(
      () => _i770.SharePlusService(gh<_i998.SharePlus>()),
    );
    gh.lazySingleton<_i433.OpenSourceLicenseRepository>(
      () => _i560.AssetOpenSourceLicenseRepository(),
    );
    gh.lazySingleton<_i630.BaseToastService>(
      () => _i885.ToastificationService(gh<_i264.ThemeService>()),
    );
    gh.lazySingleton<_i559.SecureStorageService>(
      () => _i559.SecureStorageService(gh<_i558.FlutterSecureStorage>()),
    );
    gh.lazySingleton<_i547.StorageRepository>(
      () => _i806.FileStorageRepository(gh<_i0.ArtifactStore>()),
    );
    gh.lazySingleton<_i883.SharedPrefsService>(
      () => _i883.SharedPrefsService(gh<_i460.SharedPreferences>()),
    );
    gh.lazySingleton<_i590.BaseSecureVaultService>(
      () => _i590.SecureVaultService(
        gh<_i558.FlutterSecureStorage>(),
        gh<_i619.BaseAuditLogger>(),
      ),
    );
    gh.lazySingleton<_i295.NetworkCubit>(
      () => _i295.NetworkCubit(gh<_i895.Connectivity>()),
    );
    gh.lazySingleton<_i752.BaseAppInfoService>(
      () => _i822.AppInfoService(gh<_i615.BasePackageInfoAdapter>()),
    );
    gh.factory<_i633.StorageSettingsCubit>(
      () => _i633.StorageSettingsCubit(gh<_i547.StorageRepository>()),
    );
    gh.lazySingleton<_i586.BaseClipboardGuardService>(
      () => _i586.ClipboardGuardService(gh<_i619.BaseAuditLogger>()),
    );
    gh.factory<_i37.OpenSourceLicensesCubit>(
      () =>
          _i37.OpenSourceLicensesCubit(gh<_i433.OpenSourceLicenseRepository>()),
    );
    gh.lazySingleton<_i896.BasePrefStorageService>(
      () => _i960.StorageFacade(
        sharedPrefsService: gh<_i883.SharedPrefsService>(),
        secureStorageService: gh<_i559.SecureStorageService>(),
      ),
    );
    gh.factory<_i1039.BaseFileOpenerService>(
      () => _i283.UrlFileOpenerService(
        gh<_i1073.BaseUrlLauncherServices>(),
        gh<_i619.BaseAuditLogger>(),
      ),
    );
    gh.lazySingleton<_i812.BaseAboutAppRepository>(
      () => _i382.AboutAppRepsitory(gh<_i752.BaseAppInfoService>()),
    );
    gh.lazySingleton<_i960.StorageFacade>(
      () => injectionModule.storageFacade(gh<_i896.BasePrefStorageService>()),
    );
    gh.factory<_i188.AboutAppCubit>(
      () => _i188.AboutAppCubit(gh<_i812.BaseAboutAppRepository>()),
    );
    gh.lazySingleton<_i604.BaseLocalizationRepository>(
      () => _i676.LocalizationRepository(
        storage: gh<_i896.BasePrefStorageService>(),
        l10nService: gh<_i843.L10nService>(),
      ),
    );
    gh.lazySingleton<_i849.UserSessionServiceBase>(
      () => _i849.UserSessionService(gh<_i960.StorageFacade>()),
    );
    return this;
  }

  _i843.L10nService get l10nService => get<_i843.L10nService>();

  _i264.ThemeService get themeService => get<_i264.ThemeService>();

  _i866.CacheManager get cacheManager => get<_i866.CacheManager>();

  _i664.ThemeCubit get themeCubit => get<_i664.ThemeCubit>();

  _i1040.LocalizationCubit get localizationCubit =>
      get<_i1040.LocalizationCubit>();

  _i491.AiModelService get aiModelService => get<_i491.AiModelService>();

  _i923.AppAuditLogger get appAuditLogger => get<_i923.AppAuditLogger>();

  _i31.UrlLauncherService get urlLauncherService =>
      get<_i31.UrlLauncherService>();

  _i132.PackageInfoPlusAdapter get packageInfoPlusAdapter =>
      get<_i132.PackageInfoPlusAdapter>();

  _i47.PermissionHandlerService get permissionHandlerService =>
      get<_i47.PermissionHandlerService>();

  _i770.SharePlusService get sharePlusService => get<_i770.SharePlusService>();

  _i560.AssetOpenSourceLicenseRepository get assetOpenSourceLicenseRepository =>
      get<_i560.AssetOpenSourceLicenseRepository>();

  _i885.ToastificationService get toastificationService =>
      get<_i885.ToastificationService>();

  _i559.SecureStorageService get secureStorageService =>
      get<_i559.SecureStorageService>();

  _i806.FileStorageRepository get fileStorageRepository =>
      get<_i806.FileStorageRepository>();

  _i883.SharedPrefsService get sharedPrefsService =>
      get<_i883.SharedPrefsService>();

  _i590.SecureVaultService get secureVaultService =>
      get<_i590.SecureVaultService>();

  _i295.NetworkCubit get networkCubit => get<_i295.NetworkCubit>();

  _i822.AppInfoService get appInfoService => get<_i822.AppInfoService>();

  _i633.StorageSettingsCubit get storageSettingsCubit =>
      get<_i633.StorageSettingsCubit>();

  _i586.ClipboardGuardService get clipboardGuardService =>
      get<_i586.ClipboardGuardService>();

  _i37.OpenSourceLicensesCubit get openSourceLicensesCubit =>
      get<_i37.OpenSourceLicensesCubit>();

  _i960.StorageFacade get storageFacade => get<_i960.StorageFacade>();

  _i283.UrlFileOpenerService get urlFileOpenerService =>
      get<_i283.UrlFileOpenerService>();

  _i382.AboutAppRepsitory get aboutAppRepsitory =>
      get<_i382.AboutAppRepsitory>();

  _i188.AboutAppCubit get aboutAppCubit => get<_i188.AboutAppCubit>();

  _i676.LocalizationRepository get localizationRepository =>
      get<_i676.LocalizationRepository>();

  _i849.UserSessionService get userSessionService =>
      get<_i849.UserSessionService>();
}

class _$InjectionModule extends _i938.InjectionModule {}
