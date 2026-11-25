import 'package:bloc_signals/bloc_signals.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/preferences/domain/repositories/settings_repository.dart';
import '../../domain/entities/ai_models.dart';
import '../../domain/entities/ai_settings.dart';
import '../../domain/repositories/ai_model_repository.dart';
import '../../domain/repositories/ai_runtime_repository.dart';
part 'ai_models_cubit.freezed.dart';

@freezed
sealed class AiModelsState with _$AiModelsState {
  const factory AiModelsState({
    @Default([]) List<AiModelChoice> models,
    @Default(true) bool loading,
    @Default(false) bool busy,
    @Default(false) bool failed,
    @Default(0) int progress,
    AiModelChoice? imported,
    String? activeChat,
    String? activeEmbedding,
  }) = _AiModelsState;
}

final class AiModelsCubit extends CubitSignal<AiModelsState> {
  AiModelsCubit(this._repository, this._runtime, this._settings)
    : super(initialState: const AiModelsState());
  bool _ownsInstall = false;
  final AiModelRepository _repository;
  final AiRuntimeRepository _runtime;
  final SettingsRepository<AiModelSettings> _settings;
  Future<void> load() async {
    try {
      final settings = await _settings.load();
      final models = await _repository.list();
      if (!isClosed) {
        emit(
          stateValue.copyWith(
            failed: false,
            models: models,
            loading: false,
            activeChat: settings.chatModelId,
            activeEmbedding: settings.embeddingModelId,
          ),
        );
      }
    } on Object {
      if (!isClosed) emit(stateValue.copyWith(loading: false, failed: true));
    }
  }

  Future<void> _run(Future<void> Function() action) async {
    if (stateValue.busy) return;
    emit(stateValue.copyWith(busy: true, failed: false, progress: 0));
    try {
      await action();
      if (!isClosed) await load();
    } on Object {
      if (!isClosed) emit(stateValue.copyWith(failed: true));
    } finally {
      if (!isClosed) emit(stateValue.copyWith(busy: false));
    }
  }

  Future<void> install(String id) => _run(() async {
    _ownsInstall = true;
    try {
      await _repository.install(
        id,
        onProgress: (progress) {
          if (!isClosed) emit(stateValue.copyWith(progress: progress));
        },
      );
    } finally {
      _ownsInstall = false;
    }
  });
  Future<void> importModel() => _run(() async {
    final model = await _repository.importModel();
    if (!isClosed) emit(stateValue.copyWith(imported: model));
  });
  Future<void> select(AiModelChoice model) =>
      _run(() => _repository.select(model));
  Future<void> remove(AiModelChoice model) => _run(() async {
    await _runtime.unload();
    await _repository.remove(model);
  });
  Future<void> resetSelection() => _run(() async {
    await _settings.reset();
    _runtime.releaseWhenIdle();
  });
  void cancel() {
    if (_ownsInstall) _repository.cancelInstall();
  }

  @override
  Future<void> close() async {
    cancel();
    return super.close();
  }
}
