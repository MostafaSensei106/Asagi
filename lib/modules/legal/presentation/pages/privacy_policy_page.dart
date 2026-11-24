import 'dart:async';

import 'package:kaisel/kaisel.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/asagi_icons.dart';
import '../../../../core/constants/design_system/tokens/tokens.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/widgets/widgets.dart';

/// Privacy Policy detailing Asagi's on-device processing guarantees,
/// zero media transmission, and local sandboxed storage.
final class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.localeKeys;
    final colorScheme = context.colorScheme;

    final highlights = [
      (
        icon: AsagiIcons.privacy,
        title: l10n.zeroCloudUploads,
        desc: l10n.videosNeverLeaveLocalMemoryOrStorageDuringProcessing,
      ),
      (
        icon: AsagiIcons.dataSafety,
        title: l10n.noAdvertisingIds,
        desc: l10n.noAdSdksUserFingerprintingOrCommercialTrackingCookies,
      ),
      (
        icon: AsagiIcons.storage,
        title: l10n.oneHundredPercentUserGoverned,
        desc: l10n.allCacheAndHistoryCanBePurgedWithASingleTapInSettings,
      ),
    ];

    final policySections = [
      (
        title: l10n.videoProcessingCommitmentTitle,
        content: l10n.videoProcessingCommitmentBody,
      ),
      (
        title: l10n.informationWeNeverCollectTitle,
        content: l10n.informationWeNeverCollectBody,
      ),
      (
        title: l10n.optionalDiagnosticsTitle,
        content: l10n.optionalDiagnosticsBody,
      ),
      (
        title: l10n.dataDeletionAndStorageHygieneTitle,
        content: l10n.dataDeletionAndStorageHygieneBody,
      ),
    ];

    return Scaffold(
      appBar: SidePageAppBarComponent(title: l10n.privacyPolicy),
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
                    icon: AsagiIcons.privacyPolicy,
                    shape: ExpressiveIconShape.heart,
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
                          l10n.privacyPolicy,
                          style: context.textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Gap(AppSpacing.xSmall),
                        Text(
                          l10n.howAsagiHandlesYourVideosAndData,
                          style: context.textTheme.bodySmall?.copyWith(
                            color: colorScheme.onSurfaceVariant,
                          ),
                        ),
                        const Gap(AppSpacing.small),
                        Text(
                          'Last updated: November 2026',
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
                for (var i = 0; i < highlights.length; i++) ...[
                  if (i > 0) const Gap.horizontal(AppSpacing.small),
                  Expanded(
                    child: CardComponent.outlined(
                      padding: const EdgeInsets.all(AppSpacing.medium),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            highlights[i].icon,
                            size: 20,
                            color: colorScheme.primary,
                          ),
                          const Gap(AppSpacing.small),
                          Text(
                            highlights[i].title,
                            style: context.textTheme.titleSmall?.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Gap(AppSpacing.xSmall),
                          Text(
                            highlights[i].desc,
                            style: context.textTheme.bodySmall?.copyWith(
                              fontSize: 11,
                              color: colorScheme.onSurfaceVariant,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ],
            ),
            const Gap(AppSpacing.xLarge),
            const ExpressiveSectionHeader(title: 'Detailed Privacy Policies'),
            const Gap(AppSpacing.small),
            for (final section in policySections) ...[
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
                      section.content,
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
            const Gap(AppSpacing.medium),
            ListTileGroup(
              children: [
                ListTileIconComponent.top(
                  shape: ExpressiveIconShape.diamond,
                  title: l10n.dataSafety,
                  subtitle: l10n.summaryOfTheDataAsagiCollectsAndWhy,
                  leading: AsagiIcons.dataSafety,
                  onTap: () => unawaited(context.push(const DataSafetyRoute())),
                ),
                ListTileIconComponent.bottom(
                  shape: ExpressiveIconShape.arch,
                  title: l10n.permissions,
                  subtitle:
                      l10n.runtimePermissionsAsagiRequestsAndWhyEachIsNeeded,
                  leading: AsagiIcons.permissions,
                  onTap: () =>
                      unawaited(context.push(const PermissionsRoute())),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
