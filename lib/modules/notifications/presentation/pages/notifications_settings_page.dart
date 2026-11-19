import 'dart:async';

import 'package:flutter/services.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/asagi_icons.dart';
import '../../../../core/constants/design_system/tokens/tokens.dart';
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

  void _onToggle(String label, bool value, VoidCallback apply) {
    unawaited(HapticFeedback.selectionClick());
    setState(apply);
    context.toast.showInfo(
      context,
      '$label ${value ? context.localeKeys.enabled : context.localeKeys.disabled}',
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.localeKeys;

    return Scaffold(
      appBar: SidePageAppBarComponent(title: l10n.notifications),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.large,
          vertical: AppSpacing.medium,
        ),
        children: [
          ExpressiveSectionHeader(title: l10n.compressionAlerts),
          ListTileGroup(
            children: [
              ListTileIconComponent.top(
                leading: LucideIcons.check,
                title: l10n.jobCompletedNotification,
                subtitle: l10n.jobCompletedShort,
                onLongPress: () => context.showInfoBottomSheet(
                  title: l10n.jobCompletedNotification,
                  description: l10n.jobCompletedDetails,
                  icon: LucideIcons.check,
                  illustrationKind:
                      InfoIllustrationKind.notificationJobCompletion,
                ),
                onTap: () => _onToggle(
                  l10n.jobCompletedToast,
                  !_jobCompletion,
                  () => _jobCompletion = !_jobCompletion,
                ),
                showChevron: false,
                trailing: SwitchComponent(
                  value: _jobCompletion,
                  onChanged: (value) => _onToggle(
                    l10n.jobCompletedToast,
                    value,
                    () => _jobCompletion = value,
                  ),
                ),
              ),
              ListTileIconComponent.middle(
                leading: LucideIcons.activity,
                title: l10n.backgroundStatusNotification,
                subtitle: l10n.backgroundStatusShort,
                onLongPress: () => context.showInfoBottomSheet(
                  title: l10n.backgroundStatusNotification,
                  description: l10n.backgroundStatusDetails,
                  icon: LucideIcons.activity,
                  illustrationKind:
                      InfoIllustrationKind.notificationBackgroundStatus,
                ),
                onTap: () => _onToggle(
                  l10n.backgroundStatusToast,
                  !_backgroundStatus,
                  () => _backgroundStatus = !_backgroundStatus,
                ),
                showChevron: false,
                trailing: SwitchComponent(
                  value: _backgroundStatus,
                  onChanged: (value) => _onToggle(
                    l10n.backgroundStatusToast,
                    value,
                    () => _backgroundStatus = value,
                  ),
                ),
              ),
              ListTileIconComponent.bottom(
                leading: LucideIcons.bell,
                title: l10n.interruptionErrorNotification,
                subtitle: l10n.interruptionErrorShort,
                onLongPress: () => context.showInfoBottomSheet(
                  title: l10n.interruptionErrorNotification,
                  description: l10n.interruptionErrorDetails,
                  icon: LucideIcons.bell,
                  illustrationKind:
                      InfoIllustrationKind.notificationInterruptionAlert,
                ),
                onTap: () => _onToggle(
                  l10n.interruptionErrorToast,
                  !_errorAlerts,
                  () => _errorAlerts = !_errorAlerts,
                ),
                showChevron: false,
                trailing: SwitchComponent(
                  value: _errorAlerts,
                  onChanged: (value) => _onToggle(
                    l10n.interruptionErrorToast,
                    value,
                    () => _errorAlerts = value,
                  ),
                ),
              ),
            ],
          ),
          const Gap(AppSpacing.large),
          ExpressiveSectionHeader(title: l10n.feedbackAndHaptics),
          ListTileGroup(
            children: [
              ListTileIconComponent.top(
                leading: LucideIcons.audioLines,
                title: l10n.completionSoundNotification,
                subtitle: l10n.completionSoundShort,
                onLongPress: () => context.showInfoBottomSheet(
                  title: l10n.completionSoundNotification,
                  description: l10n.completionSoundDetails,
                  icon: LucideIcons.audioLines,
                  illustrationKind:
                      InfoIllustrationKind.notificationCompletionSound,
                ),
                onTap: () => _onToggle(
                  l10n.completionSoundToast,
                  !_completionSound,
                  () => _completionSound = !_completionSound,
                ),
                showChevron: false,
                trailing: SwitchComponent(
                  value: _completionSound,
                  onChanged: (value) => _onToggle(
                    l10n.completionSoundToast,
                    value,
                    () => _completionSound = value,
                  ),
                ),
              ),
              ListTileIconComponent.bottom(
                leading: LucideIcons.vibrate,
                title: l10n.hapticFeedbackNotification,
                subtitle: l10n.hapticFeedbackShort,
                onLongPress: () => context.showInfoBottomSheet(
                  title: l10n.hapticFeedbackNotification,
                  description: l10n.hapticFeedbackDetails,
                  icon: LucideIcons.vibrate,
                  illustrationKind:
                      InfoIllustrationKind.notificationHapticFeedback,
                ),
                onTap: () => _onToggle(
                  l10n.hapticFeedbackToast,
                  !_hapticFeedback,
                  () => _hapticFeedback = !_hapticFeedback,
                ),
                showChevron: false,
                trailing: SwitchComponent(
                  value: _hapticFeedback,
                  onChanged: (value) => _onToggle(
                    l10n.hapticFeedbackToast,
                    value,
                    () => _hapticFeedback = value,
                  ),
                ),
              ),
            ],
          ),
          const Gap(AppSpacing.large),
          ExpressiveSectionHeader(title: l10n.productStorageInsights),
          const Gap(AppSpacing.small),
          ListTileGroup(
            children: [
              ListTileIconComponent.top(
                leading: LucideIcons.sparkles,
                title: l10n.productUpdatesNotification,
                subtitle: l10n.productUpdatesShort,
                onLongPress: () => context.showInfoBottomSheet(
                  title: l10n.productUpdatesNotification,
                  description: l10n.productUpdatesDetails,
                  illustrationKind:
                      InfoIllustrationKind.notificationProductUpdate,
                  icon: LucideIcons.sparkles,
                ),
                onTap: () => _onToggle(
                  l10n.productUpdatesToast,
                  !_productUpdates,
                  () => _productUpdates = !_productUpdates,
                ),
                showChevron: false,
                trailing: SwitchComponent(
                  value: _productUpdates,
                  onChanged: (value) => _onToggle(
                    l10n.productUpdatesToast,
                    value,
                    () => _productUpdates = value,
                  ),
                ),
              ),
              ListTileIconComponent.bottom(
                leading: AsagiIcons.storage,
                title: l10n.savingsDigestNotification,
                subtitle: l10n.savingsDigestShort,
                onLongPress: () => context.showInfoBottomSheet(
                  title: l10n.savingsDigestNotification,
                  description: l10n.savingsDigestDetails,
                  icon: AsagiIcons.storage,
                  illustrationKind:
                      InfoIllustrationKind.notificationStorageSavings,
                ),
                onTap: () => _onToggle(
                  l10n.savingsDigestToast,
                  !_savingsDigest,
                  () => _savingsDigest = !_savingsDigest,
                ),
                showChevron: false,
                trailing: SwitchComponent(
                  value: _savingsDigest,
                  onChanged: (value) => _onToggle(
                    l10n.savingsDigestToast,
                    value,
                    () => _savingsDigest = value,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
