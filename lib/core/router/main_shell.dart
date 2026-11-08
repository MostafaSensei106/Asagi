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
    final navVisible = useMemoized(() => ValueNotifier<bool>(true));
    final selectedTab = useMemoized(() => ValueNotifier<int>(activeBranch));
    useEffect(() => navVisible.dispose, [navVisible]);
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
      navVisible.value = true;
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
            navVisible.value = true;
            switchBranch(settledPage);
          }
        }
        if (isRootPage &&
            notification.metrics.axis == Axis.vertical &&
            notification is UserScrollNotification) {
          if (notification.direction == ScrollDirection.reverse) {
            navVisible.value = false;
          } else if (notification.direction == ScrollDirection.forward) {
            navVisible.value = true;
          }
        }
        return false;
      },
      child: PageView.custom(
        controller: controller,
        allowImplicitScrolling: true,
        onPageChanged: (index) {
          selectedTab.value = index;
          navVisible.value = true;
        },
        physics: isRootPage
            ? const PageScrollPhysics()
            : const NeverScrollableScrollPhysics(),
        childrenDelegate: SliverChildListDelegate(
          [
            for (final page in pages)
              KeepAlive(keepAlive: true, child: RepaintBoundary(child: page)),
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
              visibility: navVisible,
              selectedTab: selectedTab,
              items: items,
              onTap: goToBranch,
            )
          : null,
    );
  }
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
    required this.visibility,
    required this.selectedTab,
    required this.items,
    required this.onTap,
  });

  final ValueListenable<bool> visibility;
  final ValueListenable<int> selectedTab;
  final List<AppNavItem> items;
  final ValueChanged<int> onTap;

  @override
  Widget build(BuildContext context) {
    final isVisible = useValueListenable(visibility);
    final currentIndex = useValueListenable(selectedTab);
    return IgnorePointer(
      ignoring: !isVisible,
      child: Animate(
        target: isVisible ? 0 : 1,
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
