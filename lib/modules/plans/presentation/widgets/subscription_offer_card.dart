import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/design_system/tokens/tokens.dart';
import '../../../../core/constants/zumi_icons.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/widgets.dart';
import '../../logic/subscription_cubit.dart';

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
        !state.isLoading &&
        !state.isPurchasing &&
        !state.isActive &&
        state.offer != null;

    return ClipRRect(
      borderRadius: BorderRadius.circular(AppRadii.xLarge),
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
            colors: [scheme.primaryContainer, scheme.tertiaryContainer],
          ),
          borderRadius: BorderRadius.circular(AppRadii.xLarge),
        ),
        child: Stack(
          children: [
            PositionedDirectional(
              top: -30,
              end: -24,
              child: Icon(
                LucideIcons.sparkles,
                size: 148,
                color: scheme.primary.withValues(alpha: 0.08),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(AppSpacing.large),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      ExpressiveIcon(
                        icon: ZumiIcons.plans,
                        shape: ExpressiveIconShape.gem,
                        size: 52,
                        backgroundColor: scheme.primary,
                        foregroundColor: scheme.onPrimary,
                      ),
                      const Gap.horizontal(AppSpacing.medium),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              l10n.zumiProTitle,
                              style: context.textTheme.headlineSmall?.copyWith(
                                fontWeight: FontWeight.w800,
                                color: scheme.onSurface,
                              ),
                            ),
                            const Gap(AppSpacing.xSmall),
                            _StatusPill(isActive: state.isActive),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Gap(AppSpacing.large),
                  Text(
                    priceLabel,
                    style: context.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w700,
                      color: scheme.onSurface,
                    ),
                  ),
                  if (state.isLoading && state.offer == null) ...[
                    const Gap(AppSpacing.small),
                    const LinearProgressIndicator(),
                  ],
                  const Gap(AppSpacing.small),
                  Text(
                    l10n.proFeaturesDescription,
                    style: context.textTheme.bodyMedium?.copyWith(
                      color: scheme.onSurfaceVariant,
                      height: 1.45,
                    ),
                  ),
                  const Gap(AppSpacing.medium),
                  _BenefitLine(label: l10n.premiumFeatureCustomSize),
                  const Gap(AppSpacing.small),
                  _BenefitLine(label: l10n.premiumFeatureDiscordPreset),
                  const Gap(AppSpacing.small),
                  _BenefitLine(label: l10n.premiumFeatureYouTubeShortsPreset),
                  const Gap(AppSpacing.large),
                  FilledButtonComponent.icon(
                    expand: true,
                    icon: state.isActive ? LucideIcons.check : ZumiIcons.plans,
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        LucideIcons.shieldCheck,
                        size: 16,
                        color: scheme.onSurfaceVariant,
                      ),
                      const Gap.horizontal(AppSpacing.small),
                      Flexible(
                        child: Text(
                          l10n.subscriptionSecureBilling,
                          textAlign: TextAlign.center,
                          style: context.textTheme.bodySmall?.copyWith(
                            color: scheme.onSurfaceVariant,
                          ),
                        ),
                      ),
                    ],
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

final class _StatusPill extends StatelessWidget {
  const _StatusPill({required this.isActive});

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    final l10n = context.localeKeys;
    final scheme = context.colorScheme;
    final color = isActive ? scheme.tertiary : scheme.primary;

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
            isActive ? l10n.subscriptionActive : l10n.zumiProTitle,
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

final class _BenefitLine extends StatelessWidget {
  const _BenefitLine({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    return Row(
      children: [
        Icon(LucideIcons.check, size: 17, color: scheme.primary),
        const Gap.horizontal(AppSpacing.small),
        Expanded(
          child: Text(
            label,
            style: context.textTheme.bodyMedium?.copyWith(
              color: scheme.onSurface,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
