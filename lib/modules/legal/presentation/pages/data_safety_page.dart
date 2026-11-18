import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/design_system/tokens/tokens.dart';
import '../../../../core/constants/zumi_icons.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/widgets.dart';

/// Data Safety declarations complying with Google Play & Apple App Store
/// privacy disclosures.
final class DataSafetyPage extends StatelessWidget {
  const DataSafetyPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.localeKeys;
    final colorScheme = context.colorScheme;

    final declarations = [
      (
        category: l10n.videosAndPhotos,
        icon: ZumiIcons.videoSelect,
        collected: false,
        shared: false,
        details:
            l10n.processedExclusivelyOnDeviceMediaFilesAreNeverTransmittedToExternalServersOrThirdPartyPlatforms,
      ),
      (
        category: l10n.financialInfoAndPayment,
        icon: ZumiIcons.purchaseMethods,
        collected: false,
        shared: false,
        details:
            l10n.allPaymentDetailsAreHandledDirectlyByGooglePlayStoreOrAppleAppStoreZumiNeverAccessesCardDetails,
      ),
      (
        category: l10n.appPerformanceAndCrashLogs,
        icon: ZumiIcons.developer,
        collected: true,
        shared: false,
        details:
            l10n.optionalNonIdentifiableCrashLogsAndStackTracesUsedSolelyForDiagnosingBugsAndOptimizingStability,
      ),
      (
        category: l10n.deviceOrOtherIdentifiers,
        icon: ZumiIcons.device,
        collected: false,
        shared: false,
        details:
            l10n.noAdvertisingIdsImeiNumbersMacAddressesOrPersistentHardwareIdentifiersAreGathered,
      ),
    ];

    return Scaffold(
      appBar: SidePageAppBarComponent(title: l10n.dataSafety),
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
                    icon: ZumiIcons.dataSafety,
                    shape: ExpressiveIconShape.diamond,
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
                          l10n.dataSafety,
                          style: context.textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Gap(AppSpacing.xSmall),
                        Text(
                          l10n.summaryOfTheDataZumiCollectsAndWhy,
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
            const Gap(AppSpacing.large),
            CardComponent.outlined(
              padding: const EdgeInsets.all(AppSpacing.large),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        ZumiIcons.privacy,
                        size: 20,
                        color: colorScheme.primary,
                      ),
                      const Gap.horizontal(AppSpacing.small),
                      Text(
                        l10n.storeSafetySummary,
                        style: context.textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const Gap(AppSpacing.medium),
                  _SafetyRow(
                    label: l10n.noDataSharedWithThirdParties,
                    isAffirmative: true,
                  ),
                  const Gap(AppSpacing.small),
                  _SafetyRow(
                    label: l10n.noUserDataCollectedForAdvertising,
                    isAffirmative: true,
                  ),
                  const Gap(AppSpacing.small),
                  _SafetyRow(
                    label: l10n.dataEncryptedInTransitStorePurchases,
                    isAffirmative: true,
                  ),
                  const Gap(AppSpacing.small),
                  _SafetyRow(
                    label: l10n.youCanRequestDataDeletionAtAnyTime,
                    isAffirmative: true,
                  ),
                ],
              ),
            ),
            const Gap(AppSpacing.xLarge),
            ExpressiveSectionHeader(title: l10n.dataCollectionBreakdown),
            const Gap(AppSpacing.small),
            for (final item in declarations) ...[
              CardComponent.outlined(
                padding: const EdgeInsets.all(AppSpacing.large),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(item.icon, size: 20, color: colorScheme.primary),
                        const Gap.horizontal(AppSpacing.small),
                        Expanded(
                          child: Text(
                            item.category,
                            style: context.textTheme.titleSmall?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        ChipComponent(
                          label: item.collected
                              ? l10n.optionalOnly
                              : l10n.notCollected,
                          showBorder: false,
                        ),
                      ],
                    ),
                    const Gap(AppSpacing.small),
                    Text(
                      item.details,
                      style: context.textTheme.bodySmall?.copyWith(
                        color: colorScheme.onSurfaceVariant,
                        height: 1.4,
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

final class _SafetyRow extends StatelessWidget {
  const _SafetyRow({required this.label, required this.isAffirmative});

  final String label;
  final bool isAffirmative;

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.colorScheme;
    return Row(
      children: [
        Icon(
          isAffirmative ? ZumiIcons.compressionResult : ZumiIcons.dataSafety,
          size: 16,
          color: isAffirmative ? colorScheme.primary : colorScheme.error,
        ),
        const Gap.horizontal(AppSpacing.small),
        Expanded(
          child: Text(
            label,
            style: context.textTheme.bodyMedium?.copyWith(
              color: colorScheme.onSurface,
            ),
          ),
        ),
      ],
    );
  }
}
