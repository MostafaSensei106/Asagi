import 'dart:async';

import 'package:bloc_signals/bloc_signals.dart';

import '../../domain/repositories/video_compression_repository.dart';
import 'compression_state.dart';

final class CompressionCubit extends CubitSignal<CompressionState> {
  CompressionCubit(this.repository)
    : super(initialState: const CompressionState()) {
    unawaited(loadDefaultTarget());
    unawaited(loadPreferences());
  }

  final VideoCompressionRepository repository;
  StreamSubscription<double>? _progressSubscription;
  int _planVersion = 0;

  Future<bool> pickVideo() async {
    if (stateValue.phase == CompressionPhase.running ||
        stateValue.phase == CompressionPhase.paused) {
      return false;
    }
    final previous = stateValue;
    emit(previous.copyWith(phase: CompressionPhase.picking));
    try {
      final video = await repository.pickVideo();
      if (isClosed) return false;
      if (video == null) {
        emit(previous);
        return false;
      }
      emit(
        CompressionState(
          video: video,
          targetMb: stateValue.targetMb,
          preferences: stateValue.preferences,
          phase: CompressionPhase.ready,
          history: stateValue.history,
        ),
      );
      unawaited(refreshPlan());
      return true;
    } catch (error) {
      if (!isClosed) {
        emit(
          previous.copyWith(phase: CompressionPhase.failure, error: '$error'),
        );
      }
      return false;
    }
  }

  void setTargetMb(double value) {
    if (!value.isFinite || value <= 0) return;
    emit(stateValue.copyWith(targetMb: value));
    unawaited(refreshPlan());
  }

  Future<void> loadPreferences() async {
    final preferences = await repository.loadPreferences();
    if (!isClosed) {
      emit(stateValue.copyWith(preferences: preferences));
      await refreshPlan();
    }
  }

  Future<void> setPreferences(CompressionPreferences preferences) async {
    preferences.validate();
    await repository.savePreferences(preferences);
    if (!isClosed) {
      emit(stateValue.copyWith(preferences: preferences));
      await refreshPlan();
    }
  }

  Future<void> refreshPlan() async {
    final video = stateValue.video;
    if (video == null || stateValue.targetMb <= 0) return;
    final version = ++_planVersion;
    emit(stateValue.copyWith(planning: true, previewPlan: null));
    try {
      final plan = await repository.previewPlan(
        video,
        stateValue.targetMb,
        stateValue.preferences,
      );
      if (!isClosed && version == _planVersion) {
        emit(stateValue.copyWith(planning: false, previewPlan: plan));
      }
    } catch (error) {
      if (!isClosed && version == _planVersion) {
        emit(stateValue.copyWith(
          planning: false,
          previewPlan: null,
          error: '$error',
        ));
      }
    }
  }

  Future<void> loadDefaultTarget() async {
    final target = await repository.defaultTargetMb();
    if (!isClosed && stateValue.video == null) {
      emit(stateValue.copyWith(targetMb: target));
      await refreshPlan();
    }
  }

  Future<void> saveDefaultTarget(double value) async {
    if (!value.isFinite || value <= 0) return;
    await repository.setDefaultTargetMb(value);
    if (!isClosed) emit(stateValue.copyWith(targetMb: value));
  }

  Future<void> start() async {
    final current = stateValue;
    final video = current.video;
    if (video == null || current.phase == CompressionPhase.running) return;
    await _progressSubscription?.cancel();
    emit(current.copyWith(phase: CompressionPhase.running, progress: 0));
    _progressSubscription = repository.progress.listen((value) {
      if (isClosed || stateValue.phase == CompressionPhase.cancelled) return;
      // Native 100% means encoding ended; verification and saving still follow.
      emit(stateValue.copyWith(progress: value.clamp(0.0, 0.95)));
    });
    try {
      final output = await repository.compress(
        video,
        current.targetMb,
        current.preferences,
      );
      if (isClosed || stateValue.phase == CompressionPhase.cancelled) return;
      emit(
        stateValue.copyWith(
          phase: CompressionPhase.completed,
          progress: 1,
          output: output,
        ),
      );
      await loadHistory();
    } catch (error) {
      if (isClosed || stateValue.phase == CompressionPhase.cancelled) return;
      emit(
        stateValue.copyWith(phase: CompressionPhase.failure, error: '$error'),
      );
    } finally {
      await _progressSubscription?.cancel();
      _progressSubscription = null;
    }
  }

  Future<void> pause() async {
    if (stateValue.phase != CompressionPhase.running) return;
    await repository.pause();
    if (!isClosed) emit(stateValue.copyWith(phase: CompressionPhase.paused));
  }

  Future<void> resume() async {
    if (stateValue.phase != CompressionPhase.paused) return;
    await repository.resume();
    if (!isClosed) emit(stateValue.copyWith(phase: CompressionPhase.running));
  }

  Future<void> cancel() async {
    if (stateValue.phase != CompressionPhase.running &&
        stateValue.phase != CompressionPhase.paused) {
      return;
    }
    emit(stateValue.copyWith(phase: CompressionPhase.cancelled));
    await repository.cancel();
  }

  Future<void> loadHistory() async {
    try {
      final records = await repository.history();
      if (!isClosed) emit(stateValue.copyWith(history: records));
    } catch (_) {
      // History storage must not turn a completed compression into a failure.
    }
  }

  Future<void> saveToGallery() async {
    final output = stateValue.output;
    if (output == null) return;
    await repository.saveToGallery(output.path);
  }

  @override
  Future<void> close() async {
    if (stateValue.phase == CompressionPhase.running ||
        stateValue.phase == CompressionPhase.paused) {
      await repository.cancel();
    }
    await _progressSubscription?.cancel();
    return super.close();
  }
}
