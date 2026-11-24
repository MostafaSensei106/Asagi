import 'package:json_annotation/json_annotation.dart';

import '../../../../core/network/api_client_config.dart';

part 'latest_release_request.g.dart';

/// These fields are passed as GET path parameters, never as a JSON request body.
@JsonSerializable()
final class LatestReleaseRequest {
  const LatestReleaseRequest({
    this.owner = ApiClientConfig.githubOwner,
    this.repository = ApiClientConfig.githubRepository,
  });

  factory LatestReleaseRequest.fromJson(Map<String, dynamic> json) =>
      _$LatestReleaseRequestFromJson(json);
  final String owner;
  final String repository;

  Map<String, dynamic> toJson() => _$LatestReleaseRequestToJson(this);
}
