import '../entities/ai_models.dart';

abstract interface class AiToolRepository {
  Future<AiDocument?> pick();
  Future<String> execute(
    AiDocument document,
    AiToolOperation operation, {
    int startMs = 0,
    int endMs = 0,
  });
  Future<void> cancel();
}
