import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_check_status.freezed.dart';

@freezed
sealed class UpdateCheckStatus with _$UpdateCheckStatus {
  const factory UpdateCheckStatus({
    DateTime? nextReleaseCheck,
    int? lastNotifiedReleaseId,
  }) = _UpdateCheckStatus;
}
