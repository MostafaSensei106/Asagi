import 'dart:async';

import 'package:bloc_signals/bloc_signals.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../domain/models/open_source_license_info.dart';
import '../domain/repositories/open_source_license_repository.dart';

part 'open_source_licenses_cubit.freezed.dart';

@freezed
sealed class OpenSourceLicensesState with _$OpenSourceLicensesState {
  const factory OpenSourceLicensesState.loading() = _Loading;
  const factory OpenSourceLicensesState.loaded(OpenSourceLicenseInfo info) =
      _Loaded;
  const factory OpenSourceLicensesState.failure() = _Failure;
}

@injectable
final class OpenSourceLicensesCubit
    extends CubitSignal<OpenSourceLicensesState> {
  OpenSourceLicensesCubit(this._repository)
    : super(initialState: const OpenSourceLicensesState.loading()) {
    unawaited(load());
  }

  final OpenSourceLicenseRepository _repository;

  Future<void> load() async {
    emit(const OpenSourceLicensesState.loading());
    try {
      final notices = await _repository.loadNotices();
      if (!isClosed) emit(OpenSourceLicensesState.loaded(notices));
    } catch (_) {
      if (!isClosed) emit(const OpenSourceLicensesState.failure());
    }
  }
}
