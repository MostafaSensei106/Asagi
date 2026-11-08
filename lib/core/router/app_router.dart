import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:kaisel/kaisel.dart';
import 'package:material_ui/material_ui.dart';

import '../../modules/about/about.dart';
import '../../modules/appearance/appearance.dart';
import '../../modules/compression/compression.dart';
import '../../modules/growth/growth.dart';
import '../../modules/help/help.dart';
import '../../modules/home/home.dart';
import '../../modules/language/language.dart';
import '../../modules/legal/legal.dart';
import '../../modules/notifications/notifications.dart';
import '../../modules/onboarding/onboarding.dart';
import '../../modules/plans/plans.dart';
import '../../modules/privacy/privacy.dart';
import '../../modules/settings/settings.dart';
import '../../modules/storage/storage.dart';
import '../constants/zumi_icons.dart';
import '../extensions/extensions.dart';
import '../widgets/navigation/bottom_nav_bar/bottom_nav_bar_component.dart';
import 'observers/app_navigator_observer.dart';
import 'route_metadata.dart';

part 'main_shell.dart';
part 'routes/compression_routes.dart';
part 'routes/main_routes.dart';
part 'routes/settings_info_routes.dart';
part 'routes/user_routes.dart';

/// Base type for every destination in the application.
///
/// Routes stay thin: they describe *what* a destination is, while
/// [metadata] carries the stable identifier, canonical path, section, and
/// icon used by navigation, analytics, and the settings hub.
sealed class AppRoute extends KaiselRoute {
  const AppRoute();

  /// Rich, presentation-agnostic description of this destination.
  AppRouteMetadata get metadata;

  @override
  String get routeName => metadata.name;

  @override
  String? get restorationId => props.isEmpty ? metadata.name : null;
}

final class AppRouter {
  AppRouter._();

  static final navigatorKey = GlobalKey<NavigatorState>();

  static AppRoute _initialRoute = const MainRouteEntry();

  static void setInitialRoute(AppRoute route) {
    _initialRoute = route;
  }

  static final config = KaiselRouterConfig<AppRoute>(
    navigatorKey: navigatorKey,
    initial: _initialRoute,
    observers: () => [AppNavigatorObserver()],
    builder: _buildPage,
    pageWrapper: _cupertinoPage,
  );

  static Page<Object?> _cupertinoPage(
    KaiselPageWrapperContext<AppRoute> context,
  ) => MaterialPage<Object?>(
    key: context.key,
    name: context.route.routeName,
    arguments: context.route,
    restorationId: context.route.restorationId,
    child: context.child,
  );

  static Widget _buildPage(BuildContext context, AppRoute route) =>
      switch (route) {
        // Core.
        MainRouteEntry() => const _MainShell(),
        HomeTabRoute() => const HomePage(),
        OnboardingRoute() => const OnboardingPage(),

        // Compression.
        VideoSelectRoute() => const VideoSelectPage(),
        CompressionSetupRoute() => const CompressionSetupPage(),
        CompressionProgressRoute() => const CompressionProgressPage(),
        CompressionResultRoute() => const CompressionResultPage(),
        CompressionHistoryRoute() => const CompressionHistoryPage(),

        // Settings.
        SettingsRoute() => const SettingsPage(),
        AppearanceSettingsRoute() => const AppearanceSettingsPage(),
        LanguageSettingsRoute() => const LanguageSettingsPage(),
        CompressionDefaultsRoute() => const CompressionDefaultsPage(),
        StorageSettingsRoute() => const StorageSettingsPage(),
        NotificationsSettingsRoute() => const NotificationsSettingsPage(),
        PrivacySettingsRoute() => const PrivacySettingsPage(),

        // About.
        AppInfoRoute() => const AppInfoPage(),
        DeveloperRoute() => const DeveloperPage(),
        LicensesRoute() => const LicensesPage(),

        // Legal.
        PrivacyPolicyRoute() => const PrivacyPolicyPage(),
        TermsRoute() => const TermsPage(),
        DataSafetyRoute() => const DataSafetyPage(),
        PermissionsRoute() => const PermissionsPage(),

        // Help.
        FaqRoute() => const FaqPage(),
        SupportRoute() => const SupportPage(),
        FeedbackRoute() => const FeedbackPage(),

        // Plans and purchases.
        PlansRoute() => const PlansPage(),
        PlanDetailsRoute() => const PlanDetailsPage(),
        PurchaseMethodsRoute() => const PurchaseMethodsPage(),
        RestorePurchasesRoute() => const RestorePurchasesPage(),

        // Growth.
        RateAppRoute() => const RateAppPage(),
        ShareAppRoute() => const ShareAppPage(),
      };
}
