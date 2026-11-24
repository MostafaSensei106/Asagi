import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/constants/types/type_def.dart';
import '../../../../core/network/api_executor/api_executor.dart';
import '../../../../core/network/request_deduplicator.dart';
import '../../domain/models/app_release.dart';
import '../../domain/repositories/release_repository.dart';
import '../data_sources/github_releases_api.dart';
import '../mappers/release_mapper.dart';
import '../models/github_release_response.dart';
import '../models/latest_release_request.dart';

@LazySingleton(as: ReleaseRepository)
final class GitHubReleaseRepository implements ReleaseRepository {
  GitHubReleaseRepository(this._api, this._requests);
  final GitHubReleasesApi _api;
  final RequestDeduplicator _requests;

  @override
  Future<ApiResult<AppRelease?>> latest() {
    const request = LatestReleaseRequest();
    return _requests.run(
      key: 'github:${request.owner}/${request.repository}/latest',
      action: () =>
          ApiExecutor.executeMapped<GitHubReleaseResponse?, AppRelease?>(
            action: () => _fetch(request),
            mapper: (model) => model?.toEntity(),
          ),
    );
  }

  Future<GitHubReleaseResponse?> _fetch(LatestReleaseRequest request) async {
    try {
      return await _api.latest(
        request.owner,
        request.repository,
        CancelToken(),
      );
    } on DioException catch (error) {
      // GitHub uses 404 when no public release exists.
      if (error.response?.statusCode == 404) return null;
      rethrow;
    }
  }
}
