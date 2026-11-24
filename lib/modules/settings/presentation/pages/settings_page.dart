import 'dart:async';

import 'package:kaisel/kaisel.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/asagi_icons.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/router/route_metadata.dart';
import '../../../../core/widgets/design_system/tokens/tokens.dart';
import '../../../../core/widgets/widgets.dart';

/// Grouped entry point for every preference and informational destination.
///
/// The hub is intentionally data-driven: rows are derived from route metadata
/// (`showInSettingsHub` and `section`) so adding a destination never requires
/// touching this page's layout.
final class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  /// Section order shown in the hub.
  static const _sections = <AppRouteSection>[
    AppRouteSection.compression,
    AppRouteSection.ai,
    AppRouteSection.appearance,
    AppRouteSection.privacy,
    AppRouteSection.help,
    AppRouteSection.about,
    AppRouteSection.legal,
  ];

  /// Every destination advertised in the hub, in display order.
  static const _routes = <AppRoute>[
    CompressionDefaultsRoute(),
    CompressionHistoryRoute(),
    StorageSettingsRoute(),
    AiSettingsRoute(),
    AppearanceSettingsRoute(),
    LanguageSettingsRoute(),
    NotificationsSettingsRoute(),
    PrivacySettingsRoute(),
    FaqRoute(),
    SupportRoute(),
    FeedbackRoute(),
    AppInfoRoute(),
    AppUpdatesRoute(),
    WhatsNewRoute(),
    DeveloperRoute(),
    LicensesRoute(),
    PrivacyPolicyRoute(),
    TermsRoute(),
    DataSafetyRoute(),
    PermissionsRoute(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarComponent(title: context.localeKeys.settings),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.large,
                vertical: AppSpacing.medium,
              ),
              sliver: SliverList.list(
                children: [
                  for (final section in _sections) ...[
                    ExpressiveSectionHeader(title: _titleFor(context, section)),
                    const Gap(AppSpacing.small),
                    ..._buildSectionTiles(context, section),
                    const Gap(AppSpacing.large),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildSectionTiles(
    BuildContext context,
    AppRouteSection section,
  ) {
    final routes = _routes
        .where(
          (route) =>
              route.metadata.section == section &&
              route.metadata.showInSettingsHub,
        )
        .toList(growable: false);
    final shape = _shapeFor(section);

    return [
      for (var index = 0; index < routes.length; index++)
        _buildTile(
          context,
          routes[index],
          shape: shape,
          isFirst: index == 0,
          isLast: index == routes.length - 1,
        ),
    ];
  }

  Widget _buildTile(
    BuildContext context,
    AppRoute route, {
    required ExpressiveIconShape shape,
    required bool isFirst,
    required bool isLast,
  }) {
    final title = _routeTitleFor(context, route);
    final subtitle = _routeSubtitleFor(context, route);
    final trailing = Icon(
      context.isArabic ? AsagiIcons.chevronBack : AsagiIcons.chevronForward,
      size: AppIconSizes.small,
      color: context.colorScheme.onSurfaceVariant,
    );
    void onTap() => unawaited(context.push(route));

    if (isFirst && isLast) {
      return ListTileIconComponent(
        shape: shape,
        title: title,
        subtitle: subtitle,
        leading: route.metadata.icon,
        trailing: trailing,
        onTap: onTap,
      );
    }
    if (isFirst) {
      return ListTileIconComponent.top(
        shape: shape,
        title: title,
        subtitle: subtitle,
        leading: route.metadata.icon,
        trailing: trailing,
        onTap: onTap,
      );
    }
    if (isLast) {
      return ListTileIconComponent.bottom(
        shape: shape,
        title: title,
        subtitle: subtitle,
        leading: route.metadata.icon,
        trailing: trailing,
        onTap: onTap,
      );
    }
    return ListTileIconComponent.middle(
      shape: shape,
      title: title,
      subtitle: subtitle,
      leading: route.metadata.icon,
      trailing: trailing,
      onTap: onTap,
    );
  }

  /// Each section gets its own shape treatment so the hub reads as a set of
  /// distinct, expressive groups rather than a flat list.
  ExpressiveIconShape _shapeFor(AppRouteSection section) => switch (section) {
    AppRouteSection.compression => ExpressiveIconShape.gem,
    AppRouteSection.ai => ExpressiveIconShape.softBurst,
    AppRouteSection.appearance => ExpressiveIconShape.blossom,
    AppRouteSection.privacy => ExpressiveIconShape.clover,
    AppRouteSection.help => ExpressiveIconShape.sunny,
    AppRouteSection.about => ExpressiveIconShape.pentagon,
    AppRouteSection.legal => ExpressiveIconShape.softBurst,
    AppRouteSection.core => ExpressiveIconShape.blossom,
  };

  String _titleFor(BuildContext context, AppRouteSection section) =>
      switch (section) {
        AppRouteSection.appearance => context.localeKeys.appearanceLanguage,
        AppRouteSection.compression => context.localeKeys.compression,
        AppRouteSection.ai => context.localeKeys.onDeviceAI,
        AppRouteSection.privacy => context.localeKeys.notificationsPrivacy,
        AppRouteSection.about => context.localeKeys.about,
        AppRouteSection.legal => context.localeKeys.legal,
        AppRouteSection.help => context.localeKeys.helpFeedback,
        AppRouteSection.core => context.localeKeys.settings,
      };

  String _routeSubtitleFor(BuildContext context, AppRoute route) =>
      switch (route.metadata.name) {
        'settings_appearance' => context.localeKeys.themeAndAppLanguage,
        'settings_language' => context.localeKeys.appLanguageAndDirection,
        'settings_compression' => context.localeKeys.defaultQualityAndFormat,
        'settings_storage' => context.localeKeys.cacheAndStorageUsage,
        'settings_ai' => context.localeKeys.localModelsAndSmartTools,
        'compression_history' => context.localeKeys.yourCompressedVideoHistory,
        'settings_notifications' =>
          context.localeKeys.completionAndUpdateAlerts,
        'settings_privacy' => context.localeKeys.yourDataStaysLocal,
        'about_updates' => context.localeKeys.appUpdatesDescription,
        'about_whats_new' => context.localeKeys.whatsNewDescription,
        'about_app' => context.localeKeys.versionAndBuildDetails,
        'about_developer' => context.localeKeys.theDeveloperBehindAsagi,
        'about_licenses' => context.localeKeys.openSourcePackageLicenses,
        'legal_privacy_policy' => context.localeKeys.howDataIsHandled,
        'legal_terms' => context.localeKeys.rulesForUsingAsagi,
        'legal_data_safety' => context.localeKeys.whatDataWeCollect,
        'legal_permissions' => context.localeKeys.whyWeNeedPermissions,
        'help_faq' => context.localeKeys.answersToCommonQuestions,
        'help_support' => context.localeKeys.reachTheDeveloperDirectly,
        'help_feedback' => context.localeKeys.sendUsYourFeedback,
        _ => '',
      };

  String _routeTitleFor(BuildContext context, AppRoute route) =>
      switch (route.metadata.name) {
        'about_updates' => context.localeKeys.appUpdatesTitle,
        'about_whats_new' => context.localeKeys.whatsNewTitle,
        'settings_appearance' => context.localeKeys.appearance,
        'settings_language' => context.localeKeys.language,
        'settings_compression' => context.localeKeys.compressionDefaults,
        'settings_storage' => context.localeKeys.storageCleanup,
        'settings_ai' => context.localeKeys.aiSettings,
        'compression_history' => context.localeKeys.compressionHistory,
        'settings_notifications' => context.localeKeys.notifications,
        'settings_privacy' => context.localeKeys.privacy,
        'about_app' => context.localeKeys.aboutAsagi,
        'about_developer' => context.localeKeys.aboutTheDeveloper,
        'about_licenses' => context.localeKeys.openSourceLicenses,
        'legal_privacy_policy' => context.localeKeys.privacyPolicy,
        'legal_terms' => context.localeKeys.termsOfService,
        'legal_data_safety' => context.localeKeys.dataSafety,
        'legal_permissions' => context.localeKeys.permissions,
        'help_faq' => context.localeKeys.faq,
        'help_support' => context.localeKeys.support,
        'help_feedback' => context.localeKeys.sendFeedback,
        _ => route.metadata.name,
      };
}
