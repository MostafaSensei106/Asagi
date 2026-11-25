import 'dart:async';

import 'package:kaisel/kaisel.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/design_system/tokens/tokens.dart';
import '../../../../core/constants/kuymo_icons.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/services/haptics/haptics_service.dart';
import '../../../../core/widgets/widgets.dart';

/// First-run onboarding experience introducing Kuymo's on-device compression
/// workflow, privacy guarantee, and hardware performance.
final class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

final class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onPageChanged(int index) {
    setState(() => _currentPage = index);
  }

  void _finishOnboarding() {
    unawaited(AppHaptics.button());
    if (Navigator.of(context).canPop()) {
      Navigator.of(context).pop();
    } else {
      unawaited(context.replaceTop(const MainRouteEntry()));
    }
  }

  void _nextPage() {
    if (_currentPage < 2) {
      unawaited(
        _pageController.nextPage(
          duration: const Duration(milliseconds: 320),
          curve: Curves.easeInOutCubic,
        ),
      );
    } else {
      _finishOnboarding();
    }
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.colorScheme;
    final l10n = context.localeKeys;

    final slides = [
      _OnboardingSlide(
        icon: KuymoIcons.videoSelect,
        shape: ExpressiveIconShape.gem,
        title: l10n.welcomeToKuymo,
        subtitle:
            l10n.learnHowKuymoCompressesYourVideosWithoutEverLeavingYourPhone,
        tagline: l10n.compareTheBeforeAndAfterSizeThenSaveOrShareTheResult,
        chips: [
          l10n.losslessVisualQuality,
          l10n.upTo90PercentSizeReduction,
          l10n.instantPreview,
        ],
      ),
      _OnboardingSlide(
        icon: KuymoIcons.privacy,
        shape: ExpressiveIconShape.heart,
        title: l10n.compressVideosPrivatelyOnYourDevice,
        subtitle: l10n.onDeviceProcessingLocalLogsAndOptionalCrashReports,
        tagline: l10n
            .zeroCloudUploadsYourVideosAndPersonalMemoriesNeverLeaveYourDeviceHardware,
        chips: [l10n.fullyOffline, l10n.noTracking, l10n.zeroCloudServers],
      ),
      _OnboardingSlide(
        icon: KuymoIcons.aiRuntime,
        shape: ExpressiveIconShape.burst,
        title: l10n.nativeEngineSpeed,
        subtitle: l10n.chooseResolutionBitrateAndOutputFormatBeforeYouStart,
        tagline: l10n.nativeEngineDescription,
        chips: [l10n.h264AndHevc, l10n.av1Support, l10n.batchQueuing],
      ),
    ];

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.large,
                vertical: AppSpacing.small,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const BrandLogo(size: 36),
                  if (_currentPage < slides.length - 1)
                    TextButtonComponent(
                      label: l10n.cancel,
                      onPressed: _finishOnboarding,
                    )
                  else
                    const SizedBox(height: 48),
                ],
              ),
            ),
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: slides.length,
                onPageChanged: _onPageChanged,
                itemBuilder: (context, index) {
                  final slide = slides[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppSpacing.xLarge,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ExpressiveIcon(
                          icon: slide.icon,
                          shape: slide.shape,
                          size: 96,
                          backgroundColor: colorScheme.primaryContainer,
                          foregroundColor: colorScheme.onPrimaryContainer,
                        ),
                        const Gap(AppSpacing.xxLarge),
                        Text(
                          slide.title,
                          textAlign: TextAlign.center,
                          style: context.textTheme.headlineMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Gap(AppSpacing.medium),
                        Text(
                          slide.subtitle,
                          textAlign: TextAlign.center,
                          style: context.textTheme.bodyLarge?.copyWith(
                            color: colorScheme.onSurfaceVariant,
                            height: 1.4,
                          ),
                        ),
                        const Gap(AppSpacing.large),
                        CardComponent.outlined(
                          padding: const EdgeInsets.symmetric(
                            horizontal: AppSpacing.large,
                            vertical: AppSpacing.medium,
                          ),
                          child: Text(
                            slide.tagline,
                            textAlign: TextAlign.center,
                            style: context.textTheme.bodyMedium?.copyWith(
                              color: colorScheme.primary,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        const Gap(AppSpacing.large),
                        Wrap(
                          spacing: AppSpacing.small,
                          runSpacing: AppSpacing.small,
                          alignment: WrapAlignment.center,
                          children: [
                            for (final chip in slide.chips)
                              ChipComponent(label: chip, showBorder: false),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(AppSpacing.xLarge),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      slides.length,
                      (index) => AnimatedContainer(
                        duration: const Duration(milliseconds: 250),
                        margin: const EdgeInsets.symmetric(
                          horizontal: AppSpacing.xSmall,
                        ),
                        height: 8,
                        width: _currentPage == index ? 28 : 8,
                        decoration: BoxDecoration(
                          color: _currentPage == index
                              ? colorScheme.primary
                              : colorScheme.outlineVariant,
                          borderRadius: BorderRadius.circular(AppRadii.pill),
                        ),
                      ),
                    ),
                  ),
                  const Gap(AppSpacing.large),
                  FilledButtonComponent(
                    expand: true,
                    label: _currentPage == slides.length - 1
                        ? l10n.ok
                        : l10n.continueLabel,
                    icon: _currentPage == slides.length - 1
                        ? KuymoIcons.compressionResult
                        : KuymoIcons.chevronForward,
                    onPressed: _nextPage,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

final class _OnboardingSlide {
  const _OnboardingSlide({
    required this.icon,
    required this.shape,
    required this.title,
    required this.subtitle,
    required this.tagline,
    required this.chips,
  });

  final IconData icon;
  final ExpressiveIconShape shape;
  final String title;
  final String subtitle;
  final String tagline;
  final List<String> chips;
}
