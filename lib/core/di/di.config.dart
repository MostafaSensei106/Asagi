// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:dio/dio.dart' as _i361;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:kuymo/core/compression/domain/contracts/artifact_store.dart'
    as _i260;
import 'package:kuymo/core/di/injection_module.dart' as _i1030;
import 'package:kuymo/core/network/request_deduplicator.dart' as _i350;
import 'package:kuymo/core/preferences/application/media_work_scheduler.dart'
    as _i447;
import 'package:kuymo/core/preferences/application/telemetry_consent_coordinator.dart'
    as _i335;
import 'package:kuymo/core/preferences/data/repositories/compression_defaults_repository.dart'
    as _i725;
import 'package:kuymo/core/preferences/data/repositories/firebase_telemetry_adapter.dart'
    as _i626;
import 'package:kuymo/core/preferences/data/repositories/language_settings_repository.dart'
    as _i603;
import 'package:kuymo/core/preferences/data/repositories/privacy_settings_repository.dart'
    as _i480;
import 'package:kuymo/core/preferences/data/repositories/shared_notification_preferences.dart'
    as _i468;
import 'package:kuymo/core/preferences/domain/entities/compression_defaults.dart'
    as _i637;
import 'package:kuymo/core/preferences/domain/entities/language_settings.dart'
    as _i245;
import 'package:kuymo/core/preferences/domain/entities/privacy_settings.dart'
    as _i106;
import 'package:kuymo/core/preferences/domain/repositories/notification_preferences_repository.dart'
    as _i145;
import 'package:kuymo/core/preferences/domain/repositories/settings_repository.dart'
    as _i766;
import 'package:kuymo/core/preferences/domain/repositories/telemetry_adapter.dart'
    as _i494;
import 'package:kuymo/core/preferences/domain/use_cases/load_notification_settings.dart'
    as _i501;
import 'package:kuymo/core/preferences/domain/use_cases/save_notification_settings.dart'
    as _i437;
import 'package:kuymo/core/services/ai/ai_model_service.dart' as _i674;
import 'package:kuymo/core/services/ai/interface/base_ai_model_service.dart'
    as _i965;
import 'package:kuymo/core/services/app_info/app_info_service.dart' as _i449;
import 'package:kuymo/core/services/app_info/interface/base_app_info_service.dart'
    as _i1006;
import 'package:kuymo/core/services/app_info/interface/base_package_info_adapter.dart'
    as _i701;
import 'package:kuymo/core/services/app_info/package_info_plus_adapter.dart'
    as _i93;
import 'package:kuymo/core/services/haptics/haptics_service.dart' as _i369;
import 'package:kuymo/core/services/l10n/l10n_service.dart' as _i726;
import 'package:kuymo/core/services/notifications/base_local_notification_service.dart'
    as _i373;
import 'package:kuymo/core/services/notifications/local_notification_service.dart'
    as _i282;
import 'package:kuymo/core/services/permissions/base_permission_service.dart'
    as _i430;
import 'package:kuymo/core/services/permissions/permission_handler_service.dart'
    as _i446;
import 'package:kuymo/core/services/security/audit/app_audit_logger.dart'
    as _i796;
import 'package:kuymo/core/services/security/audit/base_audit_logger.dart'
    as _i928;
import 'package:kuymo/core/services/share/base_share_service.dart' as _i576;
import 'package:kuymo/core/services/share/share_plus_service.dart' as _i966;
import 'package:kuymo/core/services/shared_prefs/base_pref_storage_service.dart'
    as _i156;
import 'package:kuymo/core/services/shared_prefs/secure_storage_service.dart'
    as _i619;
import 'package:kuymo/core/services/shared_prefs/shared_prefs_service.dart'
    as _i152;
import 'package:kuymo/core/services/shared_prefs/storage_facade.dart' as _i1034;
import 'package:kuymo/core/services/theme/theme_service.dart' as _i266;
import 'package:kuymo/core/services/toast/base_toast_service.dart' as _i235;
import 'package:kuymo/core/services/toast/toastification_service.dart' as _i926;
import 'package:kuymo/core/services/url_launcher/base_url_launcher_services.dart'
    as _i799;
import 'package:kuymo/core/services/url_launcher/url_launcher_service.dart'
    as _i587;
import 'package:kuymo/core/utils/localization/data/base_localization_repository.dart'
    as _i315;
import 'package:kuymo/core/utils/localization/data/localization_repository.dart'
    as _i254;
import 'package:kuymo/core/utils/localization/logic/cubit/localization_cubit.dart'
    as _i696;
import 'package:kuymo/core/utils/theme/logic/cubit/theme_cubit.dart' as _i623;
import 'package:kuymo/modules/about/data/about_app_repsitory.dart' as _i472;
import 'package:kuymo/modules/about/data/base_about_app_repository.dart'
    as _i517;
