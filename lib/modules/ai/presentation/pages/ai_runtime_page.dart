import 'dart:async';

import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/design_system/tokens/tokens.dart';
import '../../../../core/di/di.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/preferences/domain/repositories/settings_repository.dart';
import '../../../../core/preferences/presentation/settings_page_state.dart';
import '../../../../core/preferences/presentation/settings_view.dart';
import '../../../../core/services/haptics/haptics_service.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/ai_settings.dart';
import '../widgets/ai_benchmark_button.dart';

final class AiRuntimePage extends StatefulWidget {
  const AiRuntimePage({super.key});

  @override
  State<AiRuntimePage> createState() => _AiRuntimePageState();
}

final class _AiRuntimePageState
    extends SettingsPageState<AiRuntimePage, AiRuntimeSettings> {
  @override
  SettingsRepository<AiRuntimeSettings> get repository =>
      getIt<SettingsRepository<AiRuntimeSettings>>();

  String get _backend => settings.backend;
  set _backend(String value) =>
      updateSettings((s) => s.copyWith(backend: value));
  double get _threadCount => settings.threadCount.toDouble();
  set _threadCount(double value) =>
      updateSettings((s) => s.copyWith(threadCount: value.toInt()));
  String get _memoryCap => const {
    512: '512 MB',
    1024: '1.0 GB',
    2048: '2.0 GB',
    4096: '4.0 GB',
  }[settings.memoryBudgetMb]!;
  set _memoryCap(String value) => updateSettings(
    (s) => s.copyWith(
      memoryBudgetMb: const {
        '512 MB': 512,
        '1.0 GB': 1024,
        '2.0 GB': 2048,
        '4.0 GB': 4096,
      }[value]!,
    ),
  );
  bool get _lowPowerMode => settings.lowPowerMode;
  set _lowPowerMode(bool value) =>
      updateSettings((s) => s.copyWith(lowPowerMode: value));
  @override
  Widget buildSettings(BuildContext context) {
    final l10n = context.localeKeys;

    return Scaffold(
      appBar: SidePageAppBarComponent(
        title: l10n.modelPerformance,
        actions: const [SettingsResetAction<AiRuntimeSettings>()],
      ),
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
                  key: ValueKey(_backend),
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
                      value: 'gpu',
                      child: Text(l10n.backendGpu),
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
                  key: ValueKey(_memoryCap),
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
                  unawaited(AppHaptics.button());
                  setState(() => _lowPowerMode = !_lowPowerMode);
                },
                showChevron: false,
                trailing: SwitchComponent(
                  value: _lowPowerMode,
                  onChanged: (val) {
                    unawaited(AppHaptics.button());
                    setState(() => _lowPowerMode = val);
                  },
                ),
              ),
            ],
          ),
          const Gap(AppSpacing.large),
          const AiBenchmarkButton(),
        ],
      ),
    );
  }
}
