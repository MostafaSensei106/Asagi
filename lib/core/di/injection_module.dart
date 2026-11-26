import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../modules/ai/domain/entities/ai_settings.dart';
import '../../modules/compression/data/repositories/device_video_compression_repository.dart';
import '../../modules/compression/domain/repositories/video_compression_repository.dart';
import '../../modules/notifications/application/notification_dispatcher.dart';
import '../../modules/notifications/domain/repositories/notification_delivery.dart';
import '../../modules/updates/data/data_sources/github_releases_api.dart';
import '../compression/domain/contracts/artifact_store.dart';
import '../compression/infrastructure/storage/file_artifact_store.dart';
import '../network/dio_factory.dart';
import '../preferences/application/media_work_scheduler.dart';
import '../preferences/domain/entities/privacy_settings.dart';
import '../preferences/domain/repositories/settings_repository.dart';
import '../services/shared_prefs/base_pref_storage_service.dart';
import '../services/shared_prefs/storage_facade.dart';

@module
abstract class InjectionModule {
  @lazySingleton
  NotificationDelivery notificationDelivery(
    NotificationDispatcher dispatcher,
  ) => dispatcher;
  @lazySingleton
  @Named('github')
  Dio get githubDio => DioFactory.github();

  @lazySingleton
  GitHubReleasesApi githubReleasesApi(@Named('github') Dio dio) =>
      GitHubReleasesApi(dio);

  @lazySingleton
  VideoCompressionRepository videoCompressionRepository(
    SettingsRepository<PrivacySettings> privacy,
    MediaWorkScheduler scheduler,
    SettingsRepository<AiFeatureSettings> aiFeatures,
  ) => DeviceVideoCompressionRepository(
    privacy: privacy,
    scheduler: scheduler,
    aiFeatures: aiFeatures,
  );

  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  @preResolve
  Future<PackageInfo> get packageInfo => PackageInfo.fromPlatform();

  @lazySingleton
  FlutterSecureStorage get secureStorage => const FlutterSecureStorage();

  @lazySingleton
  SharePlus get sharePlus => SharePlus.instance;

  @lazySingleton
  StorageFacade storageFacade(BasePrefStorageService service) =>
      service as StorageFacade;

  @lazySingleton
  ArtifactStore get artifactStore => const FileArtifactStore();
}
