// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_release_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GitHubReleaseResponse _$GitHubReleaseResponseFromJson(
  Map<String, dynamic> json,
) => GitHubReleaseResponse(
  id: (json['id'] as num).toInt(),
  tagName: json['tag_name'] as String,
  htmlUrl: json['html_url'] as String,
  name: json['name'] as String?,
  body: json['body'] as String?,
  publishedAt: json['published_at'] == null
      ? null
      : DateTime.parse(json['published_at'] as String),
  draft: json['draft'] as bool? ?? false,
  prerelease: json['prerelease'] as bool? ?? false,
);

Map<String, dynamic> _$GitHubReleaseResponseToJson(
  GitHubReleaseResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'tag_name': instance.tagName,
  'html_url': instance.htmlUrl,
  'name': instance.name,
  'body': instance.body,
  'published_at': instance.publishedAt?.toIso8601String(),
  'draft': instance.draft,
  'prerelease': instance.prerelease,
};
