import 'dart:async';

import 'package:kaisel/kaisel.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/design_system/tokens/tokens.dart';
import '../../../../core/constants/zumi_icons.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/widgets/widgets.dart';

/// Privacy Policy detailing Zumi's on-device processing guarantees,
/// zero media transmission, and local sandboxed storage.
final class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.localeKeys;
    final colorScheme = context.colorScheme;

    final highlights = [
      (
        icon: ZumiIcons.privacy,
        title: 'Zero Cloud Uploads',
        desc: 'Videos never leave local memory or storage during processing.',
      ),
      (
        icon: ZumiIcons.dataSafety,
        title: 'No Advertising IDs',
        desc:
            'No ad SDKs, user fingerprinting, or commercial tracking cookies.',
      ),
      (
        icon: ZumiIcons.storage,
        title: '100% User Governed',
        desc: 'All cache and history can be purged with a single tap in settings.',
      ),
    ];

    final policySections = [
      (
        title: '1. Video Processing Commitment',
        content: 'Zumi was built with a fundamental architectural guarantee: your videos, clips, and audio tracks are encoded exclusively on your device hardware using local native codecs. At no point is your media streamed, stored, or processed on external cloud infrastructure.',
      ),
      (
        title: '2. Information We Never Collect',
        content: 'We do not collect names, email addresses (unless you explicitly contact customer support), phone numbers, contacts, device locations, biometric identifiers, or visual contents of your media library.',
      ),
      (
        title: '3. Optional Diagnostics',
        content: 'You may optionally enable anonymous crash reporting to help us identify and fix bugs. These reports contain only non-identifying operating system versions, device models, and exception stack traces, never media content.',
      ),
      (
        title: '4. Third-Party Store Payments',
        content: 'Subscription and in-app purchase operations are executed directly through the official Apple App Store or Google Play Store. Zumi does not process or retain your credit card or financial billing information.',
      ),
      (
        title: '5. Data Deletion & Storage Hygiene',
        content: 'All compression history records and temporary preview files reside strictly in sandboxed application directories. You can wipe all history and cached frames at any time directly through Storage Settings.',
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
                    icon: ZumiIcons.privacyPolicy,
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
                          l10n.howZumiHandlesYourVideosAndData,
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
                  subtitle: l10n.summaryOfTheDataZumiCollectsAndWhy,
                  leading: ZumiIcons.dataSafety,
                  onTap: () => unawaited(context.push(const DataSafetyRoute())),
                ),
                ListTileIconComponent.bottom(
                  shape: ExpressiveIconShape.arch,
                  title: l10n.permissions,
                  subtitle:
                      l10n.runtimePermissionsZumiRequestsAndWhyEachIsNeeded,
                  leading: ZumiIcons.permissions,
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
