part of '../app_router.dart';

// ---------------------------------------------------------------------------
// Plans and purchases.
// ---------------------------------------------------------------------------

/// Comparison of the available plans and what each one unlocks.
final class PlansRoute extends AppRoute {
  const PlansRoute();

  @override
  AppRouteMetadata get metadata => const AppRouteMetadata(
    name: 'plans',
    path: '/plans',
    section: AppRouteSection.plans,
    icon: ZumiIcons.plans,
    showInSettingsHub: true,
  );
}

/// Detailed benefits, limits, and pricing for a single plan.
final class PlanDetailsRoute extends AppRoute {
  const PlanDetailsRoute({this.planId});

  /// Identifier of the plan being inspected, when already known.
  final String? planId;

  @override
  List<Object?> get props => [planId];

  @override
  AppRouteMetadata get metadata => const AppRouteMetadata(
    name: 'plans_details',
    path: '/plans/details',
    section: AppRouteSection.plans,
    icon: ZumiIcons.planDetails,
  );
}

/// Supported ways to pay, including store billing and local methods.
final class PurchaseMethodsRoute extends AppRoute {
  const PurchaseMethodsRoute();

  @override
  AppRouteMetadata get metadata => const AppRouteMetadata(
    name: 'plans_methods',
    path: '/plans/methods',
    section: AppRouteSection.plans,
    icon: ZumiIcons.purchaseMethods,
    showInSettingsHub: true,
  );
}

/// Re-applies a purchase made on another device or store account.
final class RestorePurchasesRoute extends AppRoute {
  const RestorePurchasesRoute();

  @override
  AppRouteMetadata get metadata => const AppRouteMetadata(
    name: 'plans_restore',
    path: '/plans/restore',
    section: AppRouteSection.plans,
    icon: ZumiIcons.restorePurchases,
    showInSettingsHub: true,
  );
}

// ---------------------------------------------------------------------------
// Growth.
// ---------------------------------------------------------------------------

/// Prompt to rate Zumi on the store after a successful compression.
final class RateAppRoute extends AppRoute {
  const RateAppRoute();

  @override
  AppRouteMetadata get metadata => const AppRouteMetadata(
    name: 'rate_app',
    path: '/rate',
    section: AppRouteSection.help,
    icon: ZumiIcons.rateApp,
  );
}

/// Share sheet for recommending Zumi to friends.
final class ShareAppRoute extends AppRoute {
  const ShareAppRoute();

  @override
  AppRouteMetadata get metadata => const AppRouteMetadata(
    name: 'share_app',
    path: '/share',
    section: AppRouteSection.help,
    icon: ZumiIcons.shareApp,
  );
}
