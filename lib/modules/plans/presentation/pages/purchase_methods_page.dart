import 'dart:async';

import 'package:kaisel/kaisel.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/design_system/tokens/tokens.dart';
import '../../../../core/constants/zumi_icons.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/widgets/widgets.dart';

/// Supported payment methods and store billing security guarantees.
final class PurchaseMethodsPage extends StatelessWidget {
  const PurchaseMethodsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.localeKeys;
    final colorScheme = context.colorScheme;

    return Scaffold(
      appBar: SidePageAppBarComponent(title: l10n.paymentMethods),
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
                    icon: ZumiIcons.purchaseMethods,
                    shape: ExpressiveIconShape.cookie,
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
                          l10n.paymentMethods,
                          style: context.textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Gap(AppSpacing.xSmall),
                        Text(
                          l10n.supportedWaysToPayIncludingStoreBilling,
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
            const ExpressiveSectionHeader(
              title: 'Supported Payment Options',
              icon: ZumiIcons.purchaseMethods,
              shape: ExpressiveIconShape.cookie,
            ),
            const Gap(AppSpacing.small),
            const ListTileGroup(
              children: [
                ListTileIconComponent.top(
                  shape: ExpressiveIconShape.gem,
                  title: 'App Store / Google Play In-App Billing',
                  subtitle: 'One-tap checkout with Face ID, Touch ID, or fingerprint verification',
                  leading: ZumiIcons.purchaseMethods,
                  showChevron: false,
                ),
                ListTileIconComponent.middle(
                  shape: ExpressiveIconShape.pill,
                  title: 'Credit & Debit Cards',
                  subtitle: 'Visa, MasterCard, American Express, and Discover linked to your store account',
                  leading: LucideIcons.creditCard,
                  showChevron: false,
                ),
                ListTileIconComponent.middle(
                  shape: ExpressiveIconShape.sunny,
                  title: 'Store Balance & Gift Cards',
                  subtitle: 'Redeem store cards and promotional credits towards Zumi subscriptions',
                  leading: LucideIcons.gift,
                  showChevron: false,
                ),
                ListTileIconComponent.bottom(
                  shape: ExpressiveIconShape.heart,
                  title: 'Digital Wallets & Local Methods',
                  subtitle: 'Google Pay, Apple Pay, PayPal, and regional carriers supported by your store',
                  leading: LucideIcons.wallet,
                  showChevron: false,
                ),
              ],
            ),
            const Gap(AppSpacing.xLarge),
            const ExpressiveSectionHeader(
              title: 'Protection & Safety Guarantee',
              icon: ZumiIcons.dataSafety,
              shape: ExpressiveIconShape.diamond,
            ),
            const Gap(AppSpacing.small),
            CardComponent.outlined(
              padding: const EdgeInsets.all(AppSpacing.large),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        ZumiIcons.dataSafety,
                        size: 20,
                        color: colorScheme.primary,
                      ),
                      const Gap.horizontal(AppSpacing.small),
                      Text(
                        'Store Protected Purchases',
                        style: context.textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const Gap(AppSpacing.small),
                  Text(
                    'Zumi never sees or retains your financial billing data. Every transaction is authenticated and encrypted directly by Google or Apple. You can cancel anytime without hidden fees.',
                    style: context.textTheme.bodyMedium?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                      height: 1.45,
                    ),
                  ),
                ],
              ),
            ),
            const Gap(AppSpacing.large),
            FilledButtonComponent.icon(
              expand: true,
              icon: ZumiIcons.plans,
              label: 'View Available Plans',
              onPressed: () => unawaited(context.push(const PlansRoute())),
            ),
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
