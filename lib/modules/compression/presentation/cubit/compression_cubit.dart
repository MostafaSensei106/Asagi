import 'dart:async';

import 'package:bloc_signals/bloc_signals.dart';

import '../../../../core/compression/domain/models/compression_preferences.dart';
import '../../../../core/compression/domain/models/interrupted_compression_job.dart';
import '../../../../core/compression/domain/models/share_preset.dart';
import '../../domain/repositories/video_compression_repository.dart';
import 'compression_state.dart';

final class CompressionCubit extends CubitSignal<CompressionState> {
  CompressionCubit(this.repository)
    : super(initialState: const CompressionState()) {
    unawaited(loadDefaultTarget());
    unawaited(loadPreferences());
    unawaited(loadPresets());
    unawaited(recoverInterrupted());
  }

  final VideoCompressionRepository repository;
  StreamSubscription<double>? _progressSubscription;
  int _planVersion = 0;
  Future<void> _preferencesSave = Future<void>.value();
  bool _preferencesModified = false;
  bool _targetModified = false;

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
      emit(stateValue.copyWith(video: video, phase: CompressionPhase.ready));
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

  void selectPreset(SharePresetId? id) {
    if (stateValue.selectedPresetId == id) return;
    _targetModified = true;
    if (id == null) {
      emit(
        stateValue.copyWith(selectedPresetId: null, resolvedPresetPlan: null),
      );
      unawaited(refreshPlan());
      return;
    }
    SharePreset? match;
    for (final preset in stateValue.presets) {
      if (preset.id == id) {
        match = preset;
        break;
      }
    }
    final targetMb = match != null
        ? match.targetMb.toDouble()
        : stateValue.targetMb;
    final prefs = match != null ? match.preferences : stateValue.preferences;
    emit(
      stateValue.copyWith(
        selectedPresetId: id,
        targetMb: targetMb,
        preferences: prefs,
      ),
    );
    unawaited(refreshPlan());
  }

  void setTargetMb(double value) {
    if (!value.isFinite || value <= 0) return;
    _targetModified = true;
    emit(
      stateValue.copyWith(
        targetMb: value,
        selectedPresetId: null,
        resolvedPresetPlan: null,
      ),
    );
    unawaited(refreshPlan());
  }

  Future<void> loadPresets() async {
    try {
      final list = await repository.presets();
      if (!isClosed) {
        emit(stateValue.copyWith(presets: list));
        if (stateValue.video != null && stateValue.selectedPresetId != null) {
          await refreshPlan();
        }
      }
    } catch (_) {
      // Presets table is read from memory; fallback to defaults if unavailable.
    }
  }

  Future<void> loadPreferences() async {
    try {
      final preferences = await repository.loadPreferences();
      if (!isClosed && !_preferencesModified) {
        emit(stateValue.copyWith(preferences: preferences));
        await refreshPlan();
      }
    } catch (_) {
      // The defaults remain usable if local preference storage is unavailable.
    }
  }

  Future<void> setPreferences(CompressionPreferences preferences) async {
    preferences.validate();
    if (isClosed) return;
    _preferencesModified = true;
    emit(
      stateValue.copyWith(
        preferences: preferences,
        selectedPresetId: null,
        resolvedPresetPlan: null,
      ),
    );
    _preferencesSave = _preferencesSave.then((_) async {
      try {
        await repository.savePreferences(preferences);
      } catch (error) {
        if (!isClosed) {
          emit(
            stateValue.copyWith(
              phase: CompressionPhase.failure,
              error: '$error',
            ),
          );
        }
      }
    });
    unawaited(refreshPlan());
    await _preferencesSave;
  }

