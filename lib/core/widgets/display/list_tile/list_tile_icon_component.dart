import 'dart:async';

import 'package:flutter/services.dart';
import 'package:material_ui/material_ui.dart';

import '../../../extensions/extensions.dart';
import '../expressive_icon.dart';
import 'list_tile_component.dart';

final class ListTileIconComponent extends StatelessWidget {
  const ListTileIconComponent({
    required this.title,
    required this.leading,
    this.useinBorderRadius = false,
    super.key,
    this.subtitle,
    this.trailing,
    this.onTap,
    this.selected,
    this.shape = ExpressiveIconShape.blossom,
    this.showChevron = true,
  }) : groupType = ListTileGroupType.single;

  const ListTileIconComponent.single({
    required this.title,
    required this.leading,
    this.useinBorderRadius = false,
    super.key,
    this.subtitle,
    this.trailing,
    this.onTap,
    this.selected,
    this.shape = ExpressiveIconShape.blossom,
    this.showChevron = true,
  }) : groupType = ListTileGroupType.single;

  const ListTileIconComponent.top({
    required this.title,
    required this.leading,
    this.useinBorderRadius = false,
    super.key,
    this.subtitle,
    this.trailing,
    this.onTap,
    this.selected,
    this.shape = ExpressiveIconShape.blossom,
    this.showChevron = true,
  }) : groupType = ListTileGroupType.top;

  const ListTileIconComponent.middle({
    required this.title,
    required this.leading,
    this.useinBorderRadius = false,
    super.key,
    this.subtitle,
    this.trailing,
    this.onTap,
    this.selected,
    this.shape = ExpressiveIconShape.blossom,
    this.showChevron = true,
  }) : groupType = ListTileGroupType.middle;

  const ListTileIconComponent.bottom({
    required this.title,
    required this.leading,
    this.useinBorderRadius = false,
    super.key,
    this.subtitle,
    this.trailing,
    this.onTap,
    this.selected,
    this.shape = ExpressiveIconShape.blossom,
    this.showChevron = true,
  }) : groupType = ListTileGroupType.bottom;

  final ExpressiveIconShape shape;
  final bool showChevron;
  final String title;
  final IconData leading;
  final String? subtitle;
  final Widget? trailing;
  final VoidCallback? onTap;
  final bool? selected;
  final bool useinBorderRadius;
  final ListTileGroupType groupType;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final tile = switch (groupType) {
      ListTileGroupType.top => ListTileComponent.top,
      ListTileGroupType.middle => ListTileComponent.middle,
      ListTileGroupType.bottom => ListTileComponent.bottom,
      ListTileGroupType.single => ListTileComponent.new,
    };
    return tile(
      title: Text(
        title,
        style: context.textTheme.labelMedium?.copyWith(
          fontWeight: FontWeight.w600,
          color: scheme.onSurface,
        ),
      ),
      leading: ExpressiveIcon(
        icon: leading,
        shape: shape,
        backgroundColor: selected == true
            ? scheme.primary
            : scheme.primaryContainer,
        foregroundColor: selected == true
            ? scheme.onPrimary
            : scheme.onPrimaryContainer,
      ),
      subtitle: subtitle == null ? null : Text(subtitle!),
      trailing: trailing,
      selected: selected,
      showChevron: showChevron,
      useinBorderRadius: useinBorderRadius,
      onTap: onTap == null
          ? null
          : () {
              unawaited(HapticFeedback.selectionClick());
              onTap!();
            },
    );
  }
}
