import 'dart:async';

import 'package:material_ui/material_ui.dart';
import 'package:flutter/services.dart';

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
    return InkWell(
      onTap: () {
        unawaited(HapticFeedback.vibrate());
        onChanged(!value);
      },
      child: Row(
        children: [
          Checkbox(
            value: value,
            onChanged: (v) {
              unawaited(HapticFeedback.vibrate());
              onChanged(v);
            },
          ),
          Text(title),
        ],
      ),
    );
  }
}
