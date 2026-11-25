import 'package:injectable/injectable.dart';

import '../../../../core/preferences/data/repositories/local_settings_repository.dart';
import '../../../../core/preferences/domain/repositories/settings_repository.dart';
import '../../../../core/services/shared_prefs/base_pref_storage_service.dart';
import '../../domain/entities/ai_settings.dart';

@LazySingleton(as: SettingsRepository<AiChatSettings>)
final class LocalAiChatSettings
    extends LocalSettingsRepository<AiChatSettings> {
  LocalAiChatSettings(BasePrefStorageService storage)
    : super(
        storage: storage,
        key: 'ai_chat_settings.v1',
        defaults: const AiChatSettings(),
        validate: (v) {
          if (!v.temperature.isFinite ||
              v.temperature < 0 ||
              v.temperature > 2 ||
              v.maxTokens < 1 ||
              v.maxTokens > 32768) {
            throw ArgumentError('E_AI_SAMPLING');
          }
        },
        decode: (json) => AiChatSettings(
          streaming: json['streaming'] as bool? ?? true,
          showThinking: json['showThinking'] as bool? ?? true,
          temperature: (json['temperature'] as num?)?.toDouble() ?? 0.7,
          maxTokens: json['maxTokens'] as int? ?? 1024,
        ),
        encode: (v) => {
          'streaming': v.streaming,
          'showThinking': v.showThinking,
          'temperature': v.temperature,
          'maxTokens': v.maxTokens,
        },
      );
  @override
  @disposeMethod
  Future<void> dispose() => super.dispose();
}

@LazySingleton(as: SettingsRepository<AiMediaSettings>)
final class LocalAiMediaSettings
    extends LocalSettingsRepository<AiMediaSettings> {
  LocalAiMediaSettings(BasePrefStorageService storage)
    : super(
        storage: storage,
        key: 'ai_media_settings.v1',
        defaults: const AiMediaSettings(),
        validate: (v) {
          if (v.sampleRate < 1 || v.sampleRate > 60) {
            throw ArgumentError('E_AI_SAMPLE_RATE');
          }
        },
        decode: (json) => AiMediaSettings(
          analyzeThumbnails: json['analyzeThumbnails'] as bool? ?? true,
          transcribeAudio: json['transcribeAudio'] as bool? ?? true,
          sampleRate: json['sampleRate'] as int? ?? 2,
          autoLang: json['autoLang'] as bool? ?? true,
        ),
        encode: (v) => {
          'analyzeThumbnails': v.analyzeThumbnails,
          'transcribeAudio': v.transcribeAudio,
          'sampleRate': v.sampleRate,
          'autoLang': v.autoLang,
        },
      );
  @override
  @disposeMethod
  Future<void> dispose() => super.dispose();
}

@LazySingleton(as: SettingsRepository<AiFeatureSettings>)
final class LocalAiFeatureSettings
    extends LocalSettingsRepository<AiFeatureSettings> {
  LocalAiFeatureSettings(BasePrefStorageService storage)
    : super(
        storage: storage,
        key: 'ai_feature_settings.v1',
        defaults: const AiFeatureSettings(),
        decode: (json) => AiFeatureSettings(
          bitrateRecommender: json['bitrateRecommender'] as bool? ?? true,
          sceneKeyframes: json['sceneKeyframes'] as bool? ?? false,
          noiseReduction: json['noiseReduction'] as bool? ?? false,
          silentTrim: json['silentTrim'] as bool? ?? false,
          facePriority: json['facePriority'] as bool? ?? false,
        ),
        encode: (v) => {
          'bitrateRecommender': v.bitrateRecommender,
          'sceneKeyframes': v.sceneKeyframes,
          'noiseReduction': v.noiseReduction,
          'silentTrim': v.silentTrim,
          'facePriority': v.facePriority,
        },
      );
  @override
  @disposeMethod
  Future<void> dispose() => super.dispose();
}

