abstract interface class StorageRepository {
  Future<List<String>> interruptedJobIds();

  Future<void> cleanInterruptedJobs();
}
