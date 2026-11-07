import 'dart:async';

import 'package:flutter/services.dart';
import 'package:material_ui/material_ui.dart';

import '../../../constants/app_config.dart';
import '../../../extensions/extensions.dart';

final class TextFormFieldComponent extends StatelessWidget {
  const TextFormFieldComponent({
    required this.label,
    this.prefixIcon,
    this.onChanged,
    this.suffixIcon,
    this.obscureText = false,
    this.useInBorderRadius = false,
    this.readOnly = false,
    this.isEnable = true,
    this.errorText,
    this.onTap,
    this.controller,
    this.keyboardType,
    this.initialValue,
    this.hintText,
    this.inputFormatters,
    this.textAlign = TextAlign.start,
    this.onPrefixIconPressed,
    this.onSuffixIconPressed,
    this.fillColor,
    this.focusNode,
    this.maxLines = 1,
    this.textDirection,
    this.validator,
    this.textInputAction,
    this.autofillHints,
    this.textCapitalization = TextCapitalization.none,
    this.onFieldSubmitted,
    super.key,
  });

  final String label;
  final IconData? prefixIcon;
  final String? hintText;
  final Widget? suffixIcon;
  final bool obscureText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool useInBorderRadius;
  final bool readOnly;
  final void Function()? onTap;
  final void Function(String)? onChanged;
  final bool isEnable;
  final String? errorText;
  final String? initialValue;
  final Color? fillColor;
  final List<TextInputFormatter>? inputFormatters;
  final FocusNode? focusNode;
  final TextAlign textAlign;
  final int maxLines;
  final VoidCallback? onPrefixIconPressed;
  final VoidCallback? onSuffixIconPressed;
  final TextDirection? textDirection;

  /// Inline validation callback, returning an error message or `null`.
  final FormFieldValidator<String>? validator;

  final TextInputAction? textInputAction;
  final Iterable<String>? autofillHints;
  final TextCapitalization textCapitalization;
  final ValueChanged<String>? onFieldSubmitted;

  @override
  Widget build(BuildContext context) {
    final radius = BorderRadius.circular(
      useInBorderRadius ? AppConfig.inBorderRadius : AppConfig.outBorderRadius,
    );

    return TextFormField(
      focusNode: focusNode,
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
      textAlign: textAlign,
      inputFormatters: inputFormatters,
      readOnly: readOnly,
      onChanged: onChanged,
      enabled: isEnable,
      initialValue: initialValue,
      maxLines: maxLines,
      validator: validator,
      textInputAction: textInputAction,
      autofillHints: autofillHints,
      textCapitalization: textCapitalization,
      onFieldSubmitted: onFieldSubmitted,
      onTapOutside: (event) => FocusScope.of(context).unfocus(),
      textDirection: textDirection,
      onTap: () {
        unawaited(HapticFeedback.vibrate());
        onTap?.call();
      },
      decoration: InputDecoration(
        labelText: label,
        errorText: errorText,
        filled: true,
        fillColor: fillColor ?? context.colorScheme.surfaceContainer,
        prefixIcon: prefixIcon != null
            ? IconButton(
                onPressed: onPrefixIconPressed,
                icon: Icon(prefixIcon, color: context.colorScheme.primary),
              )
            : null,
        suffixIcon: onSuffixIconPressed != null
            ? IconButton(
                onPressed: onSuffixIconPressed,
                icon: suffixIcon ?? const SizedBox.shrink(),
              )
            : suffixIcon,
        hintText: hintText,
        border: OutlineInputBorder(borderRadius: radius),
        enabledBorder: OutlineInputBorder(
          borderRadius: radius,
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
