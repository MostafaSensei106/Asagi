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
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: const SidePageAppBarComponent(title: 'Open Source Licenses'),
    body: FutureBuilder<(Map<String, dynamic>?, String?)>(
      future: _loadFfmpegNotice(),
      builder: (context, snapshot) {
        final (metadata, license) = snapshot.data ?? (null, null);
        final builds = metadata?['builds'] as Map<String, dynamic>? ?? const {};
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
                      'FFmpeg',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'License: ${metadata?['license'] ?? 'LGPL-2.1-or-later'}',
                    ),
                    Text('Version: ${metadata?['version'] ?? '7.1.5'}'),
                    Text('Linkage: ${metadata?['linkage'] ?? 'shared'}'),
                    Text(
                      'Built ABIs: ${builds.keys.isEmpty ? 'arm64-v8a' : builds.keys.join(', ')}',
                    ),
                    if (metadata?['source_url'] case final String source)
                      SelectableText('Source: $source'),
                  ],
                ),
              ),
            ),
            if (snapshot.connectionState == ConnectionState.waiting)
              const LinearProgressIndicator(),
            ExpansionTile(
              title: const Text('FFmpeg LGPL v2.1 license text'),
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: SelectableText(
                    license ?? 'Full license text is shipped in android/app/src/main/assets/licenses/ffmpeg/LICENSE.LGPLv2.1.',
                  ),
                ),
              ],
            ),
            ListTile(
              title: const Text('Flutter and Dart packages'),
              subtitle: const Text('Open their third-party license notices.'),
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
