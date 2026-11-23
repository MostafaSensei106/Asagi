import 'dart:async';
import 'dart:io';

import 'package:bloc_signals_flutter/bloc_signals_flutter.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:kaisel/kaisel.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/design_system/tokens/tokens.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/widgets/widgets.dart';
import '../cubit/compression_cubit.dart';
import '../cubit/compression_state.dart';
import '../widgets/asagi_preset_feedback_card.dart';
import '../widgets/compression_advanced_controls.dart';
import '../widgets/compression_plan_summary.dart';
import '../widgets/platform_presets_bar.dart';
import '../widgets/video_preview.dart';

final class CompressionSetupPage extends HookWidget {
  const CompressionSetupPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocSignalProvider.of<CompressionCubit>(context);
    final targetController = useTextEditingController(
      text: '${cubit.stateValue.targetMb.toInt()}',
    );
    final valid = useState(true);

    final l10n = context.localeKeys;
    final colorScheme = context.colorScheme;
    final textTheme = context.textTheme;

    return Scaffold(
      appBar: SidePageAppBarComponent(title: l10n.compressionSetup),
      body: SafeArea(
        child: BlocSignalBuilder<CompressionCubit, CompressionState>(
          builder: (context, state) {
            final video = state.video;
            if (video == null) {
              return EmptyStateWidget(
                icon: LucideIcons.video,
                title: l10n.pickAVideoFromYourGalleryToStartCompressing,
              );
            }

            // Sync text field with cubit state if preset changed targetMb
            final expectedText =
                state.targetMb.truncateToDouble() == state.targetMb
                ? '${state.targetMb.toInt()}'
                : state.targetMb.toStringAsFixed(1);
            if (targetController.text != expectedText &&
                state.selectedPresetId != null) {
              targetController.text = expectedText;
            }

            final isActionEnabled =
                valid.value &&
                !state.planning &&
                state.previewPlan != null &&
                !state.previewPlan!.isInfeasible;

            return ListView(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.large,
                vertical: AppSpacing.small,
              ),
              children: [
                // Video Preview Card
                CardComponent.filled(
                  padding: const EdgeInsets.all(AppSpacing.medium),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const ExpressiveIcon(
                            icon: LucideIcons.film,
                            shape: ExpressiveIconShape.gem,
                          ),
                          const Gap(AppSpacing.medium),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  video.name,
                                  style: textTheme.titleSmall?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                const Gap(AppSpacing.small),
                                Text(
                                  '${(video.metadata.fileSizeBytes / 1000000).toStringAsFixed(1)} ${l10n.megabytesShort} • ${video.metadata.width}×${video.metadata.height}',
                                  style: textTheme.bodySmall?.copyWith(
                                    color: colorScheme.onSurfaceVariant,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Gap(AppSpacing.medium),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(AppRadii.medium),
                        child: VideoPreview(
                          path: video.path,
                          title: l10n.originalPreview,
                        ),
                      ),
                    ],
                  ),
                ),

                const Gap(AppSpacing.large),

                // Presets
                ExpressiveSectionHeader(title: l10n.targetPlatformOrSize),
                const Gap(AppSpacing.small),
                PlatformPresetsBar(
                  selectedPresetId: state.selectedPresetId,
                  onPresetSelected: (id) {
                    unawaited(HapticFeedback.selectionClick());
                    valid.value = true;
                    cubit.selectPreset(id);
                  },
                ),
                const Gap(AppSpacing.small),
                AsagiPresetFeedbackCard(
                  selectedPresetId: state.selectedPresetId,
                  presetPlan: state.resolvedPresetPlan,
                  isLoading: state.planning,
                ),

                const Gap(AppSpacing.medium),

                // Custom target MB
                CardComponent.filled(
                  padding: const EdgeInsets.all(AppSpacing.large),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        l10n.targetSizeMB,
                        style: textTheme.labelLarge?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Gap(AppSpacing.small),
                      TextField(
                        controller: targetController,
                        keyboardType: const TextInputType.numberWithOptions(
                          decimal: true,
                        ),
                        decoration: InputDecoration(
                          hintText: '16',
                          suffixText: l10n.megabytesShort,
                          helperText: state.selectedPresetId != null
                              ? l10n.setAutomaticallyForThePlatformChangingTheNumberSwitchesToCustomMode
                              : null,
                          errorText: valid.value
                              ? null
                              : l10n.enterATargetSizeGreaterThanZero,
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: AppSpacing.medium,
                            vertical: AppSpacing.small,
                          ),
                          filled: true,
                          fillColor: colorScheme.surfaceContainer,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              AppRadii.medium,
                            ),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        onChanged: (text) {
                          final parsed = double.tryParse(
                            text.replaceAll(',', '.'),
                          );
                          valid.value =
                              parsed != null && parsed.isFinite && parsed > 0;
                          if (valid.value) cubit.setTargetMb(parsed!);
                        },
                      ),
                    ],
                  ),
                ),

                const Gap(AppSpacing.large),

                // Advanced Controls
                if (Platform.isAndroid) ...[
                  CompressionAdvancedControls(
                    preferences: state.preferences,
                    sourceShortEdge:
                        video.metadata.width < video.metadata.height
                        ? video.metadata.width
                        : video.metadata.height,
                    onChanged: (value) =>
                        unawaited(cubit.setPreferences(value)),
                  ),
                  const Gap(AppSpacing.large),
                ],

                // Engine Plan Summary
                CompressionPlanSummary(
                  plan: state.previewPlan,
                  isLoading: state.planning,
                  hasAudio: video.metadata.hasAudio,
                ),

                const Gap(AppSpacing.large),

                // Action
                FilledButtonComponent.icon(
                  icon: LucideIcons.sparkles,
                  label: l10n.startCompression,
                  expand: true,
                  isEnabled: isActionEnabled,
                  onPressed: () {
                    unawaited(HapticFeedback.mediumImpact());
                    unawaited(cubit.start());
                    unawaited(context.push(const CompressionProgressRoute()));
                  },
                ),
                const Gap(AppSpacing.large),
              ],
            );
          },
        ),
      ),
    );
  }
}
