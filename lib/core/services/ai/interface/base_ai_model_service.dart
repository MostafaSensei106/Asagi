import 'package:flutter_edge_ai/flutter_edge_ai.dart';

/// Lazy gateway to the LiteRT-LM model lifecycle.
///
/// Returning SDK handles preserves access to multimodal chat, streaming,
/// tools, thinking, structured output, sessions, and embeddings.
abstract interface class BaseAiModelService {
  Future<void> initialize();

  Future<ModelCatalog> catalog();
  Future<List<String>> installedModelIds();
  Future<bool> isModelInstalled(String modelId);

  /// Supports files, assets, downloads, Hugging Face, LoRA, and cancellation.
  Future<InferenceInstallationBuilder> modelInstaller(ModelType modelType);
  Future<EmbeddingInstallationBuilder> embeddingInstaller();

  Future<InferenceInstallation> installCatalogModel(
    InferenceVariant variant, {
    void Function(int progress)? onProgress,
    CancelToken? cancelToken,
    bool activate = true,
  });

  Future<InferenceInstallation> importLocalModel(
    String filePath, {
    required ModelType modelType,
    bool activate = true,
  });

  Future<InferenceModel> activeModel({
    int? maxTokens,
    PreferredBackend? preferredBackend,
    PreferredBackend? preferredVisionBackend,
    PreferredBackend? preferredAudioBackend,
    bool? supportImage,
    bool? supportAudio,
    int? maxNumImages,
    MultimodalOrder? multimodalOrder,
    bool? enableSpeculativeDecoding,
    ActivationDataType? activationDataType,
    int? maxConcurrentSessions,
  });

  Future<InferenceModel> openModel(
    InferenceModelSpec spec, {
    int? maxTokens,
    PreferredBackend? preferredBackend,
    bool? supportImage,
    bool? supportAudio,
  });

  Future<EmbeddingModel> activeEmbedder({
    PreferredBackend? preferredBackend,
    bool supportImage = false,
    bool supportAudio = false,
  });

  Future<void> unloadActiveModel();
  Future<void> uninstallModel(String modelId);
  Future<void> uninstallEmbedder();
  Future<StorageStats> storageInfo();
  Future<int> cleanupStorage();
  Future<void> dispose();
}
