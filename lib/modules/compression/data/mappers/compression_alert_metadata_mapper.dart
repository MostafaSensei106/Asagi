import '../../domain/entities/compression_alert_status.dart';
import '../models/compression_alert_metadata.dart';

extension CompressionAlertMetadataMapping on CompressionAlertMetadata {
  CompressionAlertStatus toEntity() => CompressionAlertStatus(
    digestSince: DateTime.tryParse(digestSince ?? ''),
    interruptedSignature: interruptedSignature,
  );
}

extension CompressionAlertStatusMapping on CompressionAlertStatus {
  CompressionAlertMetadata toModel() => CompressionAlertMetadata(
    digestSince: digestSince?.toUtc().toIso8601String(),
    interruptedSignature: interruptedSignature,
  );
}
