import 'dart:io';

import 'package:cryptography/cryptography.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_edge_ai/flutter_edge_ai.dart';
import 'package:injectable/injectable.dart';
import 'package:litertlm_dart/litertlm_dart.dart' as lm;

import '../../../../core/preferences/domain/repositories/settings_repository.dart';
import '../../../../core/services/ai/interface/base_ai_model_service.dart';
import '../../domain/entities/ai_models.dart';
import '../../domain/entities/ai_settings.dart';
import '../../domain/repositories/ai_model_repository.dart';
import 'ai_model_files.dart';

@LazySingleton(as: AiModelRepository)
final class DeviceAiModelRepository implements AiModelRepository {
  DeviceAiModelRepository(this._service, this._files, this._settings);
  final BaseAiModelService _service;
  final AiModelFiles _files;
  final SettingsRepository<AiModelSettings> _settings;
  CancelToken? _cancel;
  bool _importing = false;
  void _ensureSupported() {
    if (kIsWeb || defaultTargetPlatform != TargetPlatform.android) {
      throw UnsupportedError('E_PLATFORM_UNSUPPORTED');
    }
  }

  Future<CatalogVariant> variant(String id) async {
    final value = (await _service.catalog()).variantById(id);
    if (value == null) throw StateError('E_MODEL_NOT_FOUND');
    return value;
  }

  Future<String> modelPath(String id) async {
    _ensureSupported();
    if (id.startsWith('import:')) return _files.importedPath(id);
    final v = await variant(id);
    if (v is! InferenceVariant || v.file == null) {
      throw StateError('E_MODEL_INCOMPATIBLE');
    }
    return FlutterEdgeAi.getModelPath(v.file!.installFilename);
  }

  @override
  Future<List<AiModelChoice>> list() async {
    _ensureSupported();
    final catalog = await _service.catalog();
    final result = <AiModelChoice>[];
    for (final model in catalog.models) {
      for (final v in model.variants) {
        if (v is! InferenceVariant && v is! EmbedderVariant) continue;
        final embedding = v is EmbedderVariant;
        final file = v is InferenceVariant
            ? v.file
            : (v as EmbedderVariant).model;
        if (file == null) continue;
        final path = await FlutterEdgeAi.getModelPath(file.installFilename);
        final exists = await File(path).exists();
        result.add(
          AiModelChoice(
            id: v.id,
            name: '${model.displayName} · ${v.id.split('/').last}',
            bytes: v.files.fold(0, (sum, f) => sum + f.sizeBytes),
            embedding: embedding,
            supported: v.backendsHere.isNotEmpty,
            installed: exists && await File(path).length() == file.sizeBytes,
          ),
        );
      }
    }
    for (final record in await _files.inventory()) {
      final id = record['id'] as String;
      final path = await _files.importedPath(id);
      if (await File(path).exists()) {
        result.add(
          AiModelChoice(
            id: id,
            name: record['name'] as String,
            bytes: await File(path).length(),
            installed: true,
          ),
        );
      }
    }
    return result;
  }

  @override
  Future<void> install(
    String id, {
    required void Function(int) onProgress,
  }) async {
    _ensureSupported();
    if (_cancel != null || _importing) throw StateError('E_MODEL_BUSY');
    final token = CancelToken();
    _cancel = token;
    try {
      final v = await variant(id);
      if (v.backendsHere.isEmpty) {
        throw UnsupportedError('E_MODEL_INCOMPATIBLE');
      }
      if (v is InferenceVariant) {
        await _service.installCatalogModel(
          v,
          onProgress: (value) => onProgress((value * 0.95).round()),
          cancelToken: token,
          activate: false,
        );
      } else if (v is EmbedderVariant) {
        final builder = (await _service.embeddingInstaller())
            .fromCatalog(v)
            .withModelProgress((value) => onProgress((value * 0.95).round()))
            .withCancelToken(token);
        await builder.install();
      } else {
        throw UnsupportedError('E_MODEL_INCOMPATIBLE');
      }
      for (final artifact in v.files) {
        if (token.isCancelled) throw StateError('E_AI_CANCELLED');
        final path = await FlutterEdgeAi.getModelPath(artifact.installFilename);
        final sink = Sha256().newHashSink();
        await for (final chunk in File(path).openRead()) {
          if (token.isCancelled) throw StateError('E_AI_CANCELLED');
          sink.add(chunk);
          await Future<void>.delayed(Duration.zero);
        }
        sink.close();
        final digest = await sink.hash();
        final hex = digest.bytes
            .map((b) => b.toRadixString(16).padLeft(2, '0'))
            .join();
        if (hex != artifact.sha256.toLowerCase()) {
          await File(path).delete();
          throw StateError('E_MODEL_CHECKSUM');
        }
      }
      onProgress(100);
    } finally {
      _cancel = null;
    }
  }

