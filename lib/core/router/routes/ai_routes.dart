part of '../app_router.dart';

/// Dedicated assistant tab for future video conversations.
final class AiChatRoute extends AppRoute {
  const AiChatRoute();

  @override
  AppRouteMetadata get metadata => const AppRouteMetadata(
    name: 'ai_chat',
    path: '/ai/chat',
    section: AppRouteSection.ai,
    icon: ZumiIcons.ai,
  );
}

/// Entry point for future on-device AI preferences.
final class AiSettingsRoute extends AppRoute {
  const AiSettingsRoute();

  @override
  AppRouteMetadata get metadata => const AppRouteMetadata(
    name: 'settings_ai',
    path: '/settings/ai',
    section: AppRouteSection.ai,
    icon: ZumiIcons.ai,
    showInSettingsHub: true,
  );
}

/// Catalog and installed local models.
final class AiModelsRoute extends AppRoute {
  const AiModelsRoute();

  @override
  AppRouteMetadata get metadata => const AppRouteMetadata(
    name: 'settings_ai_models',
    path: '/settings/ai/models',
    section: AppRouteSection.ai,
    icon: ZumiIcons.aiModels,
  );
}

/// User-provided model import.
final class AiImportModelRoute extends AppRoute {
  const AiImportModelRoute();

  @override
  AppRouteMetadata get metadata => const AppRouteMetadata(
    name: 'settings_ai_import',
    path: '/settings/ai/import',
    section: AppRouteSection.ai,
    icon: ZumiIcons.aiImport,
  );
}

/// AI assistance for compression, organization, and search.
final class AiFeaturesRoute extends AppRoute {
  const AiFeaturesRoute();

  @override
  AppRouteMetadata get metadata => const AppRouteMetadata(
    name: 'settings_ai_features',
    path: '/settings/ai/features',
    section: AppRouteSection.ai,
    icon: ZumiIcons.aiFeatures,
  );
}

/// Inference backend and resource preferences.
final class AiRuntimeRoute extends AppRoute {
  const AiRuntimeRoute();

  @override
  AppRouteMetadata get metadata => const AppRouteMetadata(
    name: 'settings_ai_runtime',
    path: '/settings/ai/runtime',
    section: AppRouteSection.ai,
    icon: ZumiIcons.aiRuntime,
  );
}
