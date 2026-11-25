import 'package:freezed_annotation/freezed_annotation.dart';
part 'privacy_settings.freezed.dart';

@freezed
sealed class PrivacySettings with _$PrivacySettings {
  const factory PrivacySettings({
    @Default(false) bool crashReports,
    @Default(false) bool performanceTelemetry,
    @Default(true) bool preserveMetadata,
    @Default(true) bool autoWipeTempCache,
    @Default(false) bool saveChatHistory,
  }) = _PrivacySettings;
}
