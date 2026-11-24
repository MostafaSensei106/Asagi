import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/github_release_response.dart';

part 'github_releases_api.g.dart';

@RestApi()
abstract class GitHubReleasesApi {
  factory GitHubReleasesApi(Dio dio, {String? baseUrl}) = _GitHubReleasesApi;

  @GET('/repos/{owner}/{repository}/releases/latest')
  Future<GitHubReleaseResponse> latest(
    @Path('owner') String owner,
    @Path('repository') String repository,
    @CancelRequest() CancelToken cancelToken,
  );
  @GET('/repos/{owner}/{repository}/releases/tags/{tag}')
  Future<GitHubReleaseResponse> byTag(
    @Path('owner') String owner,
    @Path('repository') String repository,
    @Path('tag') String tag,
    @CancelRequest() CancelToken cancelToken,
  );
}
