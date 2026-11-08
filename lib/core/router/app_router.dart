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

final class _MainShell extends StatelessWidget {
  const _MainShell();

  @override
  Widget build(BuildContext context) {
    return KaiselShell<AppRoute>(
      branchInitials: const [
        HomeTabRoute(),
        CompressionHistoryRoute(),
        SettingsRoute(),
      ],
      pageBuilder: AppRouter._buildPage,
      chromeBuilder: (context, activeBranch, branchContent, switchBranch) {
        final items = [
          AppNavItem(
            label: context.localeKeys.homeTitle,
            icon: ZumiIcons.home,
            iosSystemImage: 'house',
          ),
          AppNavItem(
            label: context.localeKeys.compressionHistoryTitle,
            icon: ZumiIcons.compressionHistory,
            iosSystemImage: 'clock.arrow.circlepath',
          ),
          AppNavItem(
            label: context.localeKeys.settingsTitle,
            icon: ZumiIcons.settings,
            iosSystemImage: 'gearshape',
          ),
        ];
        final isRootPage = context.shell().current.stack.length == 1;
        final isWide = MediaQuery.sizeOf(context).width >= 840;
        final content = isRootPage
            ? _SwipeableBranch(
                activeBranch: activeBranch,
                branchCount: items.length,
                onSwitch: switchBranch,
                child: branchContent,
              )
            : branchContent;
        if (isWide) {
          return Scaffold(
            body: Row(
              children: [
                if (isRootPage)
                  NavigationRail(
                    selectedIndex: activeBranch,
                    onDestinationSelected: switchBranch,
                    labelType: NavigationRailLabelType.all,
                    destinations: [
                      for (final item in items)
                        NavigationRailDestination(
                          icon: Icon(item.icon),
                          selectedIcon: Icon(item.activeIcon ?? item.icon),
                          label: Text(item.label),
                        ),
                    ],
                  ),
                Expanded(child: content),
              ],
            ),
          );
        }
        return Scaffold(
          body: content,
          bottomNavigationBar: isRootPage
              ? BottomNavBarComponent(
                  currentIndex: activeBranch,
                  items: items,
                  onTap: switchBranch,
                )
              : null,
        );
      },
    );
  }
}

/// Switches root tabs after a deliberate horizontal gesture without rebuilding
/// their independent navigation stacks.
final class _SwipeableBranch extends StatefulWidget {
  const _SwipeableBranch({
    required this.activeBranch,
    required this.branchCount,
    required this.onSwitch,
    required this.child,
  });

  final int activeBranch;
  final int branchCount;
  final ValueChanged<int> onSwitch;
  final Widget child;

  @override
  State<_SwipeableBranch> createState() => _SwipeableBranchState();
}

final class _SwipeableBranchState extends State<_SwipeableBranch>
    with SingleTickerProviderStateMixin {
  double _distance = 0;
  late final AnimationController _slide = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 260),
    value: 1,
  );
  double _enterFrom = 0;

  @override
  void didUpdateWidget(_SwipeableBranch oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.activeBranch == widget.activeBranch) return;
    final isRtl = Directionality.of(context) == TextDirection.rtl;
    _enterFrom = widget.activeBranch > oldWidget.activeBranch ? 1 : -1;
    if (isRtl) _enterFrom = -_enterFrom;
    _slide.forward(from: 0);
  }

  @override
  void dispose() {
    _slide.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragStart: (_) => _distance = 0,
      onHorizontalDragUpdate: (details) => _distance += details.delta.dx,
      onHorizontalDragCancel: () => _distance = 0,
      onHorizontalDragEnd: (details) {
        final velocity = details.primaryVelocity ?? 0;
        final direction = _distance.abs() >= 64
            ? _distance.sign
            : velocity.abs() >= 350
            ? velocity.sign
            : 0;
        _distance = 0;
        if (direction == 0) return;

        final isRtl = Directionality.of(context) == TextDirection.rtl;
        final step = direction > 0 ? (isRtl ? 1 : -1) : (isRtl ? -1 : 1);
        final next = widget.activeBranch + step;
        if (next >= 0 && next < widget.branchCount) widget.onSwitch(next);
      },
      child: ClipRect(
        child: AnimatedBuilder(
          animation: _slide,
          child: widget.child,
          builder: (context, child) => FractionalTranslation(
            translation: Offset(
              _enterFrom * (1 - Curves.easeOutCubic.transform(_slide.value)),
              0,
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
