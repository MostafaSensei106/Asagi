import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:material_ui/material_ui.dart';

import '../text_form_field/text_form_field_component.dart';

final class PasswordFieldComponent extends HookWidget {
  const PasswordFieldComponent({
    required this.label,
    this.initialValue,
    this.onChanged,
    this.controller,
    this.errorText,
    this.isEnable = true,
    this.validator,
    this.textInputAction,
    this.autofillHints,
    this.textCapitalization = TextCapitalization.none,
    this.onFieldSubmitted,
    super.key,
  });

  final String label;
  final TextEditingController? controller;
  final void Function(String)? onChanged;
  final bool isEnable;
  final String? errorText;
  final String? initialValue;

  /// Inline validation callback, returning an error message or `null`.
  final FormFieldValidator<String>? validator;

  final TextInputAction? textInputAction;
  final Iterable<String>? autofillHints;
  final TextCapitalization textCapitalization;
  final ValueChanged<String>? onFieldSubmitted;

  @override
  Widget build(BuildContext context) {
    final obscureText = useState(true);

    return TextFormFieldComponent(
      label: label,
      controller: controller,
      prefixIcon: LucideIcons.lock,
      obscureText: obscureText.value,
      isEnable: isEnable,
      errorText: errorText,
      initialValue: initialValue,
      validator: validator,
      textInputAction: textInputAction,
      autofillHints: autofillHints,
      textCapitalization: textCapitalization,
      onFieldSubmitted: onFieldSubmitted,
      suffixIcon: IconButton(
        icon: Icon(obscureText.value ? LucideIcons.eye : LucideIcons.eyeOff),
        onPressed: () => obscureText.value = !obscureText.value,
      ),
      onChanged: onChanged,
    );
  }
}
