import 'dart:async';

import 'package:flutter/services.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/design_system/tokens/tokens.dart';
import '../../../../core/constants/zumi_icons.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/widgets.dart';

/// Settings page for configuring local background notifications and haptics.
final class NotificationsSettingsPage extends StatefulWidget {
  const NotificationsSettingsPage({super.key});

  @override
  State<NotificationsSettingsPage> createState() =>
      _NotificationsSettingsPageState();
}

final class _NotificationsSettingsPageState
    extends State<NotificationsSettingsPage> {
  bool _jobCompletion = true;
  bool _backgroundStatus = true;
  bool _errorAlerts = true;
  bool _completionSound = false;
  bool _hapticFeedback = true;
  bool _productUpdates = true;
  bool _savingsDigest = true;

  void _onToggle(String key, bool value, void Function() apply) {
    unawaited(HapticFeedback.selectionClick());
    setState(apply);
    context.toast.showInfo(context, value ? '$key enabled' : '$key disabled');
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.localeKeys;
    final colorScheme = context.colorScheme;

    return Scaffold(
      appBar: SidePageAppBarComponent(title: l10n.notifications),
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
                    icon: ZumiIcons.notifications,
                    shape: ExpressiveIconShape.burst,
                    size: 56,
                    backgroundColor: colorScheme.primaryContainer,
                    foregroundColor: colorScheme.onPrimaryContainer,
                  ),
                  const Gap.horizontal(AppSpacing.large),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          l10n.notifications,
                          style: context.textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Gap(AppSpacing.xSmall),
                        Text(
                          l10n.jobCompletionAndProductUpdateNotifications,
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
              title: 'Compression Alerts',
              icon: ZumiIcons.compressionProgress,
              shape: ExpressiveIconShape.sunny,
            ),
            const Gap(AppSpacing.small),
            ListTileGroup(
              children: [
                ListTileComponent.top(
                  title: const Text('Job Completed'),
                  subtitle: const Text(
                    'Notify when a video has finished compression in the background',
                  ),
                  showChevron: false,
                  trailing: SwitchComponent(
                    label: 'Job Completed',
                    value: _jobCompletion,
                    onChanged: (val) => _onToggle(
                      'Job completed alert',
                      val,
                      () => _jobCompletion = val,
                    ),
                  ),
                ),
                ListTileComponent.middle(
                  title: const Text('Background Status'),
                  subtitle: const Text(
                    'Show ongoing status icon in system tray while compression is running',
                  ),
                  showChevron: false,
                  trailing: SwitchComponent(
                    label: 'Background Status',
                    value: _backgroundStatus,
                    onChanged: (val) => _onToggle(
                      'Background status',
                      val,
                      () => _backgroundStatus = val,
                    ),
                  ),
                ),
                ListTileComponent.bottom(
                  title: const Text('Interruption & Error Alerts'),
                  subtitle: const Text(
                    'Notify immediately if a job is paused by low storage or battery',
                  ),
                  showChevron: false,
                  trailing: SwitchComponent(
                    label: 'Interruption Alerts',
                    value: _errorAlerts,
                    onChanged: (val) => _onToggle(
                      'Error alerts',
                      val,
                      () => _errorAlerts = val,
                    ),
                  ),
                ),
              ],
            ),
            const Gap(AppSpacing.xLarge),
            const ExpressiveSectionHeader(
              title: 'Feedback & Haptics',
              icon: LucideIcons.vibrate,
              shape: ExpressiveIconShape.softBurst,
            ),
            const Gap(AppSpacing.small),
            ListTileGroup(
              children: [
                ListTileComponent.top(
                  title: const Text('Sound on Completion'),
                  subtitle: const Text(
                    'Play subtle chime when compression export is ready',
                  ),
                  showChevron: false,
                  trailing: SwitchComponent(
                    label: 'Sound on Completion',
                    value: _completionSound,
                    onChanged: (val) => _onToggle(
                      'Completion sound',
                      val,
                      () => _completionSound = val,
                    ),
                  ),
                ),
                ListTileComponent.bottom(
                  title: const Text('Haptic Vibration'),
                  subtitle: const Text(
                    'Vibrate upon completing compression or button taps',
                  ),
                  showChevron: false,
                  trailing: SwitchComponent(
                    label: 'Haptic Feedback',
                    value: _hapticFeedback,
                    onChanged: (val) => _onToggle(
                      'Haptic feedback',
                      val,
                      () => _hapticFeedback = val,
                    ),
                  ),
                ),
              ],
            ),
            const Gap(AppSpacing.xLarge),
            const ExpressiveSectionHeader(
              title: 'Product & Storage Insights',
              icon: ZumiIcons.storage,
              shape: ExpressiveIconShape.cookie,
            ),
            const Gap(AppSpacing.small),
            ListTileGroup(
              children: [
                ListTileComponent.top(
                  title: const Text('New Features & Codecs'),
                  subtitle: const Text(
                    'Notifications about new video codecs and major updates',
                  ),
                  showChevron: false,
                  trailing: SwitchComponent(
                    label: 'New Features',
                    value: _productUpdates,
                    onChanged: (val) => _onToggle(
                      'Feature notifications',
                      val,
                      () => _productUpdates = val,
                    ),
                  ),
                ),
                ListTileComponent.bottom(
                  title: const Text('Storage Savings Digest'),
                  subtitle: const Text(
                    'Occasional summary of storage saved by compressing videos',
                  ),
                  showChevron: false,
                  trailing: SwitchComponent(
                    label: 'Savings Digest',
                    value: _savingsDigest,
                    onChanged: (val) => _onToggle(
                      'Savings digest',
                      val,
                      () => _savingsDigest = val,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
