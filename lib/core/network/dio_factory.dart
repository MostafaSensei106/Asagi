import 'dart:developer' as developer;

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import 'api_client_config.dart';
import 'dio_retry_interceptor.dart';
import 'network_timeouts.dart';

abstract final class DioFactory {
  static Dio create({
    required String baseUrl,
    Map<String, Object?> headers = const {},
    List<Interceptor> interceptors = const [],
  }) {
    final dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: NetworkTimeouts.connect,
        receiveTimeout: NetworkTimeouts.receive,
        sendTimeout: NetworkTimeouts.send,
        headers: headers,
      ),
    );
    dio.interceptors.addAll(interceptors);
    if (kDebugMode) {
      dio.interceptors.add(
        InterceptorsWrapper(
          onResponse: (response, handler) {
            developer.log('Response: ${response.statusCode}', name: 'network');
            handler.next(response);
          },
          onError: (error, handler) {
            developer.log(
              'Request: ${error.type.name} (${error.response?.statusCode})',
              name: 'network',
            );
            handler.next(error);
          },
        ),
      );
    }
    return dio;
  }

  static Dio github({bool retryTransientFailures = true}) {
    final dio = create(
      baseUrl: ApiClientConfig.githubBaseUrl,
      headers: {
        'Accept': 'application/vnd.github+json',
        'X-GitHub-Api-Version': '2026-03-10',
        'User-Agent': 'Asagi',
      },
    );
    if (retryTransientFailures) {
      dio.interceptors.insert(0, DioRetryInterceptor(dio: dio));
    }
    return dio;
  }
}
