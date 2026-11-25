import 'package:bloc_signals/bloc_signals.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/repositories/ai_runtime_repository.dart';
part 'ai_benchmark_cubit.freezed.dart';

@freezed
sealed class AiBenchmarkState with _$AiBenchmarkState {
  const factory AiBenchmarkState({
    @Default(false) bool busy,
    @Default(false) bool failed,
    int? elapsedMs,
  }) = _AiBenchmarkState;
}

final class AiBenchmarkCubit extends CubitSignal<AiBenchmarkState> {
  AiBenchmarkCubit(this._runtime)
    : super(initialState: const AiBenchmarkState());
  final AiRuntimeRepository _runtime;
  Future<void> run() async {
    if (stateValue.busy) return;
    emit(const AiBenchmarkState(busy: true));
    try {
      final elapsed = await _runtime.benchmark();
      if (!isClosed) emit(AiBenchmarkState(elapsedMs: elapsed));
    } on Object {
      if (!isClosed) emit(const AiBenchmarkState(failed: true));
    }
  }
}
