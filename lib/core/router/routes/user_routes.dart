part of '../app_router.dart';

// ---------------------------------------------------------------------------
// Growth.
// ---------------------------------------------------------------------------

/// Prompt to rate Asagi on the store after a successful compression.
final class RateAppRoute extends AppRoute {
  const RateAppRoute();

  @override
  AppRouteMetadata get metadata => const AppRouteMetadata(
    name: 'rate_app',
    path: '/rate',
    section: AppRouteSection.help,
    icon: AsagiIcons.rateApp,
  );
}

/// Share sheet for recommending Asagi to friends.
final class ShareAppRoute extends AppRoute {
  const ShareAppRoute();

  @override
  AppRouteMetadata get metadata => const AppRouteMetadata(
    name: 'share_app',
    path: '/share',
    section: AppRouteSection.help,
    icon: AsagiIcons.shareApp,
  );
}
