import 'dart:convert';
import 'dart:io';
import 'dart:isolate';
import 'dart:math' as math;

import 'package:flutter_edge_ai/flutter_edge_ai.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';

import '../../../../core/preferences/application/media_work_scheduler.dart';
import '../../../../core/preferences/domain/repositories/settings_repository.dart';
import '../../../../core/services/ai/interface/base_ai_model_service.dart';
import '../../domain/entities/ai_cancellation.dart';
import '../../domain/entities/ai_models.dart';
import '../../domain/entities/ai_settings.dart';
import '../../domain/repositories/ai_media_repository.dart';
import '../../domain/repositories/ai_runtime_repository.dart';
import '../../domain/repositories/ai_search_repository.dart';
import 'ai_model_files.dart';

@LazySingleton(as: AiSearchRepository)
final class LocalAiSearchRepository implements AiSearchRepository {
  LocalAiSearchRepository(
    this._files,
    this._media,
    this._runtime,
    this._service,
    this._models,
    this._settings,
    this._scheduler,
  );
  final AiModelFiles _files;
  final AiMediaRepository _media;
  final AiRuntimeRepository _runtime;
  final BaseAiModelService _service;
  final SettingsRepository<AiModelSettings> _models;
  final SettingsRepository<AiSearchSettings> _settings;
  final MediaWorkScheduler _scheduler;
  bool _busy = false;
  AiCancellation? _cancellation;
  int _generation = 0;
  Future<Directory> _directory() async =>
      Directory('${(await getApplicationSupportDirectory()).path}/ai_index')
          .create(recursive: true);
  Future<void> _write(String name, Object value) async {
    final path = '${(await _directory()).path}/$name.json';
    await File('$path.partial').writeAsString(jsonEncode(value), flush: true);
    await File('$path.partial').rename(path);
  }

  Future<List<double>> _embed(
    String input,
    String id, {
    required bool query,
  }) async {
    final lease = await _scheduler.acquire(priority: 2);
    try {
      await _runtime.unload();
      final variant = (await _service.catalog()).variantById(id);
      if (variant is! EmbedderVariant) throw StateError('E_NO_EMBEDDING_MODEL');
      for (final file in variant.files) {
        final path = await FlutterEdgeAi.getModelPath(file.installFilename);
        if (!await File(path).exists() ||
            await File(path).length() != file.sizeBytes) {
          throw StateError('E_MODEL_NOT_INSTALLED');
        }
      }
      await (await _service.embeddingInstaller())
          .fromCatalog(variant)
          .install();
      final embedder = await _service.activeEmbedder();
      try {
        final vector = await embedder.embed(
          EmbeddingInput.text(input),
          taskType: query
              ? TaskType.retrievalQuery
              : TaskType.retrievalDocument,
        );
        if (vector.isEmpty ||
            vector.any((v) => !v.isFinite) ||
            vector.every((v) => v == 0)) {
          throw StateError('E_EMBEDDING_INVALID');
        }
        return vector;
      } finally {
        await embedder.close();
      }
    } finally {
      lease.release();
    }
  }

  @override
  Future<({int documents, int bytes})> statistics() async {
    final file = File('${(await _directory()).path}/index.json');
    if (!await file.exists()) return (documents: 0, bytes: 0);
    final raw = await file.readAsString();
    final bytes = await file.length();
    final documents = await Isolate.run(() {
      final index = jsonDecode(raw) as Map<String, dynamic>;
      if (index['version'] != 1) throw StateError('E_INDEX_CHANGED');
      return (index['entries'] as List<dynamic>)
          .map((r) => (r as Map<String, dynamic>)['uri'])
          .toSet()
          .length;
    });
    return (documents: documents, bytes: bytes);
  }

  @override
  Future<int> selectDocuments() async {
    if (_busy) throw StateError('E_AI_BUSY');
    final picked = await _files.pickDocuments();
    if (picked.isEmpty) return 0;
    ++_generation;
    await _write(
      'sources',
      picked
          .map((d) => {'uri': d.uri, 'name': d.name, 'bytes': d.bytes})
          .toList(),
    );
    final index = File('${(await _directory()).path}/index.json');
    if (await index.exists()) await index.delete();
    return picked.length;
  }

