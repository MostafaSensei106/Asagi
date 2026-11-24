import '../../../../core/network/api_client_config.dart';

/// GitHub's GET endpoint uses path parameters, not a JSON request body.
final class LatestReleaseRequest {
  const LatestReleaseRequest({
    this.owner = ApiClientConfig.githubOwner,
    this.repository = ApiClientConfig.githubRepository,
  });
  final String owner;
  final String repository;
}
