import 'dart:async';
import 'dart:io';

import 'package:bloc_signals_flutter/bloc_signals_flutter.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:kaisel/kaisel.dart';
import 'package:material_ui/material_ui.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../core/constants/asagi_icons.dart';
import '../../../../core/constants/design_system/tokens/tokens.dart';
import '../../../../core/di/di.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/services/share/base_share_service.dart';
import '../../../../core/widgets/widgets.dart';
import '../../../compression/presentation/cubit/compression_cubit.dart';
import '../../../compression/presentation/cubit/compression_state.dart';
import '../../../compression/presentation/widgets/compression_advanced_controls.dart';
import '../../../compression/presentation/widgets/compression_error_text.dart';
import '../../../compression/presentation/widgets/compression_plan_summary.dart';
import '../widgets/compression_activity_panel.dart';
import '../widgets/home_target_size_card.dart';
import '../widgets/home_video_state_cards.dart';
import '../widgets/home_welcome_card.dart';

/// Select, configure, and preview a compression job on the home tab.
final class HomePage extends HookWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocSignalProvider.of<CompressionCubit>(context);
    final targetController = useTextEditingController();
    final validTarget = useState(true);
    final showAfter = useState(true);
    void start() => unawaited(cubit.start());
    void openAssistant() => unawaited(context.push(const AiChatRoute()));

    return Scaffold(
      appBar: AppBarComponent(
        title: context.localeKeys.asagi,
        actions: [
          IconButtonComponent(
            icon: AsagiIcons.ai,
            variant: IconButtonVariant.tonal,
            tooltip: context.localeKeys.asagiAssistant,
            onPressed: openAssistant,
          ),
        ],
      ),
      body: BlocSignalBuilder<CompressionCubit, CompressionState>(
        bloc: cubit,
        buildWhen: (previous, current) =>
            previous.phase != current.phase ||
            previous.video != current.video ||
            previous.targetMb != current.targetMb ||
            previous.output != current.output ||
            previous.error != current.error ||
            previous.preferences != current.preferences ||
            previous.previewPlan != current.previewPlan ||
            previous.planning != current.planning ||
            previous.progress != current.progress ||
            previous.step != current.step ||
            previous.interruptedJobs != current.interruptedJobs,
        builder: (context, state) {
          final l10n = context.localeKeys;
          final video = state.video;
          final output = state.output;
          final completed =
              state.phase == CompressionPhase.completed && output != null;
          final isCompressionActive =
              state.phase == CompressionPhase.running ||
              state.phase == CompressionPhase.paused ||
              state.phase == CompressionPhase.saving;
          return SafeArea(
            child: CustomScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              slivers: [
                SliverPadding(
                  padding: const EdgeInsets.all(AppSpacing.large),
                  sliver: SliverToBoxAdapter(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        if (state.interruptedJobs > 0)
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.all(16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    l10n.foundInterruptedCompressionJobsYouCanResumeThemWithTheSameSettingsOrDeleteThem,
                                  ),
                                  const SizedBox(height: 8),
                                  for (final job in state.recoverableJobs)
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  job.sourceName,
                                                  maxLines: 1,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .titleSmall,
                                                ),
                                                Text(
                                                  job.sourceAvailable
                                                      ? '${job.targetMb.toStringAsFixed(0)} MB · ${job.phase} · ${job.updatedAt.toLocal()}'
                                                      : l10n.originalFileIsMissingDeleteTheJobToCleanUpTemporaryFiles,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodySmall,
                                                ),
                                              ],
                                            ),
                                          ),
                                          TextButton(
                                            onPressed:
                                                !job.sourceAvailable ||
                                                    isCompressionActive
                                                ? null
                                                : () => unawaited(
                                                    cubit.resumeInterrupted(
                                                      job,
                                                    ),
                                                  ),
                                            child: Text(l10n.resume),
                                          ),
                                          IconButton(
                                            tooltip: l10n.deleteInterruptedJob,
                                            onPressed: isCompressionActive
                                                ? null
                                                : () => unawaited(
                                                    cubit.discardInterrupted(
                                                      job.id,
                                                    ),
                                                  ),
                                            icon: const Icon(
                                              Icons.delete_outline,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ),
                        if (state.phase == CompressionPhase.picking) ...[
                          const Gap(AppSpacing.large),
                          const HomeVideoPickingCard(),
                        ] else if (state.phase == CompressionPhase.running ||
                            state.phase == CompressionPhase.paused ||
                            state.phase == CompressionPhase.saving) ...[
                          if (video != null) ...[
                            HomeSelectedVideoCard(
                              key: ValueKey(video.path),
                              name: video.name,
                              path: video.path,
                              previewTitle: context.localeKeys.originalPreview,
                              sizeDetails:
                                  '${context.localeKeys.originalSize}: '
                                  '${(video.metadata.fileSizeBytes / 1000000).toStringAsFixed(1)} MB',
                            ),
                          ],
                          const Gap(AppSpacing.medium),
                          CompressionActivityPanel(
                            state: state,
                            onPause: () => unawaited(cubit.pause()),
                            onResume: () => unawaited(cubit.resume()),
                            onCancel: () => unawaited(cubit.cancel()),
                          ),
                        ] else if (video == null) ...[
                          const Gap(AppSpacing.large),
                          HomeWelcomeCard(
                            onPickVideo: () => unawaited(cubit.pickVideo()),
                          ),
                        ] else ...[
                          if (completed) ...[
                            Text(
                              context.localeKeys.compressionResult,
                              style: Theme.of(context).textTheme.headlineSmall,
                            ),
                            const SizedBox(height: 12),
                            SegmentedButton<bool>(
                              segments: [
                                ButtonSegment(
                                  value: false,
                                  label: Text(
                                    context.localeKeys.originalPreview,
                                  ),
                                ),
                                ButtonSegment(
                                  value: true,
                                  label: Text(
                                    context.localeKeys.compressedPreview,
                                  ),
                                ),
                              ],
                              selected: {showAfter.value},
                              onSelectionChanged: (selection) =>
                                  showAfter.value = selection.first,
                            ),
                            const SizedBox(height: 12),
                          ],
                          HomeSelectedVideoCard(
                            key: ValueKey(
                              completed && showAfter.value
                                  ? output.path
                                  : video.path,
                            ),
                            name: video.name,
                            path: completed && showAfter.value
                                ? output.path
                                : video.path,
                            previewTitle: completed && showAfter.value
                                ? context.localeKeys.compressedPreview
                                : context.localeKeys.originalPreview,
                            sizeDetails:
                                '${context.localeKeys.originalSize}: '
                                '${(video.metadata.fileSizeBytes / 1000000).toStringAsFixed(1)} MB',
                          ),
                          if (completed) ...[
                            Text(
                              '${context.localeKeys.outputSize}: '
                              '${(output.bytes / 1000000).toStringAsFixed(1)} MB',
                            ),
                            if (output.warning != null)
                              Text(
                                compressionWarningText(
                                  context,
                                  output.warning!,
                                  output.bytes,
                                ),
                              ),
                            const SizedBox(height: 24),
                            FilledButton.icon(
                              onPressed: () async {
                                try {
                                  await cubit.saveToGallery();
                                  if (context.mounted) {
                                    _notice(
                                      context,
                                      context.localeKeys.savedToGallery,
                                    );
                                  }
                                } catch (_) {
                                  if (context.mounted) {
                                    _notice(
                                      context,
                                      context
                                          .localeKeys
                                          .compressionCouldNotBeCompletedTryAnotherSettingOrVideo,
                                    );
                                  }
                                }
                              },
                              icon: const Icon(Icons.save_alt),
                              label: Text(context.localeKeys.saveToGallery),
                            ),
                            TextButton.icon(
                              onPressed: () async {
                                try {
                                  await getIt<BaseShareService>().shareFile(
                                    file: XFile(output.path),
                                  );
                                } catch (_) {
                                  if (context.mounted) {
                                    _notice(
                                      context,
                                      context
                                          .localeKeys
                                          .compressionCouldNotBeCompletedTryAnotherSettingOrVideo,
                                    );
                                  }
                                }
                              },
                              icon: const Icon(Icons.share_outlined),
                              label: Text(context.localeKeys.shareVideo),
                            ),
                          ] else ...[
                            const Gap(AppSpacing.large),
                            HomeTargetSizeCard(
                              targetMb: state.targetMb,
                              controller: targetController,
                              isValid: validTarget.value,
                              onPresetSelected: (preset) {
                                targetController.text = '${preset.toInt()}';
                                validTarget.value = true;
                                cubit.setTargetMb(preset);
                              },
                              onCustomSizeChanged: (text) {
                                final value = double.tryParse(
                                  text.replaceAll(',', '.'),
                                );
                                validTarget.value =
                                    value != null &&
                                    value.isFinite &&
                                    value > 0;
                                if (validTarget.value) {
                                  cubit.setTargetMb(value!);
                                }
                              },
                            ),
                            if (state.phase == CompressionPhase.failure) ...[
                              const Gap(AppSpacing.medium),
                              _CompressionError(error: state.error),
                            ],
                            if (state.phase == CompressionPhase.cancelled) ...[
                              const Gap(AppSpacing.medium),
                              Text(context.localeKeys.compressionCancelled),
                            ],
                            if (Platform.isAndroid)
                              CompressionAdvancedControls(
                                preferences: state.preferences,
                                sourceShortEdge:
                                    video.metadata.width < video.metadata.height
                                    ? video.metadata.width
                                    : video.metadata.height,
                                onChanged: (value) =>
                                    unawaited(cubit.setPreferences(value)),
                              ),
                            const Gap(AppSpacing.medium),
                            CompressionPlanSummary(
                              plan: state.previewPlan,
                              error: state.error,
                              isLoading: state.planning,
                              hasAudio: video.metadata.hasAudio,
                            ),
                            const Gap(AppSpacing.large),
                            FilledButtonComponent.icon(
                              expand: true,
                              icon: AsagiIcons.compressionSetup,
                              label: state.planning
                                  ? context
                                        .localeKeys
                                        .calculatingCompressionPlan
                                  : context.localeKeys.startCompression,
                              isLoading: state.planning,
                              isEnabled:
                                  validTarget.value &&
                                  !state.planning &&
                                  state.previewPlan != null &&
                                  !state.previewPlan!.isInfeasible,
                              onPressed: start,
                            ),
                          ],
                        ],
                        const SizedBox(height: 20),
                        if (video != null &&
                            state.phase != CompressionPhase.picking &&
                            state.phase != CompressionPhase.running &&
                            state.phase != CompressionPhase.paused &&
                            state.phase != CompressionPhase.saving) ...[
                          const Gap(AppSpacing.medium),
                          FilledButtonComponent.icon(
                            expand: true,
                            icon: AsagiIcons.videoSelect,
                            label: context.localeKeys.pickVideo,
                            onPressed: () => unawaited(cubit.pickVideo()),
                          ),
                        ],
                        if (video == null &&
                            state.phase == CompressionPhase.failure)
                          _CompressionError(error: state.error),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

final class _CompressionError extends StatelessWidget {
  const _CompressionError({required this.error});
  final String? error;

  @override
  Widget build(BuildContext context) {
    final message = compressionErrorText(context, error);
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Text(
        message,
        style: TextStyle(color: Theme.of(context).colorScheme.error),
      ),
    );
  }
}

void _notice(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
}
