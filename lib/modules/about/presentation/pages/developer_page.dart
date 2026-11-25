import 'dart:async';

import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/design_system/tokens/tokens.dart';
import '../../../../core/constants/kuymo_icons.dart';
import '../../../../core/di/di.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/services/url_launcher/base_url_launcher_services.dart';
import '../../../../core/widgets/widgets.dart';
import '../widgets/about_section.dart';

final class DeveloperPage extends StatelessWidget {
  const DeveloperPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.localeKeys;
    return Scaffold(
      appBar: SidePageAppBarComponent(title: l10n.aboutTheDeveloper),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(AppSpacing.large),
          children: [
            AboutSection(
              title: l10n.developer,
              icon: KuymoIcons.developer,
              shape: ExpressiveIconShape.softBurst,
              children: [
                AboutRow(
                  title: l10n.mostafaSensei,
                  subtitle: l10n.theDeveloperAndToolsBehindKuymo,
                  icon: KuymoIcons.developer,
                ),
                AboutRow(
                  title: l10n.githubProfile,
                  subtitle: l10n.seeProjectsAndContactDetails,
                  icon: KuymoIcons.repository,
                  onTap: () => unawaited(_openProfile(context)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _openProfile(BuildContext context) async {
    try {
      await getIt<BaseUrlLauncherServices>().launchWebsite(
        url: 'https://github.com/MostafaSensei106',
      );
    } catch (_) {
      if (context.mounted) {
        context.toast.showError(
          context,
          context.localeKeys.couldNotOpenTheLinkPleaseTryAgain,
        );
      }
    }
  }
}
