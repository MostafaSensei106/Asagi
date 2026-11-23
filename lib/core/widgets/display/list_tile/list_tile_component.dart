import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:material_ui/material_ui.dart';

import '../../../constants/app_config.dart';
import '../../../constants/design_system/tokens/tokens.dart';
import '../../../extensions/extensions.dart';
import '../../layout/gap.dart';
import 'list_tile_group.dart';

enum ListTileGroupType { top, middle, bottom, single }

/// Single-row list item used for settings, lists, and pickers.
final class ListTileComponent extends StatelessWidget {
  const ListTileComponent({
    required this.title,
    this.useinBorderRadius = false,
    this.leading,
    super.key,
    this.subtitle,
    this.trailing,
    this.onTap,
    this.selected,
    this.showChevron = true,
    this.contentPadding,
  }) : groupType = ListTileGroupType.single;

  const ListTileComponent.single({
    required this.title,
    this.useinBorderRadius = false,
    this.leading,
    super.key,
    this.subtitle,
    this.trailing,
    this.onTap,
    this.selected,
    this.showChevron = true,
    this.contentPadding,
  }) : groupType = ListTileGroupType.single;

  const ListTileComponent.top({
    required this.title,
    this.useinBorderRadius = false,
    this.leading,
    super.key,
    this.subtitle,
    this.trailing,
    this.onTap,
    this.selected,
    this.showChevron = true,
    this.contentPadding,
  }) : groupType = ListTileGroupType.top;

  const ListTileComponent.middle({
    required this.title,
    this.useinBorderRadius = false,
    this.leading,
    super.key,
    this.subtitle,
    this.trailing,
    this.onTap,
    this.selected,
    this.showChevron = true,
    this.contentPadding,
  }) : groupType = ListTileGroupType.middle;

  const ListTileComponent.bottom({
    required this.title,
    this.useinBorderRadius = false,
    this.leading,
    super.key,
    this.subtitle,
    this.trailing,
    this.onTap,
    this.selected,
    this.showChevron = true,
    this.contentPadding,
  }) : groupType = ListTileGroupType.bottom;

  final Widget title;
  final Widget? leading;
  final Widget? subtitle;
  final Widget? trailing;
  final VoidCallback? onTap;
  final bool? selected;
  final bool useinBorderRadius;
  final ListTileGroupType groupType;

  /// When `true` (the default) a trailing chevron is shown for tappable rows
  /// without an explicit [trailing] widget.
  final bool showChevron;
  final EdgeInsetsGeometry? contentPadding;

  @override
  Widget build(BuildContext context) {
    final borderRadius = useinBorderRadius
        ? BorderRadius.circular(AppConfig.inBorderRadius)
        : BorderRadius.circular(AppConfig.outBorderRadius);

    BorderRadius effectiveRadius;

    switch (groupType) {
      case ListTileGroupType.top:
        effectiveRadius = BorderRadius.only(
          topLeft: borderRadius.topLeft,
          topRight: borderRadius.topRight,
          bottomLeft: const Radius.circular(AppRadii.small),
          bottomRight: const Radius.circular(AppRadii.small),
        );
      case ListTileGroupType.middle:
        effectiveRadius = BorderRadius.circular(AppRadii.small);
      case ListTileGroupType.bottom:
        effectiveRadius = BorderRadius.only(
          topLeft: const Radius.circular(AppRadii.small),
          topRight: const Radius.circular(AppRadii.small),
          bottomLeft: borderRadius.bottomLeft,
          bottomRight: borderRadius.bottomRight,
        );
      case ListTileGroupType.single:
        effectiveRadius = ListTileGroup.contains(context)
            ? BorderRadius.zero
            : borderRadius;
    }

    final effectiveTrailing =
        trailing ??
        (showChevron && onTap != null
            ? Icon(
                context.isArabic
                    ? LucideIcons.arrowLeft
                    : LucideIcons.arrowRight,
                size: 18,
                color: context.colorScheme.onSurfaceVariant,
              )
            : null);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          decoration: BoxDecoration(borderRadius: effectiveRadius),
          child: Material(
            color: context.colorScheme.surfaceContainer,
            borderRadius: effectiveRadius,
            clipBehavior: Clip.antiAlias,
            child: ListTile(
              title: DefaultTextStyle.merge(
                style: Theme.of(context).textTheme.bodyMedium,
                child: title,
              ),
              leading: leading,
              subtitle: subtitle,
              trailing: effectiveTrailing,
              onTap: onTap,
              selected: selected ?? false,
              horizontalTitleGap: 10,
              contentPadding:
                  contentPadding ??
                  const EdgeInsets.symmetric(horizontal: AppConfig.paddingHalf),
            ),
          ),
        ),
        if (groupType == ListTileGroupType.top ||
            groupType == ListTileGroupType.middle)
          const Gap(2),
      ],
    );
  }
}
