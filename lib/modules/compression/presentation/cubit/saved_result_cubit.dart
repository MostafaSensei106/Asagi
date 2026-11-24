import 'package:bloc_signals/bloc_signals.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:material_ui/material_ui.dart' show Rect;
import 'package:share_plus/share_plus.dart';

import '../../../../core/services/share/base_share_service.dart';
import '../../domain/models/compression_record.dart';
import '../../domain/repositories/video_compression_repository.dart';

part 'saved_result_cubit.freezed.dart';

@freezed
sealed class SavedResultState with _$SavedResultState {
  const factory SavedResultState.loading() = SavedResultLoading;
  const factory SavedResultState.loaded(CompressionRecord record) =
      SavedResultLoaded;
  const factory SavedResultState.unavailable() = SavedResultUnavailable;
}

final class SavedResultCubit extends CubitSignal<SavedResultState> {
  SavedResultCubit(this._repository, this._share)
    : super(initialState: const SavedResultState.loading());
  final VideoCompressionRepository _repository;
  final BaseShareService _share;

  Future<void> load(String jobId) async {
    try {
      final records = await _repository.history();
      final matching = records.where((record) => record.jobId == jobId);
      if (!isClosed) {
        emit(
          matching.isEmpty
              ? const SavedResultState.unavailable()
              : SavedResultState.loaded(matching.first),
        );
      }
    } catch (_) {
      if (!isClosed) emit(const SavedResultState.unavailable());
    }
  }

  Future<void> share(Rect? origin) async {
    final state = stateValue;
    if (state is! SavedResultLoaded) return;
    await _share.shareFile(
      file: XFile(state.record.path),
      sharePosition: origin,
    );
  }
}
