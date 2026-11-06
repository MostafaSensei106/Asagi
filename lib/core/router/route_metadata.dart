import 'package:material_ui/material_ui.dart';

/// Logical grouping used by settings and information surfaces.
///
/// The section is intentionally presentation-agnostic: it lets a settings hub
/// order destinations without importing the routes themselves.
enum AppRouteSection {
  core,
  appearance,
  compression,
  privacy,
  plans,
  about,
  legal,
  help,
  account,
}

/// Stable, professional metadata attached to every [AppRoute].
///
/// Kaisel only understands `routeName` and `restorationId`, so this object
/// carries the richer information the app needs for analytics, deep links,
/// settings navigation, and restoration while keeping route classes thin.
final class AppRouteMetadata {
  const AppRouteMetadata({
    required this.name,
    required this.path,
    required this.section,
    required this.icon,
    this.requiresAuth = false,
    this.showInSettingsHub = false,
  });

  /// Obfuscation-stable identifier used as `RouteSettings.name`.
  final String name;

  /// Canonical path used by deep links, analytics, and documentation.
  final String path;

  /// Logical section the destination belongs to.
  final AppRouteSection section;

  /// Icon used by settings hubs and navigation surfaces.
  final IconData icon;

  /// Whether the destination should only be reachable by signed-in users.
  final bool requiresAuth;

  /// Whether the destination should appear in the settings hub.
  final bool showInSettingsHub;
}
