// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'latest_release_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LatestReleaseRequest _$LatestReleaseRequestFromJson(
  Map<String, dynamic> json,
) => LatestReleaseRequest(
  owner: json['owner'] as String? ?? ApiClientConfig.githubOwner,
  repository: json['repository'] as String? ?? ApiClientConfig.githubRepository,
);

Map<String, dynamic> _$LatestReleaseRequestToJson(
  LatestReleaseRequest instance,
) => <String, dynamic>{
  'owner': instance.owner,
  'repository': instance.repository,
};
