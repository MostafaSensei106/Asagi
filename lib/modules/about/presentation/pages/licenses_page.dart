import 'package:bloc_signals_flutter/bloc_signals_flutter.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/app_metadata.dart';
import '../../../../core/di/di.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/navigation/app_bar/side_page_app_bar_component.dart';
import '../../domain/models/open_source_license_info.dart';
import '../../logic/open_source_licenses_cubit.dart';

final class LicensesPage extends StatelessWidget {
  const LicensesPage({super.key});

  @override
  Widget build(
    BuildContext context,
  ) => BlocSignalProvider<OpenSourceLicensesCubit>(
    create: (_) => getIt<OpenSourceLicensesCubit>(),
    child: Scaffold(
      appBar: SidePageAppBarComponent(
        title: context.localeKeys.openSourceLicenses,
      ),
      body: BlocSignalBuilder<OpenSourceLicensesCubit, OpenSourceLicensesState>(
        buildWhen: (before, after) => before != after,
        builder: (context, state) => state.maybeWhen(
          loading: () => const Center(child: CircularProgressIndicator()),
          loaded: (info) => _LicenseContent(info: info),
          failure: () => Center(
            child: Text(context.localeKeys.openSourceLicensesLoadFailed),
          ),
          orElse: () => const SizedBox.shrink(),
        ),
      ),
    ),
  );
}

final class _LicenseContent extends StatelessWidget {
  const _LicenseContent({required this.info});

  final OpenSourceLicenseInfo info;

  @override
  Widget build(BuildContext context) => ListView(
    padding: const EdgeInsets.all(20),
    children: [
      Text(AppMetadata.name, style: Theme.of(context).textTheme.headlineSmall),
      const SizedBox(height: 12),
      Card(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                context.localeKeys.ffmpegName,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 8),
              if (info.license != null)
                Text(context.localeKeys.ffmpegLicense(info.license!)),
              if (info.version != null)
                Text(context.localeKeys.ffmpegVersion(info.version!)),
              if (info.linkage != null)
                Text(context.localeKeys.ffmpegLinkage(info.linkage!)),
              if (info.builtAbis.isNotEmpty)
                Text(
                  context.localeKeys.ffmpegBuiltAbis(info.builtAbis.join(', ')),
                ),
              if (info.sourceUrl != null)
                SelectableText(
                  context.localeKeys.ffmpegSource(info.sourceUrl!),
                ),
            ],
          ),
        ),
      ),
      ExpansionTile(
        title: Text(context.localeKeys.ffmpegLicenseTitle),
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: SelectableText(info.licenseText),
          ),
        ],
      ),
      ListTile(
        title: Text(context.localeKeys.thirdPartyLicenses),
        subtitle: Text(context.localeKeys.thirdPartyLicensesDescription),
        trailing: const Icon(Icons.open_in_new),
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute<void>(
            builder: (_) =>
                const LicensePage(applicationName: AppMetadata.name),
          ),
        ),
      ),
    ],
  );
}
