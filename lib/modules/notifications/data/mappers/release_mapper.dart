import 'package:pub_semver/pub_semver.dart';

import '../../../../core/network/api_client_config.dart';
import '../../domain/models/app_release.dart';
import '../models/github_release_response.dart';

extension GitHubReleaseResponseMapping on GitHubReleaseResponse {
  AppRelease? toEntity() {
    if (draft || prerelease || publishedAt == null) return null;
    final Version parsedVersion;
    try {
      parsedVersion = Version.parse(tagName.replaceFirst(RegExp(r'^v'), ''));
    } on FormatException {
      return null;
    }
    if (parsedVersion.isPreRelease) {
      return null;
    }
    final releaseUrl = Uri.tryParse(htmlUrl);
    if (releaseUrl == null ||
        releaseUrl.scheme != 'https' ||
        releaseUrl.host != 'github.com' ||
        releaseUrl.userInfo.isNotEmpty ||
        releaseUrl.hasPort ||
        !releaseUrl.path.startsWith(
          '/${ApiClientConfig.githubOwner}/${ApiClientConfig.githubRepository}/releases/tag/',
        )) {
      return null;
    }
    return AppRelease(
      id: id,
      version: parsedVersion.toString(),
      title: name?.trim().isNotEmpty == true ? name! : tagName,
      notes: body ?? '',
      url: releaseUrl,
      publishedAt: publishedAt!,
    );
  }
}
