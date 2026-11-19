import 'dart:async';

import 'package:kaisel/kaisel.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/asagi_icons.dart';
import '../../../../core/constants/design_system/tokens/tokens.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/widgets/widgets.dart';

/// Supported payment methods and store billing security guarantees.
final class PurchaseMethodsPage extends StatelessWidget {
  const PurchaseMethodsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.localeKeys;

    void showPaymentInfo({
      required String title,
      required String description,
      required IconData icon,
      required InfoIllustrationKind illustrationKind,
    }) {
      unawaited(
        context.showInfoBottomSheet(
          title: title,
          description: description,
          icon: icon,
          illustrationKind: illustrationKind,
        ),
      );
    }

    return Scaffold(
      appBar: SidePageAppBarComponent(title: l10n.paymentMethods),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.large,
          vertical: AppSpacing.small,
        ),
        children: [
          ExpressiveSectionHeader(title: l10n.supportedPaymentOptions),
          ListTileGroup(
            children: [
              ListTileIconComponent.top(
                shape: ExpressiveIconShape.gem,
                title: l10n.storeBillingTitle,
                subtitle: l10n.storeBillingSummary,
                leading: AsagiIcons.purchaseMethods,
                onTap: () => showPaymentInfo(
                  title: l10n.storeBillingTitle,
                  description: l10n.storeBillingDetails,
                  icon: AsagiIcons.purchaseMethods,
                  illustrationKind: InfoIllustrationKind.storeBilling,
                ),
                onLongPress: () => showPaymentInfo(
                  title: l10n.storeBillingTitle,
                  description: l10n.storeBillingDetails,
                  icon: AsagiIcons.purchaseMethods,
                  illustrationKind: InfoIllustrationKind.storeBilling,
                ),
              ),
              ListTileIconComponent.middle(
                shape: ExpressiveIconShape.pill,
                title: l10n.creditDebitCardsTitle,
                subtitle: l10n.creditDebitCardsSummary,
                leading: LucideIcons.creditCard,
                onTap: () => showPaymentInfo(
                  title: l10n.creditDebitCardsTitle,
                  description: l10n.creditDebitCardsDetails,
                  icon: LucideIcons.creditCard,
                  illustrationKind: InfoIllustrationKind.creditDebitCard,
                ),
                onLongPress: () => showPaymentInfo(
                  title: l10n.creditDebitCardsTitle,
                  description: l10n.creditDebitCardsDetails,
                  icon: LucideIcons.creditCard,
                  illustrationKind: InfoIllustrationKind.creditDebitCard,
                ),
              ),
              ListTileIconComponent.middle(
                shape: ExpressiveIconShape.sunny,
                title: l10n.storeBalanceGiftCardsTitle,
                subtitle: l10n.storeBalanceGiftCardsSummary,
                leading: LucideIcons.gift,
                showChevron: false,
                onTap: () => showPaymentInfo(
                  title: l10n.storeBalanceGiftCardsTitle,
                  description: l10n.storeBalanceGiftCardsDetails,
                  icon: LucideIcons.gift,
                  illustrationKind: InfoIllustrationKind.storeBalanceGiftCard,
                ),
                onLongPress: () => showPaymentInfo(
                  title: l10n.storeBalanceGiftCardsTitle,
                  description: l10n.storeBalanceGiftCardsDetails,
                  icon: LucideIcons.gift,
                  illustrationKind: InfoIllustrationKind.storeBalanceGiftCard,
                ),
              ),
              ListTileIconComponent.bottom(
                shape: ExpressiveIconShape.heart,
                title: l10n.digitalWalletsTitle,
                subtitle: l10n.digitalWalletsSummary,
                leading: LucideIcons.wallet,
                onTap: () => showPaymentInfo(
                  title: l10n.digitalWalletsTitle,
                  description: l10n.digitalWalletsDetails,
                  icon: LucideIcons.wallet,
                  illustrationKind: InfoIllustrationKind.digitalWallet,
                ),
                onLongPress: () => showPaymentInfo(
                  title: l10n.digitalWalletsTitle,
                  description: l10n.digitalWalletsDetails,
                  icon: LucideIcons.wallet,
                  illustrationKind: InfoIllustrationKind.digitalWallet,
                ),
              ),
            ],
          ),
          const Gap(AppSpacing.large),
          ExpressiveSectionHeader(title: l10n.paymentProtectionTitle),
          ListTileGroup(
            children: [
              ListTileIconComponent(
                shape: ExpressiveIconShape.clover,
                title: l10n.storeProtectedPurchases,
                subtitle: l10n.storeProtectedPurchasesSummary,
                leading: AsagiIcons.dataSafety,
                onTap: () => showPaymentInfo(
                  title: l10n.storeProtectedPurchases,
                  description: l10n.storeProtectedPurchasesDetails,
                  icon: AsagiIcons.dataSafety,
                  illustrationKind: InfoIllustrationKind.purchaseProtection,
                ),
                onLongPress: () => showPaymentInfo(
                  title: l10n.storeProtectedPurchases,
                  description: l10n.storeProtectedPurchasesDetails,
                  icon: AsagiIcons.dataSafety,
                  illustrationKind: InfoIllustrationKind.purchaseProtection,
                ),
              ),
            ],
          ),
          const Gap(AppSpacing.large),
          FilledButtonComponent.icon(
            expand: true,
            icon: AsagiIcons.plans,
            label: l10n.plans,
            onPressed: () => unawaited(context.push(const PlansRoute())),
          ),
          const Gap(AppSpacing.small),
          Center(
            child: SizedBox(
              width: double.infinity,
              child: OutlinedButtonComponent(
                label: l10n.restorePurchases,
                onPressed: () =>
                    unawaited(context.push(const RestorePurchasesRoute())),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
