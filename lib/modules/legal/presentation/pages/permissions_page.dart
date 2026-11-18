import 'dart:async';

import 'package:flutter/services.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/design_system/tokens/tokens.dart';
import '../../../../core/constants/zumi_icons.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/widgets.dart';

/// Details why Zumi requests specific device runtime permissions and how they
/// are strictly used.
final class PermissionsPage extends StatelessWidget {
  const PermissionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.localeKeys;
    final colorScheme = context.colorScheme;

    final permissions = [
      (
        title: 'Photos & Videos (Media Access)',
        purpose: 'Needed to browse and select video files for compression, and to save the compressed videos directly to your camera roll or downloads folder.',
        type: 'Essential',
        icon: ZumiIcons.videoSelect,
        isEssential: true,
      ),
      (
        title: 'Notifications',
        purpose: 'Allows Zumi to alert you when a long video compression task finishes in the background, or if a task encounters an error.',
        type: 'Optional',
        icon: ZumiIcons.notifications,
        isEssential: false,
      ),
      (
        title: 'Foreground Service & Wake Lock',
        purpose: 'Prevents the operating system from terminating high-bitrate video encoding when your screen turns off or while using another application.',
        type: 'Recommended',
        icon: ZumiIcons.aiRuntime,
        isEssential: false,
      ),
    ];

    return Scaffold(
      appBar: SidePageAppBarComponent(title: l10n.permissions),
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
                    icon: ZumiIcons.permissions,
                    shape: ExpressiveIconShape.arch,
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
                          l10n.permissions,
                          style: context.textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Gap(AppSpacing.xSmall),
                        Text(
                          l10n.runtimePermissionsZumiRequestsAndWhyEachIsNeeded,
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
              title: 'Requested Device Permissions',
            ),
            const Gap(AppSpacing.small),
            for (final perm in permissions) ...[
              CardComponent.outlined(
                padding: const EdgeInsets.all(AppSpacing.large),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        ExpressiveIcon(
                          icon: perm.icon,
                          shape: ExpressiveIconShape.gem,
                          size: 36,
                          backgroundColor: colorScheme.surfaceContainerHighest,
                          foregroundColor: colorScheme.primary,
                        ),
                        const Gap.horizontal(AppSpacing.medium),
                        Expanded(
                          child: Text(
                            perm.title,
                            style: context.textTheme.titleSmall?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        ChipComponent(label: perm.type, showBorder: false),
                      ],
                    ),
                    const Gap(AppSpacing.medium),
                    Text(
                      perm.purpose,
                      style: context.textTheme.bodyMedium?.copyWith(
                        color: colorScheme.onSurfaceVariant,
                        height: 1.4,
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(AppSpacing.medium),
            ],
            const Gap(AppSpacing.medium),
            CardComponent.filled(
              padding: const EdgeInsets.all(AppSpacing.large),
              child: Column(
                children: [
                  Text(
                    'Permissions can be reviewed, revoked, or adjusted at any time through your operating system settings.',
                    textAlign: TextAlign.center,
                    style: context.textTheme.bodySmall?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),
                  const Gap(AppSpacing.medium),
                  FilledTonalButtonComponent.icon(
                    icon: ZumiIcons.settings,
                    label: 'Manage in System Settings',
                    onPressed: () {
                      unawaited(HapticFeedback.selectionClick());
                      context.toast.showInfo(
                        context,
                        'Please check your device system app settings',
                      );
                    },
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
