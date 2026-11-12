/// Model lifecycle boundary for the on-device AI feature.
///
/// A future LiteRT-LM adapter can implement this without exposing package
/// types to settings pages or the rest of the app.
abstract interface class BaseAiModelService {
  /// Whether this build currently has a usable inference engine.
  bool get isAvailable;

  /// Models already stored on this device.
  Future<List<String>> installedModelIds();

  /// Install a model from the supported in-app catalog.
  Future<void> installCatalogModel(String modelId);

  /// Copy and validate a user-selected local model file.
  Future<void> importLocalModel(String filePath);

  /// Choose one installed model for the next AI operation.
  Future<void> activateModel(String modelId);

  /// Release model memory without removing its installed file.
  Future<void> unloadActiveModel();
}
