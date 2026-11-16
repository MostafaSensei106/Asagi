import '../models/interrupted_compression_job.dart';

abstract interface class ArtifactStore {
  Future<CompressionWorkspace> create(String workspacePath);
  Future<List<InterruptedCompressionJob>> listInterrupted(String workspacePath);
  Future<void> deleteInterrupted(String workspacePath, String jobId);
  Future<int> cleanupInterrupted(String workspacePath, Duration olderThan);
}

abstract interface class CompressionWorkspace {
  String pathForAttempt(int attempt);
  Future<void> saveJobState(Map<String, Object?> state);
  Future<Map<String, dynamic>?> readJobState();
  Future<int> measure(String path);
  Future<void> discard(String path);

  /// Transfers the verified output's ownership to the caller.
  Future<void> commit();
  Future<void> dispose();
}
