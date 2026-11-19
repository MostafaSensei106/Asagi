import 'dart:convert';
import 'dart:io';

import '../../domain/contracts/artifact_store.dart';
import '../../domain/models/compression_preferences.dart';
import '../../domain/models/encode_request.dart';
import '../../domain/models/interrupted_compression_job.dart';

final class FileArtifactStore implements ArtifactStore {
  const FileArtifactStore();
  @override
  Future<CompressionWorkspace> create(String workspacePath) async {
    final root = await Directory(workspacePath).create(recursive: true);
    final job = await root.createTemp('asagi-');
    try {
      await File('${job.path}/.inprogress').writeAsString(
        jsonEncode({
          'createdAt': DateTime.now().toUtc().toIso8601String(),
          'pid': pid,
        }),
        flush: true,
      );
      return _FileWorkspace(job);
    } catch (_) {
      await job.delete(recursive: true);
      rethrow;
    }
  }

  @override
  Future<List<InterruptedCompressionJob>> listInterrupted(
    String workspacePath,
  ) async {
    final root = Directory(workspacePath);
    if (!await root.exists()) return const [];
    final jobs = <InterruptedCompressionJob>[];
    await for (final entry in root.list(followLinks: false)) {
      if (entry is! Directory || !_isJobDirectory(entry)) continue;
      final marker = File('${entry.path}/.inprogress');
      if (await FileSystemEntity.type(marker.path, followLinks: false) !=
          FileSystemEntityType.file) {
        continue;
      }
      try {
        jsonDecode(await marker.readAsString());
        final state = await _FileWorkspace(entry).readJobState();
        final job = await _parseInterruptedJob(entry, state);
        if (job != null) jobs.add(job);
      } on FormatException {
        // A corrupted state cannot safely be resumed; keep it for manual cleanup.
      } on TypeError {
        // Invalid persisted fields cannot safely be resumed.
      } on StateError {
        // Invalid enum values or job settings are not resumable.
      } on ArgumentError {
        // Invalid persisted settings are not resumable.
      }
    }
    jobs.sort((a, b) => b.updatedAt.compareTo(a.updatedAt));
    return jobs;
  }

  @override
  Future<void> deleteInterrupted(String workspacePath, String jobId) async {
    if (!RegExp(r'^asagi-[A-Za-z0-9_-]+$').hasMatch(jobId)) {
      throw ArgumentError.value(jobId, 'jobId');
    }
    final root = Directory(workspacePath);
    final job = Directory('${root.path}/$jobId');
    if (await job.exists()) await job.delete(recursive: true);
  }

  Future<InterruptedCompressionJob?> _parseInterruptedJob(
    Directory directory,
    Map<String, dynamic>? state,
  ) async {
    if (state == null || state['version'] != 1) return null;
    final sourcePath = state['source'];
    final sourceName = state['sourceName'];
    final targetMb = state['targetMb'];
    final rawPreferences = state['preferences'];
    final updatedAt = state['updatedAt'];
    if (sourcePath is! String ||
        sourceName is! String ||
        targetMb is! num ||
        rawPreferences is! Map<String, dynamic> ||
        updatedAt is! String ||
        targetMb <= 0) {
      return null;
    }
    final hdrMode = HdrMode.values.byName(rawPreferences['hdrMode'] as String);
    final preferences = CompressionPreferences(
      maxShortEdge: rawPreferences['maxShortEdge'] as int?,
      maxFrameRate: rawPreferences['maxFrameRate'] as int,
      audioBitrateKbps: rawPreferences['audioBitrateKbps'] as int?,
      videoBitrateCeilingKbps:
          rawPreferences['videoBitrateCeilingKbps'] as int?,
      hdrMode: hdrMode,
    )..validate();
    final id = directory.uri.pathSegments
        .where((segment) => segment.isNotEmpty)
        .last;
    return InterruptedCompressionJob(
      id: id,
      sourcePath: sourcePath,
      sourceName: sourceName,
      targetMb: targetMb.toDouble(),
      preferences: preferences,
      phase: state['phase'] as String? ?? 'unknown',
      attempt: state['attempt'] as int? ?? 1,
      updatedAt: DateTime.parse(updatedAt),
      sourceAvailable: await File(sourcePath).exists(),
    );
  }

  bool _isJobDirectory(Directory directory) => directory.uri.pathSegments
      .where((segment) => segment.isNotEmpty)
      .last
      .startsWith('asagi-');

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
              .startsWith('asagi-')) {
        continue;
      }
      final marker = File('${entry.path}/.inprogress');
      if (await FileSystemEntity.type(marker.path, followLinks: false) !=
          FileSystemEntityType.file) {
        continue;
      }
      try {
        final data =
            jsonDecode(await marker.readAsString()) as Map<String, dynamic>;
        if (data['pid'] == pid) continue;
      } catch (_) {
        // Damaged markers are treated as interrupted jobs once old enough.
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
  Future<void> saveJobState(Map<String, Object?> state) async {
    final stateFile = File('${directory.path}/job_state.json');
    final pendingFile = File('${directory.path}/job_state.json.tmp');
    await pendingFile.writeAsString(jsonEncode(state), flush: true);
    await pendingFile.rename(stateFile.path);
  }

  @override
  Future<Map<String, dynamic>?> readJobState() async {
    final stateFile = File('${directory.path}/job_state.json');
    if (!await stateFile.exists()) return null;
    final decoded = jsonDecode(await stateFile.readAsString());
    if (decoded is! Map<String, dynamic> || decoded['version'] != 1) {
      throw const FormatException('Invalid compression job state');
    }
    return decoded;
  }

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
