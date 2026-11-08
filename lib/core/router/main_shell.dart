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
    final navVisible = useState(true);
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
      if (index == activeBranch || !controller.hasClients) return;
      controller.animateToPage(
        index,
        duration: 280.ms,
        curve: Curves.easeOutCubic,
      );
    }

    final pages = (branchContent as IndexedStack).children;
    final content = NotificationListener<UserScrollNotification>(
      onNotification: (notification) {
        if (!isRootPage || notification.metrics.axis != Axis.vertical) {
          return false;
        }
        if (notification.direction == ScrollDirection.reverse) {
          navVisible.value = false;
        } else if (notification.direction == ScrollDirection.forward) {
          navVisible.value = true;
        }
        return false;
      },
      child: PageView.custom(
        controller: controller,
        physics: isRootPage
            ? const PageScrollPhysics()
            : const NeverScrollableScrollPhysics(),
        onPageChanged: (index) {
          navVisible.value = true;
          switchBranch(index);
        },
        childrenDelegate: SliverChildListDelegate([
          for (final page in pages) KeepAlive(keepAlive: true, child: page),
        ], addAutomaticKeepAlives: false),
      ),
    );

    if (isWide) {
      return Scaffold(
        body: Row(
          children: [
            if (isRootPage)
              NavigationRail(
                selectedIndex: activeBranch,
                onDestinationSelected: goToBranch,
                labelType: NavigationRailLabelType.all,
                destinations: [
                  for (final item in items)
                    NavigationRailDestination(
                      icon: Icon(item.icon),
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
      extendBody: true,
      body: content,
      bottomNavigationBar: isRootPage
          ? IgnorePointer(
              ignoring: !navVisible.value,
              child: Animate(
                target: navVisible.value ? 0 : 1,
                effects: [
                  SlideEffect(
                    begin: Offset.zero,
                    end: const Offset(0, 1),
                    duration: 220.ms,
                    curve: Curves.easeOutCubic,
                  ),
                  FadeEffect(begin: 1, end: 0, duration: 220.ms),
                ],
                child: BottomNavBarComponent(
                  currentIndex: activeBranch,
                  items: items,
                  onTap: goToBranch,
                ),
              ),
            )
          : null,
    );
  }
}
