import 'package:freezed_annotation/freezed_annotation.dart';
part 'ai_settings.freezed.dart';

@freezed
sealed class AiChatSettings with _$AiChatSettings {
  const factory AiChatSettings({
    @Default(true) bool streaming,
    @Default(true) bool showThinking,
    @Default(0.7) double temperature,
    @Default(1024) int maxTokens,
  }) = _AiChatSettings;
}

@freezed
sealed class AiMediaSettings with _$AiMediaSettings {
  const factory AiMediaSettings({
    @Default(true) bool analyzeThumbnails,
    @Default(true) bool transcribeAudio,
    @Default(2) int sampleRate,
    @Default(true) bool autoLang,
  }) = _AiMediaSettings;
}

@freezed
sealed class AiFeatureSettings with _$AiFeatureSettings {
  const factory AiFeatureSettings({
    @Default(true) bool bitrateRecommender,
    @Default(false) bool sceneKeyframes,
    @Default(false) bool noiseReduction,
    @Default(false) bool silentTrim,
    @Default(false) bool facePriority,
  }) = _AiFeatureSettings;
}

@freezed
sealed class AiToolSettings with _$AiToolSettings {
  const factory AiToolSettings({
    @Default(true) bool trimTool,
    @Default(true) bool audioExtractTool,
    @Default(true) bool metadataStripTool,
    @Default(true) bool confirmDestructive,
    @Default(true) bool sandboxScratchpad,
  }) = _AiToolSettings;
}

@freezed
sealed class AiSearchSettings with _$AiSearchSettings {
  const factory AiSearchSettings({
    @Default(false) bool semanticIndexing,
    @Default(true) bool indexWhileCharging,
  }) = _AiSearchSettings;
}

@freezed
sealed class AiRuntimeSettings with _$AiRuntimeSettings {
  const factory AiRuntimeSettings({
    @Default('auto') String backend,
    @Default(4) int threadCount,
    @Default(1024) int memoryBudgetMb,
    @Default(false) bool lowPowerMode,
  }) = _AiRuntimeSettings;
}

@freezed
sealed class AiModelSettings with _$AiModelSettings {
  const factory AiModelSettings({
    String? chatModelId,
    String? embeddingModelId,
  }) = _AiModelSettings;
}
