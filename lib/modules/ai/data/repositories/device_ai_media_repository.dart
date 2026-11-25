import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:injectable/injectable.dart';

import '../../../../core/native/pigeon_messages.g.dart';
import '../../../../core/preferences/application/media_work_scheduler.dart';
import '../../../../core/preferences/domain/entities/privacy_settings.dart';
import '../../../../core/preferences/domain/repositories/settings_repository.dart';
import '../../../privacy/domain/repositories/scratchpad_repository.dart';
import '../../domain/entities/ai_cancellation.dart';
import '../../domain/entities/ai_models.dart';
import '../../domain/entities/ai_settings.dart';
import '../../domain/repositories/ai_media_repository.dart';
import '../../domain/repositories/ai_runtime_repository.dart';
import 'ai_model_files.dart';

@LazySingleton(as: AiMediaRepository)
final class DeviceAiMediaRepository implements AiMediaRepository {
  DeviceAiMediaRepository(
    this._files,
    this._runtime,
    this._media,
    this._privacy,
    this._features,
    this._scratchpad,
    this._scheduler,
  );
  final AiModelFiles _files;
  final AiRuntimeRepository _runtime;
  final SettingsRepository<AiMediaSettings> _media;
  final SettingsRepository<PrivacySettings> _privacy;
  final SettingsRepository<AiFeatureSettings> _features;
  final ScratchpadRepository _scratchpad;
  final MediaWorkScheduler _scheduler;
  AiCancellation? _samplingToken;
  final _native = NativeAiMediaApi();
  @override
  Future<AiDocument?> pickAttachment() async {
    final documents = await _files.pickDocuments();
    return documents.isEmpty ? null : documents.first;
  }

  Future<String> _describeFile(
    String path,
    String prompt,
    AiCancellation token,
  ) async {
    final buffer = StringBuffer();
    await for (final delta in _runtime.reply(
      const [],
      prompt,
      token: token,
      attachment: AiDocument(
        uri: Uri.file(path).toString(),
        name: path.split('/').last,
        bytes: await File(path).length(),
      ),
    )) {
      buffer.write(delta.text);
    }
    return buffer.toString();
  }

  @override
  Future<String> describe(AiDocument document, {AiCancellation? token}) async {
    final cancellation = token ?? AiCancellation();
    cancellation.check();
    final settings = await _media.load();
    final privacy = await _privacy.load();
    final features = await _features.load();
    final workspace = await _scratchpad.createWorkspace();
    try {
      final extension = document.name.split('.').last.toLowerCase();
      if (!RegExp(r'^[a-z0-9]{1,8}$').hasMatch(extension)) {
        throw ArgumentError('E_MEDIA_FORMAT');
      }
      final input = '$workspace/input.$extension';
      await _files.copy(document, input);
      if (extension == 'txt') {
        return utf8.decode(
          await File(input)
              .openRead(0, (await File(input).length()).clamp(0, 65536))
              .fold<List<int>>([], (a, b) => a..addAll(b)),
          allowMalformed: true,
        );
      }
      if (const {'png', 'jpg', 'jpeg', 'webp'}.contains(extension)) {
        return await _describeFile(
          input,
          'Describe the visible content for local semantic search. Do not infer identities or sensitive personal characteristics.',
          cancellation,
        );
      }
      final lease = await _scheduler.acquire(
        priority: 2,
        cancelled: cancellation.whenCancelled,
      );
      late final NativeAiMediaSamples samples;
      try {
        cancellation.check();
        _samplingToken = cancellation;
        unawaited(
          cancellation.whenCancelled.then((_) async {
            if (identical(_samplingToken, cancellation)) {
              await _native.cancelSample();
            }
          }),
        );
        samples = await _native.sample(
          Uri.file(input).toString(),
          workspace,
          settings.sampleRate,
          settings.analyzeThumbnails ? (features.sceneKeyframes ? 8 : 1) : 0,
        );
      } finally {
        _samplingToken = null;
        lease.release();
      }
      cancellation.check();
      final descriptions = <String>[];
      for (final image in samples.imagePaths) {
        descriptions.add(
          await _describeFile(
            image,
            'Describe this video frame, visible actions, objects, scene changes, and whether faces are visible. Do not identify people.',
            cancellation,
          ),
        );
      }
      if (settings.transcribeAudio) {
        for (final audio in samples.audioPaths) {
          descriptions.add(
            await _describeFile(
              audio,
              settings.autoLang
                  ? 'Transcribe the spoken audio in its original language.'
                  : 'Transcribe the audio and write the transcript in English.',
              cancellation,
            ),
          );
        }
      }
      if (descriptions.isEmpty) throw StateError('E_MEDIA_ANALYSIS_DISABLED');
      return descriptions.join('\n');
    } finally {
      if (token == null) cancellation.cancel();
      _scratchpad.release(workspace);
      if (privacy.autoWipeTempCache && await Directory(workspace).exists()) {
        await Directory(workspace).delete(recursive: true);
      }
    }
  }
}
