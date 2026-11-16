import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_id.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_nl.dart';
import 'app_localizations_pl.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_sv.dart';
import 'app_localizations_th.dart';
import 'app_localizations_tr.dart';
import 'app_localizations_vi.dart';
import 'app_localizations_zh.dart';

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
    Locale('ar', 'EG'),
    Locale('de'),
    Locale('de', 'DE'),
    Locale('en'),
    Locale('en', 'GB'),
    Locale('es'),
    Locale('es', 'ES'),
    Locale('fr'),
    Locale('id'),
    Locale('id', 'ID'),
    Locale('it'),
    Locale('it', 'IT'),
    Locale('ja'),
    Locale('ja', 'JP'),
    Locale('ko'),
    Locale('ko', 'KR'),
    Locale('nl'),
    Locale('nl', 'BE'),
    Locale('pl'),
    Locale('pl', 'PL'),
    Locale('pt'),
    Locale('pt', 'BR'),
    Locale('ru'),
    Locale('ru', 'RU'),
    Locale('sv'),
    Locale('sv', 'SE'),
    Locale('th'),
    Locale('th', 'TH'),
    Locale('tr'),
    Locale('tr', 'TR'),
    Locale('vi'),
    Locale('zh'),
    Locale('zh', 'CN'),
    Locale('zh', 'HK'),
    Locale('zh', 'SG'),
    Locale('zh', 'TW'),
  ];

  /// Application name shown in the app and on the home page
  ///
  /// In en, this message translates to:
  /// **'Zumi'**
  String get zumi;

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
  String fileSavedToGallery(String fileName);

  /// Message shown when file is saved to documents
  ///
  /// In en, this message translates to:
  /// **'File saved to documents: {fileName}'**
  String fileSavedToDocuments(String fileName);

  /// Message shown when file already exists
  ///
  /// In en, this message translates to:
  /// **'File is already saved'**
  String get fileIsAlreadySaved;

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
  String get addressLineCannotBeEmpty;

  /// Address line too long error
  ///
  /// In en, this message translates to:
  /// **'Address line is too long'**
  String get addressLineIsTooLong;

  /// Address special characters error
  ///
  /// In en, this message translates to:
  /// **'Special characters are not allowed'**
  String get specialCharactersAreNotAllowed;

  /// Address emoji not allowed error
  ///
  /// In en, this message translates to:
  /// **'Emojis are not allowed'**
  String get emojisAreNotAllowed;

  /// City empty error
  ///
  /// In en, this message translates to:
  /// **'City cannot be empty'**
  String get cityCannotBeEmpty;

  /// City too long error
  ///
  /// In en, this message translates to:
  /// **'City name is too long'**
  String get cityNameIsTooLong;

  /// City special characters error
  ///
  /// In en, this message translates to:
  /// **'City contains invalid special characters'**
  String get cityContainsInvalidSpecialCharacters;

  /// Address label empty error
  ///
  /// In en, this message translates to:
  /// **'Address label cannot be empty'**
  String get addressLabelCannotBeEmpty;

  /// Address label too long error
  ///
  /// In en, this message translates to:
  /// **'Address label is too long'**
  String get addressLabelIsTooLong;

  /// Email empty error
  ///
  /// In en, this message translates to:
  /// **'Email cannot be empty'**
  String get emailCannotBeEmpty;

  /// Email invalid format error
  ///
  /// In en, this message translates to:
  /// **'Invalid email format'**
  String get invalidEmailFormat;

  /// Email invalid characters error
  ///
  /// In en, this message translates to:
  /// **'Email contains invalid characters'**
  String get emailContainsInvalidCharacters;

  /// Email missing @ error
  ///
  /// In en, this message translates to:
  /// **'Email must contain @'**
  String get emailMustContain;

  /// Email not in lowercase error
  ///
  /// In en, this message translates to:
  /// **'Email must be in lowercase'**
  String get emailMustBeInLowercase;

  /// Arabic characters not allowed error
  ///
  /// In en, this message translates to:
  /// **'Arabic characters are not allowed'**
  String get arabicCharactersAreNotAllowed;

  /// Email emoji not allowed error
  ///
  /// In en, this message translates to:
  /// **'Emojis are not allowed in email'**
  String get emojisAreNotAllowedInEmail;

  /// Phone number empty error
  ///
  /// In en, this message translates to:
  /// **'Phone number cannot be empty'**
  String get phoneNumberCannotBeEmpty;

  /// Phone number invalid error
  ///
  /// In en, this message translates to:
  /// **'Invalid phone number'**
  String get invalidPhoneNumber;

  /// Phone number min length error
  ///
  /// In en, this message translates to:
  /// **'Phone number must be at least 11 digits'**
  String get phoneNumberMustBeAtLeast11Digits;

  /// Name empty error
  ///
  /// In en, this message translates to:
  /// **'Name cannot be empty'**
  String get nameCannotBeEmpty;

  /// Name invalid error
  ///
  /// In en, this message translates to:
  /// **'Invalid name'**
  String get invalidName;

  /// Name too short error
  ///
  /// In en, this message translates to:
  /// **'Name must be at least 3 characters'**
  String get nameMustBeAtLeast3Characters;

  /// Name too long error
  ///
  /// In en, this message translates to:
  /// **'Name cannot exceed 20 characters'**
  String get nameCannotExceed20Characters;

  /// Name special characters error
  ///
  /// In en, this message translates to:
  /// **'Name contains invalid special characters'**
  String get nameContainsInvalidSpecialCharacters;

  /// Name emoji not allowed error
  ///
  /// In en, this message translates to:
  /// **'Emojis are not allowed in name'**
  String get emojisAreNotAllowedInName;

  /// Password empty error
  ///
  /// In en, this message translates to:
  /// **'Password cannot be empty'**
  String get passwordCannotBeEmpty;

  /// Password complex requirements error
  ///
  /// In en, this message translates to:
  /// **'Password must contain uppercase, lowercase, number, and special character'**
  String get passwordMustContainUppercaseLowercaseNumberAndSpecialCharacter;

  /// Password min length error
  ///
  /// In en, this message translates to:
  /// **'Password must be at least 8 characters long'**
  String get passwordMustBeAtLeast8CharactersLong;

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
  /// **'Please wait…'**
  String get pleaseWait;

  /// OK button text
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get ok;

  /// Home page description
  ///
  /// In en, this message translates to:
  /// **'Compress videos privately, on your device.'**
  String get compressVideosPrivatelyOnYourDevice;

  /// Onboarding page title
  ///
  /// In en, this message translates to:
  /// **'Welcome to Zumi'**
  String get welcomeToZumi;

  /// Onboarding page description
  ///
  /// In en, this message translates to:
  /// **'Learn how Zumi compresses your videos without ever leaving your phone.'**
  String get learnHowZumiCompressesYourVideosWithoutEverLeavingYourPhone;

  /// Login page title
  ///
  /// In en, this message translates to:
  /// **'Sign in'**
  String get signIn;

  /// Login page description
  ///
  /// In en, this message translates to:
  /// **'Sign in to sync your plan and keep your purchases available on every device.'**
  String get signInToSyncYourPlanAndKeepYourPurchasesAvailableOnEveryDevice;

  /// Video picker page title
  ///
  /// In en, this message translates to:
  /// **'Choose a video'**
  String get chooseAVideo;

  /// Video picker page description
  ///
  /// In en, this message translates to:
  /// **'Pick a video from your gallery to start compressing.'**
  String get pickAVideoFromYourGalleryToStartCompressing;

  /// Compression setup page title
  ///
  /// In en, this message translates to:
  /// **'Compression setup'**
  String get compressionSetup;

  /// Compression setup page description
  ///
  /// In en, this message translates to:
  /// **'Choose resolution, bitrate, and output format before you start.'**
  String get chooseResolutionBitrateAndOutputFormatBeforeYouStart;

  /// Compression progress page title
  ///
  /// In en, this message translates to:
  /// **'Compressing'**
  String get compressing;

  /// Compression progress page description
  ///
  /// In en, this message translates to:
  /// **'Follow the live progress of your compression job.'**
  String get followTheLiveProgressOfYourCompressionJob;

  /// Compression result page title
  ///
  /// In en, this message translates to:
  /// **'Compression result'**
  String get compressionResult;

  /// Compression result page description
  ///
  /// In en, this message translates to:
  /// **'Compare the before and after size, then save or share the result.'**
  String get compareTheBeforeAndAfterSizeThenSaveOrShareTheResult;

  /// Compression history page title
  ///
  /// In en, this message translates to:
  /// **'Compression history'**
  String get compressionHistory;

  /// Compression history page description
  ///
  /// In en, this message translates to:
  /// **'Review the videos you have compressed on this device.'**
  String get reviewTheVideosYouHaveCompressedOnThisDevice;

  /// Settings hub page title
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// Appearance settings page title
  ///
  /// In en, this message translates to:
  /// **'Appearance'**
  String get appearance;

  /// Appearance settings page description
  ///
  /// In en, this message translates to:
  /// **'Theme, color scheme, and motion preferences.'**
  String get themeColorSchemeAndMotionPreferences;

  /// Theme mode that follows the device setting
  ///
  /// In en, this message translates to:
  /// **'System'**
  String get system;

  /// System theme mode subtitle
  ///
  /// In en, this message translates to:
  /// **'Match your device setting.'**
  String get matchYourDeviceSetting;

  /// Light theme mode
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get light;

  /// Light theme mode subtitle
  ///
  /// In en, this message translates to:
  /// **'Always use the light theme.'**
  String get alwaysUseTheLightTheme;

  /// Dark theme mode
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get dark;

  /// Dark theme mode subtitle
  ///
  /// In en, this message translates to:
  /// **'Always use the dark theme.'**
  String get alwaysUseTheDarkTheme;

  /// Section title for the theme mode choices
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get theme;

  /// Title of the live theme preview card
  ///
  /// In en, this message translates to:
  /// **'Theme preview'**
  String get themePreview;

  /// Subtitle of the live theme preview card
  ///
  /// In en, this message translates to:
  /// **'Surfaces, text, and accents'**
  String get surfacesTextAndAccents;

  /// High contrast mode toggle title
  ///
  /// In en, this message translates to:
  /// **'High contrast'**
  String get highContrast;

  /// High contrast mode toggle subtitle
  ///
  /// In en, this message translates to:
  /// **'Pure black and white surfaces '**
  String get sharperTextAndSurfaces;

  /// Engine title in theme preview card
  ///
  /// In en, this message translates to:
  /// **'Zumi Engine'**
  String get zumiEngine;

  /// Engine subtitle in theme preview card
  ///
  /// In en, this message translates to:
  /// **'Target-Size Video Optimizer'**
  String get targetSizeOptimizer;

  /// Encoding status in theme preview card
  ///
  /// In en, this message translates to:
  /// **'Encoding • H.265 / HEVC'**
  String get encodingFormat;

  /// Compress button in theme preview card
  ///
  /// In en, this message translates to:
  /// **'Compress'**
  String get compressAction;

  /// Primary color tooltip in theme preview card
  ///
  /// In en, this message translates to:
  /// **'Primary'**
  String get primaryColor;

  /// Secondary color tooltip in theme preview card
  ///
  /// In en, this message translates to:
  /// **'Secondary'**
  String get secondaryColor;

  /// Tertiary color tooltip in theme preview card
  ///
  /// In en, this message translates to:
  /// **'Tertiary'**
  String get tertiaryColor;

  /// Language settings page title
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// Language settings page description
  ///
  /// In en, this message translates to:
  /// **'App language and text direction.'**
  String get appLanguageAndTextDirection;

  /// Compression defaults page title
  ///
  /// In en, this message translates to:
  /// **'Compression defaults'**
  String get compressionDefaults;

  /// Compression defaults page description
  ///
  /// In en, this message translates to:
  /// **'Default resolution, bitrate, and output format.'**
  String get defaultResolutionBitrateAndOutputFormat;

  /// Storage settings page title
  ///
  /// In en, this message translates to:
  /// **'Storage & cleanup'**
  String get storageCleanup;

  /// Storage settings page description
  ///
  /// In en, this message translates to:
  /// **'Storage usage, cache size, and temporary-file cleanup.'**
  String get storageUsageCacheSizeAndTemporaryFileCleanup;

  /// Notifications settings page title
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notifications;

  /// Notifications settings page description
  ///
  /// In en, this message translates to:
  /// **'Job completion and product update notifications.'**
  String get jobCompletionAndProductUpdateNotifications;

  /// Privacy settings page title
  ///
  /// In en, this message translates to:
  /// **'Privacy'**
  String get privacy;

  /// Privacy settings page description
  ///
  /// In en, this message translates to:
  /// **'On-device processing, local logs, and optional crash reports.'**
  String get onDeviceProcessingLocalLogsAndOptionalCrashReports;

  /// App info page title
  ///
  /// In en, this message translates to:
  /// **'About Zumi'**
  String get aboutZumi;

  /// App info page description
  ///
  /// In en, this message translates to:
  /// **'Version, build number, and application details.'**
  String get versionBuildNumberAndApplicationDetails;

  /// Developer page title
  ///
  /// In en, this message translates to:
  /// **'About the developer'**
  String get aboutTheDeveloper;

  /// Developer page description
  ///
  /// In en, this message translates to:
  /// **'The developer and tools behind Zumi.'**
  String get theDeveloperAndToolsBehindZumi;

  /// Licenses page title
  ///
  /// In en, this message translates to:
  /// **'Open Source Licenses'**
  String get openSourceLicenses;

  /// Licenses page description
  ///
  /// In en, this message translates to:
  /// **'Open-source packages bundled with Zumi.'**
  String get openSourcePackagesBundledWithZumi;

  /// Privacy policy page title
  ///
  /// In en, this message translates to:
  /// **'Privacy policy'**
  String get privacyPolicy;

  /// Privacy policy page description
  ///
  /// In en, this message translates to:
  /// **'How Zumi handles your videos and data.'**
  String get howZumiHandlesYourVideosAndData;

  /// Terms page title
  ///
  /// In en, this message translates to:
  /// **'Terms of service'**
  String get termsOfService;

  /// Terms page description
  ///
  /// In en, this message translates to:
  /// **'The terms that apply to Zumi and its purchases.'**
  String get theTermsThatApplyToZumiAndItsPurchases;

  /// Data safety page title
  ///
  /// In en, this message translates to:
  /// **'Data safety'**
  String get dataSafety;

  /// Data safety page description
  ///
  /// In en, this message translates to:
  /// **'Summary of the data Zumi collects and why.'**
  String get summaryOfTheDataZumiCollectsAndWhy;

  /// Permissions page title
  ///
  /// In en, this message translates to:
  /// **'Permissions'**
  String get permissions;

  /// Permissions page description
  ///
  /// In en, this message translates to:
  /// **'Runtime permissions Zumi requests and why each is needed.'**
  String get runtimePermissionsZumiRequestsAndWhyEachIsNeeded;

  /// FAQ page title
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq;

  /// FAQ page description
  ///
  /// In en, this message translates to:
  /// **'Answers to common questions about compression and billing.'**
  String get answersToCommonQuestionsAboutCompressionAndBilling;

  /// Support page title
  ///
  /// In en, this message translates to:
  /// **'Support'**
  String get support;

  /// Support page description
  ///
  /// In en, this message translates to:
  /// **'Get help with your account or a purchase.'**
  String get getHelpWithYourAccountOrAPurchase;

  /// Feedback page title
  ///
  /// In en, this message translates to:
  /// **'Send feedback'**
  String get sendFeedback;

  /// Feedback page description
  ///
  /// In en, this message translates to:
  /// **'Report a problem or suggest an improvement.'**
  String get reportAProblemOrSuggestAnImprovement;

  /// Plans page title
  ///
  /// In en, this message translates to:
  /// **'Plans'**
  String get plans;

  /// Plans page description
  ///
  /// In en, this message translates to:
  /// **'Compare plans and see what each one unlocks.'**
  String get comparePlansAndSeeWhatEachOneUnlocks;

  /// Plan details page title
  ///
  /// In en, this message translates to:
  /// **'Plan details'**
  String get planDetails;

  /// Plan details page description
  ///
  /// In en, this message translates to:
  /// **'Benefits, limits, and pricing for this plan.'**
  String get benefitsLimitsAndPricingForThisPlan;

  /// Purchase methods page title
  ///
  /// In en, this message translates to:
  /// **'Payment methods'**
  String get paymentMethods;

  /// Purchase methods page description
  ///
  /// In en, this message translates to:
  /// **'Supported ways to pay, including store billing.'**
  String get supportedWaysToPayIncludingStoreBilling;

  /// Restore purchases page title
  ///
  /// In en, this message translates to:
  /// **'Restore purchases'**
  String get restorePurchases;

  /// Restore purchases page description
  ///
  /// In en, this message translates to:
  /// **'Re-apply a purchase made on another device.'**
  String get reApplyAPurchaseMadeOnAnotherDevice;

  /// Profile page title
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// Profile page description
  ///
  /// In en, this message translates to:
  /// **'Your identity, plan status, and account preferences.'**
  String get yourIdentityPlanStatusAndAccountPreferences;

  /// Delete account page title
  ///
  /// In en, this message translates to:
  /// **'Delete account'**
  String get deleteAccount;

  /// Delete account page description
  ///
  /// In en, this message translates to:
  /// **'Permanently remove your account and its server-side data.'**
  String get permanentlyRemoveYourAccountAndItsServerSideData;

  /// Rate app page title
  ///
  /// In en, this message translates to:
  /// **'Rate Zumi'**
  String get rateZumi;

  /// Rate app page description
  ///
  /// In en, this message translates to:
  /// **'Tell others how Zumi worked for you on the store.'**
  String get tellOthersHowZumiWorkedForYouOnTheStore;

  /// Share app page title
  ///
  /// In en, this message translates to:
  /// **'Share Zumi'**
  String get shareZumi;

  /// Share app page description
  ///
  /// In en, this message translates to:
  /// **'Recommend Zumi to a friend.'**
  String get recommendZumiToAFriend;

  /// Settings hub section label
  ///
  /// In en, this message translates to:
  /// **'Appearance & language'**
  String get appearanceLanguage;

  /// Settings hub section label
  ///
  /// In en, this message translates to:
  /// **'Compression'**
  String get compression;

  /// Settings hub section label
  ///
  /// In en, this message translates to:
  /// **'On-device AI'**
  String get onDeviceAI;

  /// Settings hub section label
  ///
  /// In en, this message translates to:
  /// **'Notifications & privacy'**
  String get notificationsPrivacy;

  /// Settings hub section label
  ///
  /// In en, this message translates to:
  /// **'Plans & purchases'**
  String get plansPurchases;

  /// Settings hub section label
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get about;

  /// Settings hub section label
  ///
  /// In en, this message translates to:
  /// **'Legal'**
  String get legal;

  /// Settings hub section label
  ///
  /// In en, this message translates to:
  /// **'Help & feedback'**
  String get helpFeedback;

  /// Settings hub section label
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get account;

  /// Settings hub row summary
  ///
  /// In en, this message translates to:
  /// **'Theme and app language'**
  String get themeAndAppLanguage;

  /// Settings hub row summary
  ///
  /// In en, this message translates to:
  /// **'App language and direction'**
  String get appLanguageAndDirection;

  /// Settings hub row summary
  ///
  /// In en, this message translates to:
  /// **'Default quality and format'**
  String get defaultQualityAndFormat;

  /// Settings hub row summary
  ///
  /// In en, this message translates to:
  /// **'Cache and storage usage'**
  String get cacheAndStorageUsage;

  /// No description provided for @aiSettings.
  ///
  /// In en, this message translates to:
  /// **'AI settings'**
  String get aiSettings;

  /// No description provided for @zumiAssistant.
  ///
  /// In en, this message translates to:
  /// **'Zumi Assistant'**
  String get zumiAssistant;

  /// No description provided for @aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere.
  ///
  /// In en, this message translates to:
  /// **'A private assistant for your videos is coming soon. You will be able to ask about compression, organization, and saved videos here.'**
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere;

  /// No description provided for @localModelsAndSmartTools.
  ///
  /// In en, this message translates to:
  /// **'Local models and smart tools'**
  String get localModelsAndSmartTools;

  /// No description provided for @exploreLocalModelsAndFutureAIToolsTheseOptionsAreNotActiveYet.
  ///
  /// In en, this message translates to:
  /// **'Explore local models and future AI tools. These options are not active yet.'**
  String get exploreLocalModelsAndFutureAIToolsTheseOptionsAreNotActiveYet;

  /// No description provided for @localModels.
  ///
  /// In en, this message translates to:
  /// **'Local models'**
  String get localModels;

  /// No description provided for @browseAndDownloadSupportedModels.
  ///
  /// In en, this message translates to:
  /// **'Browse and download supported models'**
  String get browseAndDownloadSupportedModels;

  /// No description provided for @chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere.
  ///
  /// In en, this message translates to:
  /// **'Choose a supported model, download it to this device, and manage installed models here.'**
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere;

  /// No description provided for @importAModel.
  ///
  /// In en, this message translates to:
  /// **'Import a model'**
  String get importAModel;

  /// No description provided for @useACompatibleModelFromYourFiles.
  ///
  /// In en, this message translates to:
  /// **'Use a compatible model from your files'**
  String get useACompatibleModelFromYourFiles;

  /// No description provided for @selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt.
  ///
  /// In en, this message translates to:
  /// **'Select a compatible local model file and review its requirements before using it.'**
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt;

  /// No description provided for @smartFeatures.
  ///
  /// In en, this message translates to:
  /// **'Smart features'**
  String get smartFeatures;

  /// No description provided for @compressionOrganizationAndSearch.
  ///
  /// In en, this message translates to:
  /// **'Compression, organization, and search'**
  String get compressionOrganizationAndSearch;

  /// No description provided for @chooseWhichLocalAISuggestionsToUseForVideoCompressionOrganizationNamingAndSearch.
  ///
  /// In en, this message translates to:
  /// **'Choose which local AI suggestions to use for video compression, organization, naming, and search.'**
  String
  get chooseWhichLocalAISuggestionsToUseForVideoCompressionOrganizationNamingAndSearch;

  /// No description provided for @modelPerformance.
  ///
  /// In en, this message translates to:
  /// **'Model performance'**
  String get modelPerformance;

  /// No description provided for @processingAndResourcePreferences.
  ///
  /// In en, this message translates to:
  /// **'Processing and resource preferences'**
  String get processingAndResourcePreferences;

  /// No description provided for @controlTheProcessingBackendAndResourceLimitsForSupportedModels.
  ///
  /// In en, this message translates to:
  /// **'Control the processing backend and resource limits for supported models.'**
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels;

  /// No description provided for @conversationSettings.
  ///
  /// In en, this message translates to:
  /// **'Conversation settings'**
  String get conversationSettings;

  /// No description provided for @streamingThinkingAndResponseLength.
  ///
  /// In en, this message translates to:
  /// **'Streaming, thinking, and response length'**
  String get streamingThinkingAndResponseLength;

  /// No description provided for @configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits.
  ///
  /// In en, this message translates to:
  /// **'Configure how the assistant responds, including streaming, thinking mode, sampling, and response limits.'**
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits;

  /// No description provided for @imagesAndAudio.
  ///
  /// In en, this message translates to:
  /// **'Images and audio'**
  String get imagesAndAudio;

  /// No description provided for @controlMultimodalInputs.
  ///
  /// In en, this message translates to:
  /// **'Control multimodal inputs'**
  String get controlMultimodalInputs;

  /// No description provided for @chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos.
  ///
  /// In en, this message translates to:
  /// **'Choose whether compatible models can analyze selected images and audio from your videos.'**
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos;

  /// No description provided for @semanticSearch.
  ///
  /// In en, this message translates to:
  /// **'Semantic search'**
  String get semanticSearch;

  /// No description provided for @embeddingsAndLocalIndexing.
  ///
  /// In en, this message translates to:
  /// **'Embeddings and local indexing'**
  String get embeddingsAndLocalIndexing;

  /// No description provided for @manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning.
  ///
  /// In en, this message translates to:
  /// **'Manage the local embedding model and search index for finding videos and moments by meaning.'**
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning;

  /// No description provided for @toolsAndStructuredOutput.
  ///
  /// In en, this message translates to:
  /// **'Tools and structured output'**
  String get toolsAndStructuredOutput;

  /// No description provided for @actionsSchemasAndConfirmations.
  ///
  /// In en, this message translates to:
  /// **'Actions, schemas, and confirmations'**
  String get actionsSchemasAndConfirmations;

  /// No description provided for @manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation.
  ///
  /// In en, this message translates to:
  /// **'Manage supported assistant actions and structured responses. Actions that affect files will require your confirmation.'**
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation;

  /// No description provided for @models.
  ///
  /// In en, this message translates to:
  /// **'Models'**
  String get models;

  /// No description provided for @assistantExperience.
  ///
  /// In en, this message translates to:
  /// **'Assistant experience'**
  String get assistantExperience;

  /// No description provided for @smartCapabilities.
  ///
  /// In en, this message translates to:
  /// **'Smart capabilities'**
  String get smartCapabilities;

  /// No description provided for @performance.
  ///
  /// In en, this message translates to:
  /// **'Performance'**
  String get performance;

  /// Settings hub row summary
  ///
  /// In en, this message translates to:
  /// **'Your compressed video history'**
  String get yourCompressedVideoHistory;

  /// Settings hub row summary
  ///
  /// In en, this message translates to:
  /// **'Completion and update alerts'**
  String get completionAndUpdateAlerts;

  /// Settings hub row summary
  ///
  /// In en, this message translates to:
  /// **'Your data stays local'**
  String get yourDataStaysLocal;

  /// Settings hub row summary
  ///
  /// In en, this message translates to:
  /// **'Compare plans and upgrade'**
  String get comparePlansAndUpgrade;

  /// Settings hub row summary
  ///
  /// In en, this message translates to:
  /// **'Payment methods and billing'**
  String get paymentMethodsAndBilling;

  /// Settings hub row summary
  ///
  /// In en, this message translates to:
  /// **'Restore your previous purchase'**
  String get restoreYourPreviousPurchase;

  /// Settings hub row summary
  ///
  /// In en, this message translates to:
  /// **'Version and build details'**
  String get versionAndBuildDetails;

  /// Settings hub row summary
  ///
  /// In en, this message translates to:
  /// **'The developer behind Zumi'**
  String get theDeveloperBehindZumi;

  /// Settings hub row summary
  ///
  /// In en, this message translates to:
  /// **'Open source package licenses'**
  String get openSourcePackageLicenses;

  /// Settings hub row summary
  ///
  /// In en, this message translates to:
  /// **'How data is handled'**
  String get howDataIsHandled;

  /// Settings hub row summary
  ///
  /// In en, this message translates to:
  /// **'Rules for using Zumi'**
  String get rulesForUsingZumi;

  /// Settings hub row summary
  ///
  /// In en, this message translates to:
  /// **'What data we collect'**
  String get whatDataWeCollect;

  /// Settings hub row summary
  ///
  /// In en, this message translates to:
  /// **'Why we need permissions'**
  String get whyWeNeedPermissions;

  /// Settings hub row summary
  ///
  /// In en, this message translates to:
  /// **'Answers to common questions'**
  String get answersToCommonQuestions;

  /// Settings hub row summary
  ///
  /// In en, this message translates to:
  /// **'Reach the developer directly'**
  String get reachTheDeveloperDirectly;

  /// Settings hub row summary
  ///
  /// In en, this message translates to:
  /// **'Send us your feedback'**
  String get sendUsYourFeedback;

  /// No description provided for @pickVideo.
  ///
  /// In en, this message translates to:
  /// **'Pick video'**
  String get pickVideo;

  /// No description provided for @targetSizeMB.
  ///
  /// In en, this message translates to:
  /// **'Target size (MB)'**
  String get targetSizeMB;

  /// No description provided for @startCompression.
  ///
  /// In en, this message translates to:
  /// **'Start compression'**
  String get startCompression;

  /// No description provided for @pause.
  ///
  /// In en, this message translates to:
  /// **'Pause'**
  String get pause;

  /// No description provided for @resume.
  ///
  /// In en, this message translates to:
  /// **'Resume'**
  String get resume;

  /// No description provided for @viewResult.
  ///
  /// In en, this message translates to:
  /// **'View result'**
  String get viewResult;

  /// No description provided for @saveToGallery.
  ///
  /// In en, this message translates to:
  /// **'Save to gallery'**
  String get saveToGallery;

  /// No description provided for @shareVideo.
  ///
  /// In en, this message translates to:
  /// **'Share video'**
  String get shareVideo;

  /// No description provided for @originalSize.
  ///
  /// In en, this message translates to:
  /// **'Original size'**
  String get originalSize;

  /// No description provided for @outputSize.
  ///
  /// In en, this message translates to:
  /// **'Output size'**
  String get outputSize;

  /// No description provided for @noCompressedVideosYet.
  ///
  /// In en, this message translates to:
  /// **'No compressed videos yet'**
  String get noCompressedVideosYet;

  /// No description provided for @savedToGallery.
  ///
  /// In en, this message translates to:
  /// **'Saved to gallery'**
  String get savedToGallery;

  /// No description provided for @enterATargetSizeGreaterThanZero.
  ///
  /// In en, this message translates to:
  /// **'Enter a target size greater than zero'**
  String get enterATargetSizeGreaterThanZero;

  /// No description provided for @compressionCancelled.
  ///
  /// In en, this message translates to:
  /// **'Compression cancelled'**
  String get compressionCancelled;

  /// No description provided for @thisVideoCouldNotReachTheSelectedSizeTryALargerTargetSize.
  ///
  /// In en, this message translates to:
  /// **'This video could not reach the selected size. Try a larger target size.'**
  String get thisVideoCouldNotReachTheSelectedSizeTryALargerTargetSize;

  /// No description provided for @theSelectedSizeIsTooSmallForThisVideoChooseALargerSize.
  ///
  /// In en, this message translates to:
  /// **'The selected size is too small for this video. Choose a larger size.'**
  String get theSelectedSizeIsTooSmallForThisVideoChooseALargerSize;

  /// No description provided for @originalPreview.
  ///
  /// In en, this message translates to:
  /// **'Original preview'**
  String get originalPreview;

  /// No description provided for @compressedPreview.
  ///
  /// In en, this message translates to:
  /// **'Compressed preview'**
  String get compressedPreview;

  /// No description provided for @targetPreset.
  ///
  /// In en, this message translates to:
  /// **'Target preset'**
  String get targetPreset;

  /// No description provided for @customSize.
  ///
  /// In en, this message translates to:
  /// **'Custom size'**
  String get customSize;

  /// No description provided for @previewUnavailable.
  ///
  /// In en, this message translates to:
  /// **'Preview unavailable'**
  String get previewUnavailable;

  /// No description provided for @advancedControls.
  ///
  /// In en, this message translates to:
  /// **'Advanced controls'**
  String get advancedControls;

  /// No description provided for @automatic.
  ///
  /// In en, this message translates to:
  /// **'Automatic'**
  String get automatic;

  /// No description provided for @maximumResolution.
  ///
  /// In en, this message translates to:
  /// **'Maximum resolution'**
  String get maximumResolution;

  /// No description provided for @originalResolution.
  ///
  /// In en, this message translates to:
  /// **'Original resolution'**
  String get originalResolution;

  /// No description provided for @maximumFrameRate.
  ///
  /// In en, this message translates to:
  /// **'Maximum frame rate'**
  String get maximumFrameRate;

  /// No description provided for @audioBitrate.
  ///
  /// In en, this message translates to:
  /// **'Audio bitrate'**
  String get audioBitrate;

  /// No description provided for @removeAudio.
  ///
  /// In en, this message translates to:
  /// **'Remove audio'**
  String get removeAudio;

  /// No description provided for @videoBitrateCeilingKbps.
  ///
  /// In en, this message translates to:
  /// **'Video bitrate ceiling (kbps)'**
  String get videoBitrateCeilingKbps;

  /// No description provided for @hdrHandling.
  ///
  /// In en, this message translates to:
  /// **'HDR handling'**
  String get hdrHandling;

  /// No description provided for @convertToSDR.
  ///
  /// In en, this message translates to:
  /// **'Convert to SDR'**
  String get convertToSDR;

  /// No description provided for @keepHDRWhenSupported.
  ///
  /// In en, this message translates to:
  /// **'Keep HDR when supported'**
  String get keepHDRWhenSupported;

  /// No description provided for @beforeYouStart.
  ///
  /// In en, this message translates to:
  /// **'Before you start'**
  String get beforeYouStart;

  /// No description provided for @calculatingCompressionPlan.
  ///
  /// In en, this message translates to:
  /// **'Calculating compression plan…'**
  String get calculatingCompressionPlan;

  /// No description provided for @plannedResolution.
  ///
  /// In en, this message translates to:
  /// **'Planned resolution'**
  String get plannedResolution;

  /// No description provided for @plannedVideoBitrate.
  ///
  /// In en, this message translates to:
  /// **'Planned video bitrate'**
  String get plannedVideoBitrate;

  /// No description provided for @plannedAudioBitrate.
  ///
  /// In en, this message translates to:
  /// **'Planned audio bitrate'**
  String get plannedAudioBitrate;

  /// No description provided for @reEncodingConvertsAudioToAACStereoDolbyAtmosAndDTSSpatialAudioWillNotBePreserved.
  ///
  /// In en, this message translates to:
  /// **'Re-encoding converts audio to AAC stereo. Dolby Atmos and DTS spatial audio will not be preserved.'**
  String
  get reEncodingConvertsAudioToAACStereoDolbyAtmosAndDTSSpatialAudioWillNotBePreserved;

  /// No description provided for @thisTargetIsTooSmallForAUsableVideoIncreaseTheSizeOrLowerOtherLimits.
  ///
  /// In en, this message translates to:
  /// **'This target is too small for a usable video. Increase the size or lower other limits.'**
  String
  get thisTargetIsTooSmallForAUsableVideoIncreaseTheSizeOrLowerOtherLimits;

  /// No description provided for @theSelectedTargetMayReduceVideoQuality.
  ///
  /// In en, this message translates to:
  /// **'The selected target may reduce video quality.'**
  String get theSelectedTargetMayReduceVideoQuality;

  /// No description provided for @theSourceIsAlreadyWithinTheSizeLimit.
  ///
  /// In en, this message translates to:
  /// **'The source is already within the size limit.'**
  String get theSourceIsAlreadyWithinTheSizeLimit;

  /// No description provided for @enterABitrateOfAtLeast150KbpsOrLeaveBlankForAutomatic.
  ///
  /// In en, this message translates to:
  /// **'Enter a bitrate of at least 150 kbps, or leave blank for automatic'**
  String get enterABitrateOfAtLeast150KbpsOrLeaveBlankForAutomatic;

  /// No description provided for @enterAnEvenResolutionFrom240To16384OrLeaveBlankForAutomatic.
  ///
  /// In en, this message translates to:
  /// **'Enter an even resolution from 240 to 16384, or leave blank for automatic'**
  String get enterAnEvenResolutionFrom240To16384OrLeaveBlankForAutomatic;

  /// No description provided for @videoPosition.
  ///
  /// In en, this message translates to:
  /// **'Video position'**
  String get videoPosition;

  /// No description provided for @aPreviousCompressionWasInterruptedItsTemporaryFilesWereCleanedUpYouCanSelectTheVideoAndTryAgain.
  ///
  /// In en, this message translates to:
  /// **'A previous compression was interrupted. Its temporary files were cleaned up; you can select the video and try again.'**
  String
  get aPreviousCompressionWasInterruptedItsTemporaryFilesWereCleanedUpYouCanSelectTheVideoAndTryAgain;

  /// No description provided for @dismiss.
  ///
  /// In en, this message translates to:
  /// **'Dismiss'**
  String get dismiss;

  /// No description provided for @clearHistory.
  ///
  /// In en, this message translates to:
  /// **'Clear history'**
  String get clearHistory;

  /// No description provided for @removeAllHistoryEntriesSavedVideosWillRemainOnYourDevice.
  ///
  /// In en, this message translates to:
  /// **'Remove all history entries? Saved videos will remain on your device.'**
  String get removeAllHistoryEntriesSavedVideosWillRemainOnYourDevice;

  /// No description provided for @attempts.
  ///
  /// In en, this message translates to:
  /// **'Attempts'**
  String get attempts;

  /// No description provided for @targetSize.
  ///
  /// In en, this message translates to:
  /// **'Target size'**
  String get targetSize;

  /// No description provided for @outputResolution.
  ///
  /// In en, this message translates to:
  /// **'Output resolution'**
  String get outputResolution;

  /// No description provided for @thisVideoCouldNotBeReadChooseAnotherFile.
  ///
  /// In en, this message translates to:
  /// **'This video could not be read. Choose another file.'**
  String get thisVideoCouldNotBeReadChooseAnotherFile;

  /// No description provided for @theEncodedVideoFailedVerificationYourOriginalVideoWasNotChanged.
  ///
  /// In en, this message translates to:
  /// **'The encoded video failed verification. Your original video was not changed.'**
  String get theEncodedVideoFailedVerificationYourOriginalVideoWasNotChanged;

  /// No description provided for @thisDeviceCannotEncodeTheSelectedResolutionOrFrameRateLowerThatSettingAndTryAgain.
  ///
  /// In en, this message translates to:
  /// **'This device cannot encode the selected resolution or frame rate. Lower that setting and try again.'**
  String
  get thisDeviceCannotEncodeTheSelectedResolutionOrFrameRateLowerThatSettingAndTryAgain;

  /// No description provided for @thisDeviceCannotDecodeThisAudioFormatForCompressionRemoveAudioOrUseASupportedSource.
  ///
  /// In en, this message translates to:
  /// **'This device cannot decode this audio format for compression. Remove audio or use a supported source.'**
  String
  get thisDeviceCannotDecodeThisAudioFormatForCompressionRemoveAudioOrUseASupportedSource;

  /// No description provided for @thisDeviceCannotDecodeThisVideoFormatOrProfileForCompressionChooseAnotherSourceOrDevice.
  ///
  /// In en, this message translates to:
  /// **'This device cannot decode this video format or profile for compression. Choose another source or device.'**
  String
  get thisDeviceCannotDecodeThisVideoFormatOrProfileForCompressionChooseAnotherSourceOrDevice;

  /// No description provided for @theExportedMP4IsNotReadyForStreamingTryAnotherVideoOrDevice.
  ///
  /// In en, this message translates to:
  /// **'The exported MP4 is not ready for streaming. Try another video or device.'**
  String get theExportedMP4IsNotReadyForStreamingTryAnotherVideoOrDevice;

  /// No description provided for @thereIsNotEnoughFreeStorageToCompressThisVideo.
  ///
  /// In en, this message translates to:
  /// **'There is not enough free storage to compress this video.'**
  String get thereIsNotEnoughFreeStorageToCompressThisVideo;

  /// No description provided for @thisDeviceCannotProcessTheSelectedHDRModeTryConvertingToSDR.
  ///
  /// In en, this message translates to:
  /// **'This device cannot process the selected HDR mode. Try converting to SDR.'**
  String get thisDeviceCannotProcessTheSelectedHDRModeTryConvertingToSDR;

  /// No description provided for @compressionCouldNotBeCompletedTryAnotherSettingOrVideo.
  ///
  /// In en, this message translates to:
  /// **'Compression could not be completed. Try another setting or video.'**
  String get compressionCouldNotBeCompletedTryAnotherSettingOrVideo;

  /// No description provided for @appIdentity.
  ///
  /// In en, this message translates to:
  /// **'App identity'**
  String get appIdentity;

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'App name'**
  String get appName;

  /// No description provided for @packageName.
  ///
  /// In en, this message translates to:
  /// **'Package name'**
  String get packageName;

  /// No description provided for @version.
  ///
  /// In en, this message translates to:
  /// **'Version'**
  String get version;

  /// No description provided for @buildNumber.
  ///
  /// In en, this message translates to:
  /// **'Build number'**
  String get buildNumber;

  /// No description provided for @deviceAndBuild.
  ///
  /// In en, this message translates to:
  /// **'Device and build'**
  String get deviceAndBuild;

  /// No description provided for @operatingSystem.
  ///
  /// In en, this message translates to:
  /// **'Operating system'**
  String get operatingSystem;

  /// No description provided for @osVersion.
  ///
  /// In en, this message translates to:
  /// **'OS version'**
  String get osVersion;

  /// No description provided for @buildMode.
  ///
  /// In en, this message translates to:
  /// **'Build mode'**
  String get buildMode;

  /// No description provided for @debug.
  ///
  /// In en, this message translates to:
  /// **'Debug'**
  String get debug;

  /// No description provided for @release.
  ///
  /// In en, this message translates to:
  /// **'Release'**
  String get release;

  /// No description provided for @builtWith.
  ///
  /// In en, this message translates to:
  /// **'Built with'**
  String get builtWith;

  /// No description provided for @installation.
  ///
  /// In en, this message translates to:
  /// **'Installation'**
  String get installation;

  /// No description provided for @installedFrom.
  ///
  /// In en, this message translates to:
  /// **'Installed from'**
  String get installedFrom;

  /// No description provided for @installedOn.
  ///
  /// In en, this message translates to:
  /// **'Installed on'**
  String get installedOn;

  /// No description provided for @updatedOn.
  ///
  /// In en, this message translates to:
  /// **'Updated on'**
  String get updatedOn;

  /// No description provided for @unavailable.
  ///
  /// In en, this message translates to:
  /// **'Unavailable'**
  String get unavailable;

  /// No description provided for @projectAndSupport.
  ///
  /// In en, this message translates to:
  /// **'Project and support'**
  String get projectAndSupport;

  /// No description provided for @githubRepository.
  ///
  /// In en, this message translates to:
  /// **'GitHub repository'**
  String get githubRepository;

  /// No description provided for @viewZumiSourceCode.
  ///
  /// In en, this message translates to:
  /// **'View Zumi source code'**
  String get viewZumiSourceCode;

  /// No description provided for @readTheREADME.
  ///
  /// In en, this message translates to:
  /// **'Read the README'**
  String get readTheREADME;

  /// No description provided for @learnAboutZumiOnGitHub.
  ///
  /// In en, this message translates to:
  /// **'Learn about Zumi on GitHub'**
  String get learnAboutZumiOnGitHub;

  /// No description provided for @reportAnIssue.
  ///
  /// In en, this message translates to:
  /// **'Report an issue'**
  String get reportAnIssue;

  /// No description provided for @viewAndCreateGitHubIssues.
  ///
  /// In en, this message translates to:
  /// **'View and create GitHub issues'**
  String get viewAndCreateGitHubIssues;

  /// No description provided for @latestRelease.
  ///
  /// In en, this message translates to:
  /// **'Latest release'**
  String get latestRelease;

  /// No description provided for @viewReleasesAndDownloads.
  ///
  /// In en, this message translates to:
  /// **'View releases and downloads'**
  String get viewReleasesAndDownloads;

  /// No description provided for @supportZumi.
  ///
  /// In en, this message translates to:
  /// **'Support Zumi'**
  String get supportZumi;

  /// No description provided for @openTheOfficialDonationPage.
  ///
  /// In en, this message translates to:
  /// **'Open the official donation page'**
  String get openTheOfficialDonationPage;

  /// No description provided for @couldNotOpenTheLinkPleaseTryAgain.
  ///
  /// In en, this message translates to:
  /// **'Could not open the link. Please try again.'**
  String get couldNotOpenTheLinkPleaseTryAgain;

  /// No description provided for @developer.
  ///
  /// In en, this message translates to:
  /// **'Developer'**
  String get developer;

  /// No description provided for @mostafaSensei.
  ///
  /// In en, this message translates to:
  /// **'Mostafa Sensei'**
  String get mostafaSensei;

  /// No description provided for @githubProfile.
  ///
  /// In en, this message translates to:
  /// **'GitHub profile'**
  String get githubProfile;

  /// No description provided for @seeProjectsAndContactDetails.
  ///
  /// In en, this message translates to:
  /// **'See projects and contact details'**
  String get seeProjectsAndContactDetails;

  /// No description provided for @maintenanceInProgress.
  ///
  /// In en, this message translates to:
  /// **'Maintenance in progress'**
  String get maintenanceInProgress;

  /// No description provided for @zumiIsTemporarilyUnavailablePleaseTryAgainLater.
  ///
  /// In en, this message translates to:
  /// **'Zumi is temporarily unavailable. Please try again later.'**
  String get zumiIsTemporarilyUnavailablePleaseTryAgainLater;

  /// Badge shown on placeholder pages
  ///
  /// In en, this message translates to:
  /// **'Coming soon'**
  String get comingSoon;

  /// No description provided for @zumiProTitle.
  ///
  /// In en, this message translates to:
  /// **'Zumi Pro'**
  String get zumiProTitle;

  /// No description provided for @subscriptionPerMonth.
  ///
  /// In en, this message translates to:
  /// **'{price} / month'**
  String subscriptionPerMonth(Object price);

  /// No description provided for @planUnavailable.
  ///
  /// In en, this message translates to:
  /// **'Unavailable'**
  String get planUnavailable;

  /// No description provided for @loading.
  ///
  /// In en, this message translates to:
  /// **'Loading…'**
  String get loading;

  /// No description provided for @subscriptionActive.
  ///
  /// In en, this message translates to:
  /// **'Active subscription'**
  String get subscriptionActive;

  /// No description provided for @proFeaturesDescription.
  ///
  /// In en, this message translates to:
  /// **'Unlock Discord Nitro, YouTube Shorts and Custom compression.'**
  String get proFeaturesDescription;

  /// No description provided for @subscribe.
  ///
  /// In en, this message translates to:
  /// **'Subscribe'**
  String get subscribe;

  /// No description provided for @currentLoyaltyDiscount.
  ///
  /// In en, this message translates to:
  /// **'Loyalty discount: {percent}%'**
  String currentLoyaltyDiscount(Object percent);

  /// No description provided for @nextMonthLoyaltyPrice.
  ///
  /// In en, this message translates to:
  /// **'Next month: {percent}% loyalty discount — estimated {price}'**
  String nextMonthLoyaltyPrice(Object percent, Object price);

  /// No description provided for @nextMonthLoyaltyDiscount.
  ///
  /// In en, this message translates to:
  /// **'Next month: {percent}% loyalty discount'**
  String nextMonthLoyaltyDiscount(Object percent);

  /// No description provided for @loyaltyCancellationWarning.
  ///
  /// In en, this message translates to:
  /// **'Cancelling resets your accumulated loyalty discount to the base price. If you subscribe again, loyalty starts again at 2%.'**
  String get loyaltyCancellationWarning;

  /// No description provided for @purchaseCancelled.
  ///
  /// In en, this message translates to:
  /// **'Purchase cancelled.'**
  String get purchaseCancelled;

  /// No description provided for @purchaseVerified.
  ///
  /// In en, this message translates to:
  /// **'Purchase verified.'**
  String get purchaseVerified;

  /// No description provided for @purchasesRestored.
  ///
  /// In en, this message translates to:
  /// **'Purchases restored.'**
  String get purchasesRestored;

  /// No description provided for @noActivePurchaseFound.
  ///
  /// In en, this message translates to:
  /// **'No active purchase found.'**
  String get noActivePurchaseFound;

  /// No description provided for @restorePurchaseDescription.
  ///
  /// In en, this message translates to:
  /// **'Restore purchases made with this Google Play account.'**
  String get restorePurchaseDescription;

  /// No description provided for @zumiProActive.
  ///
  /// In en, this message translates to:
  /// **'Zumi Pro is active'**
  String get zumiProActive;

  /// No description provided for @checking.
  ///
  /// In en, this message translates to:
  /// **'Checking…'**
  String get checking;

  /// No description provided for @interruptedCompressionJobs.
  ///
  /// In en, this message translates to:
  /// **'Interrupted compression jobs'**
  String get interruptedCompressionJobs;

  /// No description provided for @interruptedJobsDescription.
  ///
  /// In en, this message translates to:
  /// **'You can resume these jobs from compression. Cleanup removes their temporary files and saved job state.'**
  String get interruptedJobsDescription;

  /// No description provided for @noInterruptedJobs.
  ///
  /// In en, this message translates to:
  /// **'No interrupted jobs found.'**
  String get noInterruptedJobs;

  /// No description provided for @cleanInterruptedJobs.
  ///
  /// In en, this message translates to:
  /// **'Clean interrupted files'**
  String get cleanInterruptedJobs;

  /// No description provided for @cleaning.
  ///
  /// In en, this message translates to:
  /// **'Cleaning…'**
  String get cleaning;

  /// No description provided for @cleanInterruptedJobsTitle.
  ///
  /// In en, this message translates to:
  /// **'Clean interrupted jobs?'**
  String get cleanInterruptedJobsTitle;

  /// No description provided for @cleanInterruptedJobsConfirmation.
  ///
  /// In en, this message translates to:
  /// **'This removes .inprogress files and job_state.json from interrupted jobs only.'**
  String get cleanInterruptedJobsConfirmation;

  /// No description provided for @clean.
  ///
  /// In en, this message translates to:
  /// **'Clean'**
  String get clean;

  /// No description provided for @ffmpegLicenseTitle.
  ///
  /// In en, this message translates to:
  /// **'FFmpeg LGPL 2.1 license text'**
  String get ffmpegLicenseTitle;

  /// No description provided for @ffmpegLicense.
  ///
  /// In en, this message translates to:
  /// **'License: {license}'**
  String ffmpegLicense(Object license);

  /// No description provided for @ffmpegVersion.
  ///
  /// In en, this message translates to:
  /// **'Version: {version}'**
  String ffmpegVersion(Object version);

  /// No description provided for @ffmpegLinkage.
  ///
  /// In en, this message translates to:
  /// **'Linkage: {linkage}'**
  String ffmpegLinkage(Object linkage);

  /// No description provided for @ffmpegBuiltAbis.
  ///
  /// In en, this message translates to:
  /// **'Built ABIs: {abis}'**
  String ffmpegBuiltAbis(Object abis);

  /// No description provided for @ffmpegSource.
  ///
  /// In en, this message translates to:
  /// **'Source: {source}'**
  String ffmpegSource(Object source);

  /// No description provided for @thirdPartyLicenses.
  ///
  /// In en, this message translates to:
  /// **'Flutter and Dart packages'**
  String get thirdPartyLicenses;

  /// No description provided for @thirdPartyLicensesDescription.
  ///
  /// In en, this message translates to:
  /// **'Open their third-party license notices.'**
  String get thirdPartyLicensesDescription;

  /// No description provided for @fullFfmpegLicenseFallback.
  ///
  /// In en, this message translates to:
  /// **'Full license text is shipped in the app\'s LGPL license asset.'**
  String get fullFfmpegLicenseFallback;

  /// No description provided for @languageName.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get languageName;

  /// No description provided for @countryCode.
  ///
  /// In en, this message translates to:
  /// **'US'**
  String get countryCode;

  /// Name of a country in the current app language
  ///
  /// In en, this message translates to:
  /// **'{countryCode, select, AE{United Arab Emirates} AT{Austria} AU{Australia} BE{Belgium} BH{Bahrain} BR{Brazil} CA{Canada} CH{Switzerland} CN{China} DE{Germany} DJ{Djibouti} DZ{Algeria} EG{Egypt} ES{Spain} FR{France} GB{United Kingdom} HK{Hong Kong SAR China} ID{Indonesia} IQ{Iraq} IT{Italy} JO{Jordan} JP{Japan} KM{Comoros} KR{South Korea} KW{Kuwait} LB{Lebanon} LY{Libya} MA{Morocco} MR{Mauritania} MX{Mexico} NL{Netherlands} OM{Oman} PL{Poland} PS{Palestinian Territories} PT{Portugal} QA{Qatar} RU{Russia} SA{Saudi Arabia} SD{Sudan} SE{Sweden} SG{Singapore} SO{Somalia} SY{Syria} TH{Thailand} TN{Tunisia} TR{Türkiye} TW{Taiwan} US{United States} VN{Vietnam} YE{Yemen} other{Country}}'**
  String countryName(String countryCode);
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
    'ar',
    'de',
    'en',
    'es',
    'fr',
    'id',
    'it',
    'ja',
    'ko',
    'nl',
    'pl',
    'pt',
    'ru',
    'sv',
    'th',
    'tr',
    'vi',
    'zh',
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when language+country codes are specified.
  switch (locale.languageCode) {
    case 'ar':
      {
        switch (locale.countryCode) {
          case 'EG':
            return AppLocalizationsArEg();
        }
        break;
      }
    case 'de':
      {
        switch (locale.countryCode) {
          case 'DE':
            return AppLocalizationsDeDe();
        }
        break;
      }
    case 'en':
      {
        switch (locale.countryCode) {
          case 'GB':
            return AppLocalizationsEnGb();
        }
        break;
      }
    case 'es':
      {
        switch (locale.countryCode) {
          case 'ES':
            return AppLocalizationsEsEs();
        }
        break;
      }
    case 'id':
      {
        switch (locale.countryCode) {
          case 'ID':
            return AppLocalizationsIdId();
        }
        break;
      }
    case 'it':
      {
        switch (locale.countryCode) {
          case 'IT':
            return AppLocalizationsItIt();
        }
        break;
      }
    case 'ja':
      {
        switch (locale.countryCode) {
          case 'JP':
            return AppLocalizationsJaJp();
        }
        break;
      }
    case 'ko':
      {
        switch (locale.countryCode) {
          case 'KR':
            return AppLocalizationsKoKr();
        }
        break;
      }
    case 'nl':
      {
        switch (locale.countryCode) {
          case 'BE':
            return AppLocalizationsNlBe();
        }
        break;
      }
    case 'pl':
      {
        switch (locale.countryCode) {
          case 'PL':
            return AppLocalizationsPlPl();
        }
        break;
      }
    case 'pt':
      {
        switch (locale.countryCode) {
          case 'BR':
            return AppLocalizationsPtBr();
        }
        break;
      }
    case 'ru':
      {
        switch (locale.countryCode) {
          case 'RU':
            return AppLocalizationsRuRu();
        }
        break;
      }
    case 'sv':
      {
        switch (locale.countryCode) {
          case 'SE':
            return AppLocalizationsSvSe();
        }
        break;
      }
    case 'th':
      {
        switch (locale.countryCode) {
          case 'TH':
            return AppLocalizationsThTh();
        }
        break;
      }
    case 'tr':
      {
        switch (locale.countryCode) {
          case 'TR':
            return AppLocalizationsTrTr();
        }
        break;
      }
    case 'zh':
      {
        switch (locale.countryCode) {
          case 'CN':
            return AppLocalizationsZhCn();
          case 'HK':
            return AppLocalizationsZhHk();
          case 'SG':
            return AppLocalizationsZhSg();
          case 'TW':
            return AppLocalizationsZhTw();
        }
        break;
      }
  }

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'de':
      return AppLocalizationsDe();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fr':
      return AppLocalizationsFr();
    case 'id':
      return AppLocalizationsId();
    case 'it':
      return AppLocalizationsIt();
    case 'ja':
      return AppLocalizationsJa();
    case 'ko':
      return AppLocalizationsKo();
    case 'nl':
      return AppLocalizationsNl();
    case 'pl':
      return AppLocalizationsPl();
    case 'pt':
      return AppLocalizationsPt();
    case 'ru':
      return AppLocalizationsRu();
    case 'sv':
      return AppLocalizationsSv();
    case 'th':
      return AppLocalizationsTh();
    case 'tr':
      return AppLocalizationsTr();
    case 'vi':
      return AppLocalizationsVi();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
