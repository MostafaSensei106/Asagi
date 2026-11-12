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
    final destinations = <({AppRoute route, String title, String subtitle})>[
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
      (
        route: const AiFeaturesRoute(),
        title: context.localeKeys.aiFeaturesTitle,
        subtitle: context.localeKeys.aiFeaturesSubtitle,
      ),
      (
        route: const AiRuntimeRoute(),
        title: context.localeKeys.aiRuntimeTitle,
        subtitle: context.localeKeys.aiRuntimeSubtitle,
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
            for (var index = 0; index < destinations.length; index++)
              _destinationTile(
                context,
                destinations[index],
                trailing: trailing,
                index: index,
                count: destinations.length,
              ),
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
  }) {
    void onTap() => unawaited(context.push(destination.route));
    const shape = ExpressiveIconShape.softBurst;
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
