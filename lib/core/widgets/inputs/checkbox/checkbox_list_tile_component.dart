// ignore_for_file: avoid_positional_boolean_parameters

import 'dart:async';

import 'package:material_ui/material_ui.dart';

import '../../../constants/app_config.dart';
import '../../../services/haptics/haptics_service.dart';

final class CheckboxListTileComponent extends StatelessWidget {
  const CheckboxListTileComponent({
    required this.title,
    required this.value,
    required this.onChanged,
    super.key,
    this.useInBorderRadius = false,
  });
  final String title;
  final bool value;
  final bool useInBorderRadius;
  final void Function(bool?) onChanged;

  @override
  Widget build(BuildContext context) => CheckboxListTile(
    contentPadding: EdgeInsets.zero,
    controlAffinity: ListTileControlAffinity.leading,
    title: Text(title),
    value: value,
    onChanged: (value) {
      unawaited(AppHaptics.selection());
      onChanged(value);
    },
    shape: RoundedRectangleBorder(
      borderRadius: useInBorderRadius
          ? BorderRadiusGeometry.circular(AppConfig.inBorderRadius)
          : BorderRadius.circular(AppConfig.outBorderRadius),
    ),
  );
}
