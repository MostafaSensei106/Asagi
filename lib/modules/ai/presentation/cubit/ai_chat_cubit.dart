import 'dart:async';

import 'package:bloc_signals/bloc_signals.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/preferences/domain/repositories/settings_repository.dart';
import '../../domain/entities/ai_cancellation.dart';
import '../../domain/entities/ai_models.dart';
import '../../domain/entities/ai_settings.dart';
import '../../domain/repositories/ai_conversation_repository.dart';
import '../../domain/repositories/ai_media_repository.dart';
import '../../domain/repositories/ai_runtime_repository.dart';
import '../../domain/repositories/ai_tool_repository.dart';
part 'ai_chat_cubit.freezed.dart';

@freezed
sealed class AiChatState with _$AiChatState {
  const factory AiChatState({
    @Default([]) List<AiMessage> messages,
    @Default(false) bool busy,
    @Default(false) bool failed,
    @Default('') String reply,
    @Default('') String thinking,
    AiDocument? attachment,
    @Default([]) List<AiToolProposal> proposals,
  }) = _AiChatState;
}

final class AiChatCubit extends CubitSignal<AiChatState> {
  AiChatCubit(
    this._runtime,
    this._history,
    this._media,
    this._tools,
    this._toolSettings,
  ) : super(initialState: const AiChatState());
  final AiRuntimeRepository _runtime;
  final AiConversationRepository _history;
  final AiMediaRepository _media;
  final AiToolRepository _tools;
  final SettingsRepository<AiToolSettings> _toolSettings;
  int _generation = 0;
  Future<void>? _sending;
  Future<void>? _toolExecution;
  AiCancellation? _cancellation;
  bool _executingTool = false;
  Future<void> load() async {
    final generation = _generation;
    try {
      final messages = await _history.load();
      if (!isClosed && generation == _generation) {
        emit(stateValue.copyWith(messages: messages));
      }
    } on Object {
      if (!isClosed) emit(stateValue.copyWith(failed: true));
    }
  }

  Future<void> attach() async {
    if (stateValue.busy) return;
    final generation = ++_generation;
    emit(stateValue.copyWith(busy: true, failed: false));
    try {
      final document = await _media.pickAttachment();
      if (!isClosed && generation == _generation) {
        emit(stateValue.copyWith(attachment: document));
      }
    } on Object {
      if (!isClosed && generation == _generation) {
        emit(stateValue.copyWith(failed: true));
      }
    } finally {
      if (!isClosed && generation == _generation) {
        emit(stateValue.copyWith(busy: false));
      }
    }
  }

  void detach() {
    if (!stateValue.busy) emit(stateValue.copyWith(attachment: null));
  }

  Future<void> send(String prompt) {
    if (stateValue.busy || prompt.trim().isEmpty) return Future<void>.value();
    return _sending = _send(prompt.trim());
  }

  Future<void> _send(String prompt) async {
    final generation = ++_generation;
    final cancellation = AiCancellation();
    _cancellation = cancellation;
    final history = stateValue.messages;
    final attachment = stateValue.attachment;
    emit(
      stateValue.copyWith(
        busy: true,
        failed: false,
        reply: '',
        thinking: '',
        proposals: [],
        messages: [
          ...history,
          AiMessage(text: prompt),
        ],
      ),
    );
    try {
      final context = attachment == null
          ? ''
          : await _media.describe(attachment, token: cancellation);
      cancellation.check();
      final user = AiMessage(text: prompt, context: context);
      if (!isClosed) emit(stateValue.copyWith(messages: [...history, user]));
      await for (final delta in _runtime.reply(
        history,
        '$prompt\n$context',
        toolDocument: attachment,
        token: cancellation,
      )) {
        if (isClosed || generation != _generation) return;
        emit(
          stateValue.copyWith(
            reply: stateValue.reply + delta.text,
            thinking: stateValue.thinking + delta.thinking,
            proposals: [
              ...stateValue.proposals,
              if (delta.proposal != null) delta.proposal!,
            ],
          ),
        );
      }
      if (isClosed || generation != _generation) return;
      final messages = [
        ...stateValue.messages,
        AiMessage(
          text: stateValue.reply,
          user: false,
          thinking: stateValue.thinking,
        ),
      ];
      emit(
        stateValue.copyWith(
          messages: messages,
          busy: false,
          reply: '',
          thinking: '',
          attachment: null,
        ),
      );
      await _history.save(messages);
      if (!(await _toolSettings.load()).confirmDestructive) {
        for (final proposal in List<AiToolProposal>.of(stateValue.proposals)) {
          await execute(proposal);
        }
      }
    } on Object {
      if (!isClosed && generation == _generation) {
        emit(
          stateValue.copyWith(busy: false, failed: !cancellation.isCancelled),
        );
      }
    } finally {
      cancellation.cancel();
      _cancellation = null;
    }
  }

  Future<void> execute(AiToolProposal proposal) {
    if (stateValue.busy || !stateValue.proposals.contains(proposal)) {
      return Future<void>.value();
    }
    return _toolExecution = _execute(proposal);
  }

  Future<void> _execute(AiToolProposal proposal) async {
    if (stateValue.busy || !stateValue.proposals.contains(proposal)) return;
    _executingTool = true;
    emit(stateValue.copyWith(busy: true, failed: false));
    try {
      final path = await _tools.execute(
        proposal.document,
        proposal.operation,
        startMs: proposal.startMs,
        endMs: proposal.endMs,
      );
      if (!isClosed) {
        final messages = [
          ...stateValue.messages,
          AiMessage(text: Uri.file(path).toString(), user: false),
        ];
        emit(
          stateValue.copyWith(
            messages: messages,
            proposals: stateValue.proposals
                .where((p) => p != proposal)
                .toList(),
          ),
        );
        await _history.save(messages);
      }
    } on Object {
      if (!isClosed) emit(stateValue.copyWith(failed: true));
    } finally {
      _executingTool = false;
      if (!isClosed) emit(stateValue.copyWith(busy: false));
    }
  }

  void reject(AiToolProposal proposal) => emit(
    stateValue.copyWith(
      proposals: stateValue.proposals.where((p) => p != proposal).toList(),
    ),
  );
  Future<void> cancel() async {
    _cancellation?.cancel();
    if (_executingTool) {
      await _tools.cancel();
      await _toolExecution;
    }
    await _sending;
  }

  Future<void> clear() async {
    await cancel();
    ++_generation;
    try {
      await _history.clear();
      if (!isClosed) emit(const AiChatState());
    } on Object {
      if (!isClosed) emit(stateValue.copyWith(failed: true));
    }
  }

  @override
  Future<void> close() async {
    await cancel();
    return super.close();
  }
}
