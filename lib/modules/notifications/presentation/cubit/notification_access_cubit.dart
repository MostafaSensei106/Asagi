import 'package:bloc_signals/bloc_signals.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/utils/use_case/use_case_base.dart';
import '../../domain/use_cases/open_notification_channel.dart';
import '../../domain/use_cases/read_notification_access.dart';
import '../../domain/use_cases/request_notification_access.dart';
import 'notification_access_state.dart';

@lazySingleton
final class NotificationAccessCubit
    extends CubitSignal<NotificationAccessState> {
  NotificationAccessCubit(this._read, this._request, this._open)
    : super(initialState: const NotificationAccessState.ready());
  final ReadNotificationAccessUseCase _read;
  final RequestNotificationAccessUseCase _request;
  final OpenNotificationChannelUseCase _open;
  bool _requesting = false;
  Future<void> refresh() async {
    final result = await _read(const NoParams());
    if (isClosed) return;
    result.when(
      success: (access) => emit(
        NotificationAccessState.ready(
          permission: access.permission,
          blockedChannels: access.blockedChannels,
        ),
      ),
      failure: (_) => _failure(),
    );
  }

  Future<void> requestPermission() async {
    if (_requesting) return;
    _requesting = true;
    emit(
      NotificationAccessState.requesting(
        permission: stateValue.permission,
        blockedChannels: stateValue.blockedChannels,
      ),
    );
    try {
      final result = await _request(const NoParams());
      await result.when<Future<void>>(
        success: (_) => refresh(),
        failure: (_) async => _failure(),
      );
    } finally {
      _requesting = false;
    }
  }

  Future<void> openChannelSettings(String id) async {
    final result = await _open(id);
    result.when(success: (_) {}, failure: (_) => _failure());
  }

  void _failure() {
    if (!isClosed) {
      emit(
        NotificationAccessState.failure(
          permission: stateValue.permission,
          blockedChannels: stateValue.blockedChannels,
        ),
      );
    }
  }
}
