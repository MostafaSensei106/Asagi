import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:material_ui/material_ui.dart';

import '../widgets/feedback/bottom_sheet/info_bottom_sheet_component.dart';
import '../widgets/feedback/bottom_sheet/info_bottom_sheet_illustration.dart';

extension InfoBottomSheetExtension on BuildContext {
  Future<void> showInfoBottomSheet({
    required String title,
    required String description,
    InfoIllustrationKind illustrationKind = InfoIllustrationKind.general,
    IconData icon = LucideIcons.info,
  }) {
    return InfoBottomSheetComponent.show(
      context: this,
      title: title,
      description: description,
      illustrationKind: illustrationKind,
      icon: icon,
    );
  }
}
