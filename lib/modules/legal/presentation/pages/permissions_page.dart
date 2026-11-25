import 'dart:async';

import 'package:bloc_signals/bloc_signals.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/design_system/tokens/tokens.dart';
import '../../../../core/constants/kuymo_icons.dart';
import '../../../../core/di/di.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/services/haptics/haptics_service.dart';
import '../../../../core/widgets/widgets.dart';
import '../../../permissions/domain/repositories/permission_repository.dart';
import '../../../permissions/presentation/cubit/permissions_cubit.dart';

/// Details why Kuymo requests specific device runtime permissions and how they
/// are strictly used.
final class PermissionsPage extends StatefulWidget {
  const PermissionsPage({super.key});

  @override
  State<PermissionsPage> createState() => _PermissionsPageState();
}

final class _PermissionsPageState extends State<PermissionsPage>
    with WidgetsBindingObserver {
  late final PermissionsCubit _cubit;
  StreamSubscription<PermissionsState>? _changes;
  @override
  void initState() {
    super.initState();
    _cubit = PermissionsCubit(getIt<PermissionRepository>());
    WidgetsBinding.instance.addObserver(this);
    _changes = _cubit.stream.listen((state) {
      if (mounted) {
        setState(() {});
        if (state.failed) {
          context.toast.showError(
            context,
            context.localeKeys.settingsApplyFailed,
          );
        }
      }
    });
    unawaited(_cubit.refresh());
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) unawaited(_cubit.refresh());
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    unawaited(_changes?.cancel());
    unawaited(_cubit.close());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.localeKeys;
    final colorScheme = context.colorScheme;

    final permissions = [
      (
        title: 'Photos & Videos (Media Access)',
        purpose: l10n.selectedFilesAccess,
        type: 'Essential',
        icon: KuymoIcons.videoSelect,
        isEssential: true,
      ),
      (
        title: l10n.notifications,
        purpose: 'Allows Kuymo to alert you when a long video compression task finishes in the background, or if a task encounters an error.',
        type: _cubit.stateValue.notification == AppPermissionStatus.granted
            ? l10n.enabled
            : l10n.disabled,
        icon: KuymoIcons.notifications,
        isEssential: false,
      ),
      (
        title: 'Foreground Service & Wake Lock',
        purpose: 'Prevents the operating system from terminating high-bitrate video encoding when your screen turns off or while using another application.',
        type: 'Recommended',
        icon: KuymoIcons.aiRuntime,
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
                    icon: KuymoIcons.permissions,
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
                          l10n.runtimePermissionsKuymoRequestsAndWhyEachIsNeeded,
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
                onTap: perm.icon == KuymoIcons.notifications
                    ? () => unawaited(_cubit.request())
                    : null,
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
                    icon: KuymoIcons.settings,
                    label: 'Manage in System Settings',
                    expand: true,
                    onPressed: () {
                      unawaited(AppHaptics.button());
                      unawaited(_cubit.openSystemSettings());
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
