import '../entities/ai_cancellation.dart';
import '../entities/ai_models.dart';

abstract interface class AiRuntimeRepository {
  Stream<AiReplyDelta> reply(
    List<AiMessage> history,
    String prompt, {
    AiDocument? attachment,
    AiDocument? toolDocument,
    bool structured = false,
    AiCancellation? token,
  });
  Future<void> cancel();
  Future<void> unload();
  Future<int> benchmark();
  Future<void> dispose();
  void releaseWhenIdle();
}
