import 'package:injectable/injectable.dart';

import 'interface/base_ai_model_service.dart';

/// Safe placeholder until a compatible on-device runtime is integrated.
///
/// The registration is lazy, so opening Settings never loads a model or a
/// native library. Replace this adapter when the runtime is ready.
@LazySingleton(as: BaseAiModelService)
final class AiModelService implements BaseAiModelService {
  @override
  bool get isAvailable => false;

  @override
  Future<List<String>> installedModelIds() async => const [];

  @override
  Future<void> installCatalogModel(String modelId) =>
      Future<void>.error(_unavailable());

  @override
  Future<void> importLocalModel(String filePath) =>
      Future<void>.error(_unavailable());

  @override
  Future<void> activateModel(String modelId) =>
      Future<void>.error(_unavailable());

  @override
  Future<void> unloadActiveModel() => Future<void>.error(_unavailable());

  UnsupportedError _unavailable() =>
      UnsupportedError('On-device AI models are not available in this build.');
}
