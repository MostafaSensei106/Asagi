import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';

import '../../domain/repositories/scratchpad_repository.dart';

/// Only abandoned AI scratch work is removable; compression owns its workspace.
@LazySingleton(as: ScratchpadRepository)
final class LocalScratchpadRepository implements ScratchpadRepository {
  final Set<String> _active = {};
  @override
  Future<String> createWorkspace({bool temporary = true}) async {
    final root = temporary
        ? await getTemporaryDirectory()
        : await getApplicationSupportDirectory();
    final path =
        '${root.path}/ai_scratchpad/task_${DateTime.now().microsecondsSinceEpoch}_${_sequence++}';
    _active.add(path);
    try {
      await Directory(path).create(recursive: true);
      return path;
    } on Object {
      _active.remove(path);
      rethrow;
    }
  }

  int _sequence = 0;
  @override
  void release(String path) => _active.remove(path);
  @override
  Future<void> clear() async {
    final roots = [
      await getTemporaryDirectory(),
      await getApplicationSupportDirectory(),
    ];
    for (final root in roots) {
      final directory = Directory('${root.path}/ai_scratchpad');
      if (!await directory.exists()) continue;
      await for (final entry in directory.list(followLinks: false)) {
        if (!_active.contains(entry.path)) await entry.delete(recursive: true);
      }
    }
  }
}
