part of 'app_router.dart';

/// Three independently mounted destinations with native page swiping.
final class _MainShell extends StatelessWidget {
  const _MainShell();

  @override
  Widget build(BuildContext context) => MultiBlocSignalProvider(
    providers: [
      BlocSignalProvider.value(value: getIt<NotificationsCubit>()),
      BlocSignalProvider.value(value: getIt<NotificationAccessCubit>()),
      BlocSignalProvider(
        create: (_) => CompressionCubit(
          getIt<VideoCompressionRepository>(),
          defaults: getIt<SettingsRepository<CompressionDefaults>>(),
          advisor: getIt<VideoAdviceRepository>(),
        ),
      ),
    ],
    child: KaiselBranchedShell.specs(
      branches: const [
        KaiselBranchSpec<AppRoute>(
          initial: HomeTabRoute(),
          builder: AppRouter._buildPage,
          pageWrapper: AppRouter._cupertinoPage,
        ),
        KaiselBranchSpec<AppRoute>(
          initial: CompressionHistoryRoute(),
          builder: AppRouter._buildPage,
          pageWrapper: AppRouter._cupertinoPage,
        ),
        KaiselBranchSpec<AppRoute>(
          initial: SettingsRoute(),
          builder: AppRouter._buildPage,
          pageWrapper: AppRouter._cupertinoPage,
        ),
      ],
      branchContentBuilder: (context, activeBranch, branches, switchBranch) =>
          NotificationCoordinator(
            child: _ShellChrome(
              activeBranch: activeBranch,
              branches: branches,
              switchBranch: switchBranch,
            ),
          ),
      chromeBuilder: (context, activeBranch, content, switchBranch) => content,
    ),
  );
}

final class _ShellChrome extends HookWidget {
  const _ShellChrome({
    required this.activeBranch,
    required this.branches,
    required this.switchBranch,
  });

  final int activeBranch;
  final List<Widget> branches;
  final ValueChanged<int> switchBranch;

  @override
  Widget build(BuildContext context) {
    final pageController = usePageController(initialPage: activeBranch);

    // Single source of truth for the highlighted tab (rail / bottom bar).
    final selected = useMemoized(() => ValueNotifier<int>(activeBranch));
    useEffect(() => selected.dispose, [selected]);

    // True while a tap-triggered animation is running, so the PageView
    // callbacks don't fight with it. The id protects against fast re-taps.
    final isProgrammatic = useRef(false);
    final lastTapId = useRef(0);

    final isRootPage = context.shell().current.stack.length == 1;
    final isWide = MediaQuery.sizeOf(context).width >= 840;

    final items = [
      AppNavItem(label: context.localeKeys.kuymo, icon: KuymoIcons.home),
      AppNavItem(
        label: context.localeKeys.compressionHistory,
        icon: KuymoIcons.compressionHistory,
      ),
      AppNavItem(label: context.localeKeys.settings, icon: KuymoIcons.settings),
    ];

    // External branch changes must move the PageView after this build frame.
    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!context.mounted || isProgrammatic.value) return;
        if (pageController.hasClients &&
            pageController.page?.round() != activeBranch) {
          pageController.jumpToPage(activeBranch);
        }
        selected.value = activeBranch;
      });
      return null;
    }, [activeBranch]);

    Future<void> goToBranch(int index) async {
      if (!pageController.hasClients || index == selected.value) return;
      final tapId = ++lastTapId.value;
      final distance = (index - (pageController.page ?? index)).abs();

      isProgrammatic.value = true;
      selected.value = index;

      // Don't scroll through (and flash) the pages in between.
      if (distance > 1.5) {
        pageController.jumpToPage(index);
      } else {
        await pageController.animateToPage(
          index,
          duration: 250.ms,
          curve: Curves.easeOutCubic,
        );
      }

      if (tapId != lastTapId.value) return; // a newer tap took over
      isProgrammatic.value = false;
      if (context.mounted) switchBranch(index);
    }

    bool onScroll(ScrollNotification n) {
      if (n.metrics.axis == Axis.horizontal &&
          n.depth == 0 &&
          n is ScrollEndNotification &&
          !isProgrammatic.value) {
        final settled = pageController.page?.round();
        if (settled != null && settled != activeBranch) {
          switchBranch(settled);
        }
      }
      return false;
    }

    final content = NotificationListener<ScrollNotification>(
      onNotification: onScroll,
      child: PageView(
        controller: pageController,
        physics: isRootPage
            ? const PageScrollPhysics()
            : const NeverScrollableScrollPhysics(),
        onPageChanged: (index) {
          if (isProgrammatic.value) return;
          selected.value = index;
        },
        children: [for (final page in branches) _KeepAlivePage(child: page)],
      ),
    );

    if (isWide) {
      return Scaffold(
        body: Row(
          children: [
            if (isRootPage)
              ValueListenableBuilder<int>(
                valueListenable: selected,
                builder: (_, index, _) => NavigationRail(
                  selectedIndex: index,
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
              ),
            Expanded(child: content),
          ],
        ),
      );
    }

    return Scaffold(
      body: content,
      bottomNavigationBar: isRootPage
          ? ValueListenableBuilder<int>(
              valueListenable: selected,
              builder: (_, index, _) => BottomNavBarComponent(
                currentIndex: index,
                items: items,
                onTap: goToBranch,
              ),
            )
          : null,
    );
  }
}

/// Keeps each tab's state alive inside the PageView.
final class _KeepAlivePage extends StatefulWidget {
  const _KeepAlivePage({required this.child});

  final Widget child;

  @override
  State<_KeepAlivePage> createState() => _KeepAlivePageState();
}

final class _KeepAlivePageState extends State<_KeepAlivePage>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return widget.child;
  }
}
