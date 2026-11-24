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
import 'package:asagi/core/network/request_deduplicator.dart' as _i965;
import 'package:asagi/core/preferences/data/repositories/shared_notification_preferences.dart'
    as _i725;
import 'package:asagi/core/preferences/domain/repositories/notification_preferences_repository.dart'
    as _i211;
import 'package:asagi/core/preferences/domain/use_cases/load_notification_settings.dart'
    as _i872;
import 'package:asagi/core/preferences/domain/use_cases/save_notification_settings.dart'
    as _i542;
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
import 'package:asagi/core/services/haptics/haptics_service.dart' as _i207;
import 'package:asagi/core/services/l10n/l10n_service.dart' as _i843;
import 'package:asagi/core/services/notifications/base_local_notification_service.dart'
    as _i547;
import 'package:asagi/core/services/notifications/local_notification_service.dart'
    as _i1010;
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
import 'package:asagi/modules/about/logic/cubit/about_app_cubit.dart' as _i188;
import 'package:asagi/modules/compression/application/notifications/compression_insights_service.dart'
    as _i140;
import 'package:asagi/modules/compression/application/notifications/compression_notification_service.dart'
    as _i661;
import 'package:asagi/modules/compression/data/repositories/local_compression_alert_repository.dart'
    as _i284;
import 'package:asagi/modules/compression/domain/repositories/compression_alert_repository.dart'
    as _i736;
import 'package:asagi/modules/compression/domain/repositories/video_compression_repository.dart'
    as _i425;
import 'package:asagi/modules/compression/domain/use_cases/has_saved_compression_result.dart'
    as _i988;
import 'package:asagi/modules/compression/domain/use_cases/read_notification_insights.dart'
    as _i827;
import 'package:asagi/modules/notifications/application/notification_dispatcher.dart'
    as _i163;
import 'package:asagi/modules/notifications/application/notification_interactions.dart'
    as _i158;
import 'package:asagi/modules/notifications/data/repositories/device_notification_repository.dart'
    as _i546;
import 'package:asagi/modules/notifications/domain/repositories/notification_delivery.dart'
    as _i294;
import 'package:asagi/modules/notifications/domain/repositories/notification_repository.dart'
    as _i583;
import 'package:asagi/modules/notifications/domain/use_cases/initialize_notifications.dart'
    as _i616;
import 'package:asagi/modules/notifications/domain/use_cases/open_notification_channel.dart'
    as _i549;
import 'package:asagi/modules/notifications/domain/use_cases/read_notification_access.dart'
    as _i987;
import 'package:asagi/modules/notifications/domain/use_cases/request_notification_access.dart'
    as _i317;
import 'package:asagi/modules/notifications/domain/use_cases/show_notification.dart'
    as _i837;
import 'package:asagi/modules/notifications/logic/use_cases/show_notification.dart'
    as _i492;
import 'package:asagi/modules/notifications/presentation/cubit/notification_access_cubit.dart'
    as _i598;
import 'package:asagi/modules/notifications/presentation/cubit/notifications_cubit.dart'
    as _i597;
import 'package:asagi/modules/storage/data/repositories/file_storage_repository.dart'
    as _i806;
import 'package:asagi/modules/storage/domain/repositories/storage_repository.dart'
    as _i548;
import 'package:asagi/modules/storage/logic/storage_settings_cubit.dart'
    as _i633;
import 'package:asagi/modules/updates/application/app_update_service.dart'
    as _i715;
import 'package:asagi/modules/updates/data/data_sources/github_releases_api.dart'
    as _i204;
import 'package:asagi/modules/updates/data/repositories/github_release_repository.dart'
    as _i994;
import 'package:asagi/modules/updates/data/repositories/local_update_check_repository.dart'
    as _i159;
import 'package:asagi/modules/updates/domain/repositories/release_repository.dart'
    as _i139;
import 'package:asagi/modules/updates/domain/repositories/update_check_repository.dart'
    as _i465;
import 'package:asagi/modules/updates/domain/use_cases/check_app_update.dart'
    as _i318;
import 'package:asagi/modules/updates/domain/use_cases/read_cached_release.dart'
    as _i1016;
import 'package:asagi/modules/updates/domain/use_cases/read_installed_release.dart'
    as _i98;
import 'package:asagi/modules/updates/domain/use_cases/read_latest_release.dart'
    as _i407;
import 'package:asagi/modules/updates/presentation/cubit/releases_cubit.dart'
    as _i969;
