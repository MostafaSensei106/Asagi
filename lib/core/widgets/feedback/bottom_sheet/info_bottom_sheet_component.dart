import 'package:cupertino_ui/cupertino_ui.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:material_ui/material_ui.dart';

import '../../../extensions/extensions.dart';
import '../../buttons/filled_tonal_button/filled_tonal_button_component.dart';
import 'info_bottom_sheet_illustration.dart';

/// Reusable bottom sheet for explaining a setting or feature.
final class InfoBottomSheetComponent {
  const InfoBottomSheetComponent._();

  static Future<void> show({
    required BuildContext context,
    required String title,
    required String description,
    IconData icon = LucideIcons.info,
    IconData inputIcon = LucideIcons.fileUp,
    IconData outputIcon = LucideIcons.check,
  }) {
    final scheme = context.colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return showCupertinoSheet<void>(
      context: context,
      topGap: 0,
      showDragHandle: true,
      scrollableBuilder: (sheetContext, scrollController) => SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                controller: scrollController,
                padding: const EdgeInsets.fromLTRB(24, 24, 24, 20),
                children: [
                  Text(
                    title,
                    style: textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w700,
                      color: scheme.onSurface,
                    ),
                  ),
                  const SizedBox(height: 20),
                  InfoBottomSheetIllustration(
                    icon: icon,
                    inputIcon: inputIcon,
                    outputIcon: outputIcon,
                  ),
                  const SizedBox(height: 24),
                  Text(
                    description,
                    style: textTheme.bodyLarge?.copyWith(
                      color: scheme.onSurfaceVariant,
                      height: 1.6,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 12, 24, 20),
              child: SizedBox(
                width: double.infinity,
                child: FilledTonalButtonComponent(
                  label: sheetContext.localeKeys.cancel,
                  expand: true,
                  onPressed: () => Navigator.of(sheetContext).pop(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
