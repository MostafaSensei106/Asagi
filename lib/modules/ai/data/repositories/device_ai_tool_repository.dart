import 'dart:async';
import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';

import '../../../../core/native/pigeon_messages.g.dart';
import '../../../../core/preferences/application/media_work_scheduler.dart';
import '../../../../core/preferences/domain/entities/privacy_settings.dart';
import '../../../../core/preferences/domain/repositories/settings_repository.dart';
import '../../../privacy/domain/repositories/scratchpad_repository.dart';
import '../../domain/entities/ai_models.dart';
import '../../domain/entities/ai_settings.dart';
import '../../domain/repositories/ai_tool_repository.dart';
import 'ai_model_files.dart';

@LazySingleton(as: AiToolRepository)
final class DeviceAiToolRepository implements AiToolRepository {
  DeviceAiToolRepository(
    this._files,
    this._tools,
    this._features,
    this._privacy,
    this._scratchpad,
    this._scheduler,
  );
  final AiModelFiles _files;
  final SettingsRepository<AiToolSettings> _tools;
  final SettingsRepository<AiFeatureSettings> _features;
  final SettingsRepository<PrivacySettings> _privacy;
  final ScratchpadRepository _scratchpad;
  final MediaWorkScheduler _scheduler;
  final _native = NativeAiMediaApi();
  bool _busy = false;
  bool _exporting = false;
  Completer<void>? _cancellation;
  int _generation = 0;
  @override
  Future<AiDocument?> pick() async {
    final picked = await _files.pickDocuments();
    return picked.isEmpty ? null : picked.first;
  }

  @override
  Future<String> execute(
    AiDocument document,
    AiToolOperation operation, {
    int startMs = 0,
    int endMs = 0,
  }) async {
    if (_busy) throw StateError('E_AI_BUSY');
    _busy = true;
    final generation = ++_generation;
    final cancellation = Completer<void>();
    _cancellation = cancellation;
    MediaWorkLease? lease;
    String? workspace;
    try {
      final settings = await _tools.load();
      final features = await _features.load();
      await _privacy.load();
      final allowed = switch (operation) {
        AiToolOperation.trim => settings.trimTool,
        AiToolOperation.extractAudio => settings.audioExtractTool,
        AiToolOperation.stripMetadata => settings.metadataStripTool,
      };
      if (!allowed) throw StateError('E_TOOL_DISABLED');
      if (startMs < 0 || (endMs != 0 && endMs <= startMs)) {
        throw ArgumentError('E_TOOL_RANGE');
      }
      lease = await _scheduler.acquire(cancelled: cancellation.future);
      if (generation != _generation) throw StateError('E_AI_CANCELLED');
      workspace = await _scratchpad.createWorkspace(
        temporary: settings.sandboxScratchpad,
      );
      _exporting = true;
      final output = await _native.exportMedia(
        document.uri,
        workspace,
        operation.name,
        startMs,
        endMs,
        operation == AiToolOperation.trim && features.noiseReduction,
        operation == AiToolOperation.trim && features.silentTrim,
      );
      _exporting = false;
      if (generation != _generation) throw StateError('E_AI_CANCELLED');
      final root = await getApplicationDocumentsDirectory();
      final directory = await Directory('${root.path}/ai_exports')
          .create(recursive: true);
      final extension = operation == AiToolOperation.extractAudio
          ? 'm4a'
          : 'mp4';
      final destination =
          '${directory.path}/kuymo_${DateTime.now().microsecondsSinceEpoch}.$extension';
      await File(output).copy(destination);
      return destination;
    } finally {
      try {
        if (workspace != null) {
          _scratchpad.release(workspace);
          if (_privacy.current.autoWipeTempCache &&
              await Directory(workspace).exists()) {
            await Directory(workspace).delete(recursive: true);
          }
        }
      } finally {
        _exporting = false;
        if (!cancellation.isCompleted) cancellation.complete();
        _cancellation = null;
        lease?.release();
        _busy = false;
      }
    }
  }

  @override
  Future<void> cancel() async {
    ++_generation;
    final cancellation = _cancellation;
    if (cancellation != null && !cancellation.isCompleted) {
      cancellation.complete();
    }
    if (_exporting) await _native.cancelExport();
  }
}
