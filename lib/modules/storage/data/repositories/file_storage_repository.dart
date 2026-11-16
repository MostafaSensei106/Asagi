import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';

import '../../../../core/compression/domain/contracts/artifact_store.dart';
import '../../domain/repositories/storage_repository.dart';

@LazySingleton(as: StorageRepository)
final class FileStorageRepository implements StorageRepository {
  const FileStorageRepository(this._artifacts);

  final ArtifactStore _artifacts;

  Future<String> get _workspace async {
    final cache = await getTemporaryDirectory();
    return '${cache.path}/compression';
  }

  @override
  Future<List<String>> interruptedJobIds() async {
    final jobs = await _artifacts.listInterrupted(await _workspace);
    return jobs.map((job) => job.id).toList(growable: false);
  }

  @override
  Future<void> cleanInterruptedJobs() async {
    await _artifacts.cleanupInterrupted(await _workspace, Duration.zero);
  }
}
