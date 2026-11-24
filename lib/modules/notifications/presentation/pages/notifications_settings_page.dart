import 'dart:async';

import 'package:bloc_signals_flutter/bloc_signals_flutter.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/asagi_icons.dart';
import '../../../../core/constants/design_system/tokens/tokens.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/preferences/domain/entities/notification_settings.dart';
import '../../../../core/services/haptics/haptics_service.dart';
import '../../../../core/widgets/widgets.dart';
import '../cubit/notifications_cubit.dart';
import '../cubit/notifications_state.dart';
import '../widgets/notification_permission_notices.dart';

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
          final settings = state.settings;
          Widget tile({
            required String title,
            required String subtitle,
            required String description,
            required ListTileGroupType group,
            required IconData icon,
            required bool value,
            required NotificationSettings Function(NotificationSettings, bool)
            change,
            required InfoIllustrationKind illustration,
          }) => _NotificationPreferenceTile(
            title: title,
            subtitle: subtitle,
            description: description,
            group: group,
            icon: icon,
            value: value,
            onChanged: (value) {
              unawaited(
                cubit.updateSettings((current) => change(current, value)),
              );
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
                  NotificationNotice(
                    text: text.notificationSetupFailed,
                    onTap: () => unawaited(cubit.initialize()),
                  ),
                const NotificationPermissionNotices(),
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
                      change: (current, v) =>
                          current.copyWith(jobCompletion: v),
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
                      change: (current, v) =>
                          current.copyWith(backgroundStatus: v),
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
                      change: (current, v) => current.copyWith(errorAlerts: v),
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
                      change: (current, v) =>
                          current.copyWith(completionSound: v),
                      illustration:
                          InfoIllustrationKind.notificationCompletionSound,
                    ),
                    tile(
                      title: text.hapticsButtons,
                      subtitle: text.hapticsButtonsShort,
                      group: ListTileGroupType.middle,
                      description: text.hapticsButtonsDescription,
                      icon: LucideIcons.mousePointer2,
                      value: settings.haptics.buttons,
                      change: (current, v) => current.copyWith(
                        haptics: current.haptics.copyWith(buttons: v),
                      ),
                      illustration: InfoIllustrationKind.hapticButtons,
                    ),
                    tile(
                      title: text.hapticsSelections,
                      subtitle: text.hapticsSelectionsShort,
                      group: ListTileGroupType.middle,
                      description: text.hapticsSelectionsDescription,
                      icon: LucideIcons.listChecks,
                      value: settings.haptics.selections,
                      change: (current, v) => current.copyWith(
                        haptics: current.haptics.copyWith(selections: v),
                      ),
                      illustration: InfoIllustrationKind.hapticSelections,
                    ),
                    tile(
                      title: text.hapticsGestures,
                      subtitle: text.hapticsGesturesShort,
                      group: ListTileGroupType.middle,
                      description: text.hapticsGesturesDescription,
                      icon: LucideIcons.hand,
                      value: settings.haptics.gestures,
                      change: (current, v) => current.copyWith(
                        haptics: current.haptics.copyWith(gestures: v),
                      ),
                      illustration: InfoIllustrationKind.hapticGestures,
                    ),
                    tile(
                      title: text.hapticsSuccess,
                      subtitle: text.hapticsSuccessShort,
                      group: ListTileGroupType.middle,
                      description: text.hapticsSuccessDescription,
                      icon: LucideIcons.check,
                      value: settings.haptics.success,
                      change: (current, v) => current.copyWith(
                        haptics: current.haptics.copyWith(success: v),
                      ),
                      illustration: InfoIllustrationKind.hapticSuccess,
                    ),
                    tile(
                      title: text.hapticsErrors,
                      subtitle: text.hapticsErrorsShort,
                      group: ListTileGroupType.bottom,
                      description: text.hapticsErrorsDescription,
                      icon: LucideIcons.triangleAlert,
                      value: settings.haptics.errors,
                      change: (current, v) => current.copyWith(
                        haptics: current.haptics.copyWith(errors: v),
                      ),
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
                      change: (current, v) =>
                          current.copyWith(productUpdates: v),
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
                      change: (current, v) =>
                          current.copyWith(savingsDigest: v),
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
