import 'dart:async';

import 'package:material_ui/material_ui.dart';

import '../../../services/haptics/haptics_service.dart';

final class CheckboxComponent extends StatelessWidget {
  const CheckboxComponent({
    required this.title,
    required this.value,
    required this.onChanged,
    super.key,
  });
  final String title;
  final bool value;
  final void Function(bool?) onChanged;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        unawaited(AppHaptics.selection());
        onChanged(!value);
      },
      child: Row(
        children: [
          Checkbox(
            value: value,
            onChanged: (v) {
              unawaited(AppHaptics.selection());
              onChanged(v);
            },
          ),
          Text(title),
        ],
      ),
    );
  }
}
