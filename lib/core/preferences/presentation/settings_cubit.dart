import 'dart:async';

import 'package:bloc_signals/bloc_signals.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/repositories/settings_repository.dart';

part 'settings_cubit.freezed.dart';

enum SettingsPhase { loading, ready, saving, failure }

@freezed
sealed class SettingsState<T> with _$SettingsState<T> {
  const factory SettingsState({
    required T value,
    @Default(SettingsPhase.loading) SettingsPhase phase,
    @Default(false) bool recovered,
  }) = _SettingsState<T>;
}

final class SettingsCubit<T> extends CubitSignal<SettingsState<T>> {
  SettingsCubit(this.repository)
    : super(initialState: SettingsState(value: repository.current)) {
    _subscription = repository.changes.listen((value) {
      if (!isClosed) {
        emit(
          SettingsState(
            value: value,
            phase: SettingsPhase.ready,
            recovered: repository.recovered,
          ),
        );
      }
    });
    unawaited(load());
  }
  final SettingsRepository<T> repository;
  late final StreamSubscription<T> _subscription;
  Future<T> Function()? _retry;
  Future<void> retry() => _run(_retry ?? repository.load);
  Future<void> load() => _run(repository.load, loading: true);
  Future<void> update(T Function(T) change) =>
      _run(() => repository.update(change));
  Future<void> reset() => _run(repository.reset);
  Future<void> _run(Future<T> Function() action, {bool loading = false}) async {
    if (isClosed) return;
    _retry = action;
    emit(
      stateValue.copyWith(
        phase: loading ? SettingsPhase.loading : SettingsPhase.saving,
      ),
    );
    try {
      final value = await action();
      if (!isClosed) {
        emit(
          SettingsState(
            value: value,
            phase: SettingsPhase.ready,
            recovered: repository.recovered,
          ),
        );
      }
    } on Object {
      if (!isClosed) emit(stateValue.copyWith(phase: SettingsPhase.failure));
    }
  }

  @override
  Future<void> close() async {
    await _subscription.cancel();
    return super.close();
  }
}
