import 'dart:async';

import 'package:kaisel/kaisel.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/zumi_icons.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/widgets/buttons/filled_button/filled_button_component.dart';
import '../../../../core/widgets/buttons/icon_button/icon_button_component.dart';
import '../../../../core/widgets/design_system/tokens/tokens.dart';
import '../../../../core/widgets/display/list_tile/list_tile_icon_component.dart';
import '../../../../core/widgets/display/section_header/section_header_component.dart';
import '../../../../core/widgets/layout/spacing/spacing_component.dart';

/// Primary hub and compressor surface of the Zumi application.
///
/// Focused exclusively on video compression, history, and pro plans.
/// Settings are kept cleanly in their dedicated destination reachable from
/// the top app bar action.
final class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.colorScheme;
    final textTheme = context.textTheme;

    final trailingIcon = Icon(
      context.isArabic ? ZumiIcons.chevronBack : ZumiIcons.chevronForward,
      size: AppIconSizes.small,
      color: colorScheme.onSurfaceVariant,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(
          context.localeKeys.appTitle,
          style: textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButtonComponent.outlined(
            icon: ZumiIcons.settings,
            toolTip: context.localeKeys.settingsTitle,
            onPressed: () => unawaited(context.push(const SettingsRoute())),
          ),
          const SpacingComponent.horizontal(AppSpacing.medium),
        ],
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(AppSpacing.large),
          children: [
            // Hero Card: Choose video and compress.
            Container(
              padding: const EdgeInsets.all(AppSpacing.xLarge),
              decoration: BoxDecoration(
                color: colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(AppRadii.xLarge),
              ),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(AppSpacing.medium),
                    decoration: BoxDecoration(
                      color: colorScheme.primary,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      ZumiIcons.videoSelect,
                      size: AppIconSizes.large,
                      color: colorScheme.onPrimary,
                    ),
                  ),
                  const SpacingComponent.vertical(AppSpacing.medium),
                  Text(
                    context.localeKeys.homeTitle,
                    textAlign: TextAlign.center,
                    style: textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: colorScheme.onPrimaryContainer,
                    ),
                  ),
                  const SpacingComponent.vertical(AppSpacing.xSmall),
                  Text(
                    context.localeKeys.homeDescription,
                    textAlign: TextAlign.center,
                    style: textTheme.bodyMedium?.copyWith(
                      color: colorScheme.onPrimaryContainer.withValues(
                        alpha: 0.8,
                      ),
                    ),
                  ),
                  const SpacingComponent.vertical(AppSpacing.large),
                  FilledButtonComponent.icon(
                    icon: ZumiIcons.videoSelect,
                    label: context.localeKeys.videoSelectTitle,
                    width: double.infinity,
                    onPressed: () =>
                        unawaited(context.push(const VideoSelectRoute())),
                  ),
                ],
              ),
            ),

            const SpacingComponent.vertical(AppSpacing.xLarge),

            // History section.
            SectionHeaderComponent(
              title: context.localeKeys.compressionHistoryTitle,
            ),
            const SpacingComponent.vertical(AppSpacing.small),
            ListTileIconComponent(
              title: context.localeKeys.compressionHistoryTitle,
              subtitle: context.localeKeys.compressionHistoryDescription,
              leading: ZumiIcons.compressionHistory,
              trailing: trailingIcon,
              onTap: () => unawaited(
                context.push(const CompressionHistoryRoute()),
              ),
            ),

            const SpacingComponent.vertical(AppSpacing.large),

            // Plans section.
            SectionHeaderComponent(
              title: context.localeKeys.settingsGroupPlans,
            ),
            const SpacingComponent.vertical(AppSpacing.small),
            ListTileIconComponent.top(
              title: context.localeKeys.plansTitle,
              subtitle: context.localeKeys.plansDescription,
              leading: ZumiIcons.plans,
              trailing: trailingIcon,
              onTap: () => unawaited(context.push(const PlansRoute())),
            ),
            ListTileIconComponent.bottom(
              title: context.localeKeys.plansMethodsTitle,
              subtitle: context.localeKeys.plansMethodsDescription,
              leading: ZumiIcons.purchaseMethods,
              trailing: trailingIcon,
              onTap: () => unawaited(
                context.push(const PurchaseMethodsRoute()),
              ),
            ),

            const SpacingComponent.vertical(AppSpacing.large),
          ],
        ),
      ),
    );
  }
}
