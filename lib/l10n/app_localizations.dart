import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en'),
  ];

  /// The title of the application
  ///
  /// In en, this message translates to:
  /// **'Zumi'**
  String get appTitle;

  /// Title for download file dialog
  ///
  /// In en, this message translates to:
  /// **'Download File'**
  String get downloadFile;

  /// Message shown when file is opened in browser
  ///
  /// In en, this message translates to:
  /// **'File opened in browser: {fileName}'**
  String fileOpenedInBrowser(String fileName);

  /// Message shown when file is saved to gallery
  ///
  /// In en, this message translates to:
  /// **'File saved to gallery: {fileName}'**
  String fileSavedToDcim(String fileName);

  /// Message shown when file is saved to documents
  ///
  /// In en, this message translates to:
  /// **'File saved to documents: {fileName}'**
  String fileSavedToDocuments(String fileName);

  /// Message shown when file already exists
  ///
  /// In en, this message translates to:
  /// **'File is already saved'**
  String get fileAlreadySaved;

  /// Generic error title
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get error;

  /// Generic info title
  ///
  /// In en, this message translates to:
  /// **'Info'**
  String get info;

  /// Generic success title
  ///
  /// In en, this message translates to:
  /// **'Success'**
  String get success;

  /// Generic warning title
  ///
  /// In en, this message translates to:
  /// **'Warning'**
  String get warning;

  /// Payment status paid
  ///
  /// In en, this message translates to:
  /// **'Paid'**
  String get paid;

  /// Payment status unpaid
  ///
  /// In en, this message translates to:
  /// **'Unpaid'**
  String get unpaid;

  /// Payment status partial
  ///
  /// In en, this message translates to:
  /// **'Partial'**
  String get partial;

  /// Address line empty error
  ///
  /// In en, this message translates to:
  /// **'Address line cannot be empty'**
  String get error_address_line_cant_be_empty;

  /// Address line too long error
  ///
  /// In en, this message translates to:
  /// **'Address line is too long'**
  String get error_address_line_too_long;

  /// Address special characters error
  ///
  /// In en, this message translates to:
  /// **'Special characters are not allowed'**
  String get error_address_invalid_special_characters;

  /// Address emoji not allowed error
  ///
  /// In en, this message translates to:
  /// **'Emojis are not allowed'**
  String get error_address_emoji_not_allowed;

  /// City empty error
  ///
  /// In en, this message translates to:
  /// **'City cannot be empty'**
  String get error_city_cant_be_empty;

  /// City too long error
  ///
  /// In en, this message translates to:
  /// **'City name is too long'**
  String get error_city_too_long;

  /// City special characters error
  ///
  /// In en, this message translates to:
  /// **'City contains invalid special characters'**
  String get error_city_invalid_special_characters;

  /// Address label empty error
  ///
  /// In en, this message translates to:
  /// **'Address label cannot be empty'**
  String get error_address_label_cant_be_empty;

  /// Address label too long error
  ///
  /// In en, this message translates to:
  /// **'Address label is too long'**
  String get error_address_label_too_long;

  /// Email empty error
  ///
  /// In en, this message translates to:
  /// **'Email cannot be empty'**
  String get error_email_cant_be_empty;

  /// Email invalid format error
  ///
  /// In en, this message translates to:
  /// **'Invalid email format'**
  String get error_email_not_invalid_format;

  /// Email invalid characters error
  ///
  /// In en, this message translates to:
  /// **'Email contains invalid characters'**
  String get error_email_contains_invalid_characters;

  /// Email missing @ error
  ///
  /// In en, this message translates to:
  /// **'Email must contain @'**
  String get error_email_must_contain_at_symbol;

  /// Email not in lowercase error
  ///
  /// In en, this message translates to:
  /// **'Email must be in lowercase'**
  String get error_email_must_be_in_lowercase;

  /// Arabic characters not allowed error
  ///
  /// In en, this message translates to:
  /// **'Arabic characters are not allowed'**
  String get error_arabic_not_allowed;

  /// Email emoji not allowed error
  ///
  /// In en, this message translates to:
  /// **'Emojis are not allowed in email'**
  String get error_email_emoji_not_allowed;

  /// Phone number empty error
  ///
  /// In en, this message translates to:
  /// **'Phone number cannot be empty'**
  String get error_phone_number_cant_be_empty;

  /// Phone number invalid error
  ///
  /// In en, this message translates to:
  /// **'Invalid phone number'**
  String get error_phone_number_invalid;

  /// Phone number min length error
  ///
  /// In en, this message translates to:
  /// **'Phone number must be at least 11 digits'**
  String get error_phone_number_min_length;

  /// Name empty error
  ///
  /// In en, this message translates to:
  /// **'Name cannot be empty'**
  String get error_name_cant_be_empty;

  /// Name invalid error
  ///
  /// In en, this message translates to:
  /// **'Invalid name'**
  String get error_name_invalid;

  /// Name too short error
  ///
  /// In en, this message translates to:
  /// **'Name must be at least 3 characters'**
  String get error_name_too_short_at_least_3_characters;

  /// Name too long error
  ///
  /// In en, this message translates to:
  /// **'Name cannot exceed 20 characters'**
  String get error_name_too_long_maximum_20_characters;

  /// Name special characters error
  ///
  /// In en, this message translates to:
  /// **'Name contains invalid special characters'**
  String get error_name_invalid_special_characters;

  /// Name emoji not allowed error
  ///
  /// In en, this message translates to:
  /// **'Emojis are not allowed in name'**
  String get error_name_emoji_not_allowed;

  /// Password empty error
  ///
  /// In en, this message translates to:
  /// **'Password cannot be empty'**
  String get error_password_cant_be_empty;

  /// Password complex requirements error
  ///
  /// In en, this message translates to:
  /// **'Password must contain uppercase, lowercase, number, and special character'**
  String
  get error_password_must_contain_uppercase_lowercase_number_and_special_character;

  /// Password min length error
  ///
  /// In en, this message translates to:
  /// **'Password must be at least 8 characters long'**
  String get error_password_must_be_at_least_8_characters_long;

  /// No internet connection message
  ///
  /// In en, this message translates to:
  /// **'No internet connection'**
  String get noInternetConnection;

  /// Internet connection restored message
  ///
  /// In en, this message translates to:
  /// **'Internet connection restored'**
  String get internetConnectionRestored;

  /// Retry button text
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retry;

  /// Cancel button text
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// Confirm button text
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// Please wait dialog text
  ///
  /// In en, this message translates to:
  /// **'Please wait...'**
  String get pleaseWait;

  /// OK button text
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get ok;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
