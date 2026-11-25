import 'dart:async';

import 'package:bloc_signals_flutter/bloc_signals_flutter.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/di/di.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/design_system/tokens/tokens.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/ai_models.dart';
import '../../domain/entities/ai_settings.dart';
import '../../domain/repositories/ai_tool_repository.dart';
import '../cubit/ai_tools_cubit.dart';
import 'ai_platform_support.dart';

final class AiToolsWorkbench extends HookWidget {
  const AiToolsWorkbench({required this.settings, super.key});
  final AiToolSettings settings;
  @override
  Widget build(BuildContext context) {
    final start = useTextEditingController(text: '0');
    final end = useTextEditingController();
    final text = context.localeKeys;
    if (!supportsLocalAi) return Text(text.aiAndroidOnly);
    return BlocSignalProvider(
      create: (_) => AiToolsCubit(getIt<AiToolRepository>()),
      child: BlocSignalBuilder<AiToolsCubit, AiToolsState>(
        builder: (context, state) {
          final cubit = BlocSignalProvider.of<AiToolsCubit>(context);
          Future<void> execute(AiToolOperation operation) async {
            if (settings.confirmDestructive) {
              final confirmed = await DialogComponent.confirm(
                context: context,
                title: text.confirm,
                message: text.aiToolCreatesCopy,
                confirmLabel: text.confirm,
              );
              if (confirmed != true) return;
            }
            final startSeconds = double.tryParse(start.text);
            final endSeconds = end.text.trim().isEmpty
                ? 0.0
                : double.tryParse(end.text);
            if (startSeconds == null ||
                endSeconds == null ||
                !startSeconds.isFinite ||
                !endSeconds.isFinite ||
                startSeconds < 0 ||
                (endSeconds != 0 && endSeconds <= startSeconds)) {
              if (context.mounted) {
                context.toast.showError(context, text.aiOperationFailed);
              }
              return;
            }
            await cubit.execute(
              operation,
              startMs: (startSeconds * 1000).round(),
              endMs: (endSeconds * 1000).round(),
            );
          }

          return CardComponent.filled(
            padding: const EdgeInsets.all(AppSpacing.medium),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(AppSpacing.large),
                Text(text.aiToolCreatesCopy),
                if (state.busy) const LinearProgressIndicator(),
                if (state.failed) Text(text.aiOperationFailed),
                TextButtonComponent(
                  onPressed: state.busy ? null : () => unawaited(cubit.pick()),
                  label: state.document?.name ?? text.browseFiles,
                ),
                TextFormFieldComponent(
                  controller: start,
                  label: text.aiTrimStart,
                  keyboardType: TextInputType.number,
                ),
                TextFormFieldComponent(
                  controller: end,
                  label: text.aiTrimEnd,
                  keyboardType: TextInputType.number,
                ),
                Wrap(
                  children: [
                    for (final operation in AiToolOperation.values)
                      TextButtonComponent(
                        onPressed: state.busy || state.document == null
                            ? null
                            : () => unawaited(execute(operation)),
                        label: switch (operation) {
                          AiToolOperation.trim => text.directVideoTrimming,
                          AiToolOperation.extractAudio =>
                            text.audioTrackExtraction,
                          AiToolOperation.stripMetadata =>
                            text.metadataScrubber,
                        },
                      ),
                    if (state.busy)
                      TextButtonComponent(
                        onPressed: () => unawaited(cubit.cancel()),
                        label: text.cancel,
                      ),
                  ],
                ),
                if (state.output != null)
                  SelectableText(text.aiOutputSaved(state.output!)),
              ],
            ),
          );
        },
      ),
    );
  }
}
