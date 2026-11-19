import 'dart:async';

import 'package:kaisel/kaisel.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/asagi_icons.dart';
import '../../../../core/constants/design_system/tokens/tokens.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/widgets/widgets.dart';

/// Detailed breakdown comparing Free capabilities with Asagi Pro features.
final class PlanDetailsPage extends StatelessWidget {
  const PlanDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.localeKeys;
    final colorScheme = context.colorScheme;

    final features = [
      (
        feature: 'Maximum Output Resolution',
        free: '1080p FHD',
        pro: '4K & 8K Ultra HD',
        icon: AsagiIcons.videoSelect,
      ),
      (
        feature: 'Batch Compression Queue',
        free: '1 video at a time',
        pro: 'Unlimited parallel queue',
        icon: AsagiIcons.package,
      ),
      (
        feature: 'Advanced Codecs (HEVC & AV1)',
        free: 'H.264 only',
        pro: 'H.264, HEVC, AV1 & VP9',
        icon: AsagiIcons.compressionSetup,
      ),
      (
        feature: 'HDR & 10-Bit Color Depth',
        free: 'Standard 8-Bit SDR',
        pro: 'Full HDR10 & Dolby Vision',
        icon: AsagiIcons.onboarding,
      ),
      (
        feature: 'Custom Bitrate & Two-Pass',
        free: 'Preset profiles',
        pro: 'Granular bitrate & CRF',
        icon: AsagiIcons.compressionDefaults,
      ),
      (
        feature: 'Hardware Acceleration Priority',
        free: 'Standard priority',
        pro: 'Neural engine & GPU priority',
        icon: AsagiIcons.aiRuntime,
      ),
      (
        feature: 'Loyalty Monthly Savings',
        free: 'None',
        pro: 'Up to 20% renewal discount',
        icon: AsagiIcons.plans,
      ),
    ];

    return Scaffold(
      appBar: SidePageAppBarComponent(title: l10n.planDetails),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.large,
            vertical: AppSpacing.medium,
          ),
          children: [
            CardComponent.filled(
              padding: const EdgeInsets.all(AppSpacing.large),
              child: Row(
                children: [
                  ExpressiveIcon(
                    icon: AsagiIcons.plans,
                    shape: ExpressiveIconShape.gem,
                    size: 52,
                    backgroundColor: colorScheme.primaryContainer,
                    foregroundColor: colorScheme.onPrimaryContainer,
                  ),
                  const Gap.horizontal(AppSpacing.large),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          l10n.planDetails,
                          style: context.textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Gap(AppSpacing.xSmall),
                        Text(
                          l10n.benefitsLimitsAndPricingForThisPlan,
                          style: context.textTheme.bodySmall?.copyWith(
                            color: colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Gap(AppSpacing.xLarge),
            CardComponent.outlined(
              padding: const EdgeInsets.all(AppSpacing.large),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            l10n.asagiProTitle,
                            style: context.textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Complete creator & power-user toolkit',
                            style: context.textTheme.bodySmall?.copyWith(
                              color: colorScheme.onSurfaceVariant,
                            ),
                          ),
                        ],
                      ),
                      const ChipComponent(
                        label: 'Recommended',
                        showBorder: false,
                      ),
                    ],
                  ),
                  const Gap(AppSpacing.large),
                  FilledButtonComponent(
                    expand: true,
                    label: 'View Plans & Upgrade',
                    icon: AsagiIcons.plans,
                    onPressed: () =>
                        unawaited(context.push(const PlansRoute())),
                  ),
                ],
              ),
            ),
            const Gap(AppSpacing.xLarge),
            const ExpressiveSectionHeader(
              title: 'Tier Comparison',
              icon: AsagiIcons.plans,
              shape: ExpressiveIconShape.gem,
            ),
            const Gap(AppSpacing.small),
            for (final f in features) ...[
              CardComponent.outlined(
                padding: const EdgeInsets.all(AppSpacing.medium),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(f.icon, size: 18, color: colorScheme.primary),
                        const Gap.horizontal(AppSpacing.small),
                        Expanded(
                          child: Text(
                            f.feature,
                            style: context.textTheme.titleSmall?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Gap(AppSpacing.small),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(AppSpacing.small),
                            decoration: BoxDecoration(
                              color: colorScheme.surfaceContainerHighest
                                  .withValues(alpha: 0.5),
                              borderRadius: BorderRadius.circular(
                                AppRadii.small,
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Free Plan',
                                  style: context.textTheme.labelSmall?.copyWith(
                                    color: colorScheme.onSurfaceVariant,
                                  ),
                                ),
                                const Gap(AppSpacing.xSmall),
                                Text(
                                  f.free,
                                  style: context.textTheme.bodySmall?.copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Gap.horizontal(AppSpacing.small),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(AppSpacing.small),
                            decoration: BoxDecoration(
                              color: colorScheme.primaryContainer.withValues(
                                alpha: 0.35,
                              ),
                              borderRadius: BorderRadius.circular(
                                AppRadii.small,
                              ),
                              border: Border.all(
                                color: colorScheme.primary.withValues(
                                  alpha: 0.3,
                                ),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Asagi Pro',
                                  style: context.textTheme.labelSmall?.copyWith(
                                    color: colorScheme.primary,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const Gap(AppSpacing.xSmall),
                                Text(
                                  f.pro,
                                  style: context.textTheme.bodySmall?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: colorScheme.onPrimaryContainer,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Gap(AppSpacing.medium),
            ],
            const Gap(AppSpacing.small),
            Center(
              child: TextButtonComponent(
                label: l10n.restorePurchases,
                onPressed: () =>
                    unawaited(context.push(const RestorePurchasesRoute())),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
