import 'dart:async';

import 'package:kaisel/kaisel.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/zumi_icons.dart';
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
    AppRouteSection.appearance,
    AppRouteSection.compression,
    AppRouteSection.ai,
    AppRouteSection.privacy,
    AppRouteSection.plans,
    AppRouteSection.about,
    AppRouteSection.legal,
    AppRouteSection.help,
  ];

  /// Every destination advertised in the hub, in display order.
  static const _routes = <AppRoute>[
    AppearanceSettingsRoute(),
    LanguageSettingsRoute(),
    CompressionDefaultsRoute(),
    StorageSettingsRoute(),
    AiSettingsRoute(),
    NotificationsSettingsRoute(),
    PrivacySettingsRoute(),
    PlansRoute(),
    PurchaseMethodsRoute(),
    RestorePurchasesRoute(),
    AppInfoRoute(),
    DeveloperRoute(),
    PrivacyPolicyRoute(),
    TermsRoute(),
    DataSafetyRoute(),
    PermissionsRoute(),
    FaqRoute(),
    SupportRoute(),
    FeedbackRoute(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarComponent(title: context.localeKeys.settingsTitle),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.all(AppSpacing.large),
              sliver: SliverList.list(
                children: [
                  for (final section in _sections) ...[
                    ExpressiveSectionHeader(
                      icon: _iconFor(section),
                      shape: _shapeFor(section),
                      title: _titleFor(context, section),
                    ),
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
      context.isArabic ? ZumiIcons.chevronBack : ZumiIcons.chevronForward,
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

  /// Icon of the section's first advertised destination.
  IconData _iconFor(AppRouteSection section) {
    for (final route in _routes) {
      if (route.metadata.section == section &&
          route.metadata.showInSettingsHub) {
        return route.metadata.icon;
      }
    }
    return ZumiIcons.settings;
  }

  /// Each section gets its own shape treatment so the hub reads as a set of
  /// distinct, expressive groups rather than a flat list.
  ExpressiveIconShape _shapeFor(AppRouteSection section) => switch (section) {
    AppRouteSection.appearance => ExpressiveIconShape.blossom,
    AppRouteSection.compression => ExpressiveIconShape.gem,
    AppRouteSection.ai => ExpressiveIconShape.softBurst,
    AppRouteSection.privacy => ExpressiveIconShape.clover,
    AppRouteSection.plans => ExpressiveIconShape.diamond,
    AppRouteSection.about => ExpressiveIconShape.sunny,
    AppRouteSection.legal => ExpressiveIconShape.pentagon,
    AppRouteSection.help => ExpressiveIconShape.softBurst,
    AppRouteSection.core => ExpressiveIconShape.blossom,
  };

  String _titleFor(
    BuildContext context,
    AppRouteSection section,
  ) => switch (section) {
    AppRouteSection.appearance => context.localeKeys.settingsGroupAppearance,
    AppRouteSection.compression => context.localeKeys.settingsGroupCompression,
    AppRouteSection.ai => context.localeKeys.settingsGroupAi,
    AppRouteSection.privacy => context.localeKeys.settingsGroupPrivacy,
    AppRouteSection.plans => context.localeKeys.settingsGroupPlans,
    AppRouteSection.about => context.localeKeys.settingsGroupAbout,
    AppRouteSection.legal => context.localeKeys.settingsGroupLegal,
    AppRouteSection.help => context.localeKeys.settingsGroupHelp,
    AppRouteSection.core => context.localeKeys.settingsTitle,
  };

  String _routeSubtitleFor(BuildContext context, AppRoute route) =>
      switch (route.metadata.name) {
        'settings_appearance' => context.localeKeys.settingsAppearanceSubtitle,
        'settings_language' => context.localeKeys.settingsLanguageSubtitle,
        'settings_compression' =>
          context.localeKeys.settingsCompressionSubtitle,
        'settings_storage' => context.localeKeys.settingsStorageSubtitle,
        'settings_ai' => context.localeKeys.settingsAiSubtitle,
        'compression_history' => context.localeKeys.compressionHistorySubtitle,
        'settings_notifications' =>
          context.localeKeys.settingsNotificationsSubtitle,
        'settings_privacy' => context.localeKeys.settingsPrivacySubtitle,
        'plans' => context.localeKeys.plansSubtitle,
        'plans_methods' => context.localeKeys.plansMethodsSubtitle,
        'plans_restore' => context.localeKeys.plansRestoreSubtitle,
        'about_app' => context.localeKeys.aboutAppSubtitle,
        'about_developer' => context.localeKeys.aboutDeveloperSubtitle,
        'about_licenses' => context.localeKeys.aboutLicensesSubtitle,
        'legal_privacy_policy' => context.localeKeys.legalPrivacySubtitle,
        'legal_terms' => context.localeKeys.legalTermsSubtitle,
        'legal_data_safety' => context.localeKeys.legalDataSafetySubtitle,
        'legal_permissions' => context.localeKeys.legalPermissionsSubtitle,
        'help_faq' => context.localeKeys.helpFaqSubtitle,
        'help_support' => context.localeKeys.helpSupportSubtitle,
        'help_feedback' => context.localeKeys.helpFeedbackSubtitle,
        _ => '',
      };

  String _routeTitleFor(BuildContext context, AppRoute route) =>
      switch (route.metadata.name) {
        'settings_appearance' => context.localeKeys.settingsAppearanceTitle,
        'settings_language' => context.localeKeys.settingsLanguageTitle,
        'settings_compression' => context.localeKeys.settingsCompressionTitle,
        'settings_storage' => context.localeKeys.settingsStorageTitle,
        'settings_ai' => context.localeKeys.settingsAiTitle,
        'compression_history' => context.localeKeys.compressionHistoryTitle,
        'settings_notifications' =>
          context.localeKeys.settingsNotificationsTitle,
        'settings_privacy' => context.localeKeys.settingsPrivacyTitle,
        'plans' => context.localeKeys.plansTitle,
        'plans_methods' => context.localeKeys.plansMethodsTitle,
        'plans_restore' => context.localeKeys.plansRestoreTitle,
        'about_app' => context.localeKeys.aboutAppTitle,
        'about_developer' => context.localeKeys.aboutDeveloperTitle,
        'about_licenses' => context.localeKeys.aboutLicensesTitle,
        'legal_privacy_policy' => context.localeKeys.legalPrivacyTitle,
        'legal_terms' => context.localeKeys.legalTermsTitle,
        'legal_data_safety' => context.localeKeys.legalDataSafetyTitle,
        'legal_permissions' => context.localeKeys.legalPermissionsTitle,
        'help_faq' => context.localeKeys.helpFaqTitle,
        'help_support' => context.localeKeys.helpSupportTitle,
        'help_feedback' => context.localeKeys.helpFeedbackTitle,
        _ => route.metadata.name,
      };
}
