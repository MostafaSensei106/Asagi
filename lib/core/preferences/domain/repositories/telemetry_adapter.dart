/// Platform diagnostics boundary; callers never send user content or paths.
abstract interface class TelemetryAdapter {
  Future<void> initialize();
  Future<void> setCrashCollection(bool enabled);
  Future<void> setPerformanceCollection(bool enabled);
  Future<void> deletePendingCrashReports();
  Future<void> recordFailure(String code, {required bool fatal});
}
