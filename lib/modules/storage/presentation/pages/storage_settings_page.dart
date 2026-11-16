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

  Future<List<String>> _loadJobs() async {
    final cache = await getTemporaryDirectory();
    final jobs = await _store.listInterrupted('${cache.path}/compression');
    return jobs.map((job) => job.id).toList(growable: false);
  }

  Future<void> _clean() async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          context.isArabic
              ? 'تنظيف المهام المتوقفة؟'
              : 'Clean interrupted jobs?',
        ),
        content: Text(
          context.isArabic
              ? 'سيُحذف كل ملف .inprogress وحالة job_state.json داخل المهام المتوقفة فقط.'
              : 'This removes .inprogress files and job_state.json from interrupted jobs only.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: Text(context.isArabic ? 'إلغاء' : 'Cancel'),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(context, true),
            child: Text(context.isArabic ? 'تنظيف' : 'Clean'),
          ),
        ],
      ),
    );
    if (confirmed != true || !mounted) return;
    setState(() => _cleaning = true);
    try {
      final cache = await getTemporaryDirectory();
      await _store.cleanupInterrupted(
        '${cache.path}/compression',
        Duration.zero,
      );
      if (mounted) setState(() => _jobs = _loadJobs());
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
              context.isArabic
                  ? 'المهام المتوقفة'
                  : 'Interrupted compression jobs',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 8),
            Text(
              context.isArabic
                  ? 'يمكن استئناف هذه المهام من شاشة الضغط. التنظيف يحذف الملفات المؤقتة وملف الحالة الخاص بها.'
                  : 'You can resume these jobs from compression. Cleanup removes their temporary files and saved job state.',
            ),
            const SizedBox(height: 16),
            if (snapshot.connectionState == ConnectionState.waiting)
              const LinearProgressIndicator(),
            if (snapshot.hasError) Text('${snapshot.error}'),
            if (snapshot.connectionState == ConnectionState.done &&
                jobs.isEmpty)
              Text(
                context.isArabic
                    ? 'لا توجد مهام متوقفة.'
                    : 'No interrupted jobs found.',
              ),
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
                    ? (context.isArabic ? 'جارٍ التنظيف…' : 'Cleaning…')
                    : (context.isArabic
                          ? 'تنظيف الملفات المتوقفة'
                          : 'Clean interrupted files'),
              ),
            ),
          ],
        );
      },
    ),
  );
}
