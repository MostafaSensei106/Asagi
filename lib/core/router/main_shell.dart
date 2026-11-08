part of 'app_router.dart';

/// Three independently mounted destinations with native page swiping.
final class _MainShell extends StatelessWidget {
  const _MainShell();

  @override
  Widget build(BuildContext context) => KaiselShell<AppRoute>(
    branchInitials: const [
      HomeTabRoute(),
      CompressionHistoryRoute(),
      SettingsRoute(),
    ],
    pageBuilder: AppRouter._buildPage,
    pageWrapper: AppRouter._cupertinoPage,
    chromeBuilder: (context, branch, content, switchBranch) => _ShellChrome(
      activeBranch: branch,
      branchContent: content,
      switchBranch: switchBranch,
    ),
  );
}

final class _ShellChrome extends HookWidget {
  const _ShellChrome({
    required this.activeBranch,
    required this.branchContent,
    required this.switchBranch,
  });

  final int activeBranch;
  final Widget branchContent;
  final ValueChanged<int> switchBranch;

  @override
  Widget build(BuildContext context) {
    final controller = usePageController(initialPage: activeBranch);
    final navMotion = useMemoized(_NavigationMotion.new);
    final selectedTab = useMemoized(() => ValueNotifier<int>(activeBranch));
    useEffect(() => navMotion.dispose, [navMotion]);
    useEffect(() => selectedTab.dispose, [selectedTab]);
    final isRootPage = context.shell().current.stack.length == 1;
    final isWide = MediaQuery.sizeOf(context).width >= 840;
    final items = [
      AppNavItem(label: context.localeKeys.homeTitle, icon: ZumiIcons.home),
      AppNavItem(
        label: context.localeKeys.compressionHistoryTitle,
        icon: ZumiIcons.compressionHistory,
      ),
      AppNavItem(
        label: context.localeKeys.settingsTitle,
        icon: ZumiIcons.settings,
      ),
    ];

    void goToBranch(int index) {
      if (!controller.hasClients) return;
      selectedTab.value = index;
      navMotion.show();
      unawaited(
        controller.animateToPage(
          index,
          duration: 250.ms,
          curve: Curves.easeOutCubic,
        ),
      );
    }

    final pages = (branchContent as IndexedStack).children;
    final content = NotificationListener<ScrollNotification>(
      onNotification: (notification) {
        if (notification.metrics.axis == Axis.horizontal &&
            notification is ScrollEndNotification) {
          final settledPage = controller.page?.round();
          if (settledPage != null && settledPage != activeBranch) {
            navMotion.show();
            switchBranch(settledPage);
          }
        }
        return false;
      },
      child: PageView.custom(
        controller: controller,
        allowImplicitScrolling: true,
        onPageChanged: (index) {
          selectedTab.value = index;
          navMotion.show();
        },
        physics: isRootPage
            ? const PageScrollPhysics()
            : const NeverScrollableScrollPhysics(),
        childrenDelegate: SliverChildListDelegate(
          [
            for (var index = 0; index < pages.length; index++)
              KeepAlive(
                keepAlive: true,
                child: RepaintBoundary(
                  child: NotificationListener<ScrollNotification>(
                    onNotification: (notification) {
                      if (isRootPage && index == selectedTab.value) {
                        navMotion.handle(
                          notification,
                          travelExtent:
                              72 + MediaQuery.paddingOf(context).bottom,
                        );
                      }
                      return false;
                    },
                    child: pages[index],
                  ),
                ),
              ),
          ],
          addAutomaticKeepAlives: false,
          addRepaintBoundaries: false,
          addSemanticIndexes: false,
        ),
      ),
    );

    if (isWide) {
      return Scaffold(
        body: Row(
          children: [
            if (isRootPage)
              _ShellRail(
                selectedTab: selectedTab,
                items: items,
                onTap: goToBranch,
              ),
            Expanded(child: content),
          ],
        ),
      );
    }

    return Scaffold(
      extendBody: true,
      body: content,
      bottomNavigationBar: isRootPage
          ? _ScrollAwareBottomBar(
              motion: navMotion,
              selectedTab: selectedTab,
              items: items,
              onTap: goToBranch,
            )
          : null,
    );
  }
}

/// Scroll directly controls the bar while dragging; flutter_animate completes
/// the remaining distance when the gesture ends.
final class _NavigationMotion extends ValueNotifier<_NavigationMotionState> {
  _NavigationMotion() : super(const _NavigationMotionState(0, false));

  void show() => value = const _NavigationMotionState(0, false);

  void handle(ScrollNotification notification, {required double travelExtent}) {
    if (notification.metrics.axis != Axis.vertical) return;
    if (notification is ScrollEndNotification) {
      value = _NavigationMotionState(value.progress >= 0.5 ? 1 : 0, false);
      return;
    }
    if (notification is! ScrollUpdateNotification ||
        notification.dragDetails == null) {
      return;
    }
    final metrics = notification.metrics;
    if (metrics.maxScrollExtent <= 0 || metrics.outOfRange) return;
    final delta = notification.scrollDelta;
    if (delta == null || delta == 0) return;
    final progress = (value.progress + delta / travelExtent).clamp(0.0, 1.0);
    value = _NavigationMotionState(progress, true);
  }
}

final class _NavigationMotionState {
  const _NavigationMotionState(this.progress, this.direct);

  final double progress;
  final bool direct;
}

final class _ShellRail extends HookWidget {
  const _ShellRail({
    required this.selectedTab,
    required this.items,
    required this.onTap,
  });

  final ValueListenable<int> selectedTab;
  final List<AppNavItem> items;
  final ValueChanged<int> onTap;

  @override
  Widget build(BuildContext context) => NavigationRail(
    selectedIndex: useValueListenable(selectedTab),
    onDestinationSelected: onTap,
    labelType: NavigationRailLabelType.all,
    destinations: [
      for (final item in items)
        NavigationRailDestination(
          icon: Icon(item.icon),
          label: Text(item.label),
        ),
    ],
  );
}

final class _ScrollAwareBottomBar extends HookWidget {
  const _ScrollAwareBottomBar({
    required this.motion,
    required this.selectedTab,
    required this.items,
    required this.onTap,
  });

  final ValueListenable<_NavigationMotionState> motion;
  final ValueListenable<int> selectedTab;
  final List<AppNavItem> items;
  final ValueChanged<int> onTap;

  @override
  Widget build(BuildContext context) {
    final motionState = useValueListenable(motion);
    final currentIndex = useValueListenable(selectedTab);
    return IgnorePointer(
      ignoring: motionState.progress == 1,
      child: Animate(
        autoPlay: false,
        value: motionState.direct ? motionState.progress : null,
        target: motionState.direct ? null : motionState.progress,
        effects: [
          CustomEffect(
            duration: 250.ms,
            curve: Curves.easeOutCubic,
            builder: (context, value, child) => ClipRect(
              child: Align(
                heightFactor: 1 - value,
                alignment: Alignment.bottomCenter,
                child: child,
              ),
            ),
          ),
          SlideEffect(
            begin: Offset.zero,
            end: const Offset(0, 1),
            duration: 250.ms,
            curve: Curves.easeOutCubic,
          ),
          FadeEffect(begin: 1, end: 0, duration: 250.ms),
        ],
        child: BottomNavBarComponent(
          currentIndex: currentIndex,
          items: items,
          onTap: onTap,
        ),
      ),
    );
  }
}
