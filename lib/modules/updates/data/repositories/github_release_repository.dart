import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/constants/types/type_def.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/network/api_executor/api_executor.dart';
import '../../../../core/network/request_deduplicator.dart';
import '../../../../core/services/shared_prefs/base_pref_storage_service.dart';
import '../../../../core/utils/result/result.dart';
import '../../domain/entities/app_release.dart';
import '../../domain/repositories/release_repository.dart';
import '../data_sources/github_releases_api.dart';
import '../mappers/release_mapper.dart';
import '../models/github_release_response.dart';
import '../models/latest_release_request.dart';

@LazySingleton(as: ReleaseRepository)
final class GitHubReleaseRepository implements ReleaseRepository {
  GitHubReleaseRepository(this._api, this._requests, this._storage);
  final GitHubReleasesApi _api;
  final RequestDeduplicator _requests;
  final BasePrefStorageService _storage;
  RateLimitFailure? _rateLimit;

  Future<GitHubReleaseResponse> _remember(
    Future<GitHubReleaseResponse> request,
  ) async {
    final model = await request;
    final entity = model.toEntity();
    if (entity != null) {
      // A cache write must not turn a successful remote response into a failure.
      try {
        await _storage.setData(
          key: 'release.cache.${entity.version}',
          value: model.toJson(),
        );
      } on Object {
        /* Remote data remains usable. */
      }
    }
    return model;
  }

  Future<ApiResult<AppRelease?>?> _blocked() async {
    if (_rateLimit == null) {
      final saved = await _storage.getData<String>(
        key: 'release.rateLimitUntil',
      );
      final until = DateTime.tryParse(saved ?? '');
      if (until != null) {
        _rateLimit = RateLimitFailure('E_RATE_LIMIT', retryAt: until);
      }
    }
    final limit = _rateLimit;
    if (limit != null &&
        limit.retryAt?.isAfter(DateTime.now().toUtc()) == true) {
      return Result.failure(error: limit);
    }
    return null;
  }

  Future<ApiResult<AppRelease?>> _record(
    Future<ApiResult<AppRelease?>> request,
  ) async {
    final result = await request;
    await result.when<Future<void>>(
      success: (_) async {},
      failure: (failure) async {
        if (failure is RateLimitFailure) {
          _rateLimit = failure;
          final until = failure.retryAt;
          if (until != null) {
            try {
              await _storage.setData(
                key: 'release.rateLimitUntil',
                value: until.toUtc().toIso8601String(),
              );
            } on Object {
              /* Keep the in-memory rate limit if persistence is unavailable. */
            }
          }
        }
      },
    );
    return result;
  }

  @override
  Future<AppRelease?> cached(String version) async {
    try {
      final json = await _storage.getData<Map<String, dynamic>>(
        key: 'release.cache.$version',
      );
      return json == null
          ? null
          : GitHubReleaseResponse.fromJson(json).toEntity();
    } on Object {
      return null;
    }
  }

  @override
  Future<ApiResult<AppRelease?>> byVersion(String version) async {
    final blocked = await _blocked();
    if (blocked != null) return blocked;
    const request = LatestReleaseRequest();
    for (final tag in ['v$version', version]) {
      final result = await _record(
        _requests.run(
          key: 'github:${request.owner}/${request.repository}/tag:$tag',
          action: () =>
              ApiExecutor.executeMapped<GitHubReleaseResponse, AppRelease?>(
                action: () => _remember(
                  _api.byTag(
                    request.owner,
                    request.repository,
                    tag,
                    CancelToken(),
                  ),
                ),
                mapper: (model) => model.toEntity(),
                emptyResponses: const {404: null},
              ),
        ),
      );
      if (result is Failure<AppRelease?, Failures>) return result;
      final release = result.getOrThrow();
      if (release != null) {
        return Result.success(
          data: release.version == version ? release : null,
        );
      }
    }
    return const Result.success(data: null);
  }

  @override
  Future<ApiResult<AppRelease?>> latest() async {
    final blocked = await _blocked();
    if (blocked != null) return blocked;
    const request = LatestReleaseRequest();
    return _record(
      _requests.run(
        key: 'github:${request.owner}/${request.repository}/latest',
        action: () =>
            ApiExecutor.executeMapped<GitHubReleaseResponse, AppRelease?>(
              action: () => _remember(
                _api.latest(request.owner, request.repository, CancelToken()),
              ),
              mapper: (model) => model.toEntity(),
              emptyResponses: const {404: null},
            ),
      ),
    );
  }
}
