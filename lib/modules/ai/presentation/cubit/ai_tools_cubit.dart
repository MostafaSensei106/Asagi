import 'package:bloc_signals/bloc_signals.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/ai_models.dart';
import '../../domain/repositories/ai_tool_repository.dart';
part 'ai_tools_cubit.freezed.dart';

@freezed
sealed class AiToolsState with _$AiToolsState {
  const factory AiToolsState({
    AiDocument? document,
    @Default(false) bool busy,
    @Default(false) bool failed,
    String? output,
  }) = _AiToolsState;
}

final class AiToolsCubit extends CubitSignal<AiToolsState> {
  AiToolsCubit(this._repository) : super(initialState: const AiToolsState());
  final AiToolRepository _repository;
  Future<void> _run(Future<void> Function() action) async {
    if (stateValue.busy) return;
    emit(stateValue.copyWith(busy: true, failed: false, output: null));
    try {
      await action();
    } on Object {
      if (!isClosed) emit(stateValue.copyWith(failed: true));
    } finally {
      if (!isClosed) emit(stateValue.copyWith(busy: false));
    }
  }

  Future<void> pick() => _run(() async {
    final doc = await _repository.pick();
    if (!isClosed && doc != null) emit(stateValue.copyWith(document: doc));
  });
  Future<void> execute(
    AiToolOperation operation, {
    int startMs = 0,
    int endMs = 0,
  }) => _run(() async {
    final document = stateValue.document;
    if (document == null) return;
    final output = await _repository.execute(
      document,
      operation,
      startMs: startMs,
      endMs: endMs,
    );
    if (!isClosed) emit(stateValue.copyWith(output: output));
  });
  Future<void> cancel() async {
    if (stateValue.busy) await _repository.cancel();
  }

  @override
  Future<void> close() async {
    await cancel();
    return super.close();
  }
}
