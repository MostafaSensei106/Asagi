import 'package:injectable/injectable.dart';

import '../../../services/shared_prefs/base_pref_storage_service.dart';
import '../../domain/entities/privacy_settings.dart';
import '../../domain/repositories/settings_repository.dart';
import 'local_settings_repository.dart';

@LazySingleton(as: SettingsRepository<PrivacySettings>)
final class PrivacySettingsRepository
    extends LocalSettingsRepository<PrivacySettings> {
  PrivacySettingsRepository(BasePrefStorageService storage)
    : super(
        storage: storage,
        key: 'privacy.preferences.v1',
        defaults: const PrivacySettings(),
        decode: (json) => PrivacySettings(
          crashReports: json['crashReports'] as bool? ?? false,
          performanceTelemetry: json['performanceTelemetry'] as bool? ?? false,
          preserveMetadata: json['preserveMetadata'] as bool? ?? true,
          autoWipeTempCache: json['autoWipeTempCache'] as bool? ?? true,
          saveChatHistory: json['saveChatHistory'] as bool? ?? false,
        ),
        encode: (value) => {
          'crashReports': value.crashReports,
          'performanceTelemetry': value.performanceTelemetry,
          'preserveMetadata': value.preserveMetadata,
          'autoWipeTempCache': value.autoWipeTempCache,
          'saveChatHistory': value.saveChatHistory,
        },
      );
  @override
  @disposeMethod
  Future<void> dispose() => super.dispose();
}
