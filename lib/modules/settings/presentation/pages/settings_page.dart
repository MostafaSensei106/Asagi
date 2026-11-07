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
    CompressionHistoryRoute(),
    NotificationsSettingsRoute(),
    PrivacySettingsRoute(),
    PlansRoute(),
    PurchaseMethodsRoute(),
    RestorePurchasesRoute(),
    AppInfoRoute(),
    DeveloperRoute(),
    LicensesRoute(),
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
      appBar: SidePageAppBarComponent(title: context.localeKeys.settingsTitle),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(AppSpacing.large),
          children: [
            for (final section in _sections) ...[
              _SettingsSectionHeader(section: section),
              const Gap(AppSpacing.small),
              ..._buildSectionTiles(context, section),
              const Gap(AppSpacing.xLarge),
            ],
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

    return [
      for (var index = 0; index < routes.length; index++)
        _buildTile(
          context,
          routes[index],
          isFirst: index == 0,
          isLast: index == routes.length - 1,
        ),
    ];
  }

  Widget _buildTile(
    BuildContext context,
    AppRoute route, {
    required bool isFirst,
    required bool isLast,
  }) {
    final title = _titleFor(context, route);
    final trailing = Icon(
      context.isArabic ? ZumiIcons.chevronBack : ZumiIcons.chevronForward,
      size: AppIconSizes.small,
      color: context.colorScheme.onSurfaceVariant,
    );
    void onTap() => unawaited(context.push(route));

    if (isFirst && isLast) {
      return ListTileIconComponent(
        shape: ExpressiveIconShape.sunny,
        title: title,
        leading: route.metadata.icon,
        trailing: trailing,
        onTap: onTap,
      );
    }
    if (isFirst) {
      return ListTileIconComponent.top(
        title: title,
        leading: route.metadata.icon,
        trailing: trailing,
        onTap: onTap,
      );
    }
    if (isLast) {
      return ListTileIconComponent.bottom(
        title: title,
        leading: route.metadata.icon,
        trailing: trailing,
        onTap: onTap,
      );
    }
    return ListTileIconComponent.middle(
      title: title,
      leading: route.metadata.icon,
      trailing: trailing,
      onTap: onTap,
    );
  }

  String _titleFor(BuildContext context, AppRoute route) =>
      switch (route.metadata.name) {
        'settings_appearance' => context.localeKeys.settingsAppearanceTitle,
        'settings_language' => context.localeKeys.settingsLanguageTitle,
        'settings_compression' => context.localeKeys.settingsCompressionTitle,
        'settings_storage' => context.localeKeys.settingsStorageTitle,
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

/// Small wrapper that keeps section labels in one place while keeping the
/// hub's build method focused on structure.
final class _SettingsSectionHeader extends StatelessWidget {
  const _SettingsSectionHeader({required this.section});

  final AppRouteSection section;

  @override
  Widget build(BuildContext context) {
    return SectionHeaderComponent(title: _titleFor(context));
  }

  String _titleFor(BuildContext context) => switch (section) {
    AppRouteSection.appearance => context.localeKeys.settingsGroupAppearance,
    AppRouteSection.compression => context.localeKeys.settingsGroupCompression,
    AppRouteSection.privacy => context.localeKeys.settingsGroupPrivacy,
    AppRouteSection.plans => context.localeKeys.settingsGroupPlans,
    AppRouteSection.about => context.localeKeys.settingsGroupAbout,
    AppRouteSection.legal => context.localeKeys.settingsGroupLegal,
    AppRouteSection.help => context.localeKeys.settingsGroupHelp,
    AppRouteSection.core => context.localeKeys.settingsTitle,
  };
}
