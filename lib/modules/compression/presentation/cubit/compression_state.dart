import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/compression/domain/models/compression_output.dart';
import '../../../../core/compression/domain/models/compression_plan.dart';
import '../../../../core/compression/domain/models/compression_preferences.dart';
import '../../domain/models/compression_record.dart';
import '../../domain/models/selected_video.dart';

part 'compression_state.freezed.dart';

enum CompressionPhase {
  idle,
  picking,
  ready,
  running,
  paused,
  completed,
  cancelled,
  failure,
}

@freezed
sealed class CompressionState with _$CompressionState {
  const factory CompressionState({
    @Default(CompressionPhase.idle) CompressionPhase phase,
    SelectedVideo? video,
    @Default(16) double targetMb,
    @Default(CompressionPreferences()) CompressionPreferences preferences,
    CompressionPlan? previewPlan,
    @Default(false) bool planning,
    @Default(0) double progress,
    CompressionOutput? output,
    String? error,
    @Default(<CompressionRecord>[]) List<CompressionRecord> history,
  }) = _CompressionState;
}
