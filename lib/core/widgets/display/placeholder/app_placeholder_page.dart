import 'package:material_ui/material_ui.dart';

import '../../../extensions/extensions.dart';
import '../../design_system/tokens/tokens.dart';
import '../../layout/spacing/spacing_component.dart';
import '../../navigation/app_bar/side_page_app_bar_component.dart';

/// Shared scaffold for placeholder destinations.
///
/// Every feature page in this milestone uses the same accessible, themed
/// shell so the navigation structure can be reviewed end-to-end before the
/// real screens are implemented. The widget intentionally depends only on
/// design tokens and the shared side-page app bar.
final class AppPlaceholderPage extends StatelessWidget {
  const AppPlaceholderPage({
    required this.title,
    required this.description,
    required this.icon,
    super.key,
    this.actions,
    this.showAppBar = true,
    this.showBackButton = true,
  });

  final String title;
  final String description;
  final IconData icon;
  final List<Widget>? actions;
  final bool showAppBar;
  final bool showBackButton;

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.colorScheme;
    final textTheme = context.textTheme;

    return Scaffold(
      appBar: showAppBar
          ? showBackButton
                ? SidePageAppBarComponent(title: title, actions: actions)
                : AppBar(
                    title: Text(title),
                    centerTitle: true,
                    actions: actions,
                  )
          : null,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(AppSpacing.xLarge),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: const EdgeInsets.all(AppSpacing.large),
                  decoration: BoxDecoration(
                    color: colorScheme.primaryContainer,
                    borderRadius: BorderRadius.circular(AppRadii.xLarge),
                  ),
                  child: Icon(
                    icon,
                    size: AppIconSizes.large,
                    color: colorScheme.onPrimaryContainer,
                  ),
                ),
                const SpacingComponent.vertical(AppSpacing.large),
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SpacingComponent.vertical(AppSpacing.small),
                Text(
                  description,
                  textAlign: TextAlign.center,
                  style: textTheme.bodyMedium?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                  ),
                ),
                const SpacingComponent.vertical(AppSpacing.xLarge),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSpacing.medium,
                    vertical: AppSpacing.small,
                  ),
                  decoration: BoxDecoration(
                    color: colorScheme.surfaceContainerHighest,
                    borderRadius: BorderRadius.circular(AppRadii.pill),
                  ),
                  child: Text(
                    context.localeKeys.comingSoon,
                    style: textTheme.labelMedium?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
