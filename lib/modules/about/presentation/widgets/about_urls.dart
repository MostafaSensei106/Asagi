import '../../../../core/network/api_client_config.dart';

abstract final class AboutUrls {
  static const repository = ApiClientConfig.githubRepositoryUrl;
  static const readme = '$repository/blob/main/README.md';
  static const issues = '$repository/issues';
  static const latestRelease = '$repository/releases';

  // Set this only when the project's official donation page is published.
  static const String? donations = null;
}