import 'package:connectivity_plus/connectivity_plus.dart' as _i895;
import 'package:dio/dio.dart' as _i361;
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
    gh.lazySingleton<_i425.VideoCompressionRepository>(
      () => injectionModule.videoCompressionRepository,
    );
    gh.lazySingleton<_i558.FlutterSecureStorage>(
      () => injectionModule.secureStorage,
    );
    gh.lazySingleton<_i998.SharePlus>(() => injectionModule.sharePlus);
    gh.lazySingleton<_i895.Connectivity>(() => injectionModule.connectivity);
    gh.lazySingleton<_i0.ArtifactStore>(() => injectionModule.artifactStore);
    gh.lazySingleton<_i965.RequestDeduplicator>(
      () => _i965.RequestDeduplicator(),
    );
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
    gh.lazySingleton<_i361.Dio>(
      () => injectionModule.githubDio,
      instanceName: 'github',
    );
    gh.lazySingleton<_i550.BaseShareService>(
      () => _i770.SharePlusService(gh<_i998.SharePlus>()),
    );
    gh.lazySingleton<_i547.BaseLocalNotificationService>(
      () => _i1010.LocalNotificationService(),
    );
    gh.lazySingleton<_i630.BaseToastService>(
      () => _i885.ToastificationService(gh<_i264.ThemeService>()),
    );
    gh.lazySingleton<_i559.SecureStorageService>(
      () => _i559.SecureStorageService(gh<_i558.FlutterSecureStorage>()),
    );
    gh.lazySingleton<_i548.StorageRepository>(
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
    gh.lazySingleton<_i204.GitHubReleasesApi>(
      () => injectionModule.githubReleasesApi(
        gh<_i361.Dio>(instanceName: 'github'),
      ),
    );
    gh.lazySingleton<_i583.NotificationRepository>(
      () => _i546.DeviceNotificationRepository(
        gh<_i547.BaseLocalNotificationService>(),
        gh<_i415.BasePermissionService>(),
      ),
    );
    gh.lazySingleton<_i752.BaseAppInfoService>(
      () => _i822.AppInfoService(gh<_i615.BasePackageInfoAdapter>()),
    );
    gh.lazySingleton<_i988.HasSavedCompressionResultUseCase>(
      () => _i988.HasSavedCompressionResultUseCase(
        gh<_i425.VideoCompressionRepository>(),
      ),
    );
    gh.lazySingleton<_i827.ReadNotificationInsightsUseCase>(
      () => _i827.ReadNotificationInsightsUseCase(
        gh<_i425.VideoCompressionRepository>(),
      ),
    );
    gh.factory<_i633.StorageSettingsCubit>(
      () => _i633.StorageSettingsCubit(gh<_i548.StorageRepository>()),
    );
    gh.lazySingleton<_i586.BaseClipboardGuardService>(
      () => _i586.ClipboardGuardService(gh<_i619.BaseAuditLogger>()),
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
    gh.lazySingleton<_i736.CompressionAlertRepository>(
      () => _i284.LocalCompressionAlertRepository(
        gh<_i896.BasePrefStorageService>(),
      ),
    );
    gh.lazySingleton<_i211.NotificationPreferencesRepository>(
      () => _i725.SharedNotificationPreferences(
        gh<_i896.BasePrefStorageService>(),
      ),
      dispose: (i) => i.dispose(),
    );
    gh.lazySingleton<_i616.InitializeNotificationsUseCase>(
      () => _i616.InitializeNotificationsUseCase(
        gh<_i583.NotificationRepository>(),
      ),
    );
    gh.lazySingleton<_i549.OpenNotificationChannelUseCase>(
      () => _i549.OpenNotificationChannelUseCase(
        gh<_i583.NotificationRepository>(),
      ),
    );
    gh.lazySingleton<_i987.ReadNotificationAccessUseCase>(
      () => _i987.ReadNotificationAccessUseCase(
        gh<_i583.NotificationRepository>(),
      ),
    );
    gh.lazySingleton<_i317.RequestNotificationAccessUseCase>(
      () => _i317.RequestNotificationAccessUseCase(
        gh<_i583.NotificationRepository>(),
      ),
    );
    gh.lazySingleton<_i837.ShowNotificationUseCase>(
      () => _i837.ShowNotificationUseCase(gh<_i583.NotificationRepository>()),
    );
    gh.lazySingleton<_i492.ShowNotification>(
      () => _i492.ShowNotification(gh<_i583.NotificationRepository>()),
    );
    gh.lazySingleton<_i598.NotificationAccessCubit>(
      () => _i598.NotificationAccessCubit(
        gh<_i987.ReadNotificationAccessUseCase>(),
        gh<_i317.RequestNotificationAccessUseCase>(),
        gh<_i549.OpenNotificationChannelUseCase>(),
      ),
    );
    gh.lazySingleton<_i465.UpdateCheckRepository>(
      () =>
          _i159.LocalUpdateCheckRepository(gh<_i896.BasePrefStorageService>()),
    );
    gh.lazySingleton<_i960.StorageFacade>(
      () => injectionModule.storageFacade(gh<_i896.BasePrefStorageService>()),
    );
    gh.lazySingleton<_i139.ReleaseRepository>(
      () => _i994.GitHubReleaseRepository(
        gh<_i204.GitHubReleasesApi>(),
        gh<_i965.RequestDeduplicator>(),
        gh<_i896.BasePrefStorageService>(),
      ),
    );
    gh.factory<_i188.AboutAppCubit>(
      () => _i188.AboutAppCubit(gh<_i812.BaseAboutAppRepository>()),
    );
    gh.lazySingleton<_i158.NotificationInteractions>(
      () => _i158.NotificationInteractions(
        gh<_i583.NotificationRepository>(),
        gh<_i616.InitializeNotificationsUseCase>(),
      ),
      dispose: (i) => i.dispose(),
    );
    gh.lazySingleton<_i207.HapticsService>(
      () => _i207.HapticsService(gh<_i211.NotificationPreferencesRepository>()),
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
    gh.lazySingleton<_i872.LoadNotificationSettingsUseCase>(
      () => _i872.LoadNotificationSettingsUseCase(
        gh<_i211.NotificationPreferencesRepository>(),
      ),
    );
    gh.lazySingleton<_i542.SaveNotificationSettingsUseCase>(
      () => _i542.SaveNotificationSettingsUseCase(
        gh<_i211.NotificationPreferencesRepository>(),
      ),
    );
    gh.lazySingleton<_i318.CheckAppUpdateUseCase>(
      () => _i318.CheckAppUpdateUseCase(gh<_i139.ReleaseRepository>()),
    );
    gh.lazySingleton<_i1016.ReadCachedReleaseUseCase>(
      () => _i1016.ReadCachedReleaseUseCase(gh<_i139.ReleaseRepository>()),
    );
    gh.lazySingleton<_i98.ReadInstalledReleaseUseCase>(
      () => _i98.ReadInstalledReleaseUseCase(gh<_i139.ReleaseRepository>()),
    );
    gh.lazySingleton<_i407.ReadLatestReleaseUseCase>(
      () => _i407.ReadLatestReleaseUseCase(gh<_i139.ReleaseRepository>()),
    );
    gh.factory<_i969.ReleasesCubit>(
      () => _i969.ReleasesCubit(
        gh<_i407.ReadLatestReleaseUseCase>(),
        gh<_i98.ReadInstalledReleaseUseCase>(),
        gh<_i1016.ReadCachedReleaseUseCase>(),
        gh<_i615.BasePackageInfoAdapter>(),
      ),
    );
    gh.lazySingleton<_i163.NotificationDispatcher>(
      () => _i163.NotificationDispatcher(
        gh<_i211.NotificationPreferencesRepository>(),
        gh<_i987.ReadNotificationAccessUseCase>(),
        gh<_i837.ShowNotificationUseCase>(),
        gh<_i207.HapticsService>(),
      ),
    );
    gh.lazySingleton<_i294.NotificationDelivery>(
      () => injectionModule.notificationDelivery(
        gh<_i163.NotificationDispatcher>(),
      ),
    );
    gh.lazySingleton<_i597.NotificationsCubit>(
      () => _i597.NotificationsCubit(
        gh<_i211.NotificationPreferencesRepository>(),
        gh<_i872.LoadNotificationSettingsUseCase>(),
        gh<_i542.SaveNotificationSettingsUseCase>(),
      ),
    );
    gh.lazySingleton<_i715.AppUpdateService>(
      () => _i715.AppUpdateService(
        gh<_i211.NotificationPreferencesRepository>(),
        gh<_i465.UpdateCheckRepository>(),
        gh<_i318.CheckAppUpdateUseCase>(),
        gh<_i615.BasePackageInfoAdapter>(),
        gh<_i294.NotificationDelivery>(),
      ),
      dispose: (i) => i.dispose(),
    );
    gh.lazySingleton<_i140.CompressionInsightsService>(
      () => _i140.CompressionInsightsService(
        gh<_i211.NotificationPreferencesRepository>(),
        gh<_i736.CompressionAlertRepository>(),
        gh<_i827.ReadNotificationInsightsUseCase>(),
        gh<_i294.NotificationDelivery>(),
      ),
      dispose: (i) => i.dispose(),
    );
    gh.lazySingleton<_i661.CompressionNotificationService>(
      () => _i661.CompressionNotificationService(
        gh<_i211.NotificationPreferencesRepository>(),
        gh<_i583.NotificationRepository>(),
        gh<_i294.NotificationDelivery>(),
      ),
      dispose: (i) => i.dispose(),
    );
    return this;
  }

  _i965.RequestDeduplicator get requestDeduplicator =>
      get<_i965.RequestDeduplicator>();

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

  _i1010.LocalNotificationService get localNotificationService =>
      get<_i1010.LocalNotificationService>();

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

  _i546.DeviceNotificationRepository get deviceNotificationRepository =>
      get<_i546.DeviceNotificationRepository>();

  _i822.AppInfoService get appInfoService => get<_i822.AppInfoService>();

  _i988.HasSavedCompressionResultUseCase get hasSavedCompressionResultUseCase =>
      get<_i988.HasSavedCompressionResultUseCase>();

  _i827.ReadNotificationInsightsUseCase get readNotificationInsightsUseCase =>
      get<_i827.ReadNotificationInsightsUseCase>();

  _i633.StorageSettingsCubit get storageSettingsCubit =>
      get<_i633.StorageSettingsCubit>();

  _i586.ClipboardGuardService get clipboardGuardService =>
      get<_i586.ClipboardGuardService>();

  _i960.StorageFacade get storageFacade => get<_i960.StorageFacade>();

  _i283.UrlFileOpenerService get urlFileOpenerService =>
      get<_i283.UrlFileOpenerService>();

  _i382.AboutAppRepsitory get aboutAppRepsitory =>
      get<_i382.AboutAppRepsitory>();

  _i284.LocalCompressionAlertRepository get localCompressionAlertRepository =>
      get<_i284.LocalCompressionAlertRepository>();

  _i725.SharedNotificationPreferences get sharedNotificationPreferences =>
      get<_i725.SharedNotificationPreferences>();

  _i616.InitializeNotificationsUseCase get initializeNotificationsUseCase =>
      get<_i616.InitializeNotificationsUseCase>();

  _i549.OpenNotificationChannelUseCase get openNotificationChannelUseCase =>
      get<_i549.OpenNotificationChannelUseCase>();

  _i987.ReadNotificationAccessUseCase get readNotificationAccessUseCase =>
      get<_i987.ReadNotificationAccessUseCase>();

  _i317.RequestNotificationAccessUseCase get requestNotificationAccessUseCase =>
      get<_i317.RequestNotificationAccessUseCase>();

  _i837.ShowNotificationUseCase get showNotificationUseCase =>
      get<_i837.ShowNotificationUseCase>();

  _i492.ShowNotification get showNotification => get<_i492.ShowNotification>();

  _i598.NotificationAccessCubit get notificationAccessCubit =>
      get<_i598.NotificationAccessCubit>();

  _i159.LocalUpdateCheckRepository get localUpdateCheckRepository =>
      get<_i159.LocalUpdateCheckRepository>();

  _i994.GitHubReleaseRepository get gitHubReleaseRepository =>
      get<_i994.GitHubReleaseRepository>();

  _i188.AboutAppCubit get aboutAppCubit => get<_i188.AboutAppCubit>();

  _i158.NotificationInteractions get notificationInteractions =>
      get<_i158.NotificationInteractions>();

  _i207.HapticsService get hapticsService => get<_i207.HapticsService>();

  _i676.LocalizationRepository get localizationRepository =>
      get<_i676.LocalizationRepository>();

  _i849.UserSessionService get userSessionService =>
      get<_i849.UserSessionService>();

  _i872.LoadNotificationSettingsUseCase get loadNotificationSettingsUseCase =>
      get<_i872.LoadNotificationSettingsUseCase>();

  _i542.SaveNotificationSettingsUseCase get saveNotificationSettingsUseCase =>
      get<_i542.SaveNotificationSettingsUseCase>();

  _i318.CheckAppUpdateUseCase get checkAppUpdateUseCase =>
      get<_i318.CheckAppUpdateUseCase>();

  _i1016.ReadCachedReleaseUseCase get readCachedReleaseUseCase =>
      get<_i1016.ReadCachedReleaseUseCase>();

  _i98.ReadInstalledReleaseUseCase get readInstalledReleaseUseCase =>
      get<_i98.ReadInstalledReleaseUseCase>();

  _i407.ReadLatestReleaseUseCase get readLatestReleaseUseCase =>
      get<_i407.ReadLatestReleaseUseCase>();

  _i969.ReleasesCubit get releasesCubit => get<_i969.ReleasesCubit>();

  _i163.NotificationDispatcher get notificationDispatcher =>
      get<_i163.NotificationDispatcher>();

  _i597.NotificationsCubit get notificationsCubit =>
      get<_i597.NotificationsCubit>();

  _i715.AppUpdateService get appUpdateService => get<_i715.AppUpdateService>();

  _i140.CompressionInsightsService get compressionInsightsService =>
      get<_i140.CompressionInsightsService>();

  _i661.CompressionNotificationService get compressionNotificationService =>
      get<_i661.CompressionNotificationService>();
}

class _$InjectionModule extends _i938.InjectionModule {}
