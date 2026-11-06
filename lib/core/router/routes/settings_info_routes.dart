part of '../app_router.dart';

// ---------------------------------------------------------------------------
// Settings hub and its sub-pages.
// ---------------------------------------------------------------------------

/// Grouped entry point for every user-facing preference.
final class SettingsRoute extends AppRoute {
  const SettingsRoute();

  @override
  AppRouteMetadata get metadata => const AppRouteMetadata(
    name: 'settings',
    path: '/settings',
    section: AppRouteSection.core,
    icon: ZumiIcons.settings,
  );
}

/// Theme, color scheme, and motion preferences.
final class AppearanceSettingsRoute extends AppRoute {
  const AppearanceSettingsRoute();

  @override
  AppRouteMetadata get metadata => const AppRouteMetadata(
    name: 'settings_appearance',
    path: '/settings/appearance',
    section: AppRouteSection.appearance,
    icon: ZumiIcons.appearance,
    showInSettingsHub: true,
  );
}

/// App language and text direction preferences.
final class LanguageSettingsRoute extends AppRoute {
  const LanguageSettingsRoute();

  @override
  AppRouteMetadata get metadata => const AppRouteMetadata(
    name: 'settings_language',
    path: '/settings/language',
    section: AppRouteSection.appearance,
    icon: ZumiIcons.language,
    showInSettingsHub: true,
  );
}

/// Default resolution, bitrate, and output format for new jobs.
final class CompressionDefaultsRoute extends AppRoute {
  const CompressionDefaultsRoute();

  @override
  AppRouteMetadata get metadata => const AppRouteMetadata(
    name: 'settings_compression',
    path: '/settings/compression',
    section: AppRouteSection.compression,
    icon: ZumiIcons.compressionDefaults,
    showInSettingsHub: true,
  );
}

/// Storage usage, cache size, and temporary-file cleanup.
final class StorageSettingsRoute extends AppRoute {
  const StorageSettingsRoute();

  @override
  AppRouteMetadata get metadata => const AppRouteMetadata(
    name: 'settings_storage',
    path: '/settings/storage',
    section: AppRouteSection.compression,
    icon: ZumiIcons.storage,
    showInSettingsHub: true,
  );
}

/// Notification channels for job completion and product updates.
final class NotificationsSettingsRoute extends AppRoute {
  const NotificationsSettingsRoute();

  @override
  AppRouteMetadata get metadata => const AppRouteMetadata(
    name: 'settings_notifications',
    path: '/settings/notifications',
    section: AppRouteSection.privacy,
    icon: ZumiIcons.notifications,
    showInSettingsHub: true,
  );
}

/// On-device processing, local logs, and opt-in crash reporting.
final class PrivacySettingsRoute extends AppRoute {
  const PrivacySettingsRoute();

  @override
  AppRouteMetadata get metadata => const AppRouteMetadata(
    name: 'settings_privacy',
    path: '/settings/privacy',
    section: AppRouteSection.privacy,
    icon: ZumiIcons.privacy,
    showInSettingsHub: true,
  );
}

// ---------------------------------------------------------------------------
// About.
// ---------------------------------------------------------------------------

/// Version, build number, and application identity.
final class AppInfoRoute extends AppRoute {
  const AppInfoRoute();

  @override
  AppRouteMetadata get metadata => const AppRouteMetadata(
    name: 'about_app',
    path: '/about/app',
    section: AppRouteSection.about,
    icon: ZumiIcons.appInfo,
    showInSettingsHub: true,
  );
}

/// Information about the people and tools behind Zumi.
final class DeveloperRoute extends AppRoute {
  const DeveloperRoute();

  @override
  AppRouteMetadata get metadata => const AppRouteMetadata(
    name: 'about_developer',
    path: '/about/developer',
    section: AppRouteSection.about,
    icon: ZumiIcons.developer,
    showInSettingsHub: true,
  );
}

/// Open-source packages bundled with the application.
final class LicensesRoute extends AppRoute {
  const LicensesRoute();

  @override
  AppRouteMetadata get metadata => const AppRouteMetadata(
    name: 'about_licenses',
    path: '/about/licenses',
    section: AppRouteSection.about,
    icon: ZumiIcons.licenses,
    showInSettingsHub: true,
  );
}

// ---------------------------------------------------------------------------
// Legal.
// ---------------------------------------------------------------------------

/// Full privacy policy, including the on-device processing guarantee.
final class PrivacyPolicyRoute extends AppRoute {
  const PrivacyPolicyRoute();

  @override
  AppRouteMetadata get metadata => const AppRouteMetadata(
    name: 'legal_privacy_policy',
    path: '/legal/privacy',
    section: AppRouteSection.legal,
    icon: ZumiIcons.privacyPolicy,
    showInSettingsHub: true,
  );
}

/// Terms of service for the application and its purchases.
final class TermsRoute extends AppRoute {
  const TermsRoute();

  @override
  AppRouteMetadata get metadata => const AppRouteMetadata(
    name: 'legal_terms',
    path: '/legal/terms',
    section: AppRouteSection.legal,
    icon: ZumiIcons.terms,
    showInSettingsHub: true,
  );
}

/// Google Play Data safety declaration summary.
final class DataSafetyRoute extends AppRoute {
  const DataSafetyRoute();

  @override
  AppRouteMetadata get metadata => const AppRouteMetadata(
    name: 'legal_data_safety',
    path: '/legal/data-safety',
    section: AppRouteSection.legal,
    icon: ZumiIcons.dataSafety,
    showInSettingsHub: true,
  );
}

/// Runtime permissions Zumi requests and why each one is needed.
final class PermissionsRoute extends AppRoute {
  const PermissionsRoute();

  @override
  AppRouteMetadata get metadata => const AppRouteMetadata(
    name: 'legal_permissions',
    path: '/legal/permissions',
    section: AppRouteSection.legal,
    icon: ZumiIcons.permissions,
    showInSettingsHub: true,
  );
}

// ---------------------------------------------------------------------------
// Help.
// ---------------------------------------------------------------------------

/// Frequently asked questions about compression and billing.
final class FaqRoute extends AppRoute {
  const FaqRoute();

  @override
  AppRouteMetadata get metadata => const AppRouteMetadata(
    name: 'help_faq',
    path: '/help/faq',
    section: AppRouteSection.help,
    icon: ZumiIcons.faq,
    showInSettingsHub: true,
  );
}

/// Contact channel for account and purchase help.
final class SupportRoute extends AppRoute {
  const SupportRoute();

  @override
  AppRouteMetadata get metadata => const AppRouteMetadata(
    name: 'help_support',
    path: '/help/support',
    section: AppRouteSection.help,
    icon: ZumiIcons.support,
    showInSettingsHub: true,
  );
}

/// In-app feedback form and problem-report attachment flow.
final class FeedbackRoute extends AppRoute {
  const FeedbackRoute();

  @override
  AppRouteMetadata get metadata => const AppRouteMetadata(
    name: 'help_feedback',
    path: '/help/feedback',
    section: AppRouteSection.help,
    icon: ZumiIcons.feedback,
    showInSettingsHub: true,
  );
}
