part of '../app_router.dart';

/// Sign-in destination, optionally returning to [redirectTarget] on success.
final class LoginRoute extends AppRoute {
  const LoginRoute({this.redirectTarget});

  final AppRoute? redirectTarget;

  @override
  List<Object?> get props => [redirectTarget];

  @override
  AppRouteMetadata get metadata => const AppRouteMetadata(
    name: 'login',
    path: '/login',
    section: AppRouteSection.core,
    icon: ZumiIcons.login,
  );
}
