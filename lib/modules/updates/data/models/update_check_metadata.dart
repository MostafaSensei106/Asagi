import 'package:json_annotation/json_annotation.dart';

part 'update_check_metadata.g.dart';

@JsonSerializable()
final class UpdateCheckMetadata {
  const UpdateCheckMetadata({
    this.nextReleaseCheck,
    this.lastNotifiedReleaseId,
  });
  factory UpdateCheckMetadata.fromJson(Map<String, dynamic> json) =>
      _$UpdateCheckMetadataFromJson(json);
  final String? nextReleaseCheck;
  final int? lastNotifiedReleaseId;
  Map<String, dynamic> toJson() => _$UpdateCheckMetadataToJson(this);
}
