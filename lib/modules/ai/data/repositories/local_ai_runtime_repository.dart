import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:litertlm_dart/litertlm_dart.dart' as lm;

import '../../../../core/preferences/application/media_work_scheduler.dart';
import '../../../../core/preferences/domain/repositories/settings_repository.dart';
import '../../domain/entities/ai_cancellation.dart';
import '../../domain/entities/ai_models.dart';
import '../../domain/entities/ai_settings.dart';
import '../../domain/repositories/ai_runtime_repository.dart';
import 'ai_model_files.dart';

@LazySingleton(as: AiRuntimeRepository)
final class LocalAiRuntimeRepository implements AiRuntimeRepository {
  LocalAiRuntimeRepository(
    this._modelSettings,
    this._runtimeSettings,
    this._chatSettings,
    this._mediaSettings,
    this._files,
    this._scheduler,
    this._toolSettings,
  );
  final SettingsRepository<AiModelSettings> _modelSettings;
  final SettingsRepository<AiRuntimeSettings> _runtimeSettings;
  final SettingsRepository<AiChatSettings> _chatSettings;
  final SettingsRepository<AiMediaSettings> _mediaSettings;
  final AiModelFiles _files;
  final MediaWorkScheduler _scheduler;
  final SettingsRepository<AiToolSettings> _toolSettings;
  lm.Engine? _engine;
  lm.Conversation? _conversation;
  String? _key;
  bool _busy = false;
  bool _releaseRequested = false;
  Completer<void>? _cancellation;
  int _generation = 0;

