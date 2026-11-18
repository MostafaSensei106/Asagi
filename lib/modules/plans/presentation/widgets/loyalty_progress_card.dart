import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/design_system/tokens/tokens.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/widgets.dart';
import '../../logic/subscription_cubit.dart';

final class LoyaltyProgressCard extends StatelessWidget {
  const LoyaltyProgressCard({required this.state, super.key});

  final SubscriptionState state;

  @override
  Widget build(BuildContext context) {
    final l10n = context.localeKeys;
    final scheme = context.colorScheme;
    final offer = state.offer;
    final nextPrice = offer == null
        ? null
        : '${offer.currencySymbol}${(offer.rawPrice * (100 - state.nextDiscount) / 100).toStringAsFixed(2)}';
    final progress = (state.currentDiscount / 30).clamp(0.0, 1.0).toDouble();

    return CardComponent.filled(
      padding: const EdgeInsets.all(AppSpacing.small),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ExpressiveIcon(
                icon: LucideIcons.trendingDown,
                shape: ExpressiveIconShape.clover,
                size: 42,
                backgroundColor: scheme.tertiaryContainer,
                foregroundColor: scheme.onTertiaryContainer,
              ),
              const Gap.horizontal(AppSpacing.medium),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      l10n.loyaltySavingsTitle,
                      style: context.textTheme.titleMedium,
                    ),
                    const Gap(AppSpacing.xSmall),
                    Text(
                      l10n.currentLoyaltyDiscount(state.currentDiscount),
                      style: context.textTheme.bodySmall?.copyWith(
                        color: scheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Gap(AppSpacing.large),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  l10n.loyaltyProgressLabel,
                  style: context.textTheme.bodySmall?.copyWith(
                    color: scheme.onSurfaceVariant,
                  ),
                ),
              ),
              Text(
                '${state.currentDiscount}% / 30%',
                style: context.textTheme.labelMedium,
              ),
            ],
          ),
          const Gap(AppSpacing.small),
          ClipRRect(
            borderRadius: BorderRadius.circular(AppRadii.pill),
            child: LinearProgressIndicator(value: progress, minHeight: 9),
          ),
          const Gap(AppSpacing.medium),
          Text(
            nextPrice == null
                ? l10n.nextMonthLoyaltyDiscount(state.nextDiscount)
                : l10n.nextMonthLoyaltyPrice(state.nextDiscount, nextPrice),
            style: context.textTheme.bodyMedium,
          ),
          const Gap(AppSpacing.large),
          Container(
            padding: const EdgeInsets.all(AppSpacing.medium),
            decoration: BoxDecoration(
              color: scheme.surfaceContainerHighest.withValues(alpha: 0.65),
              borderRadius: BorderRadius.circular(AppRadii.large),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  LucideIcons.info,
                  size: 18,
                  color: scheme.onSurfaceVariant,
                ),
                const Gap.horizontal(AppSpacing.small),
                Expanded(
                  child: Text(
                    l10n.loyaltyCancellationWarning,
                    style: context.textTheme.bodySmall?.copyWith(
                      color: scheme.onSurfaceVariant,
                      height: 1.4,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
