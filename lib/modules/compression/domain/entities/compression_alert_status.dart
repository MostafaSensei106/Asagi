import 'package:freezed_annotation/freezed_annotation.dart';

part 'compression_alert_status.freezed.dart';

@freezed
sealed class CompressionAlertStatus with _$CompressionAlertStatus {
  const factory CompressionAlertStatus({
    DateTime? digestSince,
    String? interruptedSignature,
  }) = _CompressionAlertStatus;
}
