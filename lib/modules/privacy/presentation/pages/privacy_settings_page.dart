import 'dart:async';

import 'package:flutter/services.dart';
import 'package:kaisel/kaisel.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/design_system/tokens/tokens.dart';
import '../../../../core/constants/zumi_icons.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/widgets/widgets.dart';

/// Privacy settings and local data governance.
final class PrivacySettingsPage extends StatefulWidget {
  const PrivacySettingsPage({super.key});

  @override
  State<PrivacySettingsPage> createState() => _PrivacySettingsPageState();
}

final class _PrivacySettingsPageState extends State<PrivacySettingsPage> {
  bool _crashReports = true;
  bool _performanceTelemetry = false;
  bool _preserveMetadata = true;
  bool _autoWipeTempCache = true;
  bool _isClearingCache = false;

  void _onToggle(String name, bool val, void Function() apply) {
    unawaited(HapticFeedback.selectionClick());
    setState(apply);
    context.toast.showInfo(context, '$name ${val ? 'enabled' : 'disabled'}');
  }

  Future<void> _clearCache() async {
    setState(() => _isClearingCache = true);
    await Future<void>.delayed(const Duration(milliseconds: 600));
    if (!mounted) return;
    setState(() => _isClearingCache = false);
    context.toast.showSuccess(
      context,
      'Temporary compression scratchpad cleared',
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.localeKeys;
    final colorScheme = context.colorScheme;

    return Scaffold(
      appBar: SidePageAppBarComponent(title: l10n.privacy),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.large,
            vertical: AppSpacing.medium,
          ),
          children: [
            CardComponent.filled(
              padding: const EdgeInsets.all(AppSpacing.large),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      ExpressiveIcon(
                        icon: ZumiIcons.privacy,
                        shape: ExpressiveIconShape.clover,
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
                              l10n.privacy,
                              style: context.textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Gap(AppSpacing.xSmall),
                            Text(
                              l10n.onDeviceProcessingLocalLogsAndOptionalCrashReports,
                              style: context.textTheme.bodySmall?.copyWith(
                                color: colorScheme.onSurfaceVariant,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Gap(AppSpacing.medium),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(AppSpacing.medium),
                    decoration: BoxDecoration(
                      color: colorScheme.surfaceContainerHighest.withValues(
                        alpha: 0.6,
                      ),
                      borderRadius: BorderRadius.circular(AppRadii.medium),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          ZumiIcons.dataSafety,
                          size: 18,
                          color: colorScheme.primary,
                        ),
                        const Gap.horizontal(AppSpacing.small),
                        Expanded(
                          child: Text(
                            'Zumi never transmits your video files, frames, or audio streams over any network.',
                            style: context.textTheme.bodySmall?.copyWith(
                              color: colorScheme.onSurface,
                              fontWeight: FontWeight.w500,
                            ),
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
              title: 'Diagnostics & Telemetry',
              icon: ZumiIcons.developer,
              shape: ExpressiveIconShape.gem,
            ),
            const Gap(AppSpacing.small),
            ListTileGroup(
              children: [
                ListTileComponent.top(
                  title: const Text('Anonymous Crash Reports'),
                  subtitle: const Text(
                    'Help fix crashes by sending non-identifiable system error stack traces',
                  ),
                  showChevron: false,
                  trailing: SwitchComponent(
                    label: 'Crash Reports',
                    value: _crashReports,
                    onChanged: (val) => _onToggle(
                      'Crash reports',
                      val,
                      () => _crashReports = val,
                    ),
                  ),
                ),
                ListTileComponent.bottom(
                  title: const Text('Encoder Performance Telemetry'),
                  subtitle: const Text(
                    'Share hardware encoding timings to help tune platform profiles',
                  ),
                  showChevron: false,
                  trailing: SwitchComponent(
                    label: 'Performance Telemetry',
                    value: _performanceTelemetry,
                    onChanged: (val) => _onToggle(
                      'Telemetry',
                      val,
                      () => _performanceTelemetry = val,
                    ),
                  ),
                ),
              ],
            ),
            const Gap(AppSpacing.xLarge),
            const ExpressiveSectionHeader(
              title: 'Metadata & Temp Files',
              icon: ZumiIcons.storage,
              shape: ExpressiveIconShape.clover,
            ),
            const Gap(AppSpacing.small),
            ListTileGroup(
              children: [
                ListTileComponent.top(
                  title: const Text('Preserve Video Metadata'),
                  subtitle: const Text(
                    'Keep EXIF camera info, GPS coordinates, and creation timestamps in output',
                  ),
                  showChevron: false,
                  trailing: SwitchComponent(
                    label: 'Preserve Metadata',
                    value: _preserveMetadata,
                    onChanged: (val) => _onToggle(
                      'Metadata preservation',
                      val,
                      () => _preserveMetadata = val,
                    ),
                  ),
                ),
                ListTileComponent.middle(
                  title: const Text('Auto-Wipe Temp Buffers'),
                  subtitle: const Text(
                    'Immediately purge temporary encoding scratchpads upon completion',
                  ),
                  showChevron: false,
                  trailing: SwitchComponent(
                    label: 'Auto Wipe Cache',
                    value: _autoWipeTempCache,
                    onChanged: (val) => _onToggle(
                      'Auto wipe',
                      val,
                      () => _autoWipeTempCache = val,
                    ),
                  ),
                ),
                ListTileComponent.bottom(
                  title: const Text('Clear Scratchpad Now'),
                  subtitle: const Text(
                    'Free any lingering temporary preview frames and worker caches',
                  ),
                  showChevron: false,
                  trailing: OutlinedButtonComponent(
                    label: _isClearingCache ? 'Clearing…' : 'Clear',
                    isLoading: _isClearingCache,
                    onPressed: _isClearingCache ? null : _clearCache,
                  ),
                ),
              ],
            ),
            const Gap(AppSpacing.xLarge),
            const ExpressiveSectionHeader(
              title: 'Privacy Documents & Policies',
              icon: ZumiIcons.privacyPolicy,
              shape: ExpressiveIconShape.heart,
            ),
            const Gap(AppSpacing.small),
            ListTileGroup(
              children: [
                ListTileIconComponent.top(
                  shape: ExpressiveIconShape.heart,
                  title: l10n.privacyPolicy,
                  subtitle: l10n.howZumiHandlesYourVideosAndData,
                  leading: ZumiIcons.privacyPolicy,
                  onTap: () =>
                      unawaited(context.push(const PrivacyPolicyRoute())),
                ),
                ListTileIconComponent.middle(
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
