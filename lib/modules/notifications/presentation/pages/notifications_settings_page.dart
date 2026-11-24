import 'dart:async';

import 'package:bloc_signals_flutter/bloc_signals_flutter.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/asagi_icons.dart';
import '../../../../core/constants/design_system/tokens/tokens.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/services/haptics/haptics_service.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/models/notification_settings.dart';
import '../../domain/repositories/notification_repository.dart';
import '../../logic/cubit/notifications_cubit.dart';
import '../../logic/cubit/notifications_state.dart';

final class NotificationsSettingsPage extends StatelessWidget {
  const NotificationsSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final text = context.localeKeys;
    final cubit = BlocSignalProvider.of<NotificationsCubit>(context);
    return Scaffold(
      appBar: SidePageAppBarComponent(title: text.notifications),
      body: BlocSignalBuilder<NotificationsCubit, NotificationsState>(
        builder: (context, state) {
          final settings = state.data.settings;
          Widget tile({
            required String title,
            required String subtitle,
            required String description,
            required ListTileGroupType group,
            required IconData icon,
            required bool value,
            required NotificationSettings Function(bool) change,
            required InfoIllustrationKind illustration,
          }) => _NotificationPreferenceTile(
            title: title,
            subtitle: subtitle,
            description: description,
            group: group,
            icon: icon,
            value: value,
            onChanged: (value) {
              unawaited(cubit.updateSettings(change(value)));
              unawaited(AppHaptics.selection());
            },
            illustration: illustration,
          );
          return SafeArea(
            child: ListView(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.large,
                vertical: AppSpacing.medium,
              ),
              children: [
                if (state is NotificationsInitializing)
                  const LinearProgressIndicator(),
                if (state is NotificationsFailure)
                  _Notice(
                    text: text.notificationSetupFailed,
                    onTap: () => unawaited(
                      cubit.initialize(text).then((_) => cubit.refresh()),
                    ),
                  ),
                if (state.permission == NotificationPermission.unsupported)
                  _Notice(text: text.notificationUnavailable),
                if (state.permission == NotificationPermission.denied ||
                    state.permission ==
                        NotificationPermission.permanentlyDenied)
                  _Notice(
                    title: text.notificationPermissionTitle,
                    text:
                        state.permission ==
                            NotificationPermission.permanentlyDenied
                        ? text.notificationPermissionSettingsBody
                        : text.notificationPermissionBody,
                    busy: state is NotificationsRequestingPermission,
                    onTap: state is NotificationsRequestingPermission
                        ? null
                        : () => unawaited(cubit.requestPermission()),
                  ),
                for (final channel in state.blockedChannels)
                  _Notice(
                    text: text.notificationChannelBlocked,
                    onTap: () => unawaited(cubit.openChannelSettings(channel)),
                  ),
                ExpressiveSectionHeader(title: text.compressionAlerts),
                ListTileGroup(
                  children: [
                    tile(
                      title: text.jobCompletedNotification,
                      subtitle: text.jobCompletedShort,
                      group: ListTileGroupType.top,
                      description: text.jobCompletedDetails,
                      icon: LucideIcons.check,
                      value: settings.jobCompletion,
                      change: (v) => settings.copyWith(jobCompletion: v),
                      illustration:
                          InfoIllustrationKind.notificationJobCompletion,
                    ),
                    tile(
                      title: text.backgroundStatusNotification,
                      subtitle: text.backgroundStatusShort,
                      group: ListTileGroupType.middle,
                      description: text.notificationProgressDetails,
                      icon: LucideIcons.activity,
                      value: settings.backgroundStatus,
                      change: (v) => settings.copyWith(backgroundStatus: v),
                      illustration:
                          InfoIllustrationKind.notificationBackgroundStatus,
                    ),
                    tile(
                      title: text.interruptionErrorNotification,
                      subtitle: text.interruptionErrorShort,
                      group: ListTileGroupType.bottom,
                      description: text.interruptionErrorDetails,
                      icon: LucideIcons.bell,
                      value: settings.errorAlerts,
                      change: (v) => settings.copyWith(errorAlerts: v),
                      illustration:
                          InfoIllustrationKind.notificationInterruptionAlert,
                    ),
                  ],
                ),
                const Gap(AppSpacing.large),
                ExpressiveSectionHeader(title: text.feedbackAndHaptics),
                ListTileGroup(
                  children: [
                    tile(
                      title: text.completionSoundNotification,
                      subtitle: text.completionSoundShort,
                      group: ListTileGroupType.top,
                      description: text.completionSoundDetails,
                      icon: LucideIcons.audioLines,
                      value: settings.completionSound,
                      change: (v) => settings.copyWith(completionSound: v),
                      illustration:
                          InfoIllustrationKind.notificationCompletionSound,
                    ),
                    tile(
                      title: text.hapticsButtons,
                      subtitle: text.hapticsButtonsShort,
                      group: ListTileGroupType.middle,
                      description: text.hapticsButtonsDescription,
                      icon: LucideIcons.mousePointer2,
                      value: settings.buttonHaptics,
                      change: (v) => settings.copyWith(buttonHaptics: v),
                      illustration: InfoIllustrationKind.hapticButtons,
                    ),
                    tile(
                      title: text.hapticsSelections,
                      subtitle: text.hapticsSelectionsShort,
                      group: ListTileGroupType.middle,
                      description: text.hapticsSelectionsDescription,
                      icon: LucideIcons.listChecks,
                      value: settings.selectionHaptics,
                      change: (v) => settings.copyWith(selectionHaptics: v),
                      illustration: InfoIllustrationKind.hapticSelections,
                    ),
                    tile(
                      title: text.hapticsGestures,
                      subtitle: text.hapticsGesturesShort,
                      group: ListTileGroupType.middle,
                      description: text.hapticsGesturesDescription,
                      icon: LucideIcons.hand,
                      value: settings.gestureHaptics,
                      change: (v) => settings.copyWith(gestureHaptics: v),
                      illustration: InfoIllustrationKind.hapticGestures,
                    ),
                    tile(
                      title: text.hapticsSuccess,
                      subtitle: text.hapticsSuccessShort,
                      group: ListTileGroupType.middle,
                      description: text.hapticsSuccessDescription,
                      icon: LucideIcons.check,
                      value: settings.successHaptics,
                      change: (v) => settings.copyWith(successHaptics: v),
                      illustration: InfoIllustrationKind.hapticSuccess,
                    ),
                    tile(
                      title: text.hapticsErrors,
                      subtitle: text.hapticsErrorsShort,
                      group: ListTileGroupType.bottom,
                      description: text.hapticsErrorsDescription,
                      icon: LucideIcons.triangleAlert,
                      value: settings.errorHaptics,
                      change: (v) => settings.copyWith(errorHaptics: v),
                      illustration: InfoIllustrationKind.hapticErrors,
                    ),
                  ],
                ),
                const Gap(AppSpacing.large),
                ExpressiveSectionHeader(title: text.productStorageInsights),
                ListTileGroup(
                  children: [
                    tile(
                      title: text.productUpdatesNotification,
                      subtitle: text.productUpdatesShort,
                      group: ListTileGroupType.top,
                      description: text.productUpdatesDetails,
                      icon: LucideIcons.sparkles,
                      value: settings.productUpdates,
                      change: (v) => settings.copyWith(productUpdates: v),
                      illustration:
                          InfoIllustrationKind.notificationProductUpdate,
                    ),
                    tile(
                      title: text.savingsDigestNotification,
                      subtitle: text.savingsDigestShort,
                      group: ListTileGroupType.bottom,
                      description: text.savingsDigestDetails,
                      icon: AsagiIcons.storage,
                      value: settings.savingsDigest,
                      change: (v) => settings.copyWith(savingsDigest: v),
                      illustration:
                          InfoIllustrationKind.notificationStorageSavings,
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

final class _NotificationPreferenceTile extends StatelessWidget {
  const _NotificationPreferenceTile({
    required this.title,
    required this.subtitle,
    required this.description,
    required this.group,
    required this.icon,
    required this.value,
    required this.onChanged,
    required this.illustration,
  });
  final String title, subtitle, description;
  final ListTileGroupType group;
  final IconData icon;
  final bool value;
  final ValueChanged<bool> onChanged;
  final InfoIllustrationKind illustration;

  @override
  Widget build(BuildContext context) {
    final tile = switch (group) {
      ListTileGroupType.top => ListTileIconComponent.top,
      ListTileGroupType.middle => ListTileIconComponent.middle,
      ListTileGroupType.bottom => ListTileIconComponent.bottom,
      ListTileGroupType.single => ListTileIconComponent.single,
    };
    return tile(
      title: title,
      subtitle: subtitle,
      leading: icon,
      showChevron: false,
      hapticCategory: HapticCategory.selections,
      onTap: () => onChanged(!value),
      onLongPress: () => unawaited(
        context.showInfoBottomSheet(
          title: title,
          description: description,
          icon: icon,
          illustrationKind: illustration,
        ),
      ),
      trailing: SwitchComponent(value: value, onChanged: onChanged),
    );
  }
}

final class _Notice extends StatelessWidget {
  const _Notice({
    required this.text,
    this.title,
    this.onTap,
    this.busy = false,
  });
  final String text;
  final String? title;
  final VoidCallback? onTap;
  final bool busy;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.only(bottom: AppSpacing.medium),
    child: Material(
      color: context.colorScheme.secondaryContainer,
      borderRadius: BorderRadius.circular(AppSpacing.medium),
      child: InkWell(
        borderRadius: BorderRadius.circular(AppSpacing.medium),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.medium),
          child: Row(
            children: [
              if (busy)
                const SizedBox.square(
                  dimension: 24,
                  child: CircularProgressIndicator(strokeWidth: 2),
                )
              else
                Icon(
                  LucideIcons.bell,
                  color: context.colorScheme.onSecondaryContainer,
                ),
              const Gap(AppSpacing.medium),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (title != null)
                      Text(
                        title!,
                        style: context.textTheme.titleSmall?.copyWith(
                          color: context.colorScheme.onSecondaryContainer,
                        ),
                      ),
                    Text(
                      text,
                      style: TextStyle(
                        color: context.colorScheme.onSecondaryContainer,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