  @override
  Stream<AiReplyDelta> reply(
    List<AiMessage> history,
    String prompt, {
    AiDocument? attachment,
    AiDocument? toolDocument,
    bool structured = false,
    AiCancellation? token,
  }) async* {
    if (kIsWeb || defaultTargetPlatform != TargetPlatform.android) {
      throw UnsupportedError('E_PLATFORM_UNSUPPORTED');
    }
    if (_busy) throw StateError('E_AI_BUSY');
    token?.check();
    _busy = true;
    final generation = ++_generation;
    final cancellation = Completer<void>();
    _cancellation = cancellation;
    if (token != null) {
      unawaited(
        token.whenCancelled.then((_) {
          if (generation == _generation && _busy) unawaited(cancel());
        }),
      );
    }
    MediaWorkLease? lease;
    try {
      lease = await _scheduler.acquire(cancelled: cancellation.future);
      if (generation != _generation) return;
      final model = await _modelSettings.load();
      final runtime = await _runtimeSettings.load();
      final chat = await _chatSettings.load();
      final media = await _mediaSettings.load();
      final toolSettings = await _toolSettings.load();
      final id = model.chatModelId;
      if (id == null) throw StateError('E_NO_AI_MODEL');
      final path = await _files.resolveModel(id);
      if (!await File(path).exists()) throw StateError('E_MODEL_NOT_INSTALLED');
      final info = await lm.readBundleInfo(path);
      if (!info.isComplete) throw StateError('E_MODEL_INCOMPLETE');
      final resources = await _files.resources();
      final budget = runtime.memoryBudgetMb * 1024 * 1024;
      final estimated =
          (await File(path).length() * 1.3).ceil() + 128 * 1024 * 1024;
      if (estimated > budget ||
          estimated > resources.availableMemoryBytes * 0.8) {
        throw StateError('E_AI_MEMORY_BUDGET');
      }
      final key =
          '$id/${runtime.backend}/${runtime.threadCount}/${runtime.memoryBudgetMb}/${runtime.lowPowerMode}/${chat.temperature}/${media.analyzeThumbnails}/${media.transcribeAudio}';
      if (_key != key) {
        await _engine?.close();
        _engine = null;
        _key = null;
        final backend = runtime.lowPowerMode || runtime.backend == 'cpu'
            ? lm.Backend.cpu(
                threadCount: runtime.lowPowerMode ? 1 : runtime.threadCount,
              )
            : const lm.Backend.gpu();
        final config = lm.EngineConfig(
          modelPath: path,
          backend: backend,
          maxNumTokens: runtime.memoryBudgetMb <= 1024 ? 1024 : 4096,
          maxNumImages: media.analyzeThumbnails ? 1 : 0,
          visionBackend: media.analyzeThumbnails
              ? info.declaredVisionBackend
              : null,
          audioBackend: media.transcribeAudio
              ? info.declaredAudioBackend
              : null,
        );
        try {
          _engine = await lm.Engine.create(config);
        } on Object {
          if (runtime.backend != 'auto' || runtime.lowPowerMode) rethrow;
          _engine = await lm.Engine.create(
            lm.EngineConfig(
              modelPath: path,
              backend: lm.Backend.cpu(threadCount: runtime.threadCount),
              maxNumTokens: config.maxNumTokens,
              maxNumImages: config.maxNumImages,
              visionBackend: config.visionBackend,
              audioBackend: config.audioBackend,
            ),
          );
        }
        _key = key;
      }
      if (generation != _generation) return;
      final toolNames = <String>{
        if (toolSettings.trimTool) 'trim',
        if (toolSettings.audioExtractTool) 'extractAudio',
        if (toolSettings.metadataStripTool) 'stripMetadata',
      };
      _conversation = await _engine!.createConversation(
        lm.ConversationConfig(
          automaticToolCalling: false,
          tools: structured || toolDocument == null
              ? const []
              : toolNames
                    .map(
                      (name) => lm.Tool(
                        name: name,
                        description: 'Create a new edited copy of the user-selected media file. Never modify the original.',
                        parameters: const {
                          'type': 'object',
                          'properties': {
                            'startMs': {'type': 'integer', 'minimum': 0},
                            'endMs': {'type': 'integer', 'minimum': 0},
                          },
                          'additionalProperties': false,
                        },
                      ),
                    )
                    .toList(),
          initialMessages: history
              .map(
                (m) => m.user
                    ? lm.Message.user('${m.text}\n${m.context}')
                    : lm.Message.model(m.text),
              )
              .toList(),
          samplerConfig: lm.SamplerConfig(
            topK: 40,
            topP: 0.95,
            temperature: chat.temperature,
          ),
          maxOutputTokens: chat.maxTokens,
          thinkingConfig: lm.ThinkingConfig(
            enableThinking: !structured && chat.showThinking,
          ),
          responseFormat: structured
              ? lm.ResponseFormat.json(const {
                  'type': 'object',
                  'properties': {
                    'motion': {
                      'type': 'string',
                      'enum': ['low', 'medium', 'high'],
                    },
                    'faces': {'type': 'boolean'},
                  },
                  'required': ['motion', 'faces'],
                  'additionalProperties': false,
                })
              : null,
          systemInstruction: structured
              ? 'Return a single valid JSON object only.'
              : null,
        ),
      );
      if (generation != _generation) return;
      final contents = <lm.Content>[lm.Content.text(prompt)];
      if (attachment != null) {
        final uri = Uri.parse(attachment.uri);
        if (uri.scheme != 'file') throw ArgumentError('E_AI_ATTACHMENT');
        final file = uri.toFilePath();
        final name = attachment.name.toLowerCase();
        if (RegExp(r'\.(png|jpe?g|webp)$').hasMatch(name)) {
          if (!media.analyzeThumbnails || info.visionEncoder == null) {
            throw StateError('E_AI_VISION_UNAVAILABLE');
          }
          contents.add(lm.Content.imageFile(file));
        } else if (RegExp(r'\.(wav|mp3|m4a)$').hasMatch(name)) {
          if (!media.transcribeAudio || info.audioEncoder == null) {
            throw StateError('E_AI_AUDIO_UNAVAILABLE');
          }
          contents.add(lm.Content.audioFile(file));
        } else {
          throw ArgumentError('E_AI_ATTACHMENT');
        }
      }
      final output = StringBuffer();
      final deferredThinking = StringBuffer();
      await for (final piece in _conversation!.sendMessageStream(
        lm.Message(role: lm.Role.user, contents: contents),
      )) {
        if (generation != _generation) break;
        for (final call in piece.toolCalls) {
          if (toolDocument == null || !toolNames.contains(call.name)) {
            throw StateError('E_TOOL_NOT_ALLOWED');
          }
          final start = call.arguments['startMs'] ?? 0;
          final end = call.arguments['endMs'] ?? 0;
          if (start is! int ||
              end is! int ||
              start < 0 ||
              end < 0 ||
              (end != 0 && end <= start)) {
            throw StateError('E_TOOL_RANGE');
          }
          yield AiReplyDelta(
            proposal: AiToolProposal(
              document: toolDocument,
              operation: AiToolOperation.values.byName(call.name),
              startMs: start,
              endMs: end,
            ),
          );
        }
        output.write(piece.text);
        if (chat.streaming) {
          yield AiReplyDelta(
            text: piece.text,
            thinking: chat.showThinking ? piece.channels.values.join() : '',
          );
        } else if (chat.showThinking) {
          deferredThinking.write(piece.channels.values.join());
        }
      }
      if (!chat.streaming) {
        yield AiReplyDelta(
          text: output.toString(),
          thinking: deferredThinking.toString(),
        );
      }

      if (structured) {
        // Validation happens at the repository boundary before tools consume it.
        validateJson(output.toString());
      }
    } finally {
      try {
        await _conversation?.close();
        _conversation = null;
        if (_runtimeSettings.current.lowPowerMode || _releaseRequested) {
          _releaseRequested = false;
          await _engine?.close();
          _engine = null;
          _key = null;
        }
      } finally {
        _conversation = null;
        _busy = false;
        if (!cancellation.isCompleted) cancellation.complete();
        _cancellation = null;
        lease?.release();
      }
    }
  }

  void validateJson(String text) {
    if (jsonDecode(text) is! Map<String, dynamic>) {
      throw StateError('E_AI_STRUCTURED_OUTPUT');
    }
  }

  @override
  Future<void> cancel() async {
    ++_generation;
    final cancellation = _cancellation;
    if (cancellation != null && !cancellation.isCompleted) {
      cancellation.complete();
    }
    _conversation?.cancel();
  }

  @override
  void releaseWhenIdle() {
    _releaseRequested = true;
    if (!_busy) unawaited(unload().catchError((Object _) {}));
  }

  @override
  Future<void> unload() async {
    if (_busy) throw StateError('E_AI_BUSY');
    _busy = true;
    final engine = _engine;
    _engine = null;
    _key = null;
    try {
      await engine?.close();
    } finally {
      _busy = false;
      _releaseRequested = false;
    }
  }

  @override
  Future<int> benchmark() async {
    final watch = Stopwatch()..start();
    await for (final _ in reply(const [], 'Reply with the single word OK.')) {}
    return watch.elapsedMilliseconds;
  }

  @override
  @disposeMethod
  Future<void> dispose() async {
    _releaseRequested = true;
    await cancel();
    if (!_busy) await unload();
  }
}
