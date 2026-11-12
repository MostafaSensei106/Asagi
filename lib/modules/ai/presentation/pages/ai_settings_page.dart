import 'dart:async';

import 'package:kaisel/kaisel.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/zumi_icons.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/widgets/design_system/tokens/tokens.dart';
import '../../../../core/widgets/widgets.dart';

/// Navigation hub for the AI capabilities planned for Zumi.
final class AiSettingsPage extends StatelessWidget {
  const AiSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final groups = [
      (
        title: context.localeKeys.aiGroupModels,
        icon: ZumiIcons.aiModels,
        shape: ExpressiveIconShape.gem,
        destinations: <({AppRoute route, String title, String subtitle})>[
          (
            route: const AiModelsRoute(),
            title: context.localeKeys.aiModelsTitle,
            subtitle: context.localeKeys.aiModelsSubtitle,
          ),
          (
            route: const AiImportModelRoute(),
            title: context.localeKeys.aiImportTitle,
            subtitle: context.localeKeys.aiImportSubtitle,
          ),
        ],
      ),
      (
        title: context.localeKeys.aiGroupExperience,
        icon: ZumiIcons.aiChatSettings,
        shape: ExpressiveIconShape.blossom,
        destinations: <({AppRoute route, String title, String subtitle})>[
          (
            route: const AiChatSettingsRoute(),
            title: context.localeKeys.aiChatSettingsTitle,
            subtitle: context.localeKeys.aiChatSettingsSubtitle,
          ),
          (
            route: const AiMediaRoute(),
            title: context.localeKeys.aiMediaTitle,
            subtitle: context.localeKeys.aiMediaSubtitle,
          ),
        ],
      ),
      (
        title: context.localeKeys.aiGroupCapabilities,
        icon: ZumiIcons.aiFeatures,
        shape: ExpressiveIconShape.clover,
        destinations: <({AppRoute route, String title, String subtitle})>[
          (
            route: const AiFeaturesRoute(),
            title: context.localeKeys.aiFeaturesTitle,
            subtitle: context.localeKeys.aiFeaturesSubtitle,
          ),
          (
            route: const AiSearchRoute(),
            title: context.localeKeys.aiSearchTitle,
            subtitle: context.localeKeys.aiSearchSubtitle,
          ),
          (
            route: const AiToolsRoute(),
            title: context.localeKeys.aiToolsTitle,
            subtitle: context.localeKeys.aiToolsSubtitle,
          ),
        ],
      ),
      (
        title: context.localeKeys.aiGroupPerformance,
        icon: ZumiIcons.aiRuntime,
        shape: ExpressiveIconShape.diamond,
        destinations: <({AppRoute route, String title, String subtitle})>[
          (
            route: const AiRuntimeRoute(),
            title: context.localeKeys.aiRuntimeTitle,
            subtitle: context.localeKeys.aiRuntimeSubtitle,
          ),
        ],
      ),
    ];
    final trailing = Icon(
      context.isArabic ? ZumiIcons.chevronBack : ZumiIcons.chevronForward,
      size: AppIconSizes.small,
      color: context.colorScheme.onSurfaceVariant,
    );

    return Scaffold(
      appBar: AppBarComponent(title: context.localeKeys.settingsAiTitle),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(AppSpacing.large),
          children: [
            Text(
              context.localeKeys.settingsAiDescription,
              style: context.textTheme.bodyMedium,
            ),
            const Gap(AppSpacing.large),
            for (final group in groups) ...[
              ExpressiveSectionHeader(
                icon: group.icon,
                shape: group.shape,
                title: group.title,
              ),
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
