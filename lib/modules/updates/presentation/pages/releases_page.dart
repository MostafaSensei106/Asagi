import 'dart:async';

import 'package:bloc_signals_flutter/bloc_signals_flutter.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/di/di.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/services/url_launcher/base_url_launcher_services.dart';
import '../../../../core/widgets/design_system/tokens/tokens.dart';
import '../../../../core/widgets/widgets.dart';
import '../cubit/releases_cubit.dart';
import '../cubit/releases_state.dart';

/// Separate routes share presentation, while each owns its request-scoped Cubit.
final class ReleasesPage extends StatelessWidget {
  const ReleasesPage({this.installed = false, super.key});
  final bool installed;
  @override
  Widget build(BuildContext context) => BlocSignalProvider(
    create: (_) {
      final cubit = getIt<ReleasesCubit>();
      unawaited(cubit.load(installed: installed));
      return cubit;
    },
    child: _ReleaseContent(installed: installed),
  );
}

final class _ReleaseContent extends StatelessWidget {
  const _ReleaseContent({required this.installed});
  final bool installed;
  @override
  Widget build(BuildContext context) {
    final text = context.localeKeys;
    final cubit = BlocSignalProvider.of<ReleasesCubit>(context);
    return Scaffold(
      appBar: SidePageAppBarComponent(
        title: installed ? text.whatsNewTitle : text.appUpdatesTitle,
      ),
      body: SafeArea(
        child: BlocSignalBuilder<ReleasesCubit, ReleasesState>(
          builder: (context, state) {
            final release = state.release;
            final loading = state is ReleasesLoading;
            return ListView(
              padding: const EdgeInsets.all(AppSpacing.large),
              children: [
                ListTileIconComponent.single(
                  title: text.installedVersionLabel,
                  subtitle: cubit.installedVersion,
                  leading: Icons.info_outline,
                  showChevron: false,
                ),
                const Gap(AppSpacing.large),
                if (loading) const LinearProgressIndicator(),
                if (state is ReleasesFailure) ...[
                  Text(
                    release == null
                        ? text.releaseLoadFailed
                        : text.releaseCachedNotice,
                    style: context.textTheme.bodyMedium,
                  ),
                  const Gap(AppSpacing.medium),
                ],
                if (!loading && !installed && state is ReleasesReady)
                  Text(
                    state.updateAvailable
                        ? text.updateAvailableLabel
                        : text.noUpdatesLabel,
                    style: context.textTheme.titleLarge,
                  ),
                if (!loading &&
                    installed &&
                    (release == null || release.notes.trim().isEmpty))
                  Text(
                    text.releaseNotesEmpty,
                    style: context.textTheme.bodyLarge,
                  ),
                if (release != null) ...[
                  const Gap(AppSpacing.large),
                  Text(
                    release.title.isEmpty ? release.version : release.title,
                    style: context.textTheme.headlineSmall,
                  ),
                  const Gap(AppSpacing.small),
                  Text(release.version, style: context.textTheme.labelLarge),
                  const Gap(AppSpacing.medium),
                  if (release.notes.trim().isNotEmpty)
                    SelectableText(
                      release.notes,
                      style: context.textTheme.bodyLarge,
                    ),
                  const Gap(AppSpacing.large),
                  FilledButtonComponent(
                    label: text.openReleaseLabel,
                    onPressed: () =>
                        unawaited(_openRelease(context, release.url)),
                  ),
                ],
                const Gap(AppSpacing.medium),
                FilledButtonComponent(
                  label: installed
                      ? text.reloadReleaseLabel
                      : text.checkUpdatesLabel,
                  isLoading: loading,
                  onPressed: () => unawaited(cubit.load(installed: installed)),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Future<void> _openRelease(BuildContext context, Uri url) async {
    try {
      await getIt<BaseUrlLauncherServices>().launchWebsite(url: url.toString());
    } on Object {
      if (context.mounted) {
        context.toast.showInfo(context, context.localeKeys.releaseOpenFailed);
      }
    }
  }
}