import 'package:kuymo/modules/about/logic/cubit/about_app_cubit.dart' as _i17;
import 'package:kuymo/modules/ai/data/repositories/ai_model_files.dart'
    as _i694;
import 'package:kuymo/modules/ai/data/repositories/ai_runtime_lifecycle.dart'
    as _i664;
import 'package:kuymo/modules/ai/data/repositories/ai_video_advice_repository.dart'
    as _i919;
import 'package:kuymo/modules/ai/data/repositories/device_ai_media_repository.dart'
    as _i586;
import 'package:kuymo/modules/ai/data/repositories/device_ai_model_repository.dart'
    as _i986;
import 'package:kuymo/modules/ai/data/repositories/device_ai_tool_repository.dart'
    as _i293;
import 'package:kuymo/modules/ai/data/repositories/file_ai_conversation_repository.dart'
    as _i636;
import 'package:kuymo/modules/ai/data/repositories/local_ai_runtime_repository.dart'
    as _i117;
import 'package:kuymo/modules/ai/data/repositories/local_ai_search_repository.dart'
    as _i1054;
import 'package:kuymo/modules/ai/data/repositories/local_ai_settings.dart'
    as _i147;
import 'package:kuymo/modules/ai/domain/entities/ai_settings.dart' as _i666;
import 'package:kuymo/modules/ai/domain/repositories/ai_conversation_repository.dart'
    as _i74;
import 'package:kuymo/modules/ai/domain/repositories/ai_media_repository.dart'
    as _i805;
import 'package:kuymo/modules/ai/domain/repositories/ai_model_repository.dart'
    as _i663;
import 'package:kuymo/modules/ai/domain/repositories/ai_runtime_repository.dart'
    as _i110;
import 'package:kuymo/modules/ai/domain/repositories/ai_search_repository.dart'
    as _i123;
import 'package:kuymo/modules/ai/domain/repositories/ai_tool_repository.dart'
    as _i1036;
import 'package:kuymo/modules/compression/application/notifications/compression_insights_service.dart'
    as _i906;
import 'package:kuymo/modules/compression/application/notifications/compression_notification_service.dart'
    as _i159;
import 'package:kuymo/modules/compression/data/repositories/local_compression_alert_repository.dart'
    as _i63;
import 'package:kuymo/modules/compression/domain/repositories/compression_alert_repository.dart'
    as _i721;
import 'package:kuymo/modules/compression/domain/repositories/video_advice_repository.dart'
    as _i909;
import 'package:kuymo/modules/compression/domain/repositories/video_compression_repository.dart'
    as _i859;
import 'package:kuymo/modules/compression/domain/use_cases/has_saved_compression_result.dart'
    as _i378;
import 'package:kuymo/modules/compression/domain/use_cases/read_notification_insights.dart'
    as _i1004;
import 'package:kuymo/modules/home/presentation/cubit/home_result_actions_cubit.dart'
    as _i489;
import 'package:kuymo/modules/notifications/application/notification_dispatcher.dart'
    as _i648;
import 'package:kuymo/modules/notifications/application/notification_interactions.dart'
    as _i382;
import 'package:kuymo/modules/notifications/data/repositories/device_notification_repository.dart'
    as _i16;
import 'package:kuymo/modules/notifications/domain/repositories/notification_delivery.dart'
    as _i849;
import 'package:kuymo/modules/notifications/domain/repositories/notification_repository.dart'
    as _i686;
import 'package:kuymo/modules/notifications/domain/use_cases/initialize_notifications.dart'
    as _i683;
import 'package:kuymo/modules/notifications/domain/use_cases/open_notification_channel.dart'
    as _i984;
import 'package:kuymo/modules/notifications/domain/use_cases/read_notification_access.dart'
    as _i213;
import 'package:kuymo/modules/notifications/domain/use_cases/request_notification_access.dart'
    as _i238;
import 'package:kuymo/modules/notifications/domain/use_cases/show_notification.dart'
    as _i539;
import 'package:kuymo/modules/notifications/logic/use_cases/read_notification_insights.dart'
    as _i279;
import 'package:kuymo/modules/notifications/logic/use_cases/show_notification.dart'
    as _i289;
import 'package:kuymo/modules/notifications/presentation/cubit/notification_access_cubit.dart'
    as _i907;
import 'package:kuymo/modules/notifications/presentation/cubit/notifications_cubit.dart'
    as _i498;
import 'package:kuymo/modules/permissions/data/repositories/device_permission_repository.dart'
    as _i752;
import 'package:kuymo/modules/permissions/domain/repositories/permission_repository.dart'
    as _i436;
import 'package:kuymo/modules/privacy/data/repositories/local_scratchpad_repository.dart'
    as _i540;
import 'package:kuymo/modules/privacy/domain/repositories/scratchpad_repository.dart'
    as _i700;
import 'package:kuymo/modules/storage/data/repositories/file_storage_repository.dart'
    as _i1057;
import 'package:kuymo/modules/storage/domain/repositories/storage_repository.dart'
    as _i54;
