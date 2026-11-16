import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/app_metadata.dart';
import '../../../../core/widgets/navigation/app_bar/side_page_app_bar_component.dart';

const _sourceInfoAsset =
    'android/app/src/main/assets/licenses/ffmpeg/SOURCE_INFO.json';
const _ffmpegLicenseAsset =
    'android/app/src/main/assets/licenses/ffmpeg/LICENSE.LGPLv2.1';

final class LicensesPage extends StatelessWidget {
  const LicensesPage({super.key});

  Future<(Map<String, dynamic>?, String?)> _loadFfmpegNotice() async {
    try {
      final metadata = jsonDecode(
        await rootBundle.loadString(_sourceInfoAsset),
      ) as Map<String, dynamic>;
      final license = await rootBundle.loadString(_ffmpegLicenseAsset);
      return (metadata, license);
    } on FlutterError {
      return (null, null);
    } on FormatException {
      return (null, null);
    } on TypeError {
      return (null, null);
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: SidePageAppBarComponent(
      title: context.localeKeys.openSourceLicenses,
    ),
    body: FutureBuilder<(Map<String, dynamic>?, String?)>(
      future: _loadFfmpegNotice(),
      builder: (context, snapshot) {
        final (metadata, license) = snapshot.data ?? (null, null);
        final builds = metadata?['builds'] as Map<String, dynamic>? ?? const {};
        final licenseName = metadata?['license'] as String?;
        final version = metadata?['version'] as String?;
        final linkage = metadata?['linkage'] as String?;
        return ListView(
          padding: const EdgeInsets.all(20),
          children: [
            Text(
              AppMetadata.name,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
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
                    if (licenseName != null)
                      Text(context.localeKeys.ffmpegLicense(licenseName)),
                    if (version != null)
                      Text(context.localeKeys.ffmpegVersion(version)),
                    if (linkage != null)
                      Text(context.localeKeys.ffmpegLinkage(linkage)),
                    if (builds.isNotEmpty)
                      Text(
                        context.localeKeys.ffmpegBuiltAbis(
                          builds.keys.join(', '),
                        ),
                      ),
                    if (metadata == null)
                      Text(context.localeKeys.ffmpegBuildMetadataUnavailable),
                    if (metadata?['source_url'] case final String source)
                      SelectableText(context.localeKeys.ffmpegSource(source)),
                  ],
                ),
              ),
            ),
            if (snapshot.connectionState == ConnectionState.waiting)
              const LinearProgressIndicator(),
            ExpansionTile(
              title: Text(context.localeKeys.ffmpegLicenseTitle),
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: SelectableText(
                    license ?? context.localeKeys.fullFfmpegLicenseFallback,
                  ),
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
      },
    ),
  );
}
