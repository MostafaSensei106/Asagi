import '../entities/ai_models.dart';

abstract interface class AiConversationRepository {
  Future<List<AiMessage>> load();
  Future<void> save(List<AiMessage> messages);
  Future<void> clear();
}