  @override
  void cancelInstall() => _cancel?.cancel();
  @override
  Future<AiModelChoice?> importModel() async {
    final document = await pickImportFile();
    return document == null ? null : importFile(document);
  }

  @override
  Future<AiDocument?> pickImportFile() async {
    _ensureSupported();
    final selected = await _files.pickDocuments(modelsOnly: true);
    return selected.isEmpty ? null : selected.single;
  }

  @override
  Future<AiModelChoice> importFile(AiDocument document) async {
    _ensureSupported();
    if (_cancel != null || _importing) throw StateError('E_MODEL_BUSY');
    _importing = true;
    String? output;
    try {
      if (!document.name.toLowerCase().endsWith('.litertlm')) {
        throw ArgumentError('E_MODEL_FORMAT');
      }
      final identifier = DateTime.now().microsecondsSinceEpoch.toString();
      final filename = 'model_$identifier.litertlm';
      output = '${(await _files.directory()).path}/$filename';
      await _files.copy(document, output);
      final info = await lm.readBundleInfo(output);
      if (!info.isComplete || info.textModel == null) {
        throw StateError('E_MODEL_INCOMPATIBLE');
      }
      final entries = await _files.inventory();
      final id = 'import:$identifier';
      entries.add({'id': id, 'file': filename, 'name': document.name});
      await _files.saveInventory(entries);
      final bytes = await File(output).length();
      output = null;
      return AiModelChoice(
        id: id,
        name: document.name,
        bytes: bytes,
        installed: true,
      );
    } finally {
      _importing = false;
      if (output != null && await File(output).exists()) {
        await File(output).delete();
      }
    }
  }

  @override
  Future<void> select(AiModelChoice model) async {
    final actual = (await list()).firstWhere((m) => m.id == model.id);
    if (!actual.installed || !actual.supported) {
      throw StateError('E_MODEL_NOT_INSTALLED');
    }
    await _settings.update(
      (s) => actual.embedding
          ? s.copyWith(embeddingModelId: model.id)
          : s.copyWith(chatModelId: model.id),
    );
  }

  @override
  Future<void> remove(AiModelChoice model) async {
    if (_cancel != null || _importing) throw StateError('E_MODEL_BUSY');
    // The presentation/runtime owner unloads before invoking this operation.
    await _settings.update(
      (s) => s.copyWith(
        chatModelId: s.chatModelId == model.id ? null : s.chatModelId,
        embeddingModelId: s.embeddingModelId == model.id
            ? null
            : s.embeddingModelId,
      ),
    );
    if (model.id.startsWith('import:')) {
      final path = await _files.importedPath(model.id);
      if (await File(path).exists()) await File(path).delete();
      await _files.saveInventory(
        (await _files.inventory()).where((r) => r['id'] != model.id).toList(),
      );
    } else {
      final v = await variant(model.id);
      if (v is InferenceVariant && v.file != null) {
        await _service.uninstallModel(
          v.file!.installFilename.replaceFirst(RegExp(r'\.[^.]+$'), ''),
        );
      } else if (v is EmbedderVariant) {
        for (final f in v.files) {
          final path = await FlutterEdgeAi.getModelPath(f.installFilename);
          if (await File(path).exists()) await File(path).delete();
        }
      }
    }
  }
}
