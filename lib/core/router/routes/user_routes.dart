part of '../app_router.dart';

// ---------------------------------------------------------------------------
// Growth.
// ---------------------------------------------------------------------------

/// Prompt to rate Kuymo on the store after a successful compression.
final class RateAppRoute extends AppRoute {
  const RateAppRoute();

  @override
  AppRouteMetadata get metadata => const AppRouteMetadata(
    name: 'rate_app',
    path: '/rate',
    section: AppRouteSection.help,
    icon: KuymoIcons.rateApp,
  );
}

/// Share sheet for recommending Kuymo to friends.
final class ShareAppRoute extends AppRoute {
  const ShareAppRoute();

  @override
  AppRouteMetadata get metadata => const AppRouteMetadata(
    name: 'share_app',
    path: '/share',
    section: AppRouteSection.help,
    icon: KuymoIcons.shareApp,
  );
}
