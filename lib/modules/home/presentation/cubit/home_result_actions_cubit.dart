import 'package:bloc_signals/bloc_signals.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:material_ui/material_ui.dart' show Rect;
import 'package:share_plus/share_plus.dart';

import '../../../../core/compression/domain/models/compression_output.dart';
import '../../../../core/services/share/base_share_service.dart';
import '../../../compression/domain/repositories/video_compression_repository.dart';

part 'home_result_actions_cubit.freezed.dart';

enum HomeResultAction { save, share }

@freezed
sealed class HomeResultActionsState with _$HomeResultActionsState {
  const factory HomeResultActionsState.idle({@Default(false) bool saved}) =
      HomeResultIdle;
  const factory HomeResultActionsState.busy(
    HomeResultAction action, {
    required bool saved,
  }) = HomeResultBusy;
  const factory HomeResultActionsState.failure(
    HomeResultAction action, {
    required bool saved,
  }) = HomeResultFailure;
}

@injectable
final class HomeResultActionsCubit extends CubitSignal<HomeResultActionsState> {
  HomeResultActionsCubit(this._videos, this._share)
    : super(initialState: const HomeResultActionsState.idle());
  final VideoCompressionRepository _videos;
  final BaseShareService _share;
  CompressionOutput? _output;
  int _generation = 0;

  void setOutput(CompressionOutput? output) {
    if (identical(_output, output)) return;
    _output = output;
    ++_generation;
    if (!isClosed) emit(const HomeResultActionsState.idle());
  }

  Future<void> save() => _perform(HomeResultAction.save);
  Future<void> share(Rect? origin) => _perform(HomeResultAction.share, origin);

  Future<void> _perform(HomeResultAction action, [Rect? origin]) async {
    final output = _output;
    if (output == null || stateValue is HomeResultBusy || isClosed) return;
    final saved = stateValue.saved;
    if (action == HomeResultAction.save && saved) return;
    final generation = _generation;
    emit(HomeResultActionsState.busy(action, saved: saved));
    try {
      switch (action) {
        case HomeResultAction.save:
          await _videos.saveToGallery(output.path);
        case HomeResultAction.share:
          await _share.shareFile(
            file: XFile(output.path),
            sharePosition: origin,
          );
      }
      if (!isClosed && generation == _generation) {
        emit(
          HomeResultActionsState.idle(
            saved: saved || action == HomeResultAction.save,
          ),
        );
      }
    } on Object {
      if (!isClosed && generation == _generation) {
        emit(HomeResultActionsState.failure(action, saved: saved));
      }
    }
  }
}
