import 'package:dio/dio.dart';

import '../error/failures.dart';

abstract final class NetworkFailureMapper {
  static Failures map(Object error) {
    if (error is! DioException) {
      return const ServerFailure('E_INVALID_RESPONSE');
    }
    return switch (error.type) {
      DioExceptionType.connectionTimeout ||
      DioExceptionType.sendTimeout ||
      DioExceptionType.receiveTimeout => const TimeoutFailure(
        'E_NETWORK_TIMEOUT',
      ),
      DioExceptionType.cancel => const RequestCancelledFailure(
        'E_REQUEST_CANCELLED',
      ),
      DioExceptionType.connectionError => const NetworkFailure(
        'E_NETWORK_UNAVAILABLE',
      ),
      DioExceptionType.badResponse => _response(error.response),
      _ => const ServerFailure('E_NETWORK_RESPONSE'),
    };
  }

  static Failures _response(Response<dynamic>? response) {
    if (response?.statusCode == 429 ||
        (response?.statusCode == 403 &&
            (response?.headers.value('x-ratelimit-remaining') == '0' ||
                response?.headers.value('retry-after') != null))) {
      final retry = int.tryParse(response?.headers.value('retry-after') ?? '');
      final reset = int.tryParse(
        response?.headers.value('x-ratelimit-reset') ?? '',
      );
      return RateLimitFailure(
        'E_RATE_LIMIT',
        retryAt: retry != null
            ? DateTime.now().toUtc().add(Duration(seconds: retry))
            : reset == null
            ? null
            : DateTime.fromMillisecondsSinceEpoch(reset * 1000, isUtc: true),
      );
    }
    return const ServerFailure('E_SERVER_RESPONSE');
  }
}
