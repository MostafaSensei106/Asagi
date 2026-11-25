import 'package:bloc_signals/bloc_signals.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/repositories/permission_repository.dart';
part 'permissions_cubit.freezed.dart';

@freezed
sealed class PermissionsState with _$PermissionsState {
  const factory PermissionsState({
    @Default(AppPermissionStatus.denied) AppPermissionStatus notification,
    @Default(true) bool loading,
    @Default(false) bool failed,
  }) = _PermissionsState;
}

final class PermissionsCubit extends CubitSignal<PermissionsState> {
  PermissionsCubit(this._repository)
    : super(initialState: const PermissionsState());
  final PermissionRepository _repository;
  int _generation = 0;
  bool _requesting = false;
  Future<void> refresh() async {
    if (_requesting) return;
    final generation = ++_generation;
    try {
      final value = await _repository.notificationStatus();
      if (!isClosed && generation == _generation) {
        emit(PermissionsState(notification: value, loading: false));
      }
    } on Object {
      if (!isClosed && generation == _generation) {
        emit(stateValue.copyWith(loading: false, failed: true));
      }
    }
  }

  Future<void> request() async {
    if (_requesting ||
        stateValue.notification == AppPermissionStatus.unsupported) {
      return;
    }
    var failed = false;
    _requesting = true;
    ++_generation;
    emit(stateValue.copyWith(loading: true, failed: false));
    try {
      if (stateValue.notification == AppPermissionStatus.permanentlyDenied ||
          stateValue.notification == AppPermissionStatus.restricted) {
        if (!await _repository.openSettings()) {
          throw StateError('E_PERMISSION_SETTINGS');
        }
      } else {
        await _repository.requestNotifications();
      }
    } on Object {
      failed = true;
      if (!isClosed) emit(stateValue.copyWith(failed: true));
    } finally {
      _requesting = false;
      if (!isClosed) await refresh();
      if (!isClosed && failed) emit(stateValue.copyWith(failed: true));
    }
  }

  Future<void> openSystemSettings() async {
    if (_requesting) return;
    var failed = false;
    try {
      if (!await _repository.openSettings()) failed = true;
    } on Object {
      failed = true;
    }
    await refresh();
    if (!isClosed && failed) emit(stateValue.copyWith(failed: true));
  }
}
