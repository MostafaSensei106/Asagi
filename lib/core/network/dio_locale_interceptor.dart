import 'package:dio/dio.dart';

/// Locale comes from the composition root, never from a widget inside networking.
final class DioLocaleInterceptor extends Interceptor {
  DioLocaleInterceptor(this._locale);
  final String Function() _locale;
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers['Accept-Language'] = _locale();
    handler.next(options);
  }
}
