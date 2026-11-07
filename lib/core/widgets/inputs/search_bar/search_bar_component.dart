import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:material_ui/material_ui.dart';

import '../../../constants/app_config.dart';
import '../../../constants/design_system/tokens/tokens.dart';
import '../../../extensions/extensions.dart';

final class SearchBarComponent extends StatelessWidget {
  const SearchBarComponent({
    required this.controller,
    required this.hintText,
    super.key,
    this.onChanged,
    this.onTap,
    this.isEnabled = true,
    this.trailing,
  });
  final TextEditingController controller;
  final String hintText;
  final bool isEnabled;
  final VoidCallback? onTap;
  final void Function(String)? onChanged;
  final Iterable<Widget>? trailing;

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.colorScheme;

    return TextField(
      controller: controller,
      enabled: isEnabled,
      onTap: onTap,
      onTapOutside: (event) => FocusScope.of(context).unfocus(),
      onChanged: onChanged,
      textAlignVertical: TextAlignVertical.center,
      textInputAction: TextInputAction.search,
      keyboardType: TextInputType.name,
      style: context.textTheme.bodyLarge,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: const Icon(LucideIcons.search),
        suffixIcon: trailing == null
            ? null
            : Row(mainAxisSize: MainAxisSize.min, children: trailing!.toList()),
        filled: true,
        fillColor: colorScheme.surfaceContainerHigh,

        contentPadding: const EdgeInsetsDirectional.symmetric(
          horizontal: AppSpacing.large,
          vertical: AppSpacing.medium,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppConfig.outBorderRadius),
          borderSide: BorderSide(color: colorScheme.outlineVariant),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppConfig.outBorderRadius),
          borderSide: BorderSide(color: colorScheme.outlineVariant),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppConfig.outBorderRadius),
          borderSide: BorderSide(color: colorScheme.primary, width: 1.5),
        ),
      ),
    );
  }
}