import 'package:kuymo/modules/storage/logic/storage_settings_cubit.dart'
    as _i285;
import 'package:kuymo/modules/updates/application/app_update_service.dart'
    as _i60;
import 'package:kuymo/modules/updates/data/data_sources/github_releases_api.dart'
    as _i242;
import 'package:kuymo/modules/updates/data/repositories/github_release_repository.dart'
    as _i53;
import 'package:kuymo/modules/updates/data/repositories/local_update_check_repository.dart'
    as _i219;
import 'package:kuymo/modules/updates/domain/repositories/release_repository.dart'
    as _i514;
import 'package:kuymo/modules/updates/domain/repositories/update_check_repository.dart'
    as _i136;
import 'package:kuymo/modules/updates/domain/use_cases/check_app_update.dart'
    as _i681;
import 'package:kuymo/modules/updates/domain/use_cases/read_cached_release.dart'
    as _i384;
import 'package:kuymo/modules/updates/domain/use_cases/read_installed_release.dart'
    as _i527;
import 'package:kuymo/modules/updates/domain/use_cases/read_latest_release.dart'
    as _i84;
import 'package:kuymo/modules/updates/presentation/cubit/releases_cubit.dart'
    as _i119;
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
    gh.lazySingleton<_i260.ArtifactStore>(() => injectionModule.artifactStore);
    gh.lazySingleton<_i350.RequestDeduplicator>(
      () => _i350.RequestDeduplicator(),
    );
    gh.lazySingleton<_i447.MediaWorkScheduler>(
      () => _i447.MediaWorkScheduler(),
    );
    gh.lazySingleton<_i726.L10nService>(() => _i726.L10nService());
    gh.lazySingleton<_i266.ThemeService>(() => _i266.ThemeService());
    gh.lazySingleton<_i623.ThemeCubit>(() => _i623.ThemeCubit());
    gh.lazySingleton<_i576.BaseShareService>(
      () => _i966.SharePlusService(gh<_i998.SharePlus>()),
    );
    gh.lazySingleton<_i54.StorageRepository>(
      () => _i1057.FileStorageRepository(gh<_i260.ArtifactStore>()),
    );
    gh.lazySingleton<_i928.BaseAuditLogger>(() => const _i796.AppAuditLogger());
    gh.lazySingleton<_i373.BaseLocalNotificationService>(
      () => _i282.LocalNotificationService(),
    );
    gh.lazySingleton<_i361.Dio>(
      () => injectionModule.githubDio,
      instanceName: 'github',
    );
    gh.lazySingleton<_i700.ScratchpadRepository>(
      () => _i540.LocalScratchpadRepository(),
    );
    gh.factory<_i285.StorageSettingsCubit>(
      () => _i285.StorageSettingsCubit(gh<_i54.StorageRepository>()),
    );
    gh.lazySingleton<_i494.TelemetryAdapter>(
      () => _i626.FirebaseTelemetryAdapter(),
    );
    gh.lazySingleton<_i701.BasePackageInfoAdapter>(
      () => _i93.PackageInfoPlusAdapter(gh<_i655.PackageInfo>()),
    );
    gh.lazySingleton<_i235.BaseToastService>(
      () => _i926.ToastificationService(gh<_i266.ThemeService>()),
    );
    gh.lazySingleton<_i430.BasePermissionService>(
      () => const _i446.PermissionHandlerService(),
    );
    gh.lazySingleton<_i965.BaseAiModelService>(() => _i674.AiModelService());
    gh.lazySingleton<_i436.PermissionRepository>(
      () => _i752.DevicePermissionRepository(gh<_i430.BasePermissionService>()),
    );
    gh.lazySingleton<_i619.SecureStorageService>(
      () => _i619.SecureStorageService(gh<_i558.FlutterSecureStorage>()),
    );
    gh.lazySingleton<_i152.SharedPrefsService>(
      () => _i152.SharedPrefsService(gh<_i460.SharedPreferences>()),
    );
    gh.lazySingleton<_i242.GitHubReleasesApi>(
      () => injectionModule.githubReleasesApi(
        gh<_i361.Dio>(instanceName: 'github'),
      ),
    );
    gh.lazySingleton<_i1006.BaseAppInfoService>(
      () => _i449.AppInfoService(gh<_i701.BasePackageInfoAdapter>()),
    );
    gh.lazySingleton<_i156.BasePrefStorageService>(
      () => _i1034.StorageFacade(
        sharedPrefsService: gh<_i152.SharedPrefsService>(),
        secureStorageService: gh<_i619.SecureStorageService>(),
      ),
    );
    gh.lazySingleton<_i799.BaseUrlLauncherServices>(
      () => _i587.UrlLauncherService(gh<_i928.BaseAuditLogger>()),
    );
    gh.lazySingleton<_i694.AiModelFiles>(
      () => _i694.AiModelFiles(gh<_i965.BaseAiModelService>()),
    );
    gh.lazySingleton<_i766.SettingsRepository<_i666.AiFeatureSettings>>(
      () => _i147.LocalAiFeatureSettings(gh<_i156.BasePrefStorageService>()),
      dispose: (i) => i.dispose(),
    );
    gh.lazySingleton<_i686.NotificationRepository>(
      () => _i16.DeviceNotificationRepository(
        gh<_i373.BaseLocalNotificationService>(),
        gh<_i430.BasePermissionService>(),
      ),
    );
    gh.lazySingleton<_i766.SettingsRepository<_i666.AiChatSettings>>(
      () => _i147.LocalAiChatSettings(gh<_i156.BasePrefStorageService>()),
      dispose: (i) => i.dispose(),
    );
    gh.lazySingleton<_i766.SettingsRepository<_i245.LanguageSettings>>(
      () =>
          _i603.LanguageSettingsRepository(gh<_i156.BasePrefStorageService>()),
      dispose: (i) => i.dispose(),
    );
    gh.lazySingleton<_i721.CompressionAlertRepository>(
      () => _i63.LocalCompressionAlertRepository(
        gh<_i156.BasePrefStorageService>(),
      ),
    );
    gh.lazySingleton<_i145.NotificationPreferencesRepository>(
      () => _i468.SharedNotificationPreferences(
        gh<_i156.BasePrefStorageService>(),
      ),
      dispose: (i) => i.dispose(),
    );
    gh.lazySingleton<_i517.BaseAboutAppRepository>(
      () => _i472.AboutAppRepsitory(gh<_i1006.BaseAppInfoService>()),
    );
    gh.lazySingleton<_i766.SettingsRepository<_i666.AiModelSettings>>(
      () => _i147.LocalAiModelSettings(gh<_i156.BasePrefStorageService>()),
      dispose: (i) => i.dispose(),
    );
    gh.lazySingleton<_i766.SettingsRepository<_i666.AiMediaSettings>>(
      () => _i147.LocalAiMediaSettings(gh<_i156.BasePrefStorageService>()),
      dispose: (i) => i.dispose(),
    );
    gh.lazySingleton<_i766.SettingsRepository<_i666.AiRuntimeSettings>>(
      () => _i147.LocalAiRuntimeSettings(gh<_i156.BasePrefStorageService>()),
      dispose: (i) => i.dispose(),
    );
    gh.lazySingleton<_i136.UpdateCheckRepository>(
      () =>
          _i219.LocalUpdateCheckRepository(gh<_i156.BasePrefStorageService>()),
    );
    gh.lazySingleton<_i663.AiModelRepository>(
      () => _i986.DeviceAiModelRepository(
        gh<_i965.BaseAiModelService>(),
        gh<_i694.AiModelFiles>(),
        gh<_i766.SettingsRepository<_i666.AiModelSettings>>(),
      ),
    );
    gh.lazySingleton<_i683.InitializeNotificationsUseCase>(
      () => _i683.InitializeNotificationsUseCase(
        gh<_i686.NotificationRepository>(),
      ),
    );
    gh.lazySingleton<_i984.OpenNotificationChannelUseCase>(
      () => _i984.OpenNotificationChannelUseCase(
        gh<_i686.NotificationRepository>(),
      ),
    );
    gh.lazySingleton<_i213.ReadNotificationAccessUseCase>(
      () => _i213.ReadNotificationAccessUseCase(
        gh<_i686.NotificationRepository>(),
      ),
    );
    gh.lazySingleton<_i238.RequestNotificationAccessUseCase>(
      () => _i238.RequestNotificationAccessUseCase(
        gh<_i686.NotificationRepository>(),
      ),
    );
    gh.lazySingleton<_i539.ShowNotificationUseCase>(
      () => _i539.ShowNotificationUseCase(gh<_i686.NotificationRepository>()),
    );
    gh.lazySingleton<_i289.ShowNotification>(
      () => _i289.ShowNotification(gh<_i686.NotificationRepository>()),
    );
    gh.lazySingleton<_i766.SettingsRepository<_i666.AiToolSettings>>(
      () => _i147.LocalAiToolSettings(gh<_i156.BasePrefStorageService>()),
      dispose: (i) => i.dispose(),
    );
    gh.lazySingleton<_i766.SettingsRepository<_i666.AiSearchSettings>>(
      () => _i147.LocalAiSearchSettings(gh<_i156.BasePrefStorageService>()),
      dispose: (i) => i.dispose(),
    );
    gh.lazySingleton<_i766.SettingsRepository<_i106.PrivacySettings>>(
      () => _i480.PrivacySettingsRepository(gh<_i156.BasePrefStorageService>()),
      dispose: (i) => i.dispose(),
    );
    gh.lazySingleton<_i766.SettingsRepository<_i637.CompressionDefaults>>(
      () => _i725.CompressionDefaultsRepository(
        gh<_i156.BasePrefStorageService>(),
      ),
      dispose: (i) => i.dispose(),
    );
    gh.lazySingleton<_i335.TelemetryConsentCoordinator>(
      () => _i335.TelemetryConsentCoordinator(
        gh<_i766.SettingsRepository<_i106.PrivacySettings>>(),
        gh<_i494.TelemetryAdapter>(),
      ),
      dispose: (i) => i.dispose(),
    );
    gh.lazySingleton<_i382.NotificationInteractions>(
      () => _i382.NotificationInteractions(
        gh<_i686.NotificationRepository>(),
        gh<_i683.InitializeNotificationsUseCase>(),
      ),
      dispose: (i) => i.dispose(),
    );
    gh.lazySingleton<_i1034.StorageFacade>(
      () => injectionModule.storageFacade(gh<_i156.BasePrefStorageService>()),
    );
    gh.lazySingleton<_i907.NotificationAccessCubit>(
      () => _i907.NotificationAccessCubit(
        gh<_i213.ReadNotificationAccessUseCase>(),
        gh<_i238.RequestNotificationAccessUseCase>(),
        gh<_i984.OpenNotificationChannelUseCase>(),
      ),
    );
    gh.lazySingleton<_i514.ReleaseRepository>(
      () => _i53.GitHubReleaseRepository(
        gh<_i242.GitHubReleasesApi>(),
        gh<_i350.RequestDeduplicator>(),
        gh<_i156.BasePrefStorageService>(),
      ),
    );
    gh.factory<_i17.AboutAppCubit>(
      () => _i17.AboutAppCubit(gh<_i517.BaseAboutAppRepository>()),
    );
    gh.lazySingleton<_i315.BaseLocalizationRepository>(
      () => _i254.LocalizationRepository(
        storage: gh<_i766.SettingsRepository<_i245.LanguageSettings>>(),
        l10nService: gh<_i726.L10nService>(),
      ),
    );
    gh.lazySingleton<_i1036.AiToolRepository>(
      () => _i293.DeviceAiToolRepository(
        gh<_i694.AiModelFiles>(),
        gh<_i766.SettingsRepository<_i666.AiToolSettings>>(),
        gh<_i766.SettingsRepository<_i666.AiFeatureSettings>>(),
        gh<_i766.SettingsRepository<_i106.PrivacySettings>>(),
        gh<_i700.ScratchpadRepository>(),
        gh<_i447.MediaWorkScheduler>(),
      ),
    );
    gh.lazySingleton<_i74.AiConversationRepository>(
      () => _i636.FileAiConversationRepository(
        gh<_i766.SettingsRepository<_i106.PrivacySettings>>(),
      ),
    );
    gh.lazySingleton<_i696.LocalizationCubit>(
      () => _i696.LocalizationCubit(
        l10nService: gh<_i726.L10nService>(),
        repository: gh<_i766.SettingsRepository<_i245.LanguageSettings>>(),
      ),
    );
    gh.lazySingleton<_i501.LoadNotificationSettingsUseCase>(
      () => _i501.LoadNotificationSettingsUseCase(
        gh<_i145.NotificationPreferencesRepository>(),
      ),
    );
    gh.lazySingleton<_i437.SaveNotificationSettingsUseCase>(
      () => _i437.SaveNotificationSettingsUseCase(
        gh<_i145.NotificationPreferencesRepository>(),
      ),
    );
    gh.lazySingleton<_i369.HapticsService>(
      () => _i369.HapticsService(gh<_i145.NotificationPreferencesRepository>()),
    );
    gh.lazySingleton<_i681.CheckAppUpdateUseCase>(
      () => _i681.CheckAppUpdateUseCase(gh<_i514.ReleaseRepository>()),
    );
    gh.lazySingleton<_i384.ReadCachedReleaseUseCase>(
      () => _i384.ReadCachedReleaseUseCase(gh<_i514.ReleaseRepository>()),
    );
    gh.lazySingleton<_i527.ReadInstalledReleaseUseCase>(
      () => _i527.ReadInstalledReleaseUseCase(gh<_i514.ReleaseRepository>()),
    );
    gh.lazySingleton<_i84.ReadLatestReleaseUseCase>(
      () => _i84.ReadLatestReleaseUseCase(gh<_i514.ReleaseRepository>()),
    );
    gh.lazySingleton<_i859.VideoCompressionRepository>(
      () => injectionModule.videoCompressionRepository(
        gh<_i766.SettingsRepository<_i106.PrivacySettings>>(),
        gh<_i447.MediaWorkScheduler>(),
        gh<_i766.SettingsRepository<_i666.AiFeatureSettings>>(),
      ),
    );
    gh.lazySingleton<_i110.AiRuntimeRepository>(
      () => _i117.LocalAiRuntimeRepository(
        gh<_i766.SettingsRepository<_i666.AiModelSettings>>(),
        gh<_i766.SettingsRepository<_i666.AiRuntimeSettings>>(),
        gh<_i766.SettingsRepository<_i666.AiChatSettings>>(),
        gh<_i766.SettingsRepository<_i666.AiMediaSettings>>(),
        gh<_i694.AiModelFiles>(),
        gh<_i447.MediaWorkScheduler>(),
        gh<_i766.SettingsRepository<_i666.AiToolSettings>>(),
      ),
      dispose: (i) => i.dispose(),
    );
    gh.factory<_i119.ReleasesCubit>(
      () => _i119.ReleasesCubit(
        gh<_i84.ReadLatestReleaseUseCase>(),
        gh<_i527.ReadInstalledReleaseUseCase>(),
        gh<_i384.ReadCachedReleaseUseCase>(),
        gh<_i701.BasePackageInfoAdapter>(),
      ),
    );
    gh.lazySingleton<_i805.AiMediaRepository>(
      () => _i586.DeviceAiMediaRepository(
        gh<_i694.AiModelFiles>(),
        gh<_i110.AiRuntimeRepository>(),
        gh<_i766.SettingsRepository<_i666.AiMediaSettings>>(),
        gh<_i766.SettingsRepository<_i106.PrivacySettings>>(),
        gh<_i766.SettingsRepository<_i666.AiFeatureSettings>>(),
        gh<_i700.ScratchpadRepository>(),
        gh<_i447.MediaWorkScheduler>(),
      ),
    );
    gh.lazySingleton<_i648.NotificationDispatcher>(
      () => _i648.NotificationDispatcher(
        gh<_i145.NotificationPreferencesRepository>(),
        gh<_i213.ReadNotificationAccessUseCase>(),
        gh<_i539.ShowNotificationUseCase>(),
        gh<_i369.HapticsService>(),
      ),
    );
    gh.lazySingleton<_i123.AiSearchRepository>(
      () => _i1054.LocalAiSearchRepository(
        gh<_i694.AiModelFiles>(),
        gh<_i805.AiMediaRepository>(),
        gh<_i110.AiRuntimeRepository>(),
        gh<_i965.BaseAiModelService>(),
        gh<_i766.SettingsRepository<_i666.AiModelSettings>>(),
        gh<_i766.SettingsRepository<_i666.AiSearchSettings>>(),
        gh<_i447.MediaWorkScheduler>(),
      ),
    );
    gh.lazySingleton<_i909.VideoAdviceRepository>(
      () => _i919.AiVideoAdviceRepository(
        gh<_i805.AiMediaRepository>(),
        gh<_i110.AiRuntimeRepository>(),
        gh<_i766.SettingsRepository<_i666.AiFeatureSettings>>(),
      ),
    );
    gh.factory<_i489.HomeResultActionsCubit>(
      () => _i489.HomeResultActionsCubit(
        gh<_i859.VideoCompressionRepository>(),
        gh<_i576.BaseShareService>(),
      ),
    );
    gh.lazySingleton<_i378.HasSavedCompressionResultUseCase>(
      () => _i378.HasSavedCompressionResultUseCase(
        gh<_i859.VideoCompressionRepository>(),
      ),
    );
    gh.lazySingleton<_i1004.ReadNotificationInsightsUseCase>(
      () => _i1004.ReadNotificationInsightsUseCase(
        gh<_i859.VideoCompressionRepository>(),
      ),
    );
    gh.lazySingleton<_i279.ReadNotificationInsights>(
      () => _i279.ReadNotificationInsights(
        gh<_i859.VideoCompressionRepository>(),
      ),
    );
    gh.lazySingleton<_i849.NotificationDelivery>(
      () => injectionModule.notificationDelivery(
        gh<_i648.NotificationDispatcher>(),
      ),
    );
    gh.lazySingleton<_i159.CompressionNotificationService>(
      () => _i159.CompressionNotificationService(
        gh<_i145.NotificationPreferencesRepository>(),
        gh<_i686.NotificationRepository>(),
        gh<_i849.NotificationDelivery>(),
      ),
      dispose: (i) => i.dispose(),
    );
    gh.lazySingleton<_i498.NotificationsCubit>(
      () => _i498.NotificationsCubit(
        gh<_i145.NotificationPreferencesRepository>(),
        gh<_i501.LoadNotificationSettingsUseCase>(),
        gh<_i437.SaveNotificationSettingsUseCase>(),
      ),
    );
    gh.lazySingleton<_i664.AiRuntimeLifecycle>(
      () => _i664.AiRuntimeLifecycle(gh<_i110.AiRuntimeRepository>()),
      dispose: (i) => i.dispose(),
    );
    gh.lazySingleton<_i60.AppUpdateService>(
      () => _i60.AppUpdateService(
        gh<_i145.NotificationPreferencesRepository>(),
        gh<_i136.UpdateCheckRepository>(),
        gh<_i681.CheckAppUpdateUseCase>(),
        gh<_i701.BasePackageInfoAdapter>(),
        gh<_i849.NotificationDelivery>(),
      ),
      dispose: (i) => i.dispose(),
    );
    gh.lazySingleton<_i906.CompressionInsightsService>(
      () => _i906.CompressionInsightsService(
        gh<_i145.NotificationPreferencesRepository>(),
        gh<_i721.CompressionAlertRepository>(),
        gh<_i1004.ReadNotificationInsightsUseCase>(),
        gh<_i849.NotificationDelivery>(),
      ),
      dispose: (i) => i.dispose(),
    );
    return this;
  }

  _i350.RequestDeduplicator get requestDeduplicator =>
      get<_i350.RequestDeduplicator>();

  _i447.MediaWorkScheduler get mediaWorkScheduler =>
      get<_i447.MediaWorkScheduler>();

  _i726.L10nService get l10nService => get<_i726.L10nService>();

  _i266.ThemeService get themeService => get<_i266.ThemeService>();

  _i623.ThemeCubit get themeCubit => get<_i623.ThemeCubit>();

  _i966.SharePlusService get sharePlusService => get<_i966.SharePlusService>();

  _i1057.FileStorageRepository get fileStorageRepository =>
      get<_i1057.FileStorageRepository>();

  _i796.AppAuditLogger get appAuditLogger => get<_i796.AppAuditLogger>();

  _i282.LocalNotificationService get localNotificationService =>
      get<_i282.LocalNotificationService>();

  _i540.LocalScratchpadRepository get localScratchpadRepository =>
      get<_i540.LocalScratchpadRepository>();

  _i285.StorageSettingsCubit get storageSettingsCubit =>
      get<_i285.StorageSettingsCubit>();

  _i626.FirebaseTelemetryAdapter get firebaseTelemetryAdapter =>
      get<_i626.FirebaseTelemetryAdapter>();

  _i93.PackageInfoPlusAdapter get packageInfoPlusAdapter =>
      get<_i93.PackageInfoPlusAdapter>();

  _i926.ToastificationService get toastificationService =>
      get<_i926.ToastificationService>();

  _i446.PermissionHandlerService get permissionHandlerService =>
      get<_i446.PermissionHandlerService>();

  _i674.AiModelService get aiModelService => get<_i674.AiModelService>();

  _i752.DevicePermissionRepository get devicePermissionRepository =>
      get<_i752.DevicePermissionRepository>();

  _i619.SecureStorageService get secureStorageService =>
      get<_i619.SecureStorageService>();

  _i152.SharedPrefsService get sharedPrefsService =>
      get<_i152.SharedPrefsService>();

  _i449.AppInfoService get appInfoService => get<_i449.AppInfoService>();

  _i1034.StorageFacade get storageFacade => get<_i1034.StorageFacade>();

  _i587.UrlLauncherService get urlLauncherService =>
      get<_i587.UrlLauncherService>();

  _i694.AiModelFiles get aiModelFiles => get<_i694.AiModelFiles>();

  _i147.LocalAiFeatureSettings get localAiFeatureSettings =>
      get<_i147.LocalAiFeatureSettings>();

  _i16.DeviceNotificationRepository get deviceNotificationRepository =>
      get<_i16.DeviceNotificationRepository>();

  _i147.LocalAiChatSettings get localAiChatSettings =>
      get<_i147.LocalAiChatSettings>();

  _i603.LanguageSettingsRepository get languageSettingsRepository =>
      get<_i603.LanguageSettingsRepository>();

  _i63.LocalCompressionAlertRepository get localCompressionAlertRepository =>
      get<_i63.LocalCompressionAlertRepository>();

  _i468.SharedNotificationPreferences get sharedNotificationPreferences =>
      get<_i468.SharedNotificationPreferences>();

  _i472.AboutAppRepsitory get aboutAppRepsitory =>
      get<_i472.AboutAppRepsitory>();

  _i147.LocalAiModelSettings get localAiModelSettings =>
      get<_i147.LocalAiModelSettings>();

  _i147.LocalAiMediaSettings get localAiMediaSettings =>
      get<_i147.LocalAiMediaSettings>();

  _i147.LocalAiRuntimeSettings get localAiRuntimeSettings =>
      get<_i147.LocalAiRuntimeSettings>();

  _i219.LocalUpdateCheckRepository get localUpdateCheckRepository =>
      get<_i219.LocalUpdateCheckRepository>();

  _i986.DeviceAiModelRepository get deviceAiModelRepository =>
      get<_i986.DeviceAiModelRepository>();

  _i683.InitializeNotificationsUseCase get initializeNotificationsUseCase =>
      get<_i683.InitializeNotificationsUseCase>();

  _i984.OpenNotificationChannelUseCase get openNotificationChannelUseCase =>
      get<_i984.OpenNotificationChannelUseCase>();

  _i213.ReadNotificationAccessUseCase get readNotificationAccessUseCase =>
      get<_i213.ReadNotificationAccessUseCase>();

  _i238.RequestNotificationAccessUseCase get requestNotificationAccessUseCase =>
      get<_i238.RequestNotificationAccessUseCase>();

  _i539.ShowNotificationUseCase get showNotificationUseCase =>
      get<_i539.ShowNotificationUseCase>();

  _i289.ShowNotification get showNotification => get<_i289.ShowNotification>();

  _i147.LocalAiToolSettings get localAiToolSettings =>
      get<_i147.LocalAiToolSettings>();

  _i147.LocalAiSearchSettings get localAiSearchSettings =>
      get<_i147.LocalAiSearchSettings>();

  _i480.PrivacySettingsRepository get privacySettingsRepository =>
      get<_i480.PrivacySettingsRepository>();

  _i725.CompressionDefaultsRepository get compressionDefaultsRepository =>
      get<_i725.CompressionDefaultsRepository>();

  _i335.TelemetryConsentCoordinator get telemetryConsentCoordinator =>
      get<_i335.TelemetryConsentCoordinator>();

  _i382.NotificationInteractions get notificationInteractions =>
      get<_i382.NotificationInteractions>();

  _i907.NotificationAccessCubit get notificationAccessCubit =>
      get<_i907.NotificationAccessCubit>();

  _i53.GitHubReleaseRepository get gitHubReleaseRepository =>
      get<_i53.GitHubReleaseRepository>();

  _i17.AboutAppCubit get aboutAppCubit => get<_i17.AboutAppCubit>();

  _i254.LocalizationRepository get localizationRepository =>
      get<_i254.LocalizationRepository>();

  _i293.DeviceAiToolRepository get deviceAiToolRepository =>
      get<_i293.DeviceAiToolRepository>();

  _i636.FileAiConversationRepository get fileAiConversationRepository =>
      get<_i636.FileAiConversationRepository>();

  _i696.LocalizationCubit get localizationCubit =>
      get<_i696.LocalizationCubit>();

  _i501.LoadNotificationSettingsUseCase get loadNotificationSettingsUseCase =>
      get<_i501.LoadNotificationSettingsUseCase>();

  _i437.SaveNotificationSettingsUseCase get saveNotificationSettingsUseCase =>
      get<_i437.SaveNotificationSettingsUseCase>();

  _i369.HapticsService get hapticsService => get<_i369.HapticsService>();

  _i681.CheckAppUpdateUseCase get checkAppUpdateUseCase =>
      get<_i681.CheckAppUpdateUseCase>();

  _i384.ReadCachedReleaseUseCase get readCachedReleaseUseCase =>
      get<_i384.ReadCachedReleaseUseCase>();

  _i527.ReadInstalledReleaseUseCase get readInstalledReleaseUseCase =>
      get<_i527.ReadInstalledReleaseUseCase>();

  _i84.ReadLatestReleaseUseCase get readLatestReleaseUseCase =>
      get<_i84.ReadLatestReleaseUseCase>();

  _i117.LocalAiRuntimeRepository get localAiRuntimeRepository =>
      get<_i117.LocalAiRuntimeRepository>();

  _i119.ReleasesCubit get releasesCubit => get<_i119.ReleasesCubit>();

  _i586.DeviceAiMediaRepository get deviceAiMediaRepository =>
      get<_i586.DeviceAiMediaRepository>();

  _i648.NotificationDispatcher get notificationDispatcher =>
      get<_i648.NotificationDispatcher>();

  _i1054.LocalAiSearchRepository get localAiSearchRepository =>
      get<_i1054.LocalAiSearchRepository>();

  _i919.AiVideoAdviceRepository get aiVideoAdviceRepository =>
      get<_i919.AiVideoAdviceRepository>();

  _i489.HomeResultActionsCubit get homeResultActionsCubit =>
      get<_i489.HomeResultActionsCubit>();

  _i378.HasSavedCompressionResultUseCase get hasSavedCompressionResultUseCase =>
      get<_i378.HasSavedCompressionResultUseCase>();

  _i1004.ReadNotificationInsightsUseCase get readNotificationInsightsUseCase =>
      get<_i1004.ReadNotificationInsightsUseCase>();

  _i279.ReadNotificationInsights get readNotificationInsights =>
      get<_i279.ReadNotificationInsights>();

  _i159.CompressionNotificationService get compressionNotificationService =>
      get<_i159.CompressionNotificationService>();

  _i498.NotificationsCubit get notificationsCubit =>
      get<_i498.NotificationsCubit>();

  _i664.AiRuntimeLifecycle get aiRuntimeLifecycle =>
      get<_i664.AiRuntimeLifecycle>();

  _i60.AppUpdateService get appUpdateService => get<_i60.AppUpdateService>();

  _i906.CompressionInsightsService get compressionInsightsService =>
      get<_i906.CompressionInsightsService>();
}

class _$InjectionModule extends _i1030.InjectionModule {}
