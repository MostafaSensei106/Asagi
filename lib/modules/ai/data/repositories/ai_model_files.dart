import 'dart:convert';
import 'dart:io';

import 'package:flutter_edge_ai/flutter_edge_ai.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';

import '../../../../core/native/pigeon_messages.g.dart';
import '../../../../core/services/ai/interface/base_ai_model_service.dart';
import '../../domain/entities/ai_models.dart';

/// Imported model inventory is file metadata, separate from user preferences.
@lazySingleton
final class AiModelFiles {
  AiModelFiles(this._service);
  final BaseAiModelService _service;
  Future<String> resolveModel(String id) async {
    if (id.startsWith('import:')) return importedPath(id);
    final variant = (await _service.catalog()).variantById(id);
    if (variant is! InferenceVariant || variant.file == null) {
      throw StateError('E_MODEL_INCOMPATIBLE');
    }
    return FlutterEdgeAi.getModelPath(variant.file!.installFilename);
  }

  final _api = NativeAiFilesApi();
  Future<Directory> directory() async {
    final support = await getApplicationSupportDirectory();
    return Directory('${support.path}/ai_models').create(recursive: true);
  }

  Future<List<Map<String, dynamic>>> inventory() async {
    final file = File('${(await directory()).path}/inventory.json');
    if (!await file.exists()) return [];
    final entries = jsonDecode(await file.readAsString()) as List<dynamic>;
    return entries.cast<Map<String, dynamic>>();
  }

  Future<void> saveInventory(List<Map<String, dynamic>> entries) async {
    final path = '${(await directory()).path}/inventory.json';
    await File('$path.partial').writeAsString(jsonEncode(entries), flush: true);
    await File('$path.partial').rename(path);
  }

  Future<String> importedPath(String id) async {
    final records = await inventory();
    final record = records.firstWhere((r) => r['id'] == id);
    final filename = record['file'] as String;
    if (!RegExp(r'^model_[0-9]+\.litertlm$').hasMatch(filename)) {
      throw StateError('E_MODEL_INVENTORY');
    }
    return '${(await directory()).path}/$filename';
  }

  Future<List<AiDocument>> pickDocuments({bool modelsOnly = false}) async =>
      (await _api.pickDocuments(modelsOnly))
          .map((d) => AiDocument(uri: d.uri, name: d.name, bytes: d.sizeBytes))
          .toList();
  Future<void> copy(AiDocument source, String destination) =>
      _api.copyDocument(source.uri, destination);
  Future<bool> canRead(AiDocument document) =>
      _api.canReadDocument(document.uri);
  Future<NativeAiResources> resources() => _api.resources();
}
