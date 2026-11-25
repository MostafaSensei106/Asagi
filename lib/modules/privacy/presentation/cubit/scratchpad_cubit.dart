import 'package:bloc_signals/bloc_signals.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/repositories/scratchpad_repository.dart';
part 'scratchpad_cubit.freezed.dart';

@freezed
sealed class ScratchpadState with _$ScratchpadState {
  const factory ScratchpadState({
    @Default(false) bool cleaning,
    @Default(false) bool failed,
  }) = _ScratchpadState;
}

final class ScratchpadCubit extends CubitSignal<ScratchpadState> {
  ScratchpadCubit(this._repository)
    : super(initialState: const ScratchpadState());
  final ScratchpadRepository _repository;
  Future<void> clear() async {
    if (stateValue.cleaning) return;
    emit(const ScratchpadState(cleaning: true));
    try {
      await _repository.clear();
      if (!isClosed) emit(const ScratchpadState());
    } on Object {
      if (!isClosed) emit(const ScratchpadState(failed: true));
    }
  }
}
