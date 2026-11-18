import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:material_ui/material_ui.dart';

import '../widgets/feedback/bottom_sheet/info_bottom_sheet_component.dart';

extension InfoBottomSheetExtension on BuildContext {
  Future<void> showInfoBottomSheet({
    required String title,
    required String description,
    IconData icon = LucideIcons.info,
    IconData inputIcon = LucideIcons.fileUp,
    IconData outputIcon = LucideIcons.check,
  }) {
    return InfoBottomSheetComponent.show(
      context: this,
      title: title,
      description: description,
      icon: icon,
      inputIcon: inputIcon,
      outputIcon: outputIcon,
    );
  }
}