  AiDocument _document(Map<String, dynamic> row) => AiDocument(
    uri: row['uri'] as String,
    name: row['name'] as String,
    bytes: row['bytes'] as int,
  );
  @override
  Future<void> rebuild(void Function(int done, int total) onProgress) async {
    if (_busy) throw StateError('E_AI_BUSY');
    _busy = true;
    final generation = ++_generation;
    final cancellation = AiCancellation();
    _cancellation = cancellation;
    try {
      final settings = await _settings.load();
      if (!settings.semanticIndexing) throw StateError('E_INDEXING_DISABLED');
      final id = (await _models.load()).embeddingModelId;
      if (id == null) throw StateError('E_NO_EMBEDDING_MODEL');
      final sources = File('${(await _directory()).path}/sources.json');
      if (!await sources.exists()) throw StateError('E_NO_INDEX_SOURCES');
      final rows = (jsonDecode(await sources.readAsString()) as List<dynamic>)
          .cast<Map<String, dynamic>>();
      final entries = <Map<String, dynamic>>[];
      var done = 0;
      for (final row in rows) {
        if (generation != _generation || !_settings.current.semanticIndexing) {
          throw StateError('E_AI_CANCELLED');
        }
        if (settings.indexWhileCharging &&
            !(await _files.resources()).charging) {
          throw StateError('E_INDEX_REQUIRES_CHARGING');
        }
        final description = await _media.describe(
          _document(row),
          token: cancellation,
        );
        // Bound each chunk so a long transcript never exceeds the embedder context.
        for (var start = 0; start < description.length; start += 512) {
          if (generation != _generation) throw StateError('E_AI_CANCELLED');
          final chunk = description.substring(
            start,
            math.min(start + 512, description.length),
          );
          final vector = await _embed(chunk, id, query: false);
          entries.add({...row, 'description': chunk, 'vector': vector});
        }
        onProgress(++done, rows.length);
      }
      if (generation != _generation ||
          _models.current.embeddingModelId != id ||
          !_settings.current.semanticIndexing) {
        throw StateError('E_INDEX_CHANGED');
      }
      await _write('index', {'version': 1, 'modelId': id, 'entries': entries});
    } finally {
      cancellation.cancel();
      _cancellation = null;
      _busy = false;
    }
  }

  @override
  Future<List<AiSearchHit>> search(String query) async {
    if (_busy) throw StateError('E_AI_BUSY');
    if (query.trim().isEmpty) return [];
    _busy = true;
    final generation = ++_generation;
    try {
      if (!(await _settings.load()).semanticIndexing) {
        throw StateError('E_INDEXING_DISABLED');
      }
      final id = (await _models.load()).embeddingModelId;
      final file = File('${(await _directory()).path}/index.json');
      if (id == null || !await file.exists()) {
        throw StateError('E_INDEX_NOT_READY');
      }
      final index =
          jsonDecode(await file.readAsString()) as Map<String, dynamic>;
      if (index['version'] != 1 || index['modelId'] != id) {
        throw StateError('E_INDEX_CHANGED');
      }
      final vector = await _embed(query.trim(), id, query: true);
      final rows = (index['entries'] as List<dynamic>)
          .cast<Map<String, dynamic>>();
      final scored = await Isolate.run(() => _rank(rows, vector));
      final seen = <String>{};
      final hits = <AiSearchHit>[];
      for (final row in scored) {
        final document = _document(row);
        if (!seen.add(document.uri)) continue;
        if (!await _files.canRead(document)) continue;
        hits.add(
          AiSearchHit(
            document: document,
            score: row['score'] as double,
            description: row['description'] as String,
          ),
        );
        if (hits.length == 20) break;
      }
      if (generation != _generation ||
          _models.current.embeddingModelId != id ||
          !_settings.current.semanticIndexing) {
        throw StateError('E_INDEX_CHANGED');
      }
      return hits;
    } finally {
      _busy = false;
    }
  }

  static List<Map<String, dynamic>> _rank(
    List<Map<String, dynamic>> rows,
    List<double> query,
  ) {
    final result = <Map<String, dynamic>>[];
    for (final row in rows) {
      final v = (row['vector'] as List<dynamic>).cast<num>();
      if (v.length != query.length) continue;
      var dot = 0.0;
      var a = 0.0;
      var b = 0.0;
      for (var i = 0; i < v.length; i++) {
        dot += v[i] * query[i];
        a += v[i] * v[i];
        b += query[i] * query[i];
      }
      if (a > 0 && b > 0) result.add({...row, 'score': dot / math.sqrt(a * b)});
    }
    result.sort(
      (a, b) => (b['score'] as double).compareTo(a['score'] as double),
    );
    return result;
  }

  @override
  void cancel() {
    ++_generation;
    _cancellation?.cancel();
  }

  @override
  Future<void> clear() async {
    cancel();
    if (_busy) throw StateError('E_AI_BUSY');
    final directory = await _directory();
    if (await directory.exists()) await directory.delete(recursive: true);
  }
}
