import '../../domain/entities/update_check_status.dart';
import '../models/update_check_metadata.dart';

extension UpdateCheckMetadataMapping on UpdateCheckMetadata {
  UpdateCheckStatus toEntity() => UpdateCheckStatus(
    nextReleaseCheck: DateTime.tryParse(nextReleaseCheck ?? ''),
    lastNotifiedReleaseId: lastNotifiedReleaseId,
  );
}

extension UpdateCheckStatusMapping on UpdateCheckStatus {
  UpdateCheckMetadata toModel() => UpdateCheckMetadata(
    nextReleaseCheck: nextReleaseCheck?.toUtc().toIso8601String(),
    lastNotifiedReleaseId: lastNotifiedReleaseId,
  );
}
