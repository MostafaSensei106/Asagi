import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/asagi_icons.dart';
import '../../../../core/constants/design_system/tokens/tokens.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/widgets.dart';
import '../../logic/subscription_cubit.dart';

typedef _ProFeature = ({String text});
typedef _ProFeatureGroup = ({String title, List<_ProFeature> features});

final class SubscriptionOfferCard extends StatelessWidget {
  const SubscriptionOfferCard({
    required this.state,
    required this.onSubscribe,
    super.key,
  });

  final SubscriptionState state;
  final VoidCallback onSubscribe;

  @override
  Widget build(BuildContext context) {
    final l10n = context.localeKeys;
    final scheme = context.colorScheme;
    final offer = state.offer;
    final priceLabel = offer != null
        ? l10n.subscriptionPerMonth(offer.price)
        : state.isLoading
        ? l10n.loading
        : l10n.planUnavailable;
    final canSubscribe =
        offer != null &&
        !state.isLoading &&
        !state.isPurchasing &&
        !state.isActive;
    final groups = <_ProFeatureGroup>[
      (
        title: l10n.proCustomCompressionGroup,
        features: [
          (text: l10n.proCustomSizeBenefit),
          (text: l10n.proResolutionBenefit),
          (text: l10n.proFrameRateBenefit),
          (text: l10n.proVideoBitrateBenefit),
          (text: l10n.proAudioBitrateBenefit),
        ],
      ),
      (
        title: l10n.proSharingPresetsGroup,
        features: [
          (text: l10n.proDiscordBenefit),
          (text: l10n.proYouTubeShortsBenefit),
        ],
      ),
      (
        title: l10n.proAiGroupTitle,
        features: [
          (text: l10n.proAiAssistantBenefit),
          (text: l10n.proAiSceneBenefit),
          (text: l10n.proAiTranscriptionBenefit),
        ],
      ),
      (title: l10n.proLoyaltyGroup, features: [(text: l10n.proLoyaltyBenefit)]),
    ];

    return ClipRRect(
      borderRadius: BorderRadius.circular(AppRadii.xLarge),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: scheme.surfaceContainerLow,
          border: Border.all(color: scheme.outlineVariant),
          borderRadius: BorderRadius.circular(AppRadii.xLarge),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: AlignmentDirectional.topStart,
                  end: AlignmentDirectional.bottomEnd,
                  colors: [scheme.primaryContainer, scheme.secondaryContainer],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(AppSpacing.large),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        ExpressiveIcon(
                          icon: AsagiIcons.plans,
                          shape: ExpressiveIconShape.gem,
                          size: 56,
                          backgroundColor: scheme.surface.withValues(alpha: 0.72),
                          foregroundColor: scheme.onPrimaryContainer,
                        ),
                        const Gap.horizontal(AppSpacing.medium),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                l10n.asagiProTitle,
                                style: context.textTheme.headlineSmall?.copyWith(
                                  fontWeight: FontWeight.w800,
                                  color: scheme.onPrimaryContainer,
                                ),
                              ),
                              const Gap(AppSpacing.small),
                              _StatusPill(isActive: state.isActive),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Gap(AppSpacing.large),
                    Text(
                      priceLabel,
                      style: context.textTheme.headlineMedium?.copyWith(
                        fontWeight: FontWeight.w800,
                        color: scheme.onPrimaryContainer,
                      ),
                    ),
                    if (state.isLoading && offer == null) ...[
                      const Gap(AppSpacing.small),
                      const LinearProgressIndicator(),
                    ],
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(AppSpacing.large),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    l10n.proBenefitsTitle,
                    style: context.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const Gap(AppSpacing.small),
                  for (var index = 0; index < groups.length; index++) ...[
                    if (index > 0) ...[
                      const Gap(AppSpacing.small),
                      Divider(color: scheme.outlineVariant),
                    ],
                    const Gap(AppSpacing.small),
                    _FeatureGroup(group: groups[index]),
                  ],
                  const Gap(AppSpacing.large),
                  FilledButtonComponent.icon(
                    expand: true,
                    icon: state.isActive ? LucideIcons.check : AsagiIcons.plans,
                    label: state.isActive
                        ? l10n.subscriptionActive
                        : state.isPurchasing
                        ? l10n.pleaseWait
                        : l10n.subscribe,
                    isEnabled: canSubscribe,
                    isLoading: state.isPurchasing,
                    onPressed: canSubscribe ? onSubscribe : null,
                  ),
                  const Gap(AppSpacing.medium),
                  Row(
                    children: [
                      Icon(
                        LucideIcons.shieldCheck,
                        size: 17,
                        color: scheme.onSurfaceVariant,
                      ),
                      const Gap.horizontal(AppSpacing.small),
                      Expanded(
                        child: Text(
                          l10n.subscriptionSecureBilling,
                          style: context.textTheme.bodySmall?.copyWith(
                            color: scheme.onSurfaceVariant,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Gap(AppSpacing.small),
                  Text(
                    l10n.proPlatformAvailabilityNote,
                    style: context.textTheme.bodySmall?.copyWith(
                      color: scheme.onSurfaceVariant,
                    ),
                  ),
                  const Gap(AppSpacing.small),
                  Text(
                    l10n.proAiAvailabilityNote,
                    style: context.textTheme.bodySmall?.copyWith(
                      color: scheme.onSurfaceVariant,
                    ),
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

final class _FeatureGroup extends StatelessWidget {
  const _FeatureGroup({required this.group});

  final _ProFeatureGroup group;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          group.title,
          style: context.textTheme.titleSmall?.copyWith(
            fontWeight: FontWeight.w800,
            color: context.colorScheme.onSurface,
          ),
        ),
        const Gap(AppSpacing.xSmall),
        for (final feature in group.features) _FeatureRow(feature: feature),
      ],
    );
  }
}

final class _FeatureRow extends StatelessWidget {
  const _FeatureRow({required this.feature});

  final _ProFeature feature;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.symmetric(vertical: AppSpacing.small),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 22,
          height: 22,
          decoration: BoxDecoration(
            color: context.colorScheme.primaryContainer,
            shape: BoxShape.circle,
          ),
          child: Icon(
            LucideIcons.check,
            size: 15,
            color: context.colorScheme.onPrimaryContainer,
          ),
        ),
        const Gap.horizontal(AppSpacing.small),
        Expanded(
          child: Text(
            feature.text,
            style: context.textTheme.bodyMedium?.copyWith(
              color: context.colorScheme.onSurface,
              height: 1.35,
            ),
          ),
        ),
      ],
    ),
  );
}

final class _StatusPill extends StatelessWidget {
  const _StatusPill({required this.isActive});

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    final l10n = context.localeKeys;
    final scheme = context.colorScheme;
    final color = scheme.onPrimaryContainer;

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.small,
        vertical: AppSpacing.xSmall,
      ),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(AppRadii.pill),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            isActive ? LucideIcons.circleCheck : LucideIcons.sparkles,
            size: 14,
            color: color,
          ),
          const Gap.horizontal(AppSpacing.xSmall),
          Text(
            isActive ? l10n.subscriptionActive : l10n.asagiProTitle,
            style: context.textTheme.labelSmall?.copyWith(
              color: color,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