@LazySingleton(as: SettingsRepository<AiToolSettings>)
final class LocalAiToolSettings
    extends LocalSettingsRepository<AiToolSettings> {
  LocalAiToolSettings(BasePrefStorageService storage)
    : super(
        storage: storage,
        key: 'ai_tool_settings.v1',
        defaults: const AiToolSettings(),
        decode: (json) => AiToolSettings(
          trimTool: json['trimTool'] as bool? ?? true,
          audioExtractTool: json['audioExtractTool'] as bool? ?? true,
          metadataStripTool: json['metadataStripTool'] as bool? ?? true,
          confirmDestructive: json['confirmDestructive'] as bool? ?? true,
          sandboxScratchpad: json['sandboxScratchpad'] as bool? ?? true,
        ),
        encode: (v) => {
          'trimTool': v.trimTool,
          'audioExtractTool': v.audioExtractTool,
          'metadataStripTool': v.metadataStripTool,
          'confirmDestructive': v.confirmDestructive,
          'sandboxScratchpad': v.sandboxScratchpad,
        },
      );
  @override
  @disposeMethod
  Future<void> dispose() => super.dispose();
}

@LazySingleton(as: SettingsRepository<AiSearchSettings>)
final class LocalAiSearchSettings
    extends LocalSettingsRepository<AiSearchSettings> {
  LocalAiSearchSettings(BasePrefStorageService storage)
    : super(
        storage: storage,
        key: 'ai_search_settings.v1',
        defaults: const AiSearchSettings(),
        decode: (json) => AiSearchSettings(
          semanticIndexing: json['semanticIndexing'] as bool? ?? false,
          indexWhileCharging: json['indexWhileCharging'] as bool? ?? true,
        ),
        encode: (v) => {
          'semanticIndexing': v.semanticIndexing,
          'indexWhileCharging': v.indexWhileCharging,
        },
      );
  @override
  @disposeMethod
  Future<void> dispose() => super.dispose();
}

@LazySingleton(as: SettingsRepository<AiRuntimeSettings>)
final class LocalAiRuntimeSettings
    extends LocalSettingsRepository<AiRuntimeSettings> {
  LocalAiRuntimeSettings(BasePrefStorageService storage)
    : super(
        storage: storage,
        key: 'ai_runtime_settings.v1',
        defaults: const AiRuntimeSettings(),
        validate: (v) {
          if (!{'auto', 'gpu', 'cpu'}.contains(v.backend) ||
              v.threadCount < 1 ||
              v.threadCount > 8 ||
              !{512, 1024, 2048, 4096}.contains(v.memoryBudgetMb)) {
            throw ArgumentError('E_AI_RESOURCES');
          }
        },
        decode: (json) => AiRuntimeSettings(
          backend: json['backend'] as String? ?? 'auto',
          threadCount: json['threadCount'] as int? ?? 4,
          memoryBudgetMb: json['memoryBudgetMb'] as int? ?? 1024,
          lowPowerMode: json['lowPowerMode'] as bool? ?? false,
        ),
        encode: (v) => {
          'backend': v.backend,
          'threadCount': v.threadCount,
          'memoryBudgetMb': v.memoryBudgetMb,
          'lowPowerMode': v.lowPowerMode,
        },
      );
  @override
  @disposeMethod
  Future<void> dispose() => super.dispose();
}

@LazySingleton(as: SettingsRepository<AiModelSettings>)
final class LocalAiModelSettings
    extends LocalSettingsRepository<AiModelSettings> {
  LocalAiModelSettings(BasePrefStorageService storage)
    : super(
        storage: storage,
        key: 'ai_model_settings.v1',
        defaults: const AiModelSettings(),
        decode: (json) => AiModelSettings(
          chatModelId: json['chatModelId'] as String?,
          embeddingModelId: json['embeddingModelId'] as String?,
        ),
        encode: (v) => {
          'chatModelId': v.chatModelId,
          'embeddingModelId': v.embeddingModelId,
        },
      );
  @override
  @disposeMethod
  Future<void> dispose() => super.dispose();
}
