import 'dart:async';

import 'package:flutter/services.dart';
import 'package:kaisel/kaisel.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/design_system/tokens/tokens.dart';
import '../../../../core/constants/zumi_icons.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/widgets/widgets.dart';

/// Terms of Service explaining personal licensing, content ownership,
/// on-device operation, and store subscription policies.
final class TermsPage extends StatelessWidget {
  const TermsPage({super.key});

  void _copyTerms(BuildContext context) {
    final l10n = context.localeKeys;
    unawaited(Clipboard.setData(ClipboardData(text: l10n.termsOfServiceFullText)));
    context.toast.showSuccess(context, l10n.termsCopiedToClipboard);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.localeKeys;
    final colorScheme = context.colorScheme;

    final sections = [
      (
        title: l10n.termsAcceptanceLicenseTitle,
        body: l10n.termsAcceptanceLicenseBody,
      ),
      (
        title: l10n.termsContentOwnershipTitle,
        body: l10n.termsContentOwnershipBody,
      ),
      (
        title: l10n.termsLocalOnDeviceProcessingTitle,
        body: l10n.termsLocalOnDeviceProcessingBody,
      ),
      (
        title: l10n.termsSubscriptionsAndBillingTitle,
        body: l10n.termsSubscriptionsAndBillingBody,
      ),
      (
        title: l10n.termsDisclaimersAndFairUseTitle,
        body: l10n.termsDisclaimersAndFairUseBody,
      ),
    ];

    return Scaffold(
      appBar: SidePageAppBarComponent(title: l10n.termsOfService),
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
                    icon: ZumiIcons.terms,
                    shape: ExpressiveIconShape.pill,
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
                          l10n.termsOfService,
                          style: context.textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Gap(AppSpacing.xSmall),
                        Text(
                          l10n.theTermsThatApplyToZumiAndItsPurchases,
                          style: context.textTheme.bodySmall?.copyWith(
                            color: colorScheme.onSurfaceVariant,
                          ),
                        ),
                        const Gap(AppSpacing.small),
                        Text(
                          l10n.version12November2026,
                          style: context.textTheme.labelSmall?.copyWith(
                            color: colorScheme.primary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Gap(AppSpacing.large),
            Row(
              children: [
                Expanded(
                  child: OutlinedButtonComponent.icon(
                    icon: ZumiIcons.repository,
                    label: l10n.copyTerms,
                    onPressed: () => _copyTerms(context),
                  ),
                ),
                const Gap.horizontal(AppSpacing.medium),
                Expanded(
                  child: FilledTonalButtonComponent.icon(
                    icon: ZumiIcons.support,
                    label: l10n.support,
                    onPressed: () =>
                        unawaited(context.push(const SupportRoute())),
                  ),
                ),
              ],
            ),
            const Gap(AppSpacing.xLarge),
            for (final section in sections) ...[
              CardComponent.outlined(
                padding: const EdgeInsets.all(AppSpacing.large),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      section.title,
                      style: context.textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: colorScheme.onSurface,
                      ),
                    ),
                    const Gap(AppSpacing.small),
                    Text(
                      section.body,
                      style: context.textTheme.bodyMedium?.copyWith(
                        color: colorScheme.onSurfaceVariant,
                        height: 1.45,
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(AppSpacing.medium),
            ],
          ],
        ),
      ),
    );
  }
}
