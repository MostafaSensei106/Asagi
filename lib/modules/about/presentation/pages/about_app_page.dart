import 'dart:async';

import 'package:bloc_signals_flutter/bloc_signals_flutter.dart';
import 'package:kaisel/kaisel.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/design_system/tokens/tokens.dart';
import '../../../../core/constants/zumi_icons.dart';
import '../../../../core/di/di.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/services/url_launcher/base_url_launcher_services.dart';
import '../../../../core/utils/models/app_info_model.dart';
import '../../../../core/widgets/widgets.dart';
import '../../logic/cubit/about_app_cubit.dart';
import '../../logic/cubit/about_app_state.dart';
import '../widgets/about_section.dart';
import '../widgets/about_urls.dart';

final class AboutAppPage extends StatelessWidget {
  const AboutAppPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: SidePageAppBarComponent(title: context.localeKeys.aboutZumi),
    body: SafeArea(
      child: BlocSignalBuilder<AboutAppCubit, AboutAppState>(
        builder: (context, state) => state.maybeWhen(
          loading: () => const Center(child: CircularProgressIndicator()),
          success: (info) => _AboutContent(info: info),
          error: (message) => RetryableErrorStateWidget(
            message: message,
            onRetry: context.read<AboutAppCubit>().getAppDetails,
          ),
          orElse: () => const Center(child: CircularProgressIndicator()),
        ),
      ),
    ),
  );
}

final class _AboutContent extends StatelessWidget {
  const _AboutContent({required this.info});

  final AppInfoModel info;

  Future<void> _open(BuildContext context, String url) async {
    try {
      await getIt<BaseUrlLauncherServices>().launchWebsite(url: url);
    } catch (_) {
      if (context.mounted) {
        context.toast.showError(
          context,
          context.localeKeys.couldNotOpenTheLinkPleaseTryAgain,
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.localeKeys;
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.all(AppSpacing.large),
          sliver: SliverList.list(
            children: [
              const Center(child: BrandLogo()),
              const Gap(AppSpacing.small),
              Center(
                child: Text(
                  info.appName,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
              Center(
                child: Text(
                  '${info.version} (${info.buildNumber})',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
              const Gap(AppSpacing.large),
              AboutSection(
                title: l10n.appIdentity,
                icon: ZumiIcons.appInfo,
                shape: ExpressiveIconShape.blossom,
                children: [
                  AboutRow(
                    title: l10n.appName,
                    subtitle: info.appName,
                    icon: ZumiIcons.appInfo,
                  ),
                  AboutRow(
                    title: l10n.packageName,
                    subtitle: info.packageName,
                    icon: ZumiIcons.package,
                  ),
                  AboutRow(
                    title: l10n.version,
                    subtitle: info.version,
                    icon: ZumiIcons.version,
                  ),
                  AboutRow(
                    title: l10n.buildNumber,
                    subtitle: info.buildNumber,
                    icon: ZumiIcons.build,
                  ),
                ],
              ),
              const Gap(AppSpacing.large),
              AboutSection(
                title: l10n.deviceAndBuild,
                icon: ZumiIcons.device,
                shape: ExpressiveIconShape.gem,
                children: [
                  AboutRow(
                    title: l10n.operatingSystem,
                    subtitle: info.operatingSystemName,
                    icon: switch (info.operatingSystemName.toLowerCase()) {
                      'android' => ZumiIcons.android,
                      'ios' => ZumiIcons.ios,
                      _ => ZumiIcons.device,
                    },
                  ),
                  AboutRow(
                    title: l10n.osVersion,
                    subtitle: info.operatingSystemVersion,
                    icon: ZumiIcons.version,
                  ),
                  AboutRow(
                    title: l10n.buildMode,
                    subtitle: info.isDebug ? l10n.debug : l10n.release,
                    icon: ZumiIcons.build,
                  ),
                ],
              ),
              const Gap(AppSpacing.large),
              AboutSection(
                title: l10n.builtWith,
                icon: ZumiIcons.developer,
                shape: ExpressiveIconShape.clover,
                children: [
                  AboutRow(
                    title: 'Dart',
                    subtitle: _version(info.dartVersion, info.dartChanal),
                    icon: ZumiIcons.developer,
                  ),
                  AboutRow(
                    title: 'Flutter',
                    subtitle: _version(info.flutterVersion, info.flutterChanal),
                    icon: ZumiIcons.developer,
                  ),
                ],
              ),
              const Gap(AppSpacing.large),
              AboutSection(
                title: l10n.installation,
                icon: ZumiIcons.storage,
                shape: ExpressiveIconShape.diamond,
                children: [
                  AboutRow(
                    title: l10n.installedFrom,
                    subtitle: _value(info.installerStore, l10n.unavailable),
                    icon: ZumiIcons.storage,
                  ),
                  AboutRow(
                    title: l10n.installedOn,
                    subtitle: _date(info.installDate, l10n.unavailable),
                    icon: ZumiIcons.calendar,
                  ),
                  AboutRow(
                    title: l10n.updatedOn,
                    subtitle: _date(info.updateTime, l10n.unavailable),
                    icon: ZumiIcons.calendar,
                  ),
                ],
              ),
              const Gap(AppSpacing.large),
              AboutSection(
                title: l10n.projectAndSupport,
                icon: ZumiIcons.repository,
                shape: ExpressiveIconShape.sunny,
                children: [
                  AboutRow(
                    title: l10n.githubRepository,
                    subtitle: l10n.viewZumiSourceCode,
                    icon: ZumiIcons.repository,
                    onTap: () =>
                        unawaited(_open(context, AboutUrls.repository)),
                  ),
                  AboutRow(
                    title: l10n.readTheREADME,
                    subtitle: l10n.learnAboutZumiOnGitHub,
                    icon: ZumiIcons.repository,
                    onTap: () => unawaited(_open(context, AboutUrls.readme)),
                  ),
                  AboutRow(
                    title: l10n.reportAnIssue,
                    subtitle: l10n.viewAndCreateGitHubIssues,
                    icon: ZumiIcons.issues,
                    onTap: () => unawaited(_open(context, AboutUrls.issues)),
                  ),
                  AboutRow(
                    title: l10n.latestRelease,
                    subtitle: l10n.viewReleasesAndDownloads,
                    icon: ZumiIcons.release,
                    onTap: () =>
                        unawaited(_open(context, AboutUrls.latestRelease)),
                  ),
                  if (AboutUrls.donations != null)
                    AboutRow(
                      title: l10n.supportZumi,
                      subtitle: l10n.openTheOfficialDonationPage,
                      icon: ZumiIcons.donate,
                      onTap: () =>
                          unawaited(_open(context, AboutUrls.donations!)),
                    ),
                ],
              ),
              const Gap(AppSpacing.large),
              AboutSection(
                title: l10n.openSourceLicenses,
                icon: ZumiIcons.licenses,
                shape: ExpressiveIconShape.pentagon,
                children: [
                  AboutRow(
                    title: l10n.openSourceLicenses,
                    subtitle: l10n.openSourcePackageLicenses,
                    icon: ZumiIcons.licenses,
                    onTap: () => unawaited(context.push(const LicensesRoute())),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  String _value(String? value, String fallback) =>
      value == null || value.isEmpty ? fallback : value;

  String _version(String? version, String? channel) {
    final value = _value(version, '—');
    return channel == null || channel.isEmpty ? value : '$value ($channel)';
  }

  String _date(DateTime? value, String fallback) => value == null
      ? fallback
      : '${value.year}-${value.month.toString().padLeft(2, '0')}-${value.day.toString().padLeft(2, '0')}';
}
