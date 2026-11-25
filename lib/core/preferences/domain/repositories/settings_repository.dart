/// A single durable preference group, shared by UI and application services.
abstract interface class SettingsRepository<T> {
  T get current;
  bool get recovered;
  Stream<T> get changes;
  Future<T> load();
  Future<T> update(T Function(T current) change);
  Future<T> reset();
  Future<void> dispose();
}

final class UnsupportedSettingsVersion implements Exception {
  const UnsupportedSettingsVersion(this.version);
  final int version;
}
