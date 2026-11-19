import 'dart:async';

import 'package:flutter/services.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/asagi_icons.dart';
import '../../../../core/constants/design_system/tokens/tokens.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/widgets.dart';

final class AiRuntimePage extends StatefulWidget {
  const AiRuntimePage({super.key});

  @override
  State<AiRuntimePage> createState() => _AiRuntimePageState();
}

final class _AiRuntimePageState extends State<AiRuntimePage> {
  String _backend = 'auto';
  double _threadCount = 4;
  String _memoryCap = '1.0 GB';
  bool _lowPowerMode = false;
  bool _isBenchmarking = false;

  Future<void> _runBenchmark() async {
    setState(() => _isBenchmarking = true);
    unawaited(HapticFeedback.mediumImpact());
    await Future<void>.delayed(const Duration(milliseconds: 800));
    if (!mounted) return;
    setState(() => _isBenchmarking = false);
    context.toast.showSuccess(context, context.localeKeys.benchmarkResult);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.localeKeys;

    return Scaffold(
      appBar: SidePageAppBarComponent(title: l10n.modelPerformance),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.large,
          vertical: AppSpacing.small,
        ),
        children: [
          ExpressiveSectionHeader(title: l10n.hardwareAcceleration),
          const Gap(AppSpacing.small),
          CardComponent.filled(
            padding: const EdgeInsets.all(AppSpacing.large),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  l10n.computeBackend,
                  style: context.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Gap(AppSpacing.small),
                DropdownButtonFormField<String>(
                  initialValue: _backend,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: AppSpacing.medium,
                      vertical: AppSpacing.small,
                    ),
                  ),
                  items: [
                    DropdownMenuItem(
                      value: 'auto',
                      child: Text(l10n.backendAuto),
                    ),
                    DropdownMenuItem(
                      value: 'vulkan',
                      child: Text(l10n.backendVulkan),
                    ),
                    DropdownMenuItem(
                      value: 'cpu',
                      child: Text(l10n.backendCpu),
                    ),
                  ],
                  onChanged: (val) => setState(() => _backend = val!),
                ),
                const Gap(AppSpacing.large),
                Text(
                  l10n.cpuThreadAllocation(_threadCount.toInt()),
                  style: context.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Slider(
                  value: _threadCount,
                  min: 1,
                  max: 8,
                  divisions: 7,
                  label: l10n.cpuThreadLabel(_threadCount.toInt()),
                  onChanged: (val) => setState(() => _threadCount = val),
                ),
                const Gap(AppSpacing.medium),
                Text(
                  l10n.memoryBudgetCap,
                  style: context.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Gap(AppSpacing.small),
                DropdownButtonFormField<String>(
                  initialValue: _memoryCap,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: AppSpacing.medium,
                      vertical: AppSpacing.small,
                    ),
                  ),
                  items: const [
                    DropdownMenuItem(value: '512 MB', child: Text('512 MB')),
                    DropdownMenuItem(value: '1.0 GB', child: Text('1.0 GB')),
                    DropdownMenuItem(value: '2.0 GB', child: Text('2.0 GB')),
                    DropdownMenuItem(value: '4.0 GB', child: Text('4.0 GB')),
                  ],
                  onChanged: (val) => setState(() => _memoryCap = val!),
                ),
              ],
            ),
          ),
          const Gap(AppSpacing.xLarge),
          ListTileGroup(
            children: [
              ListTileIconComponent.single(
                leading: LucideIcons.batteryLow,
                title: l10n.batterySaverMode,
                onLongPress: () => context.showInfoBottomSheet(
                  title: l10n.batterySaverMode,
                  icon: LucideIcons.batteryLow,
                  illustrationKind: InfoIllustrationKind.batteryOptimization,
                  description: l10n.batterySaverDetails,
                ),
                subtitle: l10n.batterySaverDescription,
                onTap: () {
                  unawaited(HapticFeedback.selectionClick());
                  setState(() => _lowPowerMode = !_lowPowerMode);
                },
                showChevron: false,
                trailing: SwitchComponent(
                  value: _lowPowerMode,
                  onChanged: (val) {
                    unawaited(HapticFeedback.selectionClick());
                    setState(() => _lowPowerMode = val);
                  },
                ),
              ),
            ],
          ),
          const Gap(AppSpacing.large),
          FilledTonalButtonComponent.icon(
            icon: AsagiIcons.aiRuntime,
            label: _isBenchmarking
                ? l10n.benchmarking
                : l10n.benchmarkEngineNow,
            onPressed: _runBenchmark,
          ),
        ],
      ),
    );
  }
}
