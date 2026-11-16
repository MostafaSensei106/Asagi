import 'compression_preferences.dart';

/// Durable metadata for a job that was interrupted by process death.
final class InterruptedCompressionJob {
  const InterruptedCompressionJob({
    required this.id,
    required this.sourcePath,
    required this.sourceName,
    required this.targetMb,
    required this.preferences,
    required this.phase,
    required this.attempt,
    required this.updatedAt,
    required this.sourceAvailable,
  });

  final String id;
  final String sourcePath;
  final String sourceName;
  final double targetMb;
  final CompressionPreferences preferences;
  final String phase;
  final int attempt;
  final DateTime updatedAt;
  final bool sourceAvailable;
}
