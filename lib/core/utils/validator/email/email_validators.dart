// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:flutter/widgets.dart';
import 'package:formz/formz.dart';

import '../../../constants/validation_regex.dart';
import '../../../extensions/extensions.dart';
import '../base/validation_pipeline.dart';

enum EmailValidationError {
  empty,
  invalid,
  invalidCharacters,
  missingAtSign,
  notInLowerCase,
  arabicNotAllowed,
  emojiNotAllowed,
}

final class EmailValidator extends FormzInput<String, EmailValidationError> {
  const EmailValidator.pure() : super.pure('');
  const EmailValidator.dirty([super.value = '']) : super.dirty();

  @override
  EmailValidationError? validator(String value) {
    return ValidationPipeline<EmailValidationError>(value)
        .required(EmailValidationError.empty)
        .contains('@', EmailValidationError.missingAtSign)
        .isLowerCase(EmailValidationError.notInLowerCase)
        .matches(ValidationRegex.emailRegExp, EmailValidationError.invalid)
        .notMatches(
          ValidationRegex.arabicRegExp,
          EmailValidationError.arabicNotAllowed,
        )
        .notMatches(
          ValidationRegex.emojiRegExp,
          EmailValidationError.emojiNotAllowed,
        )
        .evaluate();
  }
}

extension EmailValidationErrorExtension on EmailValidationError {
  String message(BuildContext context) {
    final l = context.localeKeys;
    return switch (this) {
      EmailValidationError.empty => l.emailCannotBeEmpty,
      EmailValidationError.invalid => l.invalidEmailFormat,
      EmailValidationError.invalidCharacters =>
        l.emailContainsInvalidCharacters,
      EmailValidationError.missingAtSign => l.emailMustContain,
      EmailValidationError.notInLowerCase => l.emailMustBeInLowercase,
      EmailValidationError.arabicNotAllowed => l.arabicCharactersAreNotAllowed,
      EmailValidationError.emojiNotAllowed => l.emojisAreNotAllowedInEmail,
    };
  }
}
