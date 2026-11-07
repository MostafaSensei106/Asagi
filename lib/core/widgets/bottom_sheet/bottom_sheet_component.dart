import 'package:material_ui/material_ui.dart';

import '../../constants/app_config.dart';
import '../../extensions/extensions.dart';

extension BottomSheetExtension on BuildContext {
  // ignore: unused_element
  Future<void> showBottomSheetComponent({
    required Widget child,
    bool isScrollControlled = true,
    bool isDismissible = true,
    bool enableDrag = true,
  }) {
    return showModalBottomSheet(
      context: this,
      showDragHandle: true,
      isDismissible: isDismissible,
      enableDrag: enableDrag,
      backgroundColor: colorScheme.surface,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(AppConfig.outBorderRadius),
        ),
      ),
      builder: (context) => SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(AppConfig.paddingHalf),
          child: child,
        ),
      ),
    );
  }
}
