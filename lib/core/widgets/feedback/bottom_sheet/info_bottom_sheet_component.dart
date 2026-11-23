import 'dart:async';

import 'package:cupertino_modal_sheet/cupertino_modal_sheet.dart';
import 'package:flutter/services.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:material_ui/material_ui.dart';

import '../../../extensions/extensions.dart';
import '../../design_system/tokens/tokens.dart';
import '../../layout/gap.dart';
import '../../navigation/app_bar/side_page_app_bar_component.dart';
import 'info_bottom_sheet_illustration.dart';

/// Reusable Cupertino modal sheet for explaining a setting or feature.
final class InfoBottomSheetComponent {
  const InfoBottomSheetComponent._();

  static Future<void> show({
    required BuildContext context,
    required String title,
    required String description,
    required InfoIllustrationKind illustrationKind,
    IconData icon = LucideIcons.info,
  }) {
    final scheme = context.colorScheme;
    final textTheme = context.textTheme;
    unawaited(HapticFeedback.vibrate());

    return showCupertinoModalSheet<void>(
      context: context,
      builder: (sheetContext) => SafeArea(
        child: Scaffold(
          appBar: SidePageAppBarComponent(title: title),
          body: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.large,
              vertical: AppSpacing.small,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                InfoBottomSheetIllustration(icon: icon, kind: illustrationKind),
                const Gap(AppSpacing.large),
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
        ),
      ),
    );
  }
}
