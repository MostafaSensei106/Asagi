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
    appBar: SidePageAppBarComponent(title: context.localeKeys.aboutAppTitle),
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
        context.toast.showError(context, context.localeKeys.aboutLinkError);
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
                title: l10n.aboutIdentitySection,
                icon: ZumiIcons.appInfo,
                shape: ExpressiveIconShape.blossom,
                children: [
                  AboutRow(
                    title: l10n.aboutAppName,
                    subtitle: info.appName,
                    icon: ZumiIcons.appInfo,
                  ),
                  AboutRow(
                    title: l10n.aboutPackageName,
                    subtitle: info.packageName,
                    icon: ZumiIcons.package,
                  ),
                  AboutRow(
                    title: l10n.aboutVersion,
                    subtitle: info.version,
                    icon: ZumiIcons.version,
                  ),
                  AboutRow(
                    title: l10n.aboutBuildNumber,
                    subtitle: info.buildNumber,
                    icon: ZumiIcons.build,
                  ),
                ],
              ),
              const Gap(AppSpacing.large),
              AboutSection(
                title: l10n.aboutEnvironmentSection,
                icon: ZumiIcons.device,
                shape: ExpressiveIconShape.gem,
                children: [
                  AboutRow(
                    title: l10n.aboutOperatingSystem,
                    subtitle: info.operatingSystemName,
                    icon: switch (info.operatingSystemName.toLowerCase()) {
                      'android' => ZumiIcons.android,
                      'ios' => ZumiIcons.ios,
                      _ => ZumiIcons.device,
                    },
                  ),
                  AboutRow(
                    title: l10n.aboutOsVersion,
                    subtitle: info.operatingSystemVersion,
                    icon: ZumiIcons.version,
                  ),
                  AboutRow(
                    title: l10n.aboutBuildMode,
                    subtitle: info.isDebug
                        ? l10n.aboutDebug
                        : l10n.aboutRelease,
                    icon: ZumiIcons.build,
                  ),
                ],
              ),
              const Gap(AppSpacing.large),
              AboutSection(
                title: l10n.aboutToolchainSection,
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
                title: l10n.aboutInstallationSection,
                icon: ZumiIcons.storage,
                shape: ExpressiveIconShape.diamond,
                children: [
                  AboutRow(
                    title: l10n.aboutInstaller,
                    subtitle: _value(
                      info.installerStore,
                      l10n.aboutUnavailable,
                    ),
                    icon: ZumiIcons.storage,
                  ),
                  AboutRow(
                    title: l10n.aboutInstalledOn,
                    subtitle: _date(info.installDate, l10n.aboutUnavailable),
                    icon: ZumiIcons.calendar,
                  ),
                  AboutRow(
                    title: l10n.aboutUpdatedOn,
                    subtitle: _date(info.updateTime, l10n.aboutUnavailable),
                    icon: ZumiIcons.calendar,
                  ),
                ],
              ),
              const Gap(AppSpacing.large),
              AboutSection(
                title: l10n.aboutProjectSection,
                icon: ZumiIcons.repository,
                shape: ExpressiveIconShape.sunny,
                children: [
                  AboutRow(
                    title: l10n.aboutRepository,
                    subtitle: l10n.aboutRepositorySubtitle,
                    icon: ZumiIcons.repository,
                    onTap: () =>
                        unawaited(_open(context, AboutUrls.repository)),
                  ),
                  AboutRow(
                    title: l10n.aboutReadme,
                    subtitle: l10n.aboutReadmeSubtitle,
                    icon: ZumiIcons.repository,
                    onTap: () => unawaited(_open(context, AboutUrls.readme)),
                  ),
                  AboutRow(
                    title: l10n.aboutIssues,
                    subtitle: l10n.aboutIssuesSubtitle,
                    icon: ZumiIcons.issues,
                    onTap: () => unawaited(_open(context, AboutUrls.issues)),
                  ),
                  AboutRow(
                    title: l10n.aboutLatestRelease,
                    subtitle: l10n.aboutLatestReleaseSubtitle,
                    icon: ZumiIcons.release,
                    onTap: () =>
                        unawaited(_open(context, AboutUrls.latestRelease)),
                  ),
                  if (AboutUrls.donations != null)
                    AboutRow(
                      title: l10n.aboutDonate,
                      subtitle: l10n.aboutDonateSubtitle,
                      icon: ZumiIcons.donate,
                      onTap: () =>
                          unawaited(_open(context, AboutUrls.donations!)),
                    ),
                ],
              ),
              const Gap(AppSpacing.large),
              AboutSection(
                title: l10n.aboutLicensesTitle,
                icon: ZumiIcons.licenses,
                shape: ExpressiveIconShape.pentagon,
                children: [
                  AboutRow(
                    title: l10n.aboutLicensesTitle,
                    subtitle: l10n.aboutLicensesSubtitle,
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
