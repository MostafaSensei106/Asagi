import 'dart:async';

import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/compression/domain/models/compression_preferences.dart';
import '../../../../core/compression/domain/models/share_preset.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/design_system/tokens/tokens.dart';
import '../../../../core/widgets/widgets.dart';
import '../../../compression/presentation/cubit/compression_cubit.dart';
import '../../../compression/presentation/cubit/compression_state.dart';
import '../../../compression/presentation/widgets/compression_advanced_settings_sheet.dart';
import '../../../compression/presentation/widgets/compression_plan_summary.dart';
import 'home_destination_picker.dart';
import 'home_video_state_cards.dart';

final class HomeSetupPanel extends StatelessWidget {
  const HomeSetupPanel({
    required this.state,
    required this.cubit,
    required this.onValidityChanged,
    super.key,
  });
  final CompressionState state;
  final CompressionCubit cubit;
  final ValueChanged<bool> onValidityChanged;

  Future<void> _advanced(BuildContext context) async {
    final video = state.video!;
    final result = await context
        .showBottomSheetComponent<CompressionPreferences>(
          builder: (_) => CompressionAdvancedSettingsSheet(
            preferences: state.preferences,
            sourceShortEdge: video.metadata.displayShortEdge.floor(),
          ),
        );
    if (!context.mounted || cubit.isClosed || cubit.stateValue.video != video) {
      return;
    }
    if (result != null && result != cubit.stateValue.preferences) {
      await cubit.setPreferences(result);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.localeKeys;
    final scheme = context.colorScheme;
    final preset = state.resolvedPresetPlan;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        HomeDestinationPicker(
          state: state,
          onPreset: cubit.selectPreset,
          onTarget: cubit.setTargetMb,
          onValidityChanged: onValidityChanged,
        ),
        const Gap(AppSpacing.xLarge),
        Container(
          padding: const EdgeInsets.all(AppSpacing.large),
          decoration: BoxDecoration(
            color: scheme.primaryContainer,
            borderRadius: BorderRadius.circular(AppRadii.large),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                l10n.expectedOutputSize,
                style: context.textTheme.labelLarge?.copyWith(
                  color: scheme.onPrimaryContainer,
                ),
              ),
              const Gap(AppSpacing.xSmall),
              Text(
                homeMegabytes(context, state.targetMb * 1000000),
                style: context.textTheme.headlineLarge?.copyWith(
                  color: scheme.onPrimaryContainer,
                  fontWeight: FontWeight.w700,
                ),
              ),
              if (state.planning) ...[
                const Gap(AppSpacing.small),
                const LinearProgressIndicator(),
                const Gap(AppSpacing.small),
                Text(
                  l10n.calculatingCompressionPlan,
                  style: TextStyle(color: scheme.onPrimaryContainer),
                ),
              ],
              if (preset?.tier == SharePresetTier.relaxedSize ||
                  preset?.tier == SharePresetTier.reducedQuality) ...[
                const Gap(AppSpacing.small),
                Text(
                  preset!.tier == SharePresetTier.relaxedSize
                      ? l10n.targetMayNotBeReachedBestEffort
                      : l10n.theSelectedTargetMayReduceVideoQuality,
                  style: TextStyle(color: scheme.onPrimaryContainer),
                ),
              ],
            ],
          ),
        ),
        const Gap(AppSpacing.medium),
        ListTile(
          key: const ValueKey('open-advanced-settings'),
          contentPadding: EdgeInsets.zero,
          leading: Icon(LucideIcons.slidersHorizontal, color: scheme.primary),
          title: Text(l10n.advancedControls),
          subtitle: Text(
            '${state.preferences.maxShortEdge == null ? l10n.automatic : '${state.preferences.maxShortEdge}p'} · ${state.preferences.maxFrameRate} fps',
            maxLines: 2,
          ),
          trailing: Icon(
            LucideIcons.chevronDown,
            color: scheme.onSurfaceVariant,
          ),
          onTap: () => unawaited(_advanced(context)),
        ),
        if (!state.planning &&
            (state.previewPlan == null || state.previewPlan!.isInfeasible))
          CompressionPlanSummary(
            plan: state.previewPlan,
            isLoading: false,
            error: state.error,
            hasAudio: state.video!.metadata.hasAudio,
          )
        else
          Theme(
            data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
            child: ExpansionTile(
              tilePadding: EdgeInsets.zero,
              title: Text(
                l10n.homePlanDetails,
                style: context.textTheme.bodyMedium,
              ),
              children: [
                Text(l10n.socialPresetHint, style: context.textTheme.bodySmall),
                const Gap(AppSpacing.small),
                CompressionPlanSummary(
                  plan: state.previewPlan,
                  isLoading: state.planning,
                  error: state.error,
                  hasAudio: state.video!.metadata.hasAudio,
                ),
              ],
            ),
          ),
      ],
    );
  }
}
