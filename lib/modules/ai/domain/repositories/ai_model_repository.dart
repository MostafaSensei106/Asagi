import '../entities/ai_models.dart';

abstract interface class AiModelRepository {
  Future<List<AiModelChoice>> list();
  Future<void> install(String id, {required void Function(int) onProgress});
  void cancelInstall();
  Future<AiModelChoice?> importModel();
  Future<AiDocument?> pickImportFile();
  Future<AiModelChoice> importFile(AiDocument document);
  Future<void> select(AiModelChoice model);
  Future<void> remove(AiModelChoice model);
}
