abstract interface class ArtifactStore {
  Future<CompressionWorkspace> create(String workspacePath);
  Future<int> cleanupInterrupted(String workspacePath, Duration olderThan);
}

abstract interface class CompressionWorkspace {
  String pathForAttempt(int attempt);
  Future<int> measure(String path);
  Future<void> discard(String path);

  /// Transfers the verified output's ownership to the caller.
  Future<void> commit();
  Future<void> dispose();
}
