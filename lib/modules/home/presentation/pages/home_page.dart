import 'dart:async';

import 'package:kaisel/kaisel.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/zumi_icons.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/widgets/buttons/filled_button/filled_button_component.dart';
import '../../../../core/widgets/buttons/icon_button/icon_button_component.dart';
import '../../../../core/widgets/design_system/tokens/tokens.dart';
import '../../../../core/widgets/layout/gap.dart';
import '../../../../core/widgets/navigation/app_bar/app_bar_component.dart';

/// Primary compressor surface of the Zumi application.
///
/// Kept strictly focused on video selection and compression.
/// All preferences, history, plans, and legal information live exclusively
/// inside the settings hub reachable from the app bar action.
final class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.colorScheme;
    final textTheme = context.textTheme;

    return Scaffold(
      appBar: AppBarComponent(
        leading: Padding(
          padding: const EdgeInsets.all(6),
          child: IconButtonComponent(
            icon: ZumiIcons.settings,
            toolTip: context.localeKeys.settingsTitle,
            variant: IconButtonVariant.filled,
            onPressed: () => unawaited(context.push(const SettingsRoute())),
          ),
        ),
        title: context.localeKeys.appTitle,
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(AppSpacing.large),
            child: Container(
              padding: const EdgeInsets.all(AppSpacing.xxLarge),
              decoration: BoxDecoration(
                color: colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(AppRadii.xLarge),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: const EdgeInsets.all(AppSpacing.large),
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
                  const Gap(AppSpacing.large),
                  Text(
                    context.localeKeys.homeTitle,
                    textAlign: TextAlign.center,
                    style: textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: colorScheme.onPrimaryContainer,
                    ),
                  ),
                  const Gap(AppSpacing.small),
                  Text(
                    context.localeKeys.homeDescription,
                    textAlign: TextAlign.center,
                    style: textTheme.bodyMedium?.copyWith(
                      color: colorScheme.onPrimaryContainer.withValues(
                        alpha: 0.8,
                      ),
                    ),
                  ),
                  const Gap(AppSpacing.xLarge),
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
          ),
        ),
      ),
    );
  }
}
