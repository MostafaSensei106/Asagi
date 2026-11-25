import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kuymo/core/error/failures.dart';
import 'package:kuymo/core/network/dio_factory.dart';
import 'package:kuymo/core/network/network_failure_mapper.dart';
import 'package:kuymo/core/network/request_deduplicator.dart';
import 'package:kuymo/core/utils/result/result.dart';
import 'package:kuymo/modules/updates/data/data_sources/github_releases_api.dart';
import 'package:kuymo/modules/updates/data/repositories/github_release_repository.dart';
import 'package:kuymo/modules/updates/domain/use_cases/check_app_update.dart';

import 'support/memory_preference_storage.dart';

class ResponseAdapter implements HttpClientAdapter {
  int status = 200;
  int calls = 0;
  final headers = <String, List<String>>{};
  Map<String, dynamic> body = {
    'id': 10,
    'tag_name': 'v2.0.0',
    'name': 'New codecs',
    'html_url': 'https://github.com/MostafaSensei106/Asagi/releases/tag/v2.0.0',
    'published_at': '2026-11-24T00:00:00Z',
    'body': 'Real release notes',
    'draft': false,
    'prerelease': false,
  };
  RequestOptions? request;
  Completer<void>? gate;
  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? stream,
    Future<void>? cancelFuture,
  ) async {
    calls++;
    request = options;
    await gate?.future;
    return ResponseBody.fromString(
      jsonEncode(body),
      status,
      headers: {
        Headers.contentTypeHeader: ['application/json'],
        ...headers,
      },
    );
  }

  @override
  void close({bool force = false}) {}
}

void main() {
  late Dio dio;
  late ResponseAdapter adapter;
  late GitHubReleaseRepository repository;
  late CheckAppUpdateUseCase check;
  late MemoryPreferenceStorage storage;
  setUp(() {
    dio = DioFactory.github(retryTransientFailures: false);
    adapter = ResponseAdapter();
    dio.httpClientAdapter = adapter;
    storage = MemoryPreferenceStorage();
    repository = GitHubReleaseRepository(
      GitHubReleasesApi(dio),
      RequestDeduplicator(),
      storage,
    );
    check = CheckAppUpdateUseCase(repository);
  });
  tearDown(() => dio.close());

  test('Retrofit sends path/headers and maps real GitHub fields into a domain release', () async {
    final result = await check('1.0.0');
    expect(result.isSuccess, isTrue);
    final release = result.dataOrNull!;
    expect(release.title, 'New codecs');
    expect(release.version, '2.0.0');
    expect(release.notes, 'Real release notes');
    expect(
      adapter.request!.uri.toString(),
      'https://api.github.com/repos/MostafaSensei106/Asagi/releases/latest',
    );
    expect(adapter.request!.data, isNull);
    expect(adapter.request!.headers['Accept'], 'application/vnd.github+json');
    expect(adapter.request!.headers.containsKey('Authorization'), isFalse);
  });

  test(
    'installed version fetch uses tag endpoint and caches the model',
    () async {
      final result = await repository.byVersion('2.0.0');
      expect(result.dataOrNull?.version, '2.0.0');
      expect(adapter.request!.uri.path, endsWith('/releases/tags/v2.0.0'));
      expect((await repository.cached('2.0.0'))?.notes, 'Real release notes');
      expect(await repository.cached('1.0.0'), isNull);
    },
  );
  test(
    'missing installed tag tries both tag conventions then returns empty',
    () async {
      adapter.status = 404;
      expect((await repository.byVersion('1.0.0')).isSuccess, isTrue);
      expect(adapter.calls, 2);
      expect(adapter.request!.uri.path, endsWith('/releases/tags/1.0.0'));
    },
  );
  test(
    'manual retry honors a server rate limit without another request',
    () async {
      adapter.status = 429;
      adapter.headers['retry-after'] = ['60'];
      await repository.latest();
      await repository.latest();
      expect(adapter.calls, 1);
    },
  );

  test('rate limits survive a new repository instance', () async {
    adapter.status = 429;
    adapter.headers['retry-after'] = ['60'];
    await repository.latest();
    final restored = GitHubReleaseRepository(GitHubReleasesApi(dio), RequestDeduplicator(), storage);
    expect((await restored.latest()).errorOrNull, isA<RateLimitFailure>());
    expect(adapter.calls, 1);
  });
  test('same/older versions, prereleases, drafts, invalid tags and foreign URLs do not notify', () async {
    expect((await check('2.0.0')).dataOrNull, isNull);
    expect((await check('3.0.0')).dataOrNull, isNull);
    for (final mutation in [
      {'draft': true},
      {'prerelease': true},
      {'tag_name': 'not-semver'},
      {'tag_name': 'v2.0.0-beta.1'},
      {'html_url': 'https://example.com/releases/tag/v2.0.0'},
    ]) {
      final original = Map<String, dynamic>.of(adapter.body);
      adapter.body.addAll(mutation);
      expect((await check('1.0.0')).dataOrNull, isNull);
      adapter.body = original;
    }
  });

  test(
    '404 is an empty result; server failures and rate limits stay typed',
    () async {
      adapter.status = 404;
      expect((await check('1.0.0')).isSuccess, isTrue);
      adapter.status = 503;
      expect((await check('1.0.0')).errorOrNull, isA<ServerFailure>());
      adapter.status = 429;
      adapter.headers['retry-after'] = ['60'];
      final failure = (await check('1.0.0')).errorOrNull;
      expect(failure, isA<RateLimitFailure>());
      expect((failure! as RateLimitFailure).retryAt, isNotNull);
      adapter.status = 403;
      adapter.headers['x-ratelimit-remaining'] = ['0'];
      expect((await check('1.0.0')).errorOrNull, isA<RateLimitFailure>());
    },
  );

  test('concurrent checks share a single request', () async {
    adapter.gate = Completer<void>();
    final first = check('1.0.0');
    final second = check('1.0.0');
    await Future<void>.delayed(Duration.zero);
    adapter.gate!.complete();
    expect((await first).isSuccess, isTrue);
    expect((await second).isSuccess, isTrue);
    expect(adapter.calls, 1);
  });

  test('timeouts, offline transport and cancellation are distinct', () {
    final request = RequestOptions(path: '/');
    expect(
      NetworkFailureMapper.map(
        DioException(
          requestOptions: request,
          type: DioExceptionType.connectionTimeout,
        ),
      ),
      isA<TimeoutFailure>(),
    );
    expect(
      NetworkFailureMapper.map(
        DioException(
          requestOptions: request,
          type: DioExceptionType.connectionError,
        ),
      ),
      isA<NetworkFailure>(),
    );
    expect(
      NetworkFailureMapper.map(
        DioException(requestOptions: request, type: DioExceptionType.cancel),
      ),
      isA<RequestCancelledFailure>(),
    );
  });
  test(
    'request deduplication releases failed entries before retrying',
    () async {
      final requests = RequestDeduplicator();
      final gate = Completer<int>();
      final first = requests.run(key: 'request', action: () => gate.future);
      final second = requests.run(key: 'request', action: () async => 99);
      expect(identical(first, second), isTrue);
      final failure = expectLater(first, throwsStateError);
      gate.completeError(StateError('failed'));
      await failure;
      expect(await requests.run(key: 'request', action: () async => 7), 7);
    },
  );
}
