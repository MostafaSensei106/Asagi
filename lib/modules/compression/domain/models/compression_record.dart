import 'package:freezed_annotation/freezed_annotation.dart';

part 'compression_record.freezed.dart';

@freezed
sealed class CompressionRecord with _$CompressionRecord {
  const factory CompressionRecord({
    required String path,
    required String sourceName,
    required int bytes,
    required DateTime createdAt,
    @Default('') String id,
    String? warning,
    @Default(0) int originalBytes,
    @Default(0) double targetMb,
    @Default(0) int width,
    @Default(0) int height,
    @Default(0) int attempts,
  }) = _CompressionRecord;

  const CompressionRecord._();

  String get jobId => id.isEmpty ? path.split(RegExp(r'[/\\]')).last : id;
}
