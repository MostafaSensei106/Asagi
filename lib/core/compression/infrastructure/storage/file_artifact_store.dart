import 'dart:convert';
import 'dart:io';

import '../../domain/contracts/artifact_store.dart';

final class FileArtifactStore implements ArtifactStore {
  const FileArtifactStore();
  @override
  Future<CompressionWorkspace> create(String workspacePath) async {
    final root = await Directory(workspacePath).create(recursive: true);
    final job = await root.createTemp('zumi-');
    try {
      await File('${job.path}/.inprogress').writeAsString(
        jsonEncode({'createdAt': DateTime.now().toUtc().toIso8601String()}),
        flush: true,
      );
      return _FileWorkspace(job);
    } catch (_) {
      await job.delete(recursive: true);
      rethrow;
    }
  }

  @override
  Future<int> cleanupInterrupted(
    String workspacePath,
    Duration olderThan,
  ) async {
    if (olderThan.isNegative) throw ArgumentError.value(olderThan);
    final root = Directory(workspacePath);
    if (!await root.exists()) return 0;
    final cutoff = DateTime.now().subtract(olderThan);
    var removed = 0;
    await for (final entry in root.list(followLinks: false)) {
      if (entry is! Directory ||
          !entry.uri.pathSegments
              .where((s) => s.isNotEmpty)
              .last
              .startsWith('zumi-')) {
        continue;
      }
      final marker = File('${entry.path}/.inprogress');
      if (await FileSystemEntity.type(marker.path, followLinks: false) !=
          FileSystemEntityType.file) {
        continue;
      }
      if ((await marker.stat()).modified.isBefore(cutoff)) {
        await entry.delete(recursive: true);
        removed++;
      }
    }
    return removed;
  }
}

final class _FileWorkspace implements CompressionWorkspace {
  _FileWorkspace(this.directory);
  final Directory directory;
  bool _committed = false;
  @override
  String pathForAttempt(int attempt) =>
      '${directory.path}/attempt-$attempt.mp4';
  @override
  Future<int> measure(String path) => File(path).length();
  @override
  Future<void> discard(String path) => File(path).delete();
  @override
  Future<void> commit() async {
    await File('${directory.path}/.inprogress').delete();
    _committed = true;
  }

  @override
  Future<void> dispose() async {
    if (!_committed && await directory.exists()) {
      await directory.delete(recursive: true);
    }
  }
}
