// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Zumi';

  @override
  String get downloadFile => 'Download File';

  @override
  String fileOpenedInBrowser(String fileName) {
    return 'File opened in browser: $fileName';
  }

  @override
  String fileSavedToDcim(String fileName) {
    return 'File saved to gallery: $fileName';
  }

  @override
  String fileSavedToDocuments(String fileName) {
    return 'File saved to documents: $fileName';
  }

  @override
  String get fileAlreadySaved => 'File is already saved';

  @override
  String get error => 'Error';

  @override
  String get info => 'Info';

  @override
  String get success => 'Success';

  @override
  String get warning => 'Warning';

  @override
  String get paid => 'Paid';

  @override
  String get unpaid => 'Unpaid';

  @override
  String get partial => 'Partial';

  @override
  String get error_address_line_cant_be_empty => 'Address line cannot be empty';

  @override
  String get error_address_line_too_long => 'Address line is too long';

  @override
  String get error_address_invalid_special_characters =>
      'Special characters are not allowed';

  @override
  String get error_address_emoji_not_allowed => 'Emojis are not allowed';

  @override
  String get error_city_cant_be_empty => 'City cannot be empty';

  @override
  String get error_city_too_long => 'City name is too long';

  @override
  String get error_city_invalid_special_characters =>
      'City contains invalid special characters';

  @override
  String get error_address_label_cant_be_empty =>
      'Address label cannot be empty';

  @override
  String get error_address_label_too_long => 'Address label is too long';

  @override
  String get error_email_cant_be_empty => 'Email cannot be empty';

  @override
  String get error_email_not_invalid_format => 'Invalid email format';

  @override
  String get error_email_contains_invalid_characters =>
      'Email contains invalid characters';

  @override
  String get error_email_must_contain_at_symbol => 'Email must contain @';

  @override
  String get error_email_must_be_in_lowercase => 'Email must be in lowercase';

  @override
  String get error_arabic_not_allowed => 'Arabic characters are not allowed';

  @override
  String get error_email_emoji_not_allowed => 'Emojis are not allowed in email';

  @override
  String get error_phone_number_cant_be_empty => 'Phone number cannot be empty';

  @override
  String get error_phone_number_invalid => 'Invalid phone number';

  @override
  String get error_phone_number_min_length =>
      'Phone number must be at least 11 digits';

  @override
  String get error_name_cant_be_empty => 'Name cannot be empty';

  @override
  String get error_name_invalid => 'Invalid name';

  @override
  String get error_name_too_short_at_least_3_characters =>
      'Name must be at least 3 characters';

  @override
  String get error_name_too_long_maximum_20_characters =>
      'Name cannot exceed 20 characters';

  @override
  String get error_name_invalid_special_characters =>
      'Name contains invalid special characters';

  @override
  String get error_name_emoji_not_allowed => 'Emojis are not allowed in name';

  @override
  String get error_password_cant_be_empty => 'Password cannot be empty';

  @override
  String
  get error_password_must_contain_uppercase_lowercase_number_and_special_character =>
      'Password must contain uppercase, lowercase, number, and special character';

  @override
  String get error_password_must_be_at_least_8_characters_long =>
      'Password must be at least 8 characters long';

  @override
  String get noInternetConnection => 'No internet connection';

  @override
  String get internetConnectionRestored => 'Internet connection restored';

  @override
  String get retry => 'Retry';

  @override
  String get cancel => 'Cancel';

  @override
  String get confirm => 'Confirm';

  @override
  String get pleaseWait => 'Please wait...';

  @override
  String get ok => 'OK';
}
