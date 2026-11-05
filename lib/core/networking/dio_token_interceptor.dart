import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:kaisel/kaisel.dart';

import '../constants/api_header.dart';
import '../constants/api_routes.dart';
import '../constants/http_status_code.dart';
import '../constants/security_configs.dart';
import '../extensions/extensions.dart';
import '../router/app_router.dart';
import '../services/session/user_session_service.dart';
import '../widgets/feedback/dialog/dialog_component.dart';

final class DioTokenInterceptor extends Interceptor {
  DioTokenInterceptor(this._sessionService);

  final UserSessionServiceBase _sessionService;

  static bool _isHandling401 = false;

  @visibleForTesting
  static void resetHandlingForTesting() {
    _isHandling401 = false;
  }

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    if (_isHandling401) {
      return handler.reject(
        DioException(
          requestOptions: options,
          type: DioExceptionType.cancel,
          message: 'Request blocked pre-flight. Session is expiring.',
        ),
      );
    }

    if (options.extra[SecurityConfigs.requireToken] == false) {
      return handler.next(options);
    }

    final token = await _sessionService.getToken();
    if (token == null || token.isEmpty) {
      unawaited(_handleSessionExpiry());

      return handler.reject(
        DioException(
          requestOptions: options,
          type: DioExceptionType.cancel,
          message: 'No session token. Redirecting to login.',
        ),
      );
    }

    options.headers[ApiHeader.authorization] = 'Bearer $token';
    handler.next(options);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    final requestPath = err.requestOptions.path;
    final requiresToken =
        err.requestOptions.extra[SecurityConfigs.requireToken] != false;

    if (err.response?.statusCode == HttpStatusCodes.unauthorized &&
        requiresToken == true &&
        !requestPath.contains(ApiRoutes.authLoginPath)) {
      if (_isHandling401) {
        return handler.reject(
          DioException(
            requestOptions: err.requestOptions,
            type: DioExceptionType.cancel,
            message: 'Session Expired. Aborting remaining requests silently.',
          ),
        );
      }

      await _handleSessionExpiry();

      return handler.reject(err);
    }

    handler.next(err);
  }

  /// Clears the current session, informs the user, and sends them back to the
  /// login screen. Guaranteed to run at most once at a time so concurrent
  /// failed requests don't stack dialogs or navigations.
  Future<void> _handleSessionExpiry() async {
    if (_isHandling401) return;

    _isHandling401 = true;

    try {
      await _sessionService.clearUserSession();

      final context = AppRouter.navigatorKey.currentContext;
      if (context == null || !context.mounted) return;

      final router = context.router<AppRoute>();

      // Already on the login screen: nothing to redirect to and no reason to
      // show the expired-session dialog a second time.
      if (router.current is LoginRoute) return;

      final title = context.localeKeys.sessionExpired;
      final body = context.localeKeys.sessionExpiredDescription;

      await DialogComponent.showInfo(
        context: context,
        title: title,
        body: body,
      );

      if (!context.mounted) return;

      await router.set([const LoginRoute()]);
    } finally {
      _isHandling401 = false;
    }
  }
}
