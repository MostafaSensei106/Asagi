import 'dart:async';

import 'package:bloc_signals_flutter/bloc_signals_flutter.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/design_system/tokens/tokens.dart';
import '../../../../core/widgets/layout/gap.dart';
import '../../domain/repositories/notification_repository.dart';
import '../cubit/notification_access_cubit.dart';
import '../cubit/notification_access_state.dart';

final class NotificationPermissionNotices extends StatelessWidget {
  const NotificationPermissionNotices({super.key});
  @override
  Widget build(BuildContext context) {
    final text = context.localeKeys;
    final access = BlocSignalProvider.of<NotificationAccessCubit>(context);
    return BlocSignalBuilder<NotificationAccessCubit, NotificationAccessState>(
      builder: (context, state) => Column(
        children: [
          if (state is NotificationAccessFailure)
            NotificationNotice(
              text: text.notificationSetupFailed,
              onTap: () => unawaited(access.refresh()),
            ),
          if (state.permission == NotificationPermission.unsupported)
            NotificationNotice(text: text.notificationUnavailable),
          if (state.permission == NotificationPermission.denied ||
              state.permission == NotificationPermission.permanentlyDenied)
            NotificationNotice(
              title: text.notificationPermissionTitle,
              text: state.permission == NotificationPermission.permanentlyDenied
                  ? text.notificationPermissionSettingsBody
                  : text.notificationPermissionBody,
              busy: state is NotificationAccessRequesting,
              onTap: state is NotificationAccessRequesting
                  ? null
                  : () => unawaited(access.requestPermission()),
            ),
          for (final channel in state.blockedChannels)
            NotificationNotice(
              text: text.notificationChannelBlocked,
              onTap: () => unawaited(access.openChannelSettings(channel)),
            ),
        ],
      ),
    );
  }
}

final class NotificationNotice extends StatelessWidget {
  const NotificationNotice({
    super.key,
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
