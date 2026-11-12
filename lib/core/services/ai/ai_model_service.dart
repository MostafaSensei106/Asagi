import 'package:flutter_edge_ai/flutter_edge_ai.dart';
import 'package:flutter_edge_ai_litertlm/flutter_edge_ai_litertlm.dart';
import 'package:injectable/injectable.dart';

import 'interface/base_ai_model_service.dart';

/// Registers LiteRT-LM when an AI operation first requests it.
@LazySingleton(as: BaseAiModelService)
final class AiModelService implements BaseAiModelService {
  Future<void>? _initialization;
  InferenceModel? _activeModel;

  @override
  Future<void> initialize() => _initialization ??= _initialize();

  Future<void> _initialize() async {
    try {
      await FlutterEdgeAi.initialize(
        inferenceEngines: const [LiteRtLmEngine()],
        embeddingBackends: const [LiteRtEmbeddingBackend()],
      );
    } catch (_) {
      _initialization = null;
      rethrow;
    }
  }

  @override
  Future<ModelCatalog> catalog() async {
    await initialize();
    return FlutterEdgeAi.catalog;
  }

  @override
  Future<List<String>> installedModelIds() async {
    await initialize();
    return FlutterEdgeAi.listInstalledModels();
  }

  @override
  Future<bool> isModelInstalled(String modelId) async {
    await initialize();
    return FlutterEdgeAi.isModelInstalled(modelId);
  }

  @override
  Future<InferenceInstallationBuilder> modelInstaller(
    ModelType modelType,
  ) async {
    await initialize();
    return FlutterEdgeAi.installModel(
      modelType: modelType,
      fileType: ModelFileType.litertlm,
    );
  }

  @override
  Future<EmbeddingInstallationBuilder> embeddingInstaller() async {
    await initialize();
    return FlutterEdgeAi.installEmbedder();
  }

  @override
  Future<InferenceInstallation> installCatalogModel(
    InferenceVariant variant, {
    void Function(int progress)? onProgress,
    CancelToken? cancelToken,
    bool activate = true,
  }) async {
    await initialize();
    final builder = FlutterEdgeAi.installModelFromCatalog(variant);
    if (onProgress != null) builder.withProgress(onProgress);
    if (cancelToken != null) builder.withCancelToken(cancelToken);
    return builder.install(activate: activate);
  }

  @override
  Future<InferenceInstallation> importLocalModel(
    String filePath, {
    required ModelType modelType,
    bool activate = true,
  }) async {
    final builder = await modelInstaller(modelType);
    return builder.fromFile(filePath).install(activate: activate);
  }

  @override
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
  }) async {
    await initialize();
    final model = await FlutterEdgeAi.getActiveModel(
      maxTokens: maxTokens,
      preferredBackend: preferredBackend,
      preferredVisionBackend: preferredVisionBackend,
      preferredAudioBackend: preferredAudioBackend,
      supportImage: supportImage,
      supportAudio: supportAudio,
      maxNumImages: maxNumImages,
      multimodalOrder: multimodalOrder,
      enableSpeculativeDecoding: enableSpeculativeDecoding,
      activationDataType: activationDataType,
      maxConcurrentSessions: maxConcurrentSessions,
    );
    _activeModel = model;
    return model;
  }

  @override
  Future<InferenceModel> openModel(
    InferenceModelSpec spec, {
    int? maxTokens,
    PreferredBackend? preferredBackend,
    bool? supportImage,
    bool? supportAudio,
  }) async {
    await initialize();
    return FlutterEdgeAi.openModel(
      spec,
      maxTokens: maxTokens,
      preferredBackend: preferredBackend,
      supportImage: supportImage,
      supportAudio: supportAudio,
    );
  }

  @override
  Future<EmbeddingModel> activeEmbedder({
    PreferredBackend? preferredBackend,
    bool supportImage = false,
    bool supportAudio = false,
  }) async {
    await initialize();
    return FlutterEdgeAi.getActiveEmbedder(
      preferredBackend: preferredBackend,
      supportImage: supportImage,
      supportAudio: supportAudio,
    );
  }

  @override
  Future<void> unloadActiveModel() async {
    await _activeModel?.close();
    _activeModel = null;
  }

  @override
  Future<void> uninstallModel(String modelId) async {
    await initialize();
    await FlutterEdgeAi.uninstallModel(modelId);
  }

  @override
  Future<void> uninstallEmbedder() async {
    await initialize();
    await FlutterEdgeAi.uninstallEmbedder();
  }

  @override
  Future<StorageStats> storageInfo() async {
    await initialize();
    return FlutterEdgeAi.getStorageInfo();
  }

  @override
  Future<int> cleanupStorage() async {
    await initialize();
    return FlutterEdgeAi.cleanupStorage();
  }

  @override
  Future<void> dispose() async {
    if (_initialization == null) return;
    await _initialization;
    await unloadActiveModel();
    await FlutterEdgeAi.dispose();
    _initialization = null;
  }
}
