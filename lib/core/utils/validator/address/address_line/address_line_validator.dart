// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:formz/formz.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../constants/validation_regex.dart';
import '../../../../extensions/extensions.dart';
import '../../base/validation_pipeline.dart';

/// Max characters allowed for a full address line.
const int kAddressLineMaxLength = 100;

enum AddressLineValidatorError {
  empty,
  tooLong,
  invalidSpecialChars,
  emojiNotAllowed,
}

final class AddressLineValidator
    extends FormzInput<String, AddressLineValidatorError> {
  const AddressLineValidator.pure() : super.pure('');
  const AddressLineValidator.dirty([super.value = '']) : super.dirty();

  @override
  AddressLineValidatorError? validator(String value) {
    return ValidationPipeline<AddressLineValidatorError>(value)
        .required(AddressLineValidatorError.empty)
        .maxLength(kAddressLineMaxLength, AddressLineValidatorError.tooLong)
        .notMatches(
          ValidationRegex.emojiRegExp,
          AddressLineValidatorError.emojiNotAllowed,
        )
        .notMatches(
          ValidationRegex.invalidSpecialCharsRegExp,
          AddressLineValidatorError.invalidSpecialChars,
        )
        .evaluate();
  }
}

extension AddressLineValidatorErrorX on AddressLineValidatorError {
  String message(BuildContext context) {
    final l = context.localeKeys;
    return switch (this) {
      AddressLineValidatorError.empty => l.addressLineCannotBeEmpty,
      AddressLineValidatorError.tooLong => l.addressLineIsTooLong,
      AddressLineValidatorError.invalidSpecialChars =>
        l.specialCharactersAreNotAllowed,
      AddressLineValidatorError.emojiNotAllowed => l.emojisAreNotAllowed,
    };
  }
}
