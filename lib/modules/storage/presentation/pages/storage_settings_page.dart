import 'package:bloc_signals_flutter/bloc_signals_flutter.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/di/di.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/navigation/app_bar/side_page_app_bar_component.dart';
import '../../logic/storage_settings_cubit.dart';

final class StorageSettingsPage extends StatelessWidget {
  const StorageSettingsPage({super.key});

  Future<void> _confirmCleanup(BuildContext context) async {
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
    if (confirmed == true && context.mounted) {
      await context.read<StorageSettingsCubit>().clean();
    }
  }

  @override
  Widget build(BuildContext context) =>
      BlocSignalProvider<StorageSettingsCubit>(
        create: (_) => getIt<StorageSettingsCubit>(),
        child: Scaffold(
          appBar: SidePageAppBarComponent(
            title: context.localeKeys.storageCleanup,
          ),
          body: BlocSignalBuilder<StorageSettingsCubit, StorageSettingsState>(
            buildWhen: (before, after) => before != after,
            builder: (context, state) => _StorageSettingsContent(
              state: state,
              onClean: () => _confirmCleanup(context),
            ),
          ),
        ),
      );
}

final class _StorageSettingsContent extends StatelessWidget {
  const _StorageSettingsContent({required this.state, required this.onClean});

  final StorageSettingsState state;
  final VoidCallback onClean;

  @override
  Widget build(BuildContext context) => ListView(
    padding: const EdgeInsets.all(24),
    children: [
      Text(
        context.localeKeys.interruptedCompressionJobs,
        style: Theme.of(context).textTheme.titleLarge,
      ),
      const SizedBox(height: 8),
      Text(context.localeKeys.interruptedJobsDescription),
      const SizedBox(height: 16),
      if (state.isLoading || state.isCleaning) const LinearProgressIndicator(),
      if (state.error != null)
        Text(
          state.error == StorageSettingsFailure.cleanupFailed
              ? context.localeKeys.cleanupInterruptedJobsFailed
              : context.localeKeys.storageJobsLoadFailed,
          style: TextStyle(color: Theme.of(context).colorScheme.error),
        ),
      if (!state.isLoading && state.jobIds.isEmpty)
        Text(context.localeKeys.noInterruptedJobs),
      for (final id in state.jobIds)
        ListTile(
          leading: const Icon(Icons.video_file_outlined),
          title: Text(id),
        ),
      const SizedBox(height: 16),
      FilledButton.icon(
        onPressed: state.jobIds.isEmpty || state.isCleaning ? null : onClean,
        icon: const Icon(Icons.delete_sweep_outlined),
        label: Text(
          state.isCleaning
              ? context.localeKeys.cleaning
              : context.localeKeys.cleanInterruptedJobs,
        ),
      ),
    ],
  );
}
