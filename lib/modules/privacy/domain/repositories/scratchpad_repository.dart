abstract interface class ScratchpadRepository {
  Future<String> createWorkspace({bool temporary = true});
  void release(String path);
  Future<void> clear();
}
