import 'package:material_ui/material_ui.dart';
import 'package:path_provider/path_provider.dart';

import '../../../../core/compression/infrastructure/storage/file_artifact_store.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/navigation/app_bar/side_page_app_bar_component.dart';

final class StorageSettingsPage extends StatefulWidget {
  const StorageSettingsPage({super.key});

  @override
  State<StorageSettingsPage> createState() => _StorageSettingsPageState();
}

final class _StorageSettingsPageState extends State<StorageSettingsPage> {
  final FileArtifactStore _store = const FileArtifactStore();
  late Future<List<String>> _jobs = _loadJobs();
  bool _cleaning = false;
  bool _cleanupFailed = false;

  Future<List<String>> _loadJobs() async {
    final cache = await getTemporaryDirectory();
    final jobs = await _store.listInterrupted('${cache.path}/compression');
    return jobs.map((job) => job.id).toList(growable: false);
  }

  Future<void> _clean() async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(context.localeKeys.cleanInterruptedJobsTitle),
        content: Text(context.localeKeys.cleanInterruptedJobsConfirmation),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: Text(context.localeKeys.cancel),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(context, true),
            child: Text(context.localeKeys.clean),
          ),
        ],
      ),
    );
    if (confirmed != true || !mounted) return;
    setState(() {
      _cleaning = true;
      _cleanupFailed = false;
    });
    try {
      final cache = await getTemporaryDirectory();
      await _store.cleanupInterrupted(
        '${cache.path}/compression',
        Duration.zero,
      );
      if (mounted) setState(() => _jobs = _loadJobs());
    } catch (_) {
      if (mounted) setState(() => _cleanupFailed = true);
    } finally {
      if (mounted) setState(() => _cleaning = false);
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: SidePageAppBarComponent(title: context.localeKeys.storageCleanup),
    body: FutureBuilder<List<String>>(
      future: _jobs,
      builder: (context, snapshot) {
        final jobs = snapshot.data ?? const <String>[];
        return ListView(
          padding: const EdgeInsets.all(24),
          children: [
            Text(
              context.localeKeys.interruptedCompressionJobs,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 8),
            Text(context.localeKeys.interruptedJobsDescription),
            const SizedBox(height: 16),
            if (snapshot.connectionState == ConnectionState.waiting)
              const LinearProgressIndicator(),
            if (snapshot.hasError)
              Text(context.localeKeys.storageJobsLoadFailed),
            if (snapshot.connectionState == ConnectionState.done &&
                jobs.isEmpty)
              Text(context.localeKeys.noInterruptedJobs),
            for (final id in jobs)
              ListTile(
                leading: const Icon(Icons.video_file_outlined),
                title: Text(id),
              ),
            const SizedBox(height: 16),
            FilledButton.icon(
              onPressed: jobs.isEmpty || _cleaning ? null : _clean,
              icon: const Icon(Icons.delete_sweep_outlined),
              label: Text(
                _cleaning
                    ? context.localeKeys.cleaning
                    : context.localeKeys.cleanInterruptedJobs,
              ),
            ),
            if (_cleanupFailed)
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Text(
                  context.localeKeys.cleanupInterruptedJobsFailed,
                  style: TextStyle(color: Theme.of(context).colorScheme.error),
                ),
              ),
          ],
        );
      },
    ),
  );
}
