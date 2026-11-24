import 'package:json_annotation/json_annotation.dart';

part 'github_release_response.g.dart';

@JsonSerializable()
final class GitHubReleaseResponse {
  const GitHubReleaseResponse({
    required this.id,
    required this.tagName,
    required this.htmlUrl,
    this.name,
    this.body,
    this.publishedAt,
    this.draft = false,
    this.prerelease = false,
  });

  factory GitHubReleaseResponse.fromJson(Map<String, dynamic> json) =>
      _$GitHubReleaseResponseFromJson(json);

  final int id;
  @JsonKey(name: 'tag_name')
  final String tagName;
  @JsonKey(name: 'html_url')
  final String htmlUrl;
  final String? name;
  final String? body;
  @JsonKey(name: 'published_at')
  final DateTime? publishedAt;
  final bool draft;
  final bool prerelease;

  Map<String, dynamic> toJson() => _$GitHubReleaseResponseToJson(this);
}
