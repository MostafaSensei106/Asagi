import '../entities/compression_alert_status.dart';

abstract interface class CompressionAlertRepository {
  Future<CompressionAlertStatus> read();
  Future<void> save(CompressionAlertStatus status);
}
