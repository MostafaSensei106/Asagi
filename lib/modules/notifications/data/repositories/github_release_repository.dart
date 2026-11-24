import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/constants/types/type_def.dart';
import '../../../../core/network/api_executor/api_executor.dart';
import '../../../../core/network/request_deduplicator.dart';
import '../../logic/entities/app_release.dart';
import '../../logic/repositories/release_repository.dart';
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
          ApiExecutor.executeMapped<GitHubReleaseResponse, AppRelease?>(
            action: () =>
                _api.latest(request.owner, request.repository, CancelToken()),
            mapper: (model) => model.toEntity(),
            emptyResponses: const {404: null},
          ),
    );
  }
}
