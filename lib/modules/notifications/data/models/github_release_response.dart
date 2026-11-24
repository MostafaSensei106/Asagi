import 'package:freezed_annotation/freezed_annotation.dart';

part 'github_release_response.freezed.dart';
part 'github_release_response.g.dart';

@freezed
sealed class GitHubReleaseResponse with _$GitHubReleaseResponse {
  const factory GitHubReleaseResponse({
    required int id,
    @JsonKey(name: 'tag_name') required String tagName,
    @JsonKey(name: 'html_url') required String htmlUrl,
    String? name,
    String? body,
    @JsonKey(name: 'published_at') DateTime? publishedAt,
    @Default(false) bool draft,
    @Default(false) bool prerelease,
  }) = _GitHubReleaseResponse;

  factory GitHubReleaseResponse.fromJson(Map<String, dynamic> json) =>
      _$GitHubReleaseResponseFromJson(json);
}
