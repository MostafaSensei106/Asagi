import 'package:bloc_signals/bloc_signals.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/ai_models.dart';
import '../../domain/repositories/ai_model_repository.dart';
part 'ai_import_cubit.freezed.dart';

@freezed
sealed class AiImportState with _$AiImportState {
  const factory AiImportState({
    AiDocument? document,
    AiModelChoice? imported,
    @Default(false) bool busy,
    @Default(false) bool failed,
  }) = _AiImportState;
}

final class AiImportCubit extends CubitSignal<AiImportState> {
  AiImportCubit(this._repository) : super(initialState: const AiImportState());
  final AiModelRepository _repository;
  Future<void> pick() async {
    if (stateValue.busy) return;
    emit(stateValue.copyWith(busy: true, failed: false));
    try {
      final document = await _repository.pickImportFile();
      if (!isClosed && document != null) {
        emit(AiImportState(document: document));
      }
    } on Object {
      if (!isClosed) emit(stateValue.copyWith(failed: true));
    } finally {
      if (!isClosed) emit(stateValue.copyWith(busy: false));
    }
  }

  Future<void> importFile() async {
    final document = stateValue.document;
    if (stateValue.busy || document == null) return;
    emit(stateValue.copyWith(busy: true, failed: false));
    try {
      final imported = await _repository.importFile(document);
      if (!isClosed) emit(stateValue.copyWith(imported: imported));
    } on Object {
      if (!isClosed) emit(stateValue.copyWith(failed: true));
    } finally {
      if (!isClosed) emit(stateValue.copyWith(busy: false));
    }
  }
}
