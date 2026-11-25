import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/design_system/tokens/tokens.dart';
import '../../../../core/widgets/widgets.dart';

/// A single theme mode choice rendered as a row.
typedef _ThemeModeOption = ({
  ThemeMode mode,
  IconData icon,
  ExpressiveIconShape shape,
  String title,
  String subtitle,
});

/// Lets the user pick how Kuymo resolves its theme.
final class ThemeModeSection extends StatelessWidget {
  const ThemeModeSection({
    required this.selectedMode,
    required this.onChanged,
    super.key,
  });

  final ThemeMode selectedMode;
  final ValueChanged<ThemeMode> onChanged;

  @override
  Widget build(BuildContext context) {
    final options = _options(context);

    return RadioGroup<ThemeMode>(
      groupValue: selectedMode,
      onChanged: (value) {
        if (value != null && value != selectedMode) {
          onChanged(value);
        }
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ExpressiveSectionHeader(title: context.localeKeys.theme),
          const Gap(AppSpacing.small),
          for (var index = 0; index < options.length; index++)
            _ThemeModeTile(
              option: options[index],
              groupType: _groupType(index, options.length),
              selected: options[index].mode == selectedMode,
              onTap: () => onChanged(options[index].mode),
            ),
        ],
      ),
    );
  }

  /// The theme modes offered by the app, in display order.
  List<_ThemeModeOption> _options(BuildContext context) => [
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

  /// Rounds only the outer edges so the rows read as one grouped list.
  ListTileGroupType _groupType(int index, int count) {
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

/// One selectable row in the theme mode list.
final class _ThemeModeTile extends StatelessWidget {
  const _ThemeModeTile({
    required this.option,
    required this.groupType,
    required this.selected,
    required this.onTap,
  });

  final _ThemeModeOption option;
  final ListTileGroupType groupType;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final radio = Radio<ThemeMode>(value: option.mode);
    final tile = switch (groupType) {
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
}
