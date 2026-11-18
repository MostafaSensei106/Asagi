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
        category: 'Videos and Photos',
        icon: ZumiIcons.videoSelect,
        collected: false,
        shared: false,
        details: 'Processed exclusively on-device. Media files are never transmitted to external servers or third-party platforms.',
      ),
      (
        category: 'Financial Info & Payment',
        icon: ZumiIcons.purchaseMethods,
        collected: false,
        shared: false,
        details: 'All payment details are handled directly by Google Play Store or Apple App Store. Zumi never accesses card details.',
      ),
      (
        category: 'App Performance & Crash Logs',
        icon: ZumiIcons.developer,
        collected: true,
        shared: false,
        details: 'Optional non-identifiable crash logs and stack traces used solely for diagnosing bugs and optimizing stability.',
      ),
      (
        category: 'Device or Other Identifiers',
        icon: ZumiIcons.device,
        collected: false,
        shared: false,
        details: 'No advertising IDs, IMEI numbers, MAC addresses, or persistent hardware identifiers are gathered.',
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
                        'Store Safety Summary',
                        style: context.textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const Gap(AppSpacing.medium),
                  const _SafetyRow(
                    label: 'No data shared with third parties',
                    isAffirmative: true,
                  ),
                  const Gap(AppSpacing.small),
                  const _SafetyRow(
                    label: 'No user data collected for advertising',
                    isAffirmative: true,
                  ),
                  const Gap(AppSpacing.small),
                  const _SafetyRow(
                    label: 'Data encrypted in transit (store purchases)',
                    isAffirmative: true,
                  ),
                  const Gap(AppSpacing.small),
                  const _SafetyRow(
                    label: 'You can request data deletion at any time',
                    isAffirmative: true,
                  ),
                ],
              ),
            ),
            const Gap(AppSpacing.xLarge),
            const ExpressiveSectionHeader(title: 'Data Collection Breakdown'),
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
                              ? 'Optional Only'
                              : 'Not Collected',
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
