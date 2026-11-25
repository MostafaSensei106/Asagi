import '../entities/ai_cancellation.dart';
import '../entities/ai_models.dart';

abstract interface class AiMediaRepository {
  Future<String> describe(AiDocument document, {AiCancellation? token});
  Future<AiDocument?> pickAttachment();
}
