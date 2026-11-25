import 'dart:async';

import 'package:bloc_signals_flutter/bloc_signals_flutter.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:kaisel/kaisel.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/di/di.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/preferences/domain/repositories/settings_repository.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/widgets/design_system/tokens/tokens.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/ai_models.dart';
import '../../domain/entities/ai_settings.dart';
import '../../domain/repositories/ai_conversation_repository.dart';
import '../../domain/repositories/ai_media_repository.dart';
import '../../domain/repositories/ai_runtime_repository.dart';
import '../../domain/repositories/ai_tool_repository.dart';
import '../cubit/ai_chat_cubit.dart';
import '../widgets/ai_platform_support.dart';

final class AiConversationSheet extends HookWidget {
  const AiConversationSheet({super.key});
  @override
  Widget build(BuildContext context) {
    final input = useTextEditingController();
    final text = context.localeKeys;
    if (!supportsLocalAi) return const AiUnsupportedPage();
    return BlocSignalProvider(
      create: (_) {
        final cubit = AiChatCubit(
          getIt<AiRuntimeRepository>(),
          getIt<AiConversationRepository>(),
          getIt<AiMediaRepository>(),
          getIt<AiToolRepository>(),
          getIt<SettingsRepository<AiToolSettings>>(),
        );
        unawaited(cubit.load());
        return cubit;
      },
      child: BlocSignalBuilder<AiChatCubit, AiChatState>(
        builder: (context, state) {
          final cubit = BlocSignalProvider.of<AiChatCubit>(context);
          return Scaffold(
            appBar: AppBarComponent(
              title: text.kuymoAi,
              actions: [
                IconButtonComponent(
                  tooltip: text.clear,
                  icon: Icons.delete_outline,
                  onPressed: () => unawaited(cubit.clear()),
                ),
              ],
            ),
            body: SafeArea(
              child: Column(
                children: [
                  if (state.busy) const LinearProgressIndicator(),
                  if (state.attachment != null)
                    ListTileComponent(
                      title: Text(state.attachment!.name),
                      trailing: IconButtonComponent(
                        tooltip: text.cancel,
                        icon: Icons.close,
                        onPressed: state.busy ? null : cubit.detach,
                      ),
                    ),
                  if (state.failed)
                    Padding(
                      padding: const EdgeInsets.all(AppSpacing.medium),
                      child: Text(text.aiOperationFailed),
                    ),
                  Expanded(
                    child: ListView(
                      padding: const EdgeInsets.all(AppSpacing.medium),
                      children: [
                        if (state.messages.isEmpty)
                          Column(
                            children: [
                              const BrandLogo(size: 72),
                              Text(text.aiChatWelcome),
                              TextButtonComponent(
                                onPressed: () => unawaited(
                                  context.push(const AiModelsRoute()),
                                ),
                                label: text.localModels,
                              ),
                            ],
                          ),
                        for (final message in state.messages)
                          Align(
                            alignment: message.user
                                ? AlignmentDirectional.centerEnd
                                : AlignmentDirectional.centerStart,
                            child: CardComponent.filled(
                              child: Padding(
                                padding: const EdgeInsets.all(
                                  AppSpacing.medium,
                                ),
                                child: SelectableText(message.text),
                              ),
                            ),
                          ),
                        if (state.thinking.isNotEmpty)
                          ExpansionTile(
                            title: Text(text.showReasoningThinking),
                            children: [SelectableText(state.thinking)],
                          ),
                        for (final proposal in state.proposals)
                          ListTileComponent(
                            title: Text(switch (proposal.operation) {
                              AiToolOperation.trim => text.directVideoTrimming,
                              AiToolOperation.extractAudio =>
                                text.audioTrackExtraction,
                              AiToolOperation.stripMetadata =>
                                text.metadataScrubber,
                            }),
                            subtitle: Text(
                              '${proposal.document.name}: ${proposal.startMs / 1000} – ${proposal.endMs / 1000}',
                            ),
                            trailing: Wrap(
                              children: [
                                IconButtonComponent(
                                  tooltip: text.confirm,
                                  onPressed: state.busy
                                      ? null
                                      : () =>
                                            unawaited(cubit.execute(proposal)),
                                  icon: Icons.check,
                                ),
                                IconButtonComponent(
                                  tooltip: text.cancel,
                                  onPressed: state.busy
                                      ? null
                                      : () => cubit.reject(proposal),
                                  icon: Icons.close,
                                ),
                              ],
                            ),
                          ),
                        if (state.reply.isNotEmpty)
                          Padding(
                            padding: const EdgeInsets.all(AppSpacing.medium),
                            child: SelectableText(state.reply),
                          ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(AppSpacing.medium),
                    child: Row(
                      children: [
                        IconButtonComponent(
                          tooltip: text.browseFiles,
                          onPressed: state.busy
                              ? null
                              : () => unawaited(cubit.attach()),
                          icon: Icons.attach_file,
                        ),
                        Expanded(
                          child: TextFormFieldComponent(
                            controller: input,
                            isEnable: !state.busy,
                            maxLines: 5,
                            label: text.aiMessageHint,
                          ),
                        ),
                        IconButtonComponent(
                          tooltip: state.busy ? text.cancel : text.aiSend,
                          icon: state.busy ? Icons.stop : Icons.send,
                          onPressed: () {
                            if (state.busy) {
                              unawaited(cubit.cancel());
                            } else if (input.text.trim().isNotEmpty) {
                              final prompt = input.text;
                              input.clear();
                              unawaited(cubit.send(prompt));
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
