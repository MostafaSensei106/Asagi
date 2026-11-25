import '../entities/ai_models.dart';

abstract interface class AiSearchRepository {
  Future<({int documents, int bytes})> statistics();
  Future<int> selectDocuments();
  Future<void> rebuild(void Function(int done, int total) onProgress);
  Future<List<AiSearchHit>> search(String query);
  Future<void> clear();
  void cancel();
}
