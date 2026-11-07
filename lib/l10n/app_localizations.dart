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

  /// Home page title
  ///
  /// In en, this message translates to:
  /// **'Zumi'**
  String get homeTitle;

  /// Home page description
  ///
  /// In en, this message translates to:
  /// **'Compress videos privately, on your device.'**
  String get homeDescription;

  /// Onboarding page title
  ///
  /// In en, this message translates to:
  /// **'Welcome to Zumi'**
  String get onboardingTitle;

  /// Onboarding page description
  ///
  /// In en, this message translates to:
  /// **'Learn how Zumi compresses your videos without ever leaving your phone.'**
  String get onboardingDescription;

  /// Login page title
  ///
  /// In en, this message translates to:
  /// **'Sign in'**
  String get loginTitle;

  /// Login page description
  ///
  /// In en, this message translates to:
  /// **'Sign in to sync your plan and keep your purchases available on every device.'**
  String get loginDescription;

  /// Video picker page title
  ///
  /// In en, this message translates to:
  /// **'Choose a video'**
  String get videoSelectTitle;

  /// Video picker page description
  ///
  /// In en, this message translates to:
  /// **'Pick a video from your gallery to start compressing.'**
  String get videoSelectDescription;

  /// Compression setup page title
  ///
  /// In en, this message translates to:
  /// **'Compression setup'**
  String get compressionSetupTitle;

  /// Compression setup page description
  ///
  /// In en, this message translates to:
  /// **'Choose resolution, bitrate, and output format before you start.'**
  String get compressionSetupDescription;

  /// Compression progress page title
  ///
  /// In en, this message translates to:
  /// **'Compressing'**
  String get compressionProgressTitle;

  /// Compression progress page description
  ///
  /// In en, this message translates to:
  /// **'Follow the live progress of your compression job.'**
  String get compressionProgressDescription;

  /// Compression result page title
  ///
  /// In en, this message translates to:
  /// **'Compression result'**
  String get compressionResultTitle;

  /// Compression result page description
  ///
  /// In en, this message translates to:
  /// **'Compare the before and after size, then save or share the result.'**
  String get compressionResultDescription;

  /// Compression history page title
  ///
  /// In en, this message translates to:
  /// **'Compression history'**
  String get compressionHistoryTitle;

  /// Compression history page description
  ///
  /// In en, this message translates to:
  /// **'Review the videos you have compressed on this device.'**
  String get compressionHistoryDescription;

  /// Settings hub page title
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settingsTitle;

  /// Appearance settings page title
  ///
  /// In en, this message translates to:
  /// **'Appearance'**
  String get settingsAppearanceTitle;

  /// Appearance settings page description
  ///
  /// In en, this message translates to:
  /// **'Theme, color scheme, and motion preferences.'**
  String get settingsAppearanceDescription;

  /// Language settings page title
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get settingsLanguageTitle;

  /// Language settings page description
  ///
  /// In en, this message translates to:
  /// **'App language and text direction.'**
  String get settingsLanguageDescription;

  /// Compression defaults page title
  ///
  /// In en, this message translates to:
  /// **'Compression defaults'**
  String get settingsCompressionTitle;

  /// Compression defaults page description
  ///
  /// In en, this message translates to:
  /// **'Default resolution, bitrate, and output format.'**
  String get settingsCompressionDescription;

  /// Storage settings page title
  ///
  /// In en, this message translates to:
  /// **'Storage & cleanup'**
  String get settingsStorageTitle;

  /// Storage settings page description
  ///
  /// In en, this message translates to:
  /// **'Storage usage, cache size, and temporary-file cleanup.'**
  String get settingsStorageDescription;

  /// Notifications settings page title
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get settingsNotificationsTitle;

  /// Notifications settings page description
  ///
  /// In en, this message translates to:
  /// **'Job completion and product update notifications.'**
  String get settingsNotificationsDescription;

  /// Privacy settings page title
  ///
  /// In en, this message translates to:
  /// **'Privacy'**
  String get settingsPrivacyTitle;

  /// Privacy settings page description
  ///
  /// In en, this message translates to:
  /// **'On-device processing, local logs, and optional crash reports.'**
  String get settingsPrivacyDescription;

  /// App info page title
  ///
  /// In en, this message translates to:
  /// **'About Zumi'**
  String get aboutAppTitle;

  /// App info page description
  ///
  /// In en, this message translates to:
  /// **'Version, build number, and application details.'**
  String get aboutAppDescription;

  /// Developer page title
  ///
  /// In en, this message translates to:
  /// **'About the developer'**
  String get aboutDeveloperTitle;

  /// Developer page description
  ///
  /// In en, this message translates to:
  /// **'The people and tools behind Zumi.'**
  String get aboutDeveloperDescription;

  /// Licenses page title
  ///
  /// In en, this message translates to:
  /// **'Open-source licenses'**
  String get aboutLicensesTitle;

  /// Licenses page description
  ///
  /// In en, this message translates to:
  /// **'Open-source packages bundled with Zumi.'**
  String get aboutLicensesDescription;

  /// Privacy policy page title
  ///
  /// In en, this message translates to:
  /// **'Privacy policy'**
  String get legalPrivacyTitle;

  /// Privacy policy page description
  ///
  /// In en, this message translates to:
  /// **'How Zumi handles your videos and data.'**
  String get legalPrivacyDescription;

  /// Terms page title
  ///
  /// In en, this message translates to:
  /// **'Terms of service'**
  String get legalTermsTitle;

  /// Terms page description
  ///
  /// In en, this message translates to:
  /// **'The terms that apply to Zumi and its purchases.'**
  String get legalTermsDescription;

  /// Data safety page title
  ///
  /// In en, this message translates to:
  /// **'Data safety'**
  String get legalDataSafetyTitle;

  /// Data safety page description
  ///
  /// In en, this message translates to:
  /// **'Summary of the data Zumi collects and why.'**
  String get legalDataSafetyDescription;

  /// Permissions page title
  ///
  /// In en, this message translates to:
  /// **'Permissions'**
  String get legalPermissionsTitle;

  /// Permissions page description
  ///
  /// In en, this message translates to:
  /// **'Runtime permissions Zumi requests and why each is needed.'**
  String get legalPermissionsDescription;

  /// FAQ page title
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get helpFaqTitle;

  /// FAQ page description
  ///
  /// In en, this message translates to:
  /// **'Answers to common questions about compression and billing.'**
  String get helpFaqDescription;

  /// Support page title
  ///
  /// In en, this message translates to:
  /// **'Support'**
  String get helpSupportTitle;

  /// Support page description
  ///
  /// In en, this message translates to:
  /// **'Get help with your account or a purchase.'**
  String get helpSupportDescription;

  /// Feedback page title
  ///
  /// In en, this message translates to:
  /// **'Send feedback'**
  String get helpFeedbackTitle;

  /// Feedback page description
  ///
  /// In en, this message translates to:
  /// **'Report a problem or suggest an improvement.'**
  String get helpFeedbackDescription;

  /// Plans page title
  ///
  /// In en, this message translates to:
  /// **'Plans'**
  String get plansTitle;

  /// Plans page description
  ///
  /// In en, this message translates to:
  /// **'Compare plans and see what each one unlocks.'**
  String get plansDescription;

  /// Plan details page title
  ///
  /// In en, this message translates to:
  /// **'Plan details'**
  String get plansDetailsTitle;

  /// Plan details page description
  ///
  /// In en, this message translates to:
  /// **'Benefits, limits, and pricing for this plan.'**
  String get plansDetailsDescription;

  /// Purchase methods page title
  ///
  /// In en, this message translates to:
  /// **'Payment methods'**
  String get plansMethodsTitle;

  /// Purchase methods page description
  ///
  /// In en, this message translates to:
  /// **'Supported ways to pay, including store billing.'**
  String get plansMethodsDescription;

  /// Restore purchases page title
  ///
  /// In en, this message translates to:
  /// **'Restore purchases'**
  String get plansRestoreTitle;

  /// Restore purchases page description
  ///
  /// In en, this message translates to:
  /// **'Re-apply a purchase made on another device.'**
  String get plansRestoreDescription;

  /// Profile page title
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profileTitle;

  /// Profile page description
  ///
  /// In en, this message translates to:
  /// **'Your identity, plan status, and account preferences.'**
  String get profileDescription;

  /// Delete account page title
  ///
  /// In en, this message translates to:
  /// **'Delete account'**
  String get profileDeleteTitle;

  /// Delete account page description
  ///
  /// In en, this message translates to:
  /// **'Permanently remove your account and its server-side data.'**
  String get profileDeleteDescription;

  /// Rate app page title
  ///
  /// In en, this message translates to:
  /// **'Rate Zumi'**
  String get rateAppTitle;

  /// Rate app page description
  ///
  /// In en, this message translates to:
  /// **'Tell others how Zumi worked for you on the store.'**
  String get rateAppDescription;

  /// Share app page title
  ///
  /// In en, this message translates to:
  /// **'Share Zumi'**
  String get shareAppTitle;

  /// Share app page description
  ///
  /// In en, this message translates to:
  /// **'Recommend Zumi to a friend.'**
  String get shareAppDescription;

  /// Settings hub section label
  ///
  /// In en, this message translates to:
  /// **'Appearance & language'**
  String get settingsGroupAppearance;

  /// Settings hub section summary
  ///
  /// In en, this message translates to:
  /// **'Theme, language, and text size'**
  String get settingsGroupAppearanceSubtitle;

  /// Settings hub section label
  ///
  /// In en, this message translates to:
  /// **'Compression'**
  String get settingsGroupCompression;

  /// Settings hub section summary
  ///
  /// In en, this message translates to:
  /// **'Defaults, storage, and history'**
  String get settingsGroupCompressionSubtitle;

  /// Settings hub section label
  ///
  /// In en, this message translates to:
  /// **'Notifications & privacy'**
  String get settingsGroupPrivacy;

  /// Settings hub section summary
  ///
  /// In en, this message translates to:
  /// **'Notifications and data controls'**
  String get settingsGroupPrivacySubtitle;

  /// Settings hub section label
  ///
  /// In en, this message translates to:
  /// **'Plans & purchases'**
  String get settingsGroupPlans;

  /// Settings hub section summary
  ///
  /// In en, this message translates to:
  /// **'Subscription and purchase options'**
  String get settingsGroupPlansSubtitle;

  /// Settings hub section label
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get settingsGroupAbout;

  /// Settings hub section summary
  ///
  /// In en, this message translates to:
  /// **'App details and credits'**
  String get settingsGroupAboutSubtitle;

  /// Settings hub section label
  ///
  /// In en, this message translates to:
  /// **'Legal'**
  String get settingsGroupLegal;

  /// Settings hub section summary
  ///
  /// In en, this message translates to:
  /// **'Policies, terms, and permissions'**
  String get settingsGroupLegalSubtitle;

  /// Settings hub section label
  ///
  /// In en, this message translates to:
  /// **'Help & feedback'**
  String get settingsGroupHelp;

  /// Settings hub section summary
  ///
  /// In en, this message translates to:
  /// **'Answers, support, and feedback'**
  String get settingsGroupHelpSubtitle;

  /// Settings hub section label
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get settingsGroupAccount;

  /// Badge shown on placeholder pages
  ///
  /// In en, this message translates to:
  /// **'Coming soon'**
  String get comingSoon;
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
