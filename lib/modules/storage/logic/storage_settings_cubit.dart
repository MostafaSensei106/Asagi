import 'dart:async';

import 'package:bloc_signals/bloc_signals.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../domain/repositories/storage_repository.dart';

part 'storage_settings_state.dart';
part 'storage_settings_cubit.freezed.dart';

@injectable
final class StorageSettingsCubit extends CubitSignal<StorageSettingsState> {
  StorageSettingsCubit(this._repository)
    : super(initialState: const StorageSettingsState()) {
    unawaited(load());
  }

  final StorageRepository _repository;

  Future<void> load() async {
    emit(stateValue.copyWith(isLoading: true, error: false));
    try {
      final jobs = await _repository.interruptedJobIds();
      if (!isClosed) emit(stateValue.copyWith(jobIds: jobs, isLoading: false));
    } catch (_) {
      if (!isClosed) emit(stateValue.copyWith(isLoading: false, error: true));
    }
  }

  Future<void> clean() async {
    emit(stateValue.copyWith(isCleaning: true, error: false));
    try {
      await _repository.cleanInterruptedJobs();
      if (!isClosed) emit(stateValue.copyWith(isCleaning: false));
      await load();
    } catch (_) {
      if (!isClosed) emit(stateValue.copyWith(isCleaning: false, error: true));
    }
  }
}
