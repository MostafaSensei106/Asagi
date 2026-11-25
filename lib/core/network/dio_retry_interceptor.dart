import 'package:dio/dio.dart';

/// Bounded retries for idempotent reads; rate limits and cancellations propagate.
final class DioRetryInterceptor extends Interceptor {
  DioRetryInterceptor({required this.dio});
  final Dio dio;
  static const _attemptKey = 'kuymo.retryAttempt';
  static const _delays = [Duration(milliseconds: 300), Duration(seconds: 1)];

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    final request = err.requestOptions;
    final attempt = request.extra[_attemptKey] as int? ?? 0;
    final transient =
        err.type == DioExceptionType.receiveTimeout ||
        err.type == DioExceptionType.connectionTimeout ||
        (err.type == DioExceptionType.badResponse &&
            const [502, 503, 504].contains(err.response?.statusCode));
    if (request.method != 'GET' ||
        !transient ||
        attempt >= _delays.length ||
        request.cancelToken?.isCancelled == true) {
      handler.next(err);
      return;
    }
    await Future<void>.delayed(_delays[attempt]);
    if (request.cancelToken?.isCancelled == true) {
      handler.next(err);
      return;
    }
    request.extra[_attemptKey] = attempt + 1;
    try {
      handler.resolve(await dio.fetch<dynamic>(request));
    } on DioException catch (retryError) {
      handler.next(retryError);
    }
  }
}
