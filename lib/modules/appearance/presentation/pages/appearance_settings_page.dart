import 'package:bloc_signals_flutter/bloc_signals_flutter.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/extensions/extensions.dart';
import '../../../../core/utils/theme/logic/cubit/theme_cubit.dart';
import '../../../../core/widgets/design_system/tokens/tokens.dart';
import '../../../../core/widgets/widgets.dart';

/// A single theme mode choice rendered as a tile.
typedef _ThemeModeOption = ({
  ThemeMode mode,
  IconData icon,
  ExpressiveIconShape shape,
  String title,
  String subtitle,
});

/// Lets the user choose how Zumi resolves its theme.
///
/// Only the theme mode is a real preference today, so the page exposes just
/// that instead of fake color scheme or motion controls.
final class AppearanceSettingsPage extends StatelessWidget {
  const AppearanceSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SidePageAppBarComponent(title: context.localeKeys.appearance),
      body: BlocSignalBuilder<ThemeCubit, ThemeState>(
        buildWhen: (previous, current) => previous != current,
        builder: (context, state) {
          final themeMode = state.themeMode;
          final options = _themeOptions(context);

          Future<void> selectTheme(ThemeMode mode) async {
            if (mode == themeMode) {
              return;
            }
            await context.read<ThemeCubit>().changeTheme(mode);
          }

          return RadioGroup<ThemeMode>(
            groupValue: themeMode,
            onChanged: (value) async {
              if (value != null) {
                await selectTheme(value);
              }
            },
            child: ListView(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.large,
                vertical: AppSpacing.small,
              ),
              children: [
                for (var index = 0; index < options.length; index++)
                  _ThemeModeTile(
                    option: options[index],
                    index: index,
                    count: options.length,
                    selected: options[index].mode == themeMode,
                    onTap: () => selectTheme(options[index].mode),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }

  /// The theme modes offered by the app, in display order.
  List<_ThemeModeOption> _themeOptions(BuildContext context) => [
    (
      mode: ThemeMode.system,
      icon: LucideIcons.smartphone,
      shape: ExpressiveIconShape.clover,
      title: context.localeKeys.system,
      subtitle: context.localeKeys.matchYourDeviceSetting,
    ),
    (
      mode: ThemeMode.light,
      icon: LucideIcons.sun,
      shape: ExpressiveIconShape.sunny,
      title: context.localeKeys.light,
      subtitle: context.localeKeys.alwaysUseTheLightTheme,
    ),
    (
      mode: ThemeMode.dark,
      icon: LucideIcons.moon,
      shape: ExpressiveIconShape.gem,
      title: context.localeKeys.dark,
      subtitle: context.localeKeys.alwaysUseTheDarkTheme,
    ),
  ];
}

/// One selectable row in the theme mode list.
final class _ThemeModeTile extends StatelessWidget {
  const _ThemeModeTile({
    required this.option,
    required this.index,
    required this.count,
    required this.selected,
    required this.onTap,
  });

  final _ThemeModeOption option;
  final int index;
  final int count;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final radio = Radio<ThemeMode>(value: option.mode);
    final tile = switch (_groupType()) {
      ListTileGroupType.top => ListTileIconComponent.top,
      ListTileGroupType.middle => ListTileIconComponent.middle,
      ListTileGroupType.bottom => ListTileIconComponent.bottom,
      ListTileGroupType.single => ListTileIconComponent.new,
    };

    return tile(
      title: option.title,
      subtitle: option.subtitle,
      leading: option.icon,
      shape: option.shape,
      trailing: radio,
      selected: selected,
      onTap: onTap,
    );
  }

  /// Rounds only the outer edges so the rows read as one grouped list.
  ListTileGroupType _groupType() {
    if (count == 1) {
      return ListTileGroupType.single;
    }
    if (index == 0) {
      return ListTileGroupType.top;
    }
    if (index == count - 1) {
      return ListTileGroupType.bottom;
    }
    return ListTileGroupType.middle;
  }
}
