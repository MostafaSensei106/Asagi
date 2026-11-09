import 'dart:async';
import 'dart:io';

import 'package:bloc_signals_flutter/bloc_signals_flutter.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:material_ui/material_ui.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../core/di/di.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/services/share/base_share_service.dart';
import '../../../../core/widgets/navigation/app_bar/app_bar_component.dart';
import '../../../compression/presentation/cubit/compression_cubit.dart';
import '../../../compression/presentation/cubit/compression_state.dart';
import '../../../compression/presentation/widgets/compression_advanced_controls.dart';
import '../../../compression/presentation/widgets/compression_plan_summary.dart';
import '../../../compression/presentation/widgets/video_preview.dart';

/// Select, configure, and preview a compression job on the home tab.
final class HomePage extends HookWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocSignalProvider.of<CompressionCubit>(context);
    final targetController = useTextEditingController();
    final validTarget = useState(true);
    final showAfter = useState(true);
    final dialogOpen = useRef(false);

    void start() {
      if (dialogOpen.value) return;
      dialogOpen.value = true;
      unawaited(
        context.dialog
            .showDialog<void>(
              title: Text(context.localeKeys.compressionProgressTitle),
              content: _CompressionRunningDialog(cubit: cubit),
              actions: const [],
            )
            .whenComplete(() => dialogOpen.value = false),
      );
    }

    return Scaffold(
      appBar: AppBarComponent(title: context.localeKeys.appTitle),
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
            previous.interruptedJobs != current.interruptedJobs,
        builder: (context, state) {
          final video = state.video;
          final output = state.output;
          final completed =
              state.phase == CompressionPhase.completed && output != null;
          return SafeArea(
            child: CustomScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              slivers: [
                SliverPadding(
                  padding: const EdgeInsets.all(24),
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
                                  Text(context.localeKeys.compressionInterrupted),
                                  Align(
                                    alignment: AlignmentDirectional.centerEnd,
                                    child: TextButton(
                                      onPressed: cubit.dismissInterruptedNotice,
                                      child: Text(context.localeKeys.compressionDismiss),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        if (video == null) ...[
                          const SizedBox(height: 80),
                          const Icon(Icons.video_library_outlined, size: 72),
                          const SizedBox(height: 16),
                          Text(
                            context.localeKeys.homeDescription,
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ] else ...[
                          Text(
                            video.name,
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          const SizedBox(height: 16),
                          if (completed) ...[
                            Text(
                              context.localeKeys.compressionResultTitle,
                              style: Theme.of(context).textTheme.headlineSmall,
                            ),
                            const SizedBox(height: 12),
                            SegmentedButton<bool>(
                              segments: [
                                ButtonSegment(
                                  value: false,
                                  label: Text(
                                    context.localeKeys.compressionPreviewBefore,
                                  ),
                                ),
                                ButtonSegment(
                                  value: true,
                                  label: Text(
                                    context.localeKeys.compressionPreviewAfter,
                                  ),
                                ),
                              ],
                              selected: {showAfter.value},
                              onSelectionChanged: (selection) =>
                                  showAfter.value = selection.first,
                            ),
                            const SizedBox(height: 12),
                          ],
                          VideoPreview(
                            key: ValueKey(
                              completed && showAfter.value
                                  ? output.path
                                  : video.path,
                            ),
                            path: completed && showAfter.value
                                ? output.path
                                : video.path,
                            title: completed && showAfter.value
                                ? context.localeKeys.compressionPreviewAfter
                                : context.localeKeys.compressionPreviewBefore,
                          ),
                          const SizedBox(height: 16),
                          Text(
                            '${context.localeKeys.compressionOriginalSize}: '
                            '${(video.metadata.fileSizeBytes / 1000000).toStringAsFixed(1)} MB',
                          ),
                          if (completed) ...[
                            Text(
                              '${context.localeKeys.compressionOutputSize}: '
                              '${(output.bytes / 1000000).toStringAsFixed(1)} MB',
                            ),
                            if (output.warning != null) Text(output.warning!),
                            const SizedBox(height: 24),
                            FilledButton.icon(
                              onPressed: () async {
                                try {
                                  await cubit.saveToGallery();
                                  if (context.mounted) {
                                    _notice(
                                      context,
                                      context
                                          .localeKeys
                                          .compressionSavedGallery,
                                    );
                                  }
                                } catch (error) {
                                  if (context.mounted) {
                                    _notice(context, '$error');
                                  }
                                }
                              },
                              icon: const Icon(Icons.save_alt),
                              label: Text(
                                context.localeKeys.compressionSaveGallery,
                              ),
                            ),
                            TextButton.icon(
                              onPressed: () async {
                                try {
                                  await getIt<BaseShareService>().shareFile(
                                    file: XFile(output.path),
                                  );
                                } catch (error) {
                                  if (context.mounted) {
                                    _notice(context, '$error');
                                  }
                                }
                              },
                              icon: const Icon(Icons.share_outlined),
                              label: Text(context.localeKeys.compressionShare),
                            ),
                          ] else ...[
                            const SizedBox(height: 24),
                            Text(
                              context.localeKeys.compressionPreset,
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            const SizedBox(height: 8),
                            Wrap(
                              spacing: 8,
                              children: [
                                for (final preset in const [8.0, 16.0, 25.0])
                                  ChoiceChip(
                                    label: Text('${preset.toInt()} MB'),
                                    selected: state.targetMb == preset,
                                    onSelected: (_) {
                                      targetController.text =
                                          '${preset.toInt()}';
                                      validTarget.value = true;
                                      cubit.setTargetMb(preset);
                                    },
                                  ),
                              ],
                            ),
                            const SizedBox(height: 12),
                            TextField(
                              controller: targetController,
                              keyboardType:
                                  const TextInputType.numberWithOptions(
                                    decimal: true,
                                  ),
                              decoration: InputDecoration(
                                labelText:
                                    context.localeKeys.compressionTargetMb,
                                hintText: '${state.targetMb}',
                                errorText: validTarget.value
                                    ? null
                                    : context
                                          .localeKeys
                                          .compressionInvalidTarget,
                                border: const OutlineInputBorder(),
                              ),
                              onChanged: (text) {
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
                            if (state.phase == CompressionPhase.failure)
                              _CompressionError(error: state.error),
                            if (state.phase == CompressionPhase.cancelled)
                              Text(context.localeKeys.compressionCancelled),
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
                            CompressionPlanSummary(
                              plan: state.previewPlan,
                              isLoading: state.planning,
                            ),
                            const SizedBox(height: 24),
                            FilledButton.icon(
                              onPressed:
                                  validTarget.value &&
                                      !state.planning &&
                                      state.previewPlan != null &&
                                      !state.previewPlan!.isInfeasible
                                  ? start
                                  : null,
                              icon: const Icon(Icons.compress),
                              label: Text(context.localeKeys.compressionStart),
                            ),
                          ],
                        ],
                        const SizedBox(height: 20),
                        FilledButton.icon(
                          onPressed:
                              state.phase == CompressionPhase.picking ||
                                  state.phase == CompressionPhase.running ||
                                  state.phase == CompressionPhase.paused
                              ? null
                              : () => unawaited(cubit.pickVideo()),
                          icon: const Icon(Icons.video_file_outlined),
                          label: Text(
                            state.phase == CompressionPhase.picking
                                ? context.localeKeys.pleaseWait
                                : context.localeKeys.compressionPickVideo,
                          ),
                        ),
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

final class _CompressionRunningDialog extends HookWidget {
  const _CompressionRunningDialog({required this.cubit});
  final CompressionCubit cubit;

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (context.mounted) unawaited(cubit.start());
      });
      return null;
    }, [cubit]);

    return BlocSignalListener<CompressionCubit, CompressionState>(
      bloc: cubit,
      listenWhen: (previous, current) =>
          previous.phase != current.phase &&
          (current.phase == CompressionPhase.completed ||
              current.phase == CompressionPhase.failure ||
              current.phase == CompressionPhase.cancelled),
      listener: (context, state) =>
          Navigator.of(context, rootNavigator: true).pop(),
      child: BlocSignalBuilder<CompressionCubit, CompressionState>(
        bloc: cubit,
        builder: (context, state) => Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 16),
            LinearProgressIndicator(value: state.progress),
            const SizedBox(height: 12),
            Text('${(state.progress * 100).round()}%'),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: state.phase == CompressionPhase.running
                      ? () => unawaited(cubit.pause())
                      : state.phase == CompressionPhase.paused
                      ? () => unawaited(cubit.resume())
                      : null,
                  child: Text(
                    state.phase == CompressionPhase.paused
                        ? context.localeKeys.compressionResume
                        : context.localeKeys.compressionPause,
                  ),
                ),
                TextButton(
                  onPressed:
                      state.phase == CompressionPhase.running ||
                          state.phase == CompressionPhase.paused
                      ? () => unawaited(cubit.cancel())
                      : null,
                  child: Text(context.localeKeys.cancel),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

final class _CompressionError extends StatelessWidget {
  const _CompressionError({required this.error});
  final String? error;

  @override
  Widget build(BuildContext context) {
    final message = error?.contains('E_TARGET_EXCEEDED') == true
        ? context.localeKeys.compressionTargetExceeded
        : error?.contains('E_TARGET_INFEASIBLE') == true
        ? context.localeKeys.compressionTargetInfeasible
        : error ?? context.localeKeys.error;
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