  Future<void> refreshPlan() async {
    final video = stateValue.video;
    if (video == null || stateValue.targetMb <= 0) return;
    final version = ++_planVersion;
    emit(stateValue.copyWith(planning: true, previewPlan: null));
    try {
      final presetId = stateValue.selectedPresetId;
      if (presetId != null) {
        final presetPlan = await repository.resolvePreset(video, presetId);
        if (!isClosed && version == _planVersion) {
          emit(
            stateValue.copyWith(
              planning: false,
              previewPlan: presetPlan.plan,
              resolvedPresetPlan: presetPlan,
              targetMb: presetPlan.effectiveTargetMb.toDouble(),
              preferences: presetPlan.preferences,
            ),
          );
        }
      } else {
        final plan = await repository.previewPlan(
          video,
          stateValue.targetMb,
          stateValue.preferences,
        );
        if (!isClosed && version == _planVersion) {
          emit(
            stateValue.copyWith(
              planning: false,
              previewPlan: plan,
              resolvedPresetPlan: null,
            ),
          );
        }
      }
    } catch (error) {
      if (!isClosed && version == _planVersion) {
        emit(
          stateValue.copyWith(
            planning: false,
            previewPlan: null,
            resolvedPresetPlan: null,
            error: '$error',
          ),
        );
      }
    }
  }

  Future<void> loadDefaultTarget() async {
    final target = await repository.defaultTargetMb();
    if (!isClosed && !_targetModified && stateValue.video == null) {
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
    if (current.planning || current.previewPlan == null) return;
    if (current.previewPlan!.isInfeasible) {
      emit(
        current.copyWith(
          phase: CompressionPhase.failure,
          error: 'E_TARGET_INFEASIBLE',
        ),
      );
      return;
    }
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
        presetId: current.selectedPresetId,
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

  Future<void> clearHistory() async {
    await repository.clearHistory();
    if (!isClosed) emit(stateValue.copyWith(history: const []));
  }

  Future<void> recoverInterrupted() async {
    try {
      final jobs = await repository.recoverInterrupted();
      if (!isClosed && jobs.isNotEmpty) {
        emit(
          stateValue.copyWith(
            interruptedJobs: jobs.length,
            recoverableJobs: jobs,
          ),
        );
      }
    } catch (_) {
      // Recovery can be retried on the next app launch.
    }
  }

  Future<void> resumeInterrupted(InterruptedCompressionJob job) async {
    if (stateValue.phase == CompressionPhase.running ||
        stateValue.phase == CompressionPhase.paused) {
      return;
    }
    await _progressSubscription?.cancel();
    emit(
      stateValue.copyWith(
        phase: CompressionPhase.running,
        targetMb: job.targetMb,
        preferences: job.preferences,
        progress: 0,
        error: null,
      ),
    );
    _progressSubscription = repository.progress.listen((value) {
      if (!isClosed && stateValue.phase == CompressionPhase.running) {
        emit(stateValue.copyWith(progress: value.clamp(0.0, 0.95)));
      }
    });
    try {
      final result = await repository.resumeInterrupted(job);
      if (isClosed) return;
      final remaining = stateValue.recoverableJobs
          .where((candidate) => candidate.id != job.id)
          .toList();
      emit(
        stateValue.copyWith(
          phase: CompressionPhase.completed,
          video: result.video,
          output: result.output,
          progress: 1,
          recoverableJobs: remaining,
          interruptedJobs: remaining.length,
        ),
      );
      await loadHistory();
    } catch (error) {
      if (!isClosed) {
        emit(
          stateValue.copyWith(phase: CompressionPhase.failure, error: '$error'),
        );
      }
    } finally {
      await _progressSubscription?.cancel();
      _progressSubscription = null;
    }
  }

  Future<void> discardInterrupted(String jobId) async {
    await repository.discardInterrupted(jobId);
    if (isClosed) return;
    final remaining = stateValue.recoverableJobs
        .where((job) => job.id != jobId)
        .toList();
    emit(
      stateValue.copyWith(
        recoverableJobs: remaining,
        interruptedJobs: remaining.length,
      ),
    );
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
