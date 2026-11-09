import 'dart:async';
import 'dart:io';

import 'package:bloc_signals_flutter/bloc_signals_flutter.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:kaisel/kaisel.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/extensions/extensions.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/widgets/navigation/app_bar/app_bar_component.dart';
import '../cubit/compression_cubit.dart';
import '../cubit/compression_state.dart';
import '../widgets/compression_advanced_controls.dart';
import '../widgets/compression_plan_summary.dart';
import '../widgets/video_preview.dart';

final class CompressionSetupPage extends HookWidget {
  const CompressionSetupPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocSignalProvider.of<CompressionCubit>(context);
    final target = useTextEditingController(
      text: '${cubit.stateValue.targetMb}',
    );
    final valid = useState(true);
    return Scaffold(
      appBar: AppBarComponent(title: context.localeKeys.compressionSetupTitle),
      body: BlocSignalBuilder<CompressionCubit, CompressionState>(
        builder: (context, state) {
          final video = state.video;
          if (video == null) {
            return Center(
              child: Text(context.localeKeys.videoSelectDescription),
            );
          }
          return ListView(
            padding: const EdgeInsets.all(24),
            children: [
              Text(video.name, style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: 8),
              VideoPreview(
                path: video.path,
                title: context.localeKeys.compressionPreviewBefore,
              ),
              const SizedBox(height: 16),
              Text(
                '${context.localeKeys.compressionOriginalSize}: '
                '${(video.metadata.fileSizeBytes / 1000000).toStringAsFixed(1)} MB',
              ),
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
                        target.text = '${preset.toInt()}';
                        valid.value = true;
                        cubit.setTargetMb(preset);
                      },
                    ),
                  Chip(label: Text(context.localeKeys.compressionCustom)),
                ],
              ),
              const SizedBox(height: 16),
              TextField(
                controller: target,
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
                decoration: InputDecoration(
                  labelText: context.localeKeys.compressionTargetMb,
                  errorText: valid.value
                      ? null
                      : context.localeKeys.compressionInvalidTarget,
                  border: const OutlineInputBorder(),
                ),
                onChanged: (text) {
                  final parsed = double.tryParse(text.replaceAll(',', '.'));
                  valid.value = parsed != null && parsed.isFinite && parsed > 0;
                  if (valid.value) cubit.setTargetMb(parsed!);
                },
              ),
              const SizedBox(height: 24),
              if (Platform.isAndroid)
                CompressionAdvancedControls(
                  preferences: state.preferences,
                  sourceShortEdge: video.metadata.width < video.metadata.height
                      ? video.metadata.width
                      : video.metadata.height,
                  onChanged: (value) => unawaited(cubit.setPreferences(value)),
                ),
              CompressionPlanSummary(
                plan: state.previewPlan,
                isLoading: state.planning,
              ),
              const SizedBox(height: 16),
              FilledButton.icon(
                onPressed:
                    !valid.value ||
                        state.planning ||
                        state.previewPlan == null ||
                        state.previewPlan!.isInfeasible
                    ? null
                    : () {
                        unawaited(cubit.start());
                        unawaited(
                          context.push(const CompressionProgressRoute()),
                        );
                      },
                icon: const Icon(Icons.compress),
                label: Text(context.localeKeys.compressionStart),
              ),
            ],
          );
        },
      ),
    );
  }
}
