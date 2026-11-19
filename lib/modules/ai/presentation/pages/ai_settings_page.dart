import 'dart:async';

import 'package:kaisel/kaisel.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/asagi_icons.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/widgets/design_system/tokens/tokens.dart';
import '../../../../core/widgets/widgets.dart';

/// Navigation hub for the AI capabilities planned for Asagi.
final class AiSettingsPage extends StatelessWidget {
  const AiSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final groups = [
      (
        title: context.localeKeys.models,
        icon: AsagiIcons.aiModels,
        shape: ExpressiveIconShape.gem,
        destinations: <({AppRoute route, String title, String subtitle})>[
          (
            route: const AiModelsRoute(),
            title: context.localeKeys.localModels,
            subtitle: context.localeKeys.browseAndDownloadSupportedModels,
          ),
          (
            route: const AiImportModelRoute(),
            title: context.localeKeys.importAModel,
            subtitle: context.localeKeys.useACompatibleModelFromYourFiles,
          ),
        ],
      ),
      (
        title: context.localeKeys.assistantExperience,
        icon: AsagiIcons.aiChatSettings,
        shape: ExpressiveIconShape.blossom,
        destinations: <({AppRoute route, String title, String subtitle})>[
          (
            route: const AiChatSettingsRoute(),
            title: context.localeKeys.conversationSettings,
            subtitle: context.localeKeys.streamingThinkingAndResponseLength,
          ),
          (
            route: const AiMediaRoute(),
            title: context.localeKeys.imagesAndAudio,
            subtitle: context.localeKeys.controlMultimodalInputs,
          ),
        ],
      ),
      (
        title: context.localeKeys.smartCapabilities,
        icon: AsagiIcons.aiFeatures,
        shape: ExpressiveIconShape.clover,
        destinations: <({AppRoute route, String title, String subtitle})>[
          (
            route: const AiFeaturesRoute(),
            title: context.localeKeys.smartFeatures,
            subtitle: context.localeKeys.compressionOrganizationAndSearch,
          ),
          (
            route: const AiSearchRoute(),
            title: context.localeKeys.semanticSearch,
            subtitle: context.localeKeys.embeddingsAndLocalIndexing,
          ),
          (
            route: const AiToolsRoute(),
            title: context.localeKeys.toolsAndStructuredOutput,
            subtitle: context.localeKeys.actionsSchemasAndConfirmations,
          ),
        ],
      ),
      (
        title: context.localeKeys.performance,
        icon: AsagiIcons.aiRuntime,
        shape: ExpressiveIconShape.diamond,
        destinations: <({AppRoute route, String title, String subtitle})>[
          (
            route: const AiRuntimeRoute(),
            title: context.localeKeys.modelPerformance,
            subtitle: context.localeKeys.processingAndResourcePreferences,
          ),
        ],
      ),
    ];
    final trailing = Icon(
      context.isArabic ? AsagiIcons.chevronBack : AsagiIcons.chevronForward,
      size: AppIconSizes.small,
      color: context.colorScheme.onSurfaceVariant,
    );

    return Scaffold(
      appBar: SidePageAppBarComponent(title: context.localeKeys.aiSettings),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.large,
          vertical: AppSpacing.small,
        ),
        children: [
          for (final group in groups) ...[
            ExpressiveSectionHeader(title: group.title),
            const Gap(AppSpacing.small),
            for (var index = 0; index < group.destinations.length; index++)
              _destinationTile(
                context,
                group.destinations[index],
                trailing: trailing,
                index: index,
                count: group.destinations.length,
                shape: group.shape,
              ),
            const Gap(AppSpacing.large),
          ],
        ],
      ),
    );
  }

  Widget _destinationTile(
    BuildContext context,
    ({AppRoute route, String title, String subtitle}) destination, {
    required Widget trailing,
    required int index,
    required int count,
    required ExpressiveIconShape shape,
  }) {
    void onTap() => unawaited(context.push(destination.route));
    if (count == 1) {
      return ListTileIconComponent(
        shape: shape,
        title: destination.title,
        subtitle: destination.subtitle,
        leading: destination.route.metadata.icon,
        trailing: trailing,
        onTap: onTap,
      );
    }
    if (index == 0) {
      return ListTileIconComponent.top(
        shape: shape,
        title: destination.title,
        subtitle: destination.subtitle,
        leading: destination.route.metadata.icon,
        trailing: trailing,
        onTap: onTap,
      );
    }
    if (index == count - 1) {
      return ListTileIconComponent.bottom(
        shape: shape,
        title: destination.title,
        subtitle: destination.subtitle,
        leading: destination.route.metadata.icon,
        trailing: trailing,
        onTap: onTap,
      );
    }
    return ListTileIconComponent.middle(
      shape: shape,
      title: destination.title,
      subtitle: destination.subtitle,
      leading: destination.route.metadata.icon,
      trailing: trailing,
      onTap: onTap,
    );
  }
}
