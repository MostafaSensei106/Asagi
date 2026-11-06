part of '../app_router.dart';

/// Root destination of the signed-in app.
final class MainRouteEntry extends AppRoute {
  const MainRouteEntry();

  @override
  AppRouteMetadata get metadata => const AppRouteMetadata(
    name: 'home',
    path: '/',
    section: AppRouteSection.core,
    icon: ZumiIcons.home,
  );
}

/// First-run introduction to Zumi's compression workflow and privacy model.
final class OnboardingRoute extends AppRoute {
  const OnboardingRoute();

  @override
  AppRouteMetadata get metadata => const AppRouteMetadata(
    name: 'onboarding',
    path: '/onboarding',
    section: AppRouteSection.core,
    icon: ZumiIcons.onboarding,
  );
}
