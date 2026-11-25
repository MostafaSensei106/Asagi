import 'package:bloc_signals_flutter/bloc_signals_flutter.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/extensions/extensions.dart';
import '../../../../core/utils/theme/logic/cubit/theme_cubit.dart';
import '../../../../core/widgets/design_system/tokens/tokens.dart';
import '../../../../core/widgets/widgets.dart';
import '../widgets/color_scheme_section.dart';
import '../widgets/contrast_section.dart';
import '../widgets/theme_mode_section.dart';
import '../widgets/theme_preview_card.dart';

/// Lets the user preview the theme and pick how Kuymo resolves it.
///
/// Lets the user choose the color palette, appearance mode, and contrast.
final class AppearanceSettingsPage extends StatelessWidget {
  const AppearanceSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SidePageAppBarComponent(title: context.localeKeys.appearance),
      body: BlocSignalBuilder<ThemeCubit, ThemeState>(
        buildWhen: (previous, current) => previous != current,
        builder: (context, state) {
          final cubit = context.read<ThemeCubit>();

          return ListView(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.large,
              vertical: AppSpacing.small,
            ),
            children: [
              const ThemePreviewCard(),
              const Gap(AppSpacing.large),
              ThemeModeSection(
                selectedMode: state.themeMode,
                onChanged: cubit.changeTheme,
              ),
              const Gap(AppSpacing.small),
              ColorSchemeSection(
                selectedVariant: state.colorSchemeVariant,
                highContrast: state.highContrast,
                onChanged: cubit.changeColorSchemeVariant,
              ),
              const Gap(AppSpacing.small),
              ContrastSection(
                enabled: state.highContrast,
                onChanged: cubit.changeHighContrast,
              ),
            ],
          );
        },
      ),
    );
  }
}
