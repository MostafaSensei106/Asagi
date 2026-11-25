import 'package:bloc_signals/bloc_signals.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/ai_models.dart';
import '../../domain/repositories/ai_search_repository.dart';
part 'ai_search_cubit.freezed.dart';

@freezed
sealed class AiSearchState with _$AiSearchState {
  const factory AiSearchState({
    @Default(false) bool busy,
    @Default(false) bool failed,
    @Default(0) int selected,
    @Default(0) int done,
    @Default(0) int total,
    @Default(0) int indexBytes,
    @Default([]) List<AiSearchHit> hits,
  }) = _AiSearchState;
}

final class AiSearchCubit extends CubitSignal<AiSearchState> {
  AiSearchCubit(this._repository) : super(initialState: const AiSearchState());
  final AiSearchRepository _repository;
  Future<void> loadStatistics() async {
    try {
      final stats = await _repository.statistics();
      if (!isClosed) {
        emit(
          stateValue.copyWith(done: stats.documents, indexBytes: stats.bytes),
        );
      }
    } on Object {
      if (!isClosed) emit(stateValue.copyWith(failed: true));
    }
  }

  Future<void> _run(Future<void> Function() action) async {
    if (stateValue.busy) return;
    emit(stateValue.copyWith(busy: true, failed: false));
    try {
      await action();
    } on Object {
      if (!isClosed) emit(stateValue.copyWith(failed: true));
    } finally {
      if (!isClosed) emit(stateValue.copyWith(busy: false));
    }
  }

  Future<void> select() => _run(() async {
    final count = await _repository.selectDocuments();
    if (!isClosed && count > 0) {
      emit(stateValue.copyWith(selected: count, hits: []));
    }
  });
  Future<void> rebuild() => _run(
    () => _repository.rebuild((done, total) {
      if (!isClosed) emit(stateValue.copyWith(done: done, total: total));
    }),
  );
  Future<void> search(String query) => _run(() async {
    final hits = await _repository.search(query);
    if (!isClosed) emit(stateValue.copyWith(hits: hits));
  });
  Future<void> clear() => _run(() async {
    await _repository.clear();
    if (!isClosed) emit(const AiSearchState());
  });
  void cancel() {
    if (stateValue.busy) _repository.cancel();
  }

  @override
  Future<void> close() async {
    cancel();
    return super.close();
  }
}
