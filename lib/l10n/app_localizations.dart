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
  /// **'Kuymo'**
  String get kuymo;

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

  /// Confirm button text
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

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
  /// **'Welcome to Kuymo'**
  String get welcomeToKuymo;

  /// Onboarding page description
  ///
  /// In en, this message translates to:
  /// **'Learn how Kuymo compresses your videos without ever leaving your phone.'**
  String get learnHowKuymoCompressesYourVideosWithoutEverLeavingYourPhone;

  /// Login page title
  ///
  /// In en, this message translates to:
  /// **'Sign in'**
  String get signIn;

  /// Video picker page title
  ///
  /// In en, this message translates to:
  /// **'Choose a video'**
  String get chooseAVideo;

  /// No description provided for @preparingSelectedVideo.
  ///
  /// In en, this message translates to:
  /// **'Getting your video ready'**
  String get preparingSelectedVideo;

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

  /// No description provided for @colorScheme.
  ///
  /// In en, this message translates to:
  /// **'Color scheme'**
  String get colorScheme;

  /// No description provided for @automaticColorScheme.
  ///
  /// In en, this message translates to:
  /// **'Auto'**
  String get automaticColorScheme;

  /// High contrast mode toggle subtitle
  ///
  /// In en, this message translates to:
  /// **'Pure black and white surfaces '**
  String get sharperTextAndSurfaces;

  /// Engine title in theme preview card
  ///
  /// In en, this message translates to:
  /// **'Kuymo Engine'**
  String get kuymoEngine;

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
  /// **'About Kuymo'**
  String get aboutKuymo;

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
  /// **'The developer and tools behind Kuymo.'**
  String get theDeveloperAndToolsBehindKuymo;

  /// Licenses page description
  ///
  /// In en, this message translates to:
  /// **'Open-source packages bundled with Kuymo.'**
  String get openSourcePackagesBundledWithKuymo;

  /// Privacy policy page title
  ///
  /// In en, this message translates to:
  /// **'Privacy policy'**
  String get privacyPolicy;

  /// Privacy policy page description
  ///
  /// In en, this message translates to:
  /// **'How Kuymo handles your videos and data.'**
  String get howKuymoHandlesYourVideosAndData;

  /// Terms page title
  ///
  /// In en, this message translates to:
  /// **'Terms of service'**
  String get termsOfService;

  /// Data safety page title
  ///
  /// In en, this message translates to:
  /// **'Data safety'**
  String get dataSafety;

  /// Data safety page description
  ///
  /// In en, this message translates to:
  /// **'Summary of the datan Kuymo collects and why.'**
  String get summaryOfTheDataKuymoCollectsAndWhy;

  /// Permissions page title
  ///
  /// In en, this message translates to:
  /// **'Permissions'**
  String get permissions;

  /// Permissions page description
  ///
  /// In en, this message translates to:
  /// **'Runtime permissions Kuymo requests and why each is needed.'**
  String get runtimePermissionsKuymoRequestsAndWhyEachIsNeeded;

  /// FAQ page title
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq;

  /// Support page title
  ///
  /// In en, this message translates to:
  /// **'Support'**
  String get support;

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

  /// Profile page title
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

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
  /// **'Rate Kuymo'**
  String get rateKuymo;

  /// Rate app page description
  ///
  /// In en, this message translates to:
  /// **'Tell others how Kuymo worked for you on the store.'**
  String get tellOthersHowKuymoWorkedForYouOnTheStore;

  /// Share app page title
  ///
  /// In en, this message translates to:
  /// **'Share Kuymo'**
  String get shareKuymo;

  /// Share app page description
  ///
  /// In en, this message translates to:
  /// **'Recommend Kuymo to a friend.'**
  String get recommendKuymoToAFriend;

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

  /// No description provided for @kuymoAssistant.
  ///
  /// In en, this message translates to:
  /// **'Kuymo Assistant'**
  String get kuymoAssistant;

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
  /// **'Version and build details'**
  String get versionAndBuildDetails;

  /// Settings hub row summary
  ///
  /// In en, this message translates to:
  /// **'The developer behind Kuymo'**
  String get theDeveloperBehindKuymo;

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
  /// **'Rules for using Kuymo'**
  String get rulesForUsingKuymo;

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

  /// No description provided for @viewKuymoSourceCode.
  ///
  /// In en, this message translates to:
  /// **'View Kuymo source code'**
  String get viewKuymoSourceCode;

  /// No description provided for @readTheREADME.
  ///
  /// In en, this message translates to:
  /// **'Read the README'**
  String get readTheREADME;

  /// No description provided for @learnAboutKuymoOnGitHub.
  ///
  /// In en, this message translates to:
  /// **'Learn about Kuymo on GitHub'**
  String get learnAboutKuymoOnGitHub;

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

  /// No description provided for @supportKuymo.
  ///
  /// In en, this message translates to:
  /// **'Support Kuymo'**
  String get supportKuymo;

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

  /// No description provided for @kuymoIsTemporarilyUnavailablePleaseTryAgainLater.
  ///
  /// In en, this message translates to:
  /// **'Kuymo is temporarily unavailable. Please try again later.'**
  String get kuymoIsTemporarilyUnavailablePleaseTryAgainLater;

  /// Badge shown on placeholder pages
  ///
  /// In en, this message translates to:
  /// **'Coming soon'**
  String get comingSoon;

  /// No description provided for @loading.
  ///
  /// In en, this message translates to:
  /// **'Loading…'**
  String get loading;

  /// Please wait dialog text
  ///
  /// In en, this message translates to:
  /// **'Please wait…'**
  String get pleaseWait;

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

  /// Cancel button text
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @clean.
  ///
  /// In en, this message translates to:
  /// **'Clean'**
  String get clean;

  /// Licenses page title
  ///
  /// In en, this message translates to:
  /// **'Open Source Licenses'**
  String get openSourceLicenses;

  /// No description provided for @storageJobsLoadFailed.
  ///
  /// In en, this message translates to:
  /// **'Interrupted jobs could not be loaded.'**
  String get storageJobsLoadFailed;

  /// No description provided for @cleanupInterruptedJobsFailed.
  ///
  /// In en, this message translates to:
  /// **'The interrupted files could not be cleaned.'**
  String get cleanupInterruptedJobsFailed;

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

  /// Onboarding slide chip
  ///
  /// In en, this message translates to:
  /// **'Lossless visual quality'**
  String get losslessVisualQuality;

  /// Onboarding slide chip
  ///
  /// In en, this message translates to:
  /// **'Up to 90% size reduction'**
  String get upTo90PercentSizeReduction;

  /// Onboarding slide chip
  ///
  /// In en, this message translates to:
  /// **'Instant preview'**
  String get instantPreview;

  /// Onboarding privacy slide tagline
  ///
  /// In en, this message translates to:
  /// **'Zero cloud uploads. Your videos and personal memories never leave your device.'**
  String
  get zeroCloudUploadsYourVideosAndPersonalMemoriesNeverLeaveYourDeviceHardware;

  /// Onboarding privacy slide chip
  ///
  /// In en, this message translates to:
  /// **'100% offline'**
  String get fullyOffline;

  /// Onboarding privacy slide chip
  ///
  /// In en, this message translates to:
  /// **'No tracking'**
  String get noTracking;

  /// Onboarding privacy slide chip
  ///
  /// In en, this message translates to:
  /// **'Zero cloud servers'**
  String get zeroCloudServers;

  /// Onboarding engine slide title
  ///
  /// In en, this message translates to:
  /// **'Native compression engine'**
  String get nativeEngineSpeed;

  /// Onboarding engine slide tagline
  ///
  /// In en, this message translates to:
  /// **'Uses Android’s native media engine to compress videos on your device.'**
  String get nativeEngineDescription;

  /// Onboarding engine slide chip
  ///
  /// In en, this message translates to:
  /// **'H.264 & HEVC'**
  String get h264AndHevc;

  /// Onboarding engine slide chip
  ///
  /// In en, this message translates to:
  /// **'AV1 support'**
  String get av1Support;

  /// Onboarding engine slide chip
  ///
  /// In en, this message translates to:
  /// **'Batch queuing'**
  String get batchQueuing;

  /// Primary action that advances to the next onboarding slide
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueLabel;

  /// Home card describing recovered jobs
  ///
  /// In en, this message translates to:
  /// **'Found interrupted compression jobs. You can resume them with the same settings or delete them.'**
  String
  get foundInterruptedCompressionJobsYouCanResumeThemWithTheSameSettingsOrDeleteThem;

  /// Interrupted job subtitle when the source video no longer exists
  ///
  /// In en, this message translates to:
  /// **'Original file is missing · delete the job to clean up temporary files'**
  String get originalFileIsMissingDeleteTheJobToCleanUpTemporaryFiles;

  /// Tooltip for discarding an interrupted compression job
  ///
  /// In en, this message translates to:
  /// **'Delete interrupted job'**
  String get deleteInterruptedJob;

  /// WhatsApp preset tuning badge
  ///
  /// In en, this message translates to:
  /// **'16MB cap · 720p'**
  String get whatsappAlgorithmBadge;

  /// WhatsApp preset explanation
  ///
  /// In en, this message translates to:
  /// **'Tuned to WhatsApp\'s strict limits to avoid failed sends.'**
  String get whatsappPresetDescription;

  /// WhatsApp HD preset tuning badge
  ///
  /// In en, this message translates to:
  /// **'1080p HD'**
  String get whatsappHdAlgorithmBadge;

  /// WhatsApp HD preset explanation
  ///
  /// In en, this message translates to:
  /// **'The highest clarity WhatsApp allows in HD media mode.'**
  String get whatsappHdPresetDescription;

  /// Instagram Reels preset tuning badge
  ///
  /// In en, this message translates to:
  /// **'5 Mbps cap · 1080p'**
  String get instagramReelsAlgorithmBadge;

  /// Instagram Reels preset explanation
  ///
  /// In en, this message translates to:
  /// **'Capped at 5 Mbps to protect the video from Instagram\'s aggressive compression.'**
  String get instagramReelsPresetDescription;

  /// TikTok preset tuning badge
  ///
  /// In en, this message translates to:
  /// **'60fps · 6 Mbps cap'**
  String get tikTokAlgorithmBadge;

  /// TikTok preset explanation
  ///
  /// In en, this message translates to:
  /// **'A balanced mix of motion quality and processing speed on TikTok.'**
  String get tikTokPresetDescription;

  /// Discord preset tuning badge
  ///
  /// In en, this message translates to:
  /// **'10MB cap'**
  String get discordAlgorithmBadge;

  /// Discord preset explanation
  ///
  /// In en, this message translates to:
  /// **'Avoids the \"Your files are too powerful\" message and ensures instant uploads.'**
  String get discordPresetDescription;

  /// X (Twitter) preset tuning badge
  ///
  /// In en, this message translates to:
  /// **'Forced faststart'**
  String get xAlgorithmBadge;

  /// X (Twitter) preset explanation
  ///
  /// In en, this message translates to:
  /// **'Places the moov atom at the start of the file so playback starts instantly in the feed.'**
  String get xPresetDescription;

  /// Facebook preset tuning badge
  ///
  /// In en, this message translates to:
  /// **'Constrained VBR · 1080p'**
  String get facebookAlgorithmBadge;

  /// Facebook preset explanation
  ///
  /// In en, this message translates to:
  /// **'A constrained bitrate protects image sharpness in the feed and Reels.'**
  String get facebookPresetDescription;

  /// YouTube Shorts preset tuning badge
  ///
  /// In en, this message translates to:
  /// **'High bitrate · 1080p'**
  String get youTubeShortsAlgorithmBadge;

  /// YouTube Shorts preset explanation
  ///
  /// In en, this message translates to:
  /// **'Fast upload prep that keeps the highest possible detail and quality.'**
  String get youTubeShortsPresetDescription;

  /// Email preset tuning badge
  ///
  /// In en, this message translates to:
  /// **'True 25MB cap'**
  String get emailAlgorithmBadge;

  /// Email preset explanation
  ///
  /// In en, this message translates to:
  /// **'A definitive fix for exceeding email attachment limits.'**
  String get emailPresetDescription;

  /// Subtitle of the custom size preset card
  ///
  /// In en, this message translates to:
  /// **'Any size'**
  String get anySize;

  /// Badge of the custom size preset card
  ///
  /// In en, this message translates to:
  /// **'Manual control'**
  String get manualControl;

  /// Loading message while the preset plan is computed
  ///
  /// In en, this message translates to:
  /// **'🐾 Kuymo is studying the platform\'s algorithm and calculating the budget...'**
  String get kuymoIsStudyingThePlatformAlgorithmAndCalculatingTheBudget;

  /// Title of the custom mode feedback card
  ///
  /// In en, this message translates to:
  /// **'Custom control mode'**
  String get customControlMode;

  /// Body of the custom mode feedback card
  ///
  /// In en, this message translates to:
  /// **'You set the target size manually. The engine will apply the highest possible resolution and quality within that cap.'**
  String
  get youSetTheTargetSizeManuallyTheEngineWillApplyTheHighestPossibleQualityWithinThatCap;

  /// Infeasible plan title
  ///
  /// In en, this message translates to:
  /// **'Kuymo is puzzled (impossible target for the {name} cap)'**
  String kuymoIsPuzzledAnImpossibleTargetForTheNameCap(String name);

  /// Infeasible plan explanation
  ///
  /// In en, this message translates to:
  /// **'The video is too long to fit within the {size} cap without severe image distortion. We suggest trimming the video or choosing another platform with a higher cap.'**
  String
  theVideoIsTooLongToFitWithinTheSizeCapWithoutSevereDistortionWeSuggestTrimmingTheVideoOrChoosingAnotherPlatformWithAHigherCap(
    String size,
  );

  /// Reduced quality warning title
  ///
  /// In en, this message translates to:
  /// **'Kuymo alert: protecting quality from distortion'**
  String get kuymoAlertProtectingQualityFromDistortion;

  /// Reduced quality warning explanation
  ///
  /// In en, this message translates to:
  /// **'The {name} budget is tight for this duration, so we lowered the resolution to {width}×{height} to prevent pixel scatter and ensure smooth playback.'**
  String
  theNameBudgetIsTightForThisDurationSoWeLoweredTheResolutionToWidthHeightToPreventPixelScatterAndEnsureSmoothPlayback(
    String name,
    int width,
    int height,
  );

  /// Relaxed size title
  ///
  /// In en, this message translates to:
  /// **'Adjusting the cap for {name}'**
  String adjustingTheCapForName(String name);

  /// Relaxed size explanation
  ///
  /// In en, this message translates to:
  /// **'The base cap is very tight, so the target was automatically raised to {targetMb} MB to produce a clear, acceptable video.'**
  String
  theBaseCapIsVeryTightSoTheTargetWasAutomaticallyRaisedToTargetMbMbToProduceAClearAcceptableVideo(
    String targetMb,
  );

  /// Exact match title
  ///
  /// In en, this message translates to:
  /// **'Tuned for the {name} algorithm'**
  String tunedForTheNameAlgorithm(String name);

  /// Exact match badge
  ///
  /// In en, this message translates to:
  /// **'Exact match'**
  String get exactMatch;

  /// Section header above the preset bar
  ///
  /// In en, this message translates to:
  /// **'Target platform or size'**
  String get targetPlatformOrSize;

  /// Helper text under the target size field
  ///
  /// In en, this message translates to:
  /// **'Set automatically for the platform (changing the number switches to custom mode)'**
  String
  get setAutomaticallyForThePlatformChangingTheNumberSwitchesToCustomMode;

  /// Full Terms of Service text copied to the clipboard
  ///
  /// In en, this message translates to:
  /// **'Kuymo is free and open source. Video processing runs on your device. You retain ownership of your content. The app is provided without a guarantee of any particular output size or quality.'**
  String get termsOfServiceFullText;

  /// Confirmation toast after copying the terms
  ///
  /// In en, this message translates to:
  /// **'Terms copied to clipboard'**
  String get termsCopiedToClipboard;

  /// Terms section title
  ///
  /// In en, this message translates to:
  /// **'1. Acceptance & License'**
  String get termsAcceptanceLicenseTitle;

  /// Terms section body
  ///
  /// In en, this message translates to:
  /// **'Kuymo is free and open source. All features are available to everyone, and video processing runs locally on your devices.'**
  String get termsAcceptanceLicenseBody;

  /// Terms section title
  ///
  /// In en, this message translates to:
  /// **'2. 100% Content Ownership'**
  String get termsContentOwnershipTitle;

  /// Terms section body
  ///
  /// In en, this message translates to:
  /// **'You retain all copyrights and ownership over your videos. Kuymo does not transmit, store, or claim any rights to your media files.'**
  String get termsContentOwnershipBody;

  /// Terms section title
  ///
  /// In en, this message translates to:
  /// **'3. Local On-Device Processing'**
  String get termsLocalOnDeviceProcessingTitle;

  /// Terms section body
  ///
  /// In en, this message translates to:
  /// **'All compression pipelines run completely on your device hardware without external server dependencies or remote media processing.'**
  String get termsLocalOnDeviceProcessingBody;

  /// Terms section title
  ///
  /// In en, this message translates to:
  /// **'5. Disclaimers & Fair Use'**
  String get termsDisclaimersAndFairUseTitle;

  /// Terms section body
  ///
  /// In en, this message translates to:
  /// **'The software is provided \"as is.\" You are responsible for ensuring you have proper rights to the video content you process.'**
  String get termsDisclaimersAndFairUseBody;

  /// Terms page version and revision date
  ///
  /// In en, this message translates to:
  /// **'Version 1.2 • November 2026'**
  String get version12November2026;

  /// Data safety category
  ///
  /// In en, this message translates to:
  /// **'Videos and Photos'**
  String get videosAndPhotos;

  /// Data safety category details
  ///
  /// In en, this message translates to:
  /// **'Processed exclusively on-device. Media files are never transmitted to external servers or third-party platforms.'**
  String
  get processedExclusivelyOnDeviceMediaFilesAreNeverTransmittedToExternalServersOrThirdPartyPlatforms;

  /// Data safety category
  ///
  /// In en, this message translates to:
  /// **'App Performance & Crash Logs'**
  String get appPerformanceAndCrashLogs;

  /// Data safety category details
  ///
  /// In en, this message translates to:
  /// **'Optional non-identifiable crash logs and stack traces used solely for diagnosing bugs and optimizing stability.'**
  String
  get optionalNonIdentifiableCrashLogsAndStackTracesUsedSolelyForDiagnosingBugsAndOptimizingStability;

  /// Data safety category
  ///
  /// In en, this message translates to:
  /// **'Device or Other Identifiers'**
  String get deviceOrOtherIdentifiers;

  /// Data safety category details
  ///
  /// In en, this message translates to:
  /// **'No advertising IDs, IMEI numbers, MAC addresses, or persistent hardware identifiers are gathered.'**
  String
  get noAdvertisingIdsImeiNumbersMacAddressesOrPersistentHardwareIdentifiersAreGathered;

  /// Data safety summary card header
  ///
  /// In en, this message translates to:
  /// **'Store Safety Summary'**
  String get storeSafetySummary;

  /// Data safety affirmative row
  ///
  /// In en, this message translates to:
  /// **'No data shared with third parties'**
  String get noDataSharedWithThirdParties;

  /// Data safety affirmative row
  ///
  /// In en, this message translates to:
  /// **'No user data collected for advertising'**
  String get noUserDataCollectedForAdvertising;

  /// Data safety affirmative row
  ///
  /// In en, this message translates to:
  /// **'You can request data deletion at any time'**
  String get youCanRequestDataDeletionAtAnyTime;

  /// Section header above the data safety categories
  ///
  /// In en, this message translates to:
  /// **'Data Collection Breakdown'**
  String get dataCollectionBreakdown;

  /// Data safety chip for optionally collected data
  ///
  /// In en, this message translates to:
  /// **'Optional Only'**
  String get optionalOnly;

  /// Data safety chip for data that is never collected
  ///
  /// In en, this message translates to:
  /// **'Not Collected'**
  String get notCollected;

  /// Privacy highlight title
  ///
  /// In en, this message translates to:
  /// **'Zero Cloud Uploads'**
  String get zeroCloudUploads;

  /// Privacy highlight description
  ///
  /// In en, this message translates to:
  /// **'Videos never leave local memory or storage during processing.'**
  String get videosNeverLeaveLocalMemoryOrStorageDuringProcessing;

  /// Privacy highlight title
  ///
  /// In en, this message translates to:
  /// **'No Advertising IDs'**
  String get noAdvertisingIds;

  /// Privacy highlight description
  ///
  /// In en, this message translates to:
  /// **'No ad SDKs, user fingerprinting, or commercial tracking cookies.'**
  String get noAdSdksUserFingerprintingOrCommercialTrackingCookies;

  /// Privacy highlight title
  ///
  /// In en, this message translates to:
  /// **'100% User Governed'**
  String get oneHundredPercentUserGoverned;

  /// Privacy highlight description
  ///
  /// In en, this message translates to:
  /// **'All cache and history can be purged with a single tap in settings.'**
  String get allCacheAndHistoryCanBePurgedWithASingleTapInSettings;

  /// Privacy policy last-updated line
  ///
  /// In en, this message translates to:
  /// **'Last updated: November 2026'**
  String get lastUpdatedNovember2026;

  /// Section header above the detailed privacy policies
  ///
  /// In en, this message translates to:
  /// **'Detailed Privacy Policies'**
  String get detailedPrivacyPolicies;

  /// Privacy policy section title
  ///
  /// In en, this message translates to:
  /// **'1. Video Processing Commitment'**
  String get videoProcessingCommitmentTitle;

  /// Privacy policy section body
  ///
  /// In en, this message translates to:
  /// **'Kuymo was built with a fundamental architectural guarantee: your videos, clips, and audio tracks are encoded exclusively on your device hardware using local native codecs. At no point is your media streamed, stored, or processed on external cloud infrastructure.'**
  String get videoProcessingCommitmentBody;

  /// Privacy policy section title
  ///
  /// In en, this message translates to:
  /// **'2. Information We Never Collect'**
  String get informationWeNeverCollectTitle;

  /// Privacy policy section body
  ///
  /// In en, this message translates to:
  /// **'We do not collect names, email addresses (unless you explicitly contact customer support), phone numbers, contacts, device locations, biometric identifiers, or visual contents of your media library.'**
  String get informationWeNeverCollectBody;

  /// Privacy policy section title
  ///
  /// In en, this message translates to:
  /// **'3. Optional Diagnostics'**
  String get optionalDiagnosticsTitle;

  /// Privacy policy section body
  ///
  /// In en, this message translates to:
  /// **'You may optionally enable anonymous crash reporting to help us identify and fix bugs. These reports contain only non-identifying operating system versions, device models, and exception stack traces, never media content.'**
  String get optionalDiagnosticsBody;

  /// Privacy policy section title
  ///
  /// In en, this message translates to:
  /// **'5. Data Deletion & Storage Hygiene'**
  String get dataDeletionAndStorageHygieneTitle;

  /// Privacy policy section body
  ///
  /// In en, this message translates to:
  /// **'All compression history records and temporary preview files reside strictly in sandboxed application directories. You can wipe all history and cached frames at any time directly through Storage Settings.'**
  String get dataDeletionAndStorageHygieneBody;

  /// Button that copies the full terms text to the clipboard
  ///
  /// In en, this message translates to:
  /// **'Copy Terms'**
  String get copyTerms;

  /// No description provided for @compressionIntelligence.
  ///
  /// In en, this message translates to:
  /// **'Compression Intelligence'**
  String get compressionIntelligence;

  /// No description provided for @smartBitrateRecommender.
  ///
  /// In en, this message translates to:
  /// **'Smart Bitrate Recommender'**
  String get smartBitrateRecommender;

  /// No description provided for @bitrateRecommenderDescription.
  ///
  /// In en, this message translates to:
  /// **'Allocates bitrate by motion.'**
  String get bitrateRecommenderDescription;

  /// No description provided for @bitrateRecommender.
  ///
  /// In en, this message translates to:
  /// **'Bitrate recommender'**
  String get bitrateRecommender;

  /// No description provided for @sceneAwareKeyframePlacement.
  ///
  /// In en, this message translates to:
  /// **'Scene-Aware Keyframe Placement'**
  String get sceneAwareKeyframePlacement;

  /// No description provided for @sceneKeyframeDescription.
  ///
  /// In en, this message translates to:
  /// **'Places keyframes at scene changes.'**
  String get sceneKeyframeDescription;

  /// No description provided for @sceneKeyframes.
  ///
  /// In en, this message translates to:
  /// **'Scene keyframes'**
  String get sceneKeyframes;

  /// No description provided for @cameraSensorDenoising.
  ///
  /// In en, this message translates to:
  /// **'Camera Sensor De-Noising'**
  String get cameraSensorDenoising;

  /// No description provided for @noiseReductionDescription.
  ///
  /// In en, this message translates to:
  /// **'Reduces low-light image noise.'**
  String get noiseReductionDescription;

  /// No description provided for @noiseReduction.
  ///
  /// In en, this message translates to:
  /// **'Noise reduction'**
  String get noiseReduction;

  /// No description provided for @silentAudioTrimming.
  ///
  /// In en, this message translates to:
  /// **'Silent Audio Trimming'**
  String get silentAudioTrimming;

  /// No description provided for @silentAudioDescription.
  ///
  /// In en, this message translates to:
  /// **'Skips silent audio sections.'**
  String get silentAudioDescription;

  /// No description provided for @silentTrim.
  ///
  /// In en, this message translates to:
  /// **'Silent trim'**
  String get silentTrim;

  /// No description provided for @subjectFacePriority.
  ///
  /// In en, this message translates to:
  /// **'Subject & Face Priority'**
  String get subjectFacePriority;

  /// No description provided for @facePriorityDescription.
  ///
  /// In en, this message translates to:
  /// **'Improves quality around faces.'**
  String get facePriorityDescription;

  /// No description provided for @facePriority.
  ///
  /// In en, this message translates to:
  /// **'Face priority'**
  String get facePriority;

  /// No description provided for @hardwareAcceleration.
  ///
  /// In en, this message translates to:
  /// **'Hardware Acceleration'**
  String get hardwareAcceleration;

  /// No description provided for @computeBackend.
  ///
  /// In en, this message translates to:
  /// **'Compute Backend'**
  String get computeBackend;

  /// No description provided for @backendAuto.
  ///
  /// In en, this message translates to:
  /// **'Auto (Neural Engine / GPU)'**
  String get backendAuto;

  /// No description provided for @backendVulkan.
  ///
  /// In en, this message translates to:
  /// **'Vulkan / GPU Compute'**
  String get backendVulkan;

  /// No description provided for @backendCpu.
  ///
  /// In en, this message translates to:
  /// **'CPU Multi-Threading'**
  String get backendCpu;

  /// No description provided for @cpuThreadAllocation.
  ///
  /// In en, this message translates to:
  /// **'CPU Thread Allocation: {count} Threads'**
  String cpuThreadAllocation(int count);

  /// No description provided for @cpuThreadLabel.
  ///
  /// In en, this message translates to:
  /// **'{count} Threads'**
  String cpuThreadLabel(int count);

  /// No description provided for @memoryBudgetCap.
  ///
  /// In en, this message translates to:
  /// **'Memory Budget Cap'**
  String get memoryBudgetCap;

  /// No description provided for @batterySaverMode.
  ///
  /// In en, this message translates to:
  /// **'Battery Saver Mode'**
  String get batterySaverMode;

  /// No description provided for @batterySaverDescription.
  ///
  /// In en, this message translates to:
  /// **'Limits compute to save battery.'**
  String get batterySaverDescription;

  /// No description provided for @benchmarking.
  ///
  /// In en, this message translates to:
  /// **'Testing…'**
  String get benchmarking;

  /// No description provided for @benchmarkEngineNow.
  ///
  /// In en, this message translates to:
  /// **'Benchmark Engine Now'**
  String get benchmarkEngineNow;

  /// No description provided for @benchmarkResult.
  ///
  /// In en, this message translates to:
  /// **'Benchmark score: 4,820 tokens/sec • Hardware optimal'**
  String get benchmarkResult;

  /// No description provided for @interactionStyle.
  ///
  /// In en, this message translates to:
  /// **'Interaction Style'**
  String get interactionStyle;

  /// No description provided for @streamTextOutput.
  ///
  /// In en, this message translates to:
  /// **'Stream Text Output'**
  String get streamTextOutput;

  /// No description provided for @streamTextDescription.
  ///
  /// In en, this message translates to:
  /// **'Shows the reply as generated.'**
  String get streamTextDescription;

  /// No description provided for @showReasoningThinking.
  ///
  /// In en, this message translates to:
  /// **'Show Reasoning / Thinking'**
  String get showReasoningThinking;

  /// No description provided for @showReasoningDescription.
  ///
  /// In en, this message translates to:
  /// **'Displays reasoning inside chat bubbles.'**
  String get showReasoningDescription;

  /// No description provided for @generationSampling.
  ///
  /// In en, this message translates to:
  /// **'Generation Sampling'**
  String get generationSampling;

  /// No description provided for @creativityTemperature.
  ///
  /// In en, this message translates to:
  /// **'Creativity & Temperature: {value}'**
  String creativityTemperature(String value);

  /// No description provided for @maxGenerationTokens.
  ///
  /// In en, this message translates to:
  /// **'Max Generation Tokens'**
  String get maxGenerationTokens;

  /// No description provided for @tokensCount.
  ///
  /// In en, this message translates to:
  /// **'{count} Tokens'**
  String tokensCount(int count);

  /// No description provided for @visualSampling.
  ///
  /// In en, this message translates to:
  /// **'Visual Sampling'**
  String get visualSampling;

  /// No description provided for @analyzeVideoThumbnails.
  ///
  /// In en, this message translates to:
  /// **'Analyze Video Thumbnails'**
  String get analyzeVideoThumbnails;

  /// No description provided for @analyzeThumbnailsDescription.
  ///
  /// In en, this message translates to:
  /// **'Finds scenes, actions, and lighting.'**
  String get analyzeThumbnailsDescription;

  /// No description provided for @keyframeSamplingDensity.
  ///
  /// In en, this message translates to:
  /// **'Keyframe Sampling Density'**
  String get keyframeSamplingDensity;

  /// No description provided for @framePerSecond.
  ///
  /// In en, this message translates to:
  /// **'{count} Frame/sec'**
  String framePerSecond(int count);

  /// No description provided for @framesPerSecond.
  ///
  /// In en, this message translates to:
  /// **'{count} Frames/sec'**
  String framesPerSecond(int count);

  /// No description provided for @audioTranscription.
  ///
  /// In en, this message translates to:
  /// **'Audio Transcription'**
  String get audioTranscription;

  /// No description provided for @speechToText.
  ///
  /// In en, this message translates to:
  /// **'Speech-to-Text Transcription'**
  String get speechToText;

  /// No description provided for @speechToTextDescription.
  ///
  /// In en, this message translates to:
  /// **'Creates subtitles from audio.'**
  String get speechToTextDescription;

  /// No description provided for @spokenLanguageAutoDetect.
  ///
  /// In en, this message translates to:
  /// **'Spoken Language Auto-Detect'**
  String get spokenLanguageAutoDetect;

  /// No description provided for @spokenLanguageDescription.
  ///
  /// In en, this message translates to:
  /// **'Detects spoken language automatically.'**
  String get spokenLanguageDescription;

  /// No description provided for @semanticIndexRebuilt.
  ///
  /// In en, this message translates to:
  /// **'Semantic video search index rebuilt (142 videos indexed)'**
  String get semanticIndexRebuilt;

  /// No description provided for @vectorDatabaseStatus.
  ///
  /// In en, this message translates to:
  /// **'Vector Database Status'**
  String get vectorDatabaseStatus;

  /// No description provided for @videosIndexed.
  ///
  /// In en, this message translates to:
  /// **'{count} Videos Indexed'**
  String videosIndexed(int count);

  /// No description provided for @embeddingStorage.
  ///
  /// In en, this message translates to:
  /// **'Embedding dimension: 384-dim • Storage used: 12.4 MB'**
  String get embeddingStorage;

  /// No description provided for @rebuilding.
  ///
  /// In en, this message translates to:
  /// **'Rebuilding…'**
  String get rebuilding;

  /// No description provided for @rebuildIndex.
  ///
  /// In en, this message translates to:
  /// **'Rebuild Index'**
  String get rebuildIndex;

  /// No description provided for @indexingPreferences.
  ///
  /// In en, this message translates to:
  /// **'Indexing Preferences'**
  String get indexingPreferences;

  /// No description provided for @enableSemanticSearch.
  ///
  /// In en, this message translates to:
  /// **'Enable Semantic Search'**
  String get enableSemanticSearch;

  /// No description provided for @semanticSearchDescription.
  ///
  /// In en, this message translates to:
  /// **'Finds videos using natural phrases.'**
  String get semanticSearchDescription;

  /// No description provided for @indexOnlyWhenCharging.
  ///
  /// In en, this message translates to:
  /// **'Index Only When Charging'**
  String get indexOnlyWhenCharging;

  /// No description provided for @indexChargingDescription.
  ///
  /// In en, this message translates to:
  /// **'Indexes videos while charging only.'**
  String get indexChargingDescription;

  /// No description provided for @assistantCapabilities.
  ///
  /// In en, this message translates to:
  /// **'Assistant Capabilities'**
  String get assistantCapabilities;

  /// No description provided for @directVideoTrimming.
  ///
  /// In en, this message translates to:
  /// **'Direct Video Trimming'**
  String get directVideoTrimming;

  /// No description provided for @directTrimmingDescription.
  ///
  /// In en, this message translates to:
  /// **'Trims videos without re-encoding.'**
  String get directTrimmingDescription;

  /// No description provided for @videoTrimmer.
  ///
  /// In en, this message translates to:
  /// **'Video trimmer'**
  String get videoTrimmer;

  /// No description provided for @audioTrackExtraction.
  ///
  /// In en, this message translates to:
  /// **'Audio Track Extraction'**
  String get audioTrackExtraction;

  /// No description provided for @audioExtractionDescription.
  ///
  /// In en, this message translates to:
  /// **'Exports audio without video encoding.'**
  String get audioExtractionDescription;

  /// No description provided for @audioExtractor.
  ///
  /// In en, this message translates to:
  /// **'Audio extractor'**
  String get audioExtractor;

  /// No description provided for @metadataScrubber.
  ///
  /// In en, this message translates to:
  /// **'Metadata Scrubber'**
  String get metadataScrubber;

  /// No description provided for @metadataScrubberDescription.
  ///
  /// In en, this message translates to:
  /// **'Removes personal media metadata.'**
  String get metadataScrubberDescription;

  /// No description provided for @metadataScrubberToast.
  ///
  /// In en, this message translates to:
  /// **'Metadata scrubber'**
  String get metadataScrubberToast;

  /// No description provided for @safetyGuardrails.
  ///
  /// In en, this message translates to:
  /// **'Safety & Guardrails'**
  String get safetyGuardrails;

  /// No description provided for @requireConfirmation.
  ///
  /// In en, this message translates to:
  /// **'Require Confirmation For Changes'**
  String get requireConfirmation;

  /// No description provided for @requireConfirmationDescription.
  ///
  /// In en, this message translates to:
  /// **'Confirms changes before file edits.'**
  String get requireConfirmationDescription;

  /// No description provided for @safetyConfirmation.
  ///
  /// In en, this message translates to:
  /// **'Safety confirmation'**
  String get safetyConfirmation;

  /// No description provided for @sandboxedScratchpad.
  ///
  /// In en, this message translates to:
  /// **'Sandboxed Temp Scratchpad'**
  String get sandboxedScratchpad;

  /// No description provided for @sandboxedScratchpadDescription.
  ///
  /// In en, this message translates to:
  /// **'Keeps temporary edits isolated.'**
  String get sandboxedScratchpadDescription;

  /// No description provided for @sandboxedScratchpadToast.
  ///
  /// In en, this message translates to:
  /// **'Sandboxed scratchpad'**
  String get sandboxedScratchpadToast;

  /// No description provided for @enabled.
  ///
  /// In en, this message translates to:
  /// **'enabled'**
  String get enabled;

  /// No description provided for @disabled.
  ///
  /// In en, this message translates to:
  /// **'disabled'**
  String get disabled;

  /// No description provided for @supportedOnDeviceModels.
  ///
  /// In en, this message translates to:
  /// **'Supported On-Device Models'**
  String get supportedOnDeviceModels;

  /// No description provided for @kuymoBitrateOptimizer.
  ///
  /// In en, this message translates to:
  /// **'Kuymo Bitrate Optimizer (0.2B)'**
  String get kuymoBitrateOptimizer;

  /// No description provided for @localRateControlDescription.
  ///
  /// In en, this message translates to:
  /// **'Local neural rate-control model for optimal scene quantization.'**
  String get localRateControlDescription;

  /// No description provided for @mobileNetSceneClassifier.
  ///
  /// In en, this message translates to:
  /// **'MobileNetV4 Scene Classifier'**
  String get mobileNetSceneClassifier;

  /// No description provided for @sceneClassifierDescription.
  ///
  /// In en, this message translates to:
  /// **'Detects fast motion and camera cuts to place clean keyframes.'**
  String get sceneClassifierDescription;

  /// No description provided for @whisperTinyTranscriber.
  ///
  /// In en, this message translates to:
  /// **'Whisper Tiny Audio Transcriber'**
  String get whisperTinyTranscriber;

  /// No description provided for @whisperTranscriberDescription.
  ///
  /// In en, this message translates to:
  /// **'High-speed local speech-to-text for automatic video subtitles.'**
  String get whisperTranscriberDescription;

  /// No description provided for @llamaMobileAssistant.
  ///
  /// In en, this message translates to:
  /// **'Llama 3.2 1B Mobile Assistant'**
  String get llamaMobileAssistant;

  /// No description provided for @llamaAssistantDescription.
  ///
  /// In en, this message translates to:
  /// **'Conversational assistant for video questions and editing advice.'**
  String get llamaAssistantDescription;

  /// No description provided for @active.
  ///
  /// In en, this message translates to:
  /// **'Active'**
  String get active;

  /// No description provided for @setActive.
  ///
  /// In en, this message translates to:
  /// **'Set Active'**
  String get setActive;

  /// No description provided for @installed.
  ///
  /// In en, this message translates to:
  /// **'Installed'**
  String get installed;

  /// No description provided for @downloadModel.
  ///
  /// In en, this message translates to:
  /// **'Download ({size})'**
  String downloadModel(String size);

  /// No description provided for @modelActivated.
  ///
  /// In en, this message translates to:
  /// **'{name} activated'**
  String modelActivated(String name);

  /// No description provided for @modelDownloadQueued.
  ///
  /// In en, this message translates to:
  /// **'Download queued for {name}'**
  String modelDownloadQueued(String name);

  /// No description provided for @modelFileSelected.
  ///
  /// In en, this message translates to:
  /// **'Model file selected'**
  String get modelFileSelected;

  /// No description provided for @modelImportedVerified.
  ///
  /// In en, this message translates to:
  /// **'Model imported and verified for local inference'**
  String get modelImportedVerified;

  /// No description provided for @noModelFileSelected.
  ///
  /// In en, this message translates to:
  /// **'No Model File Selected'**
  String get noModelFileSelected;

  /// No description provided for @compatibleModelFormats.
  ///
  /// In en, this message translates to:
  /// **'Compatible formats: .gguf, .onnx, .tflite'**
  String get compatibleModelFormats;

  /// No description provided for @browseFiles.
  ///
  /// In en, this message translates to:
  /// **'Browse Files'**
  String get browseFiles;

  /// No description provided for @importCompatibilityChecklist.
  ///
  /// In en, this message translates to:
  /// **'Import Compatibility Checklist'**
  String get importCompatibilityChecklist;

  /// No description provided for @formatQuantizationChecklist.
  ///
  /// In en, this message translates to:
  /// **'Format & Quantization (GGUF / ONNX / TFLite)'**
  String get formatQuantizationChecklist;

  /// No description provided for @memoryCapVerification.
  ///
  /// In en, this message translates to:
  /// **'Memory Cap Verification (< 2GB Peak RAM)'**
  String get memoryCapVerification;

  /// No description provided for @architectureCompatibility.
  ///
  /// In en, this message translates to:
  /// **'Architecture (Llama / MobileNet / Whisper)'**
  String get architectureCompatibility;

  /// No description provided for @validatingModel.
  ///
  /// In en, this message translates to:
  /// **'Validating…'**
  String get validatingModel;

  /// No description provided for @validateImportModel.
  ///
  /// In en, this message translates to:
  /// **'Validate & Import Model'**
  String get validateImportModel;

  /// No description provided for @modelStorageUsage.
  ///
  /// In en, this message translates to:
  /// **'{size} • {ram}'**
  String modelStorageUsage(String size, String ram);

  /// No description provided for @bitrateRecommenderDetails.
  ///
  /// In en, this message translates to:
  /// **'Analyzes movement and visual complexity to recommend the bitrate for each scene. This helps preserve detail where the video needs it.'**
  String get bitrateRecommenderDetails;

  /// No description provided for @sceneKeyframeDetails.
  ///
  /// In en, this message translates to:
  /// **'Detects scene changes and camera cuts, then places keyframes at useful points. This keeps seeking through the video smooth and responsive.'**
  String get sceneKeyframeDetails;

  /// No description provided for @noiseReductionDetails.
  ///
  /// In en, this message translates to:
  /// **'Reduces grain in low-light footage before compression. Cleaner footage can look clearer and may produce a smaller output file.'**
  String get noiseReductionDetails;

  /// No description provided for @silentAudioDetails.
  ///
  /// In en, this message translates to:
  /// **'Finds quiet sections in the audio track and trims them. This removes audio data that does not add useful sound.'**
  String get silentAudioDetails;

  /// No description provided for @facePriorityDetails.
  ///
  /// In en, this message translates to:
  /// **'Detects people and faces in the video. Compression then preserves more visual detail around those subjects.'**
  String get facePriorityDetails;

  /// No description provided for @batterySaverDetails.
  ///
  /// In en, this message translates to:
  /// **'Reduces intensive model processing when the battery is low. This helps extend device runtime during demanding tasks.'**
  String get batterySaverDetails;

  /// No description provided for @streamTextDetails.
  ///
  /// In en, this message translates to:
  /// **'Displays the assistant response as it is generated. You can begin reading before the complete response is ready.'**
  String get streamTextDetails;

  /// No description provided for @showReasoningDetails.
  ///
  /// In en, this message translates to:
  /// **'Shows extra reasoning details in chat responses when the selected model provides them. It may make responses longer and more detailed.'**
  String get showReasoningDetails;

  /// No description provided for @analyzeThumbnailsDetails.
  ///
  /// In en, this message translates to:
  /// **'Samples video frames to recognize scenes, activities, and lighting. This gives the assistant visual context about the selected video.'**
  String get analyzeThumbnailsDetails;

  /// No description provided for @samplingDensityDetails.
  ///
  /// In en, this message translates to:
  /// **'Choose how many frames are checked each second. Higher sampling can capture more scene changes and requires more processing.'**
  String get samplingDensityDetails;

  /// No description provided for @speechToTextDetails.
  ///
  /// In en, this message translates to:
  /// **'Processes the selected video audio on this device and turns spoken words into text. The resulting text can support subtitles and search.'**
  String get speechToTextDetails;

  /// No description provided for @spokenLanguageDetails.
  ///
  /// In en, this message translates to:
  /// **'Identifies the language spoken in the audio. The detected language helps choose suitable transcription settings.'**
  String get spokenLanguageDetails;

  /// No description provided for @semanticSearchDetails.
  ///
  /// In en, this message translates to:
  /// **'Builds a meaning-based search index stored on this device. You can use descriptions such as “beach at sunset” to find matching videos.'**
  String get semanticSearchDetails;

  /// No description provided for @indexChargingDetails.
  ///
  /// In en, this message translates to:
  /// **'Waits until the device is connected to power before generating search data. This reduces indexing activity while using battery power.'**
  String get indexChargingDetails;

  /// No description provided for @directTrimmingDetails.
  ///
  /// In en, this message translates to:
  /// **'Lets the assistant trim video clips without re-encoding the video. This is faster and preserves the original video quality.'**
  String get directTrimmingDetails;

  /// No description provided for @audioExtractionDetails.
  ///
  /// In en, this message translates to:
  /// **'Lets the assistant export a video’s audio track as a separate audio file. The video itself is not re-encoded.'**
  String get audioExtractionDetails;

  /// No description provided for @metadataScrubberDetails.
  ///
  /// In en, this message translates to:
  /// **'Removes personal metadata such as EXIF details and GPS location from media. This helps protect information before sharing files.'**
  String get metadataScrubberDetails;

  /// No description provided for @requireConfirmationDetails.
  ///
  /// In en, this message translates to:
  /// **'Asks for your approval before the assistant changes files. You can review actions that overwrite, save, or delete content.'**
  String get requireConfirmationDetails;

  /// No description provided for @sandboxedScratchpadDetails.
  ///
  /// In en, this message translates to:
  /// **'Keeps intermediate edits in a temporary isolated location. The original files remain untouched while the operation is in progress.'**
  String get sandboxedScratchpadDetails;

  /// No description provided for @compressionAlerts.
  ///
  /// In en, this message translates to:
  /// **'Compression Alerts'**
  String get compressionAlerts;

  /// No description provided for @feedbackAndHaptics.
  ///
  /// In en, this message translates to:
  /// **'Feedback & Haptics'**
  String get feedbackAndHaptics;

  /// No description provided for @productStorageInsights.
  ///
  /// In en, this message translates to:
  /// **'Product & Storage Insights'**
  String get productStorageInsights;

  /// No description provided for @jobCompletedNotification.
  ///
  /// In en, this message translates to:
  /// **'Job Completed'**
  String get jobCompletedNotification;

  /// No description provided for @jobCompletedShort.
  ///
  /// In en, this message translates to:
  /// **'Compression finished'**
  String get jobCompletedShort;

  /// No description provided for @jobCompletedDetails.
  ///
  /// In en, this message translates to:
  /// **'Sends a notification after a video finishes compressing in the background. Open it to return to the completed job.'**
  String get jobCompletedDetails;

  /// No description provided for @jobCompletedToast.
  ///
  /// In en, this message translates to:
  /// **'Job completed alert'**
  String get jobCompletedToast;

  /// No description provided for @backgroundStatusNotification.
  ///
  /// In en, this message translates to:
  /// **'Background Status'**
  String get backgroundStatusNotification;

  /// No description provided for @backgroundStatusShort.
  ///
  /// In en, this message translates to:
  /// **'Background job status'**
  String get backgroundStatusShort;

  /// No description provided for @backgroundStatusDetails.
  ///
  /// In en, this message translates to:
  /// **'Keeps an ongoing status visible while compression is running in the background. This helps you see that work is still in progress.'**
  String get backgroundStatusDetails;

  /// No description provided for @backgroundStatusToast.
  ///
  /// In en, this message translates to:
  /// **'Background status'**
  String get backgroundStatusToast;

  /// No description provided for @interruptionErrorNotification.
  ///
  /// In en, this message translates to:
  /// **'Interruption & Error Alerts'**
  String get interruptionErrorNotification;

  /// No description provided for @interruptionErrorShort.
  ///
  /// In en, this message translates to:
  /// **'Compression error alerts'**
  String get interruptionErrorShort;

  /// No description provided for @interruptionErrorDetails.
  ///
  /// In en, this message translates to:
  /// **'Notifies you if a compression job stops because of low storage, battery, or another error. The message helps you understand why the job did not finish.'**
  String get interruptionErrorDetails;

  /// No description provided for @interruptionErrorToast.
  ///
  /// In en, this message translates to:
  /// **'Error alerts'**
  String get interruptionErrorToast;

  /// No description provided for @completionSoundNotification.
  ///
  /// In en, this message translates to:
  /// **'Sound on Completion'**
  String get completionSoundNotification;

  /// No description provided for @completionSoundShort.
  ///
  /// In en, this message translates to:
  /// **'Completion chime'**
  String get completionSoundShort;

  /// No description provided for @completionSoundDetails.
  ///
  /// In en, this message translates to:
  /// **'Plays a brief chime when video compression and export are complete. Turn it off to receive visual notifications only.'**
  String get completionSoundDetails;

  /// No description provided for @completionSoundToast.
  ///
  /// In en, this message translates to:
  /// **'Completion sound'**
  String get completionSoundToast;

  /// No description provided for @hapticFeedbackNotification.
  ///
  /// In en, this message translates to:
  /// **'Haptic Vibration'**
  String get hapticFeedbackNotification;

  /// No description provided for @hapticFeedbackShort.
  ///
  /// In en, this message translates to:
  /// **'Interaction vibration'**
  String get hapticFeedbackShort;

  /// No description provided for @hapticFeedbackDetails.
  ///
  /// In en, this message translates to:
  /// **'Uses a short vibration after compression finishes and selected button interactions. Turn it off for a quieter tactile experience.'**
  String get hapticFeedbackDetails;

  /// No description provided for @hapticFeedbackToast.
  ///
  /// In en, this message translates to:
  /// **'Haptic feedback'**
  String get hapticFeedbackToast;

  /// No description provided for @productUpdatesNotification.
  ///
  /// In en, this message translates to:
  /// **'New Features & Codecs'**
  String get productUpdatesNotification;

  /// No description provided for @productUpdatesShort.
  ///
  /// In en, this message translates to:
  /// **'Feature and codec news'**
  String get productUpdatesShort;

  /// No description provided for @productUpdatesDetails.
  ///
  /// In en, this message translates to:
  /// **'Sends updates about major app features and newly supported video codecs. Turn it off to limit product news notifications.'**
  String get productUpdatesDetails;

  /// No description provided for @productUpdatesToast.
  ///
  /// In en, this message translates to:
  /// **'Feature notifications'**
  String get productUpdatesToast;

  /// No description provided for @savingsDigestNotification.
  ///
  /// In en, this message translates to:
  /// **'Storage Savings Digest'**
  String get savingsDigestNotification;

  /// No description provided for @savingsDigestShort.
  ///
  /// In en, this message translates to:
  /// **'Storage space saved'**
  String get savingsDigestShort;

  /// No description provided for @savingsDigestDetails.
  ///
  /// In en, this message translates to:
  /// **'Occasionally summarizes the storage space saved by compressing your videos. It gives you a quick view of the value of your compression history.'**
  String get savingsDigestDetails;

  /// No description provided for @savingsDigestToast.
  ///
  /// In en, this message translates to:
  /// **'Savings digest'**
  String get savingsDigestToast;

  /// No description provided for @diagnosticsTelemetry.
  ///
  /// In en, this message translates to:
  /// **'Diagnostics & Telemetry'**
  String get diagnosticsTelemetry;

  /// No description provided for @anonymousCrashReports.
  ///
  /// In en, this message translates to:
  /// **'Anonymous Crash Reports'**
  String get anonymousCrashReports;

  /// No description provided for @anonymousCrashReportsDescription.
  ///
  /// In en, this message translates to:
  /// **'Help fix crashes by sending non-identifiable system error stack traces'**
  String get anonymousCrashReportsDescription;

  /// No description provided for @encoderPerformanceTelemetry.
  ///
  /// In en, this message translates to:
  /// **'Encoder Performance Telemetry'**
  String get encoderPerformanceTelemetry;

  /// No description provided for @encoderPerformanceTelemetryDescription.
  ///
  /// In en, this message translates to:
  /// **'Share hardware encoding timings to help tune platform profiles'**
  String get encoderPerformanceTelemetryDescription;

  /// No description provided for @metadataAndTempFiles.
  ///
  /// In en, this message translates to:
  /// **'Metadata & Temp Files'**
  String get metadataAndTempFiles;

  /// No description provided for @preserveVideoMetadata.
  ///
  /// In en, this message translates to:
  /// **'Preserve Video Metadata'**
  String get preserveVideoMetadata;

  /// No description provided for @preserveVideoMetadataDescription.
  ///
  /// In en, this message translates to:
  /// **'Keep EXIF camera info, GPS coordinates, and creation timestamps in output'**
  String get preserveVideoMetadataDescription;

  /// No description provided for @autoWipeTempBuffers.
  ///
  /// In en, this message translates to:
  /// **'Auto-Wipe Temp Buffers'**
  String get autoWipeTempBuffers;

  /// No description provided for @autoWipeTempBuffersDescription.
  ///
  /// In en, this message translates to:
  /// **'Immediately purge temporary encoding scratchpads upon completion'**
  String get autoWipeTempBuffersDescription;

  /// No description provided for @clearScratchpadNow.
  ///
  /// In en, this message translates to:
  /// **'Clear Scratchpad Now'**
  String get clearScratchpadNow;

  /// No description provided for @clearScratchpadDescription.
  ///
  /// In en, this message translates to:
  /// **'Free any lingering temporary preview frames and worker caches'**
  String get clearScratchpadDescription;

  /// No description provided for @scratchpadCleared.
  ///
  /// In en, this message translates to:
  /// **'Temporary compression scratchpad cleared'**
  String get scratchpadCleared;

  /// No description provided for @clearing.
  ///
  /// In en, this message translates to:
  /// **'Clearing…'**
  String get clearing;

  /// No description provided for @clear.
  ///
  /// In en, this message translates to:
  /// **'Clear'**
  String get clear;

  /// No description provided for @crashReportsLabel.
  ///
  /// In en, this message translates to:
  /// **'Crash reports'**
  String get crashReportsLabel;

  /// No description provided for @telemetryLabel.
  ///
  /// In en, this message translates to:
  /// **'Telemetry'**
  String get telemetryLabel;

  /// No description provided for @metadataPreservationLabel.
  ///
  /// In en, this message translates to:
  /// **'Metadata preservation'**
  String get metadataPreservationLabel;

  /// No description provided for @autoWipeLabel.
  ///
  /// In en, this message translates to:
  /// **'Auto wipe'**
  String get autoWipeLabel;

  /// No description provided for @privacyDocumentsAndPolicies.
  ///
  /// In en, this message translates to:
  /// **'Privacy Documents & Policies'**
  String get privacyDocumentsAndPolicies;

  /// No description provided for @crashReportsSummary.
  ///
  /// In en, this message translates to:
  /// **'Crash diagnostics stay anonymous'**
  String get crashReportsSummary;

  /// No description provided for @encoderTelemetrySummary.
  ///
  /// In en, this message translates to:
  /// **'Hardware encoding timings'**
  String get encoderTelemetrySummary;

  /// No description provided for @metadataPreservationSummary.
  ///
  /// In en, this message translates to:
  /// **'Keep camera details'**
  String get metadataPreservationSummary;

  /// No description provided for @automaticTempCleanupSummary.
  ///
  /// In en, this message translates to:
  /// **'Delete temporary buffers'**
  String get automaticTempCleanupSummary;

  /// No description provided for @scratchpadCleanupSummary.
  ///
  /// In en, this message translates to:
  /// **'Remove cached preview files'**
  String get scratchpadCleanupSummary;

  /// No description provided for @privacyPolicySummary.
  ///
  /// In en, this message translates to:
  /// **'How Kuymo handles data'**
  String get privacyPolicySummary;

  /// No description provided for @dataSafetySummary.
  ///
  /// In en, this message translates to:
  /// **'Collected data and purpose'**
  String get dataSafetySummary;

  /// No description provided for @permissionsSummary.
  ///
  /// In en, this message translates to:
  /// **'Why Kuymo needs access'**
  String get permissionsSummary;

  /// No description provided for @megabytesShort.
  ///
  /// In en, this message translates to:
  /// **'MB'**
  String get megabytesShort;

  /// No description provided for @percentSmaller.
  ///
  /// In en, this message translates to:
  /// **'{percent}% smaller'**
  String percentSmaller(Object percent);

  /// No description provided for @percentSaved.
  ///
  /// In en, this message translates to:
  /// **'-{percent}%'**
  String percentSaved(Object percent);

  /// No description provided for @encodingHardwareLive.
  ///
  /// In en, this message translates to:
  /// **'Encoding and optimizing video with native hardware…'**
  String get encodingHardwareLive;

  /// No description provided for @verifyingCompressedVideo.
  ///
  /// In en, this message translates to:
  /// **'Checking the compressed video and its audio…'**
  String get verifyingCompressedVideo;

  /// No description provided for @retryingCompression.
  ///
  /// In en, this message translates to:
  /// **'Adjusting settings for another compression pass…'**
  String get retryingCompression;

  /// No description provided for @targetSizeNotReachedOutputIs.
  ///
  /// In en, this message translates to:
  /// **'Could not reach the target size. Output size: {size} MB.'**
  String targetSizeNotReachedOutputIs(String size);

  /// No description provided for @targetMayNotBeReachedBestEffort.
  ///
  /// In en, this message translates to:
  /// **'The selected size may not be reachable. The export will use the best available settings, and its final size will be shown.'**
  String get targetMayNotBeReachedBestEffort;

  /// No description provided for @requestedSettingsUnavailableBestQualityIs.
  ///
  /// In en, this message translates to:
  /// **'The requested settings cannot be applied. Best available quality is {width} × {height}; the final file size will be shown after compression.'**
  String requestedSettingsUnavailableBestQualityIs(String width, String height);

  /// No description provided for @savingCompressedVideo.
  ///
  /// In en, this message translates to:
  /// **'Saving the compressed video on this device…'**
  String get savingCompressedVideo;

  /// No description provided for @compressionCompletedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Compression finished successfully!'**
  String get compressionCompletedSuccessfully;

  /// No description provided for @compressionStrictness.
  ///
  /// In en, this message translates to:
  /// **'Compression Strictness'**
  String get compressionStrictness;

  /// No description provided for @strictnessDefault.
  ///
  /// In en, this message translates to:
  /// **'Default (93%)'**
  String get strictnessDefault;

  /// No description provided for @strictnessSafe.
  ///
  /// In en, this message translates to:
  /// **'Safe (90%)'**
  String get strictnessSafe;

  /// No description provided for @strictnessAggressive.
  ///
  /// In en, this message translates to:
  /// **'Aggressive (96%)'**
  String get strictnessAggressive;

  /// No description provided for @historySummarySubtitle.
  ///
  /// In en, this message translates to:
  /// **'{count} videos compressed • {savedMb} MB saved'**
  String historySummarySubtitle(Object count, Object savedMb);

  /// No description provided for @compressionHelpDescription.
  ///
  /// In en, this message translates to:
  /// **'Answers to common questions about video compression.'**
  String get compressionHelpDescription;

  /// No description provided for @appSupportDescription.
  ///
  /// In en, this message translates to:
  /// **'Get help using Kuymo.'**
  String get appSupportDescription;

  /// No description provided for @appTermsDescription.
  ///
  /// In en, this message translates to:
  /// **'Terms for using the free, open source Kuymo app.'**
  String get appTermsDescription;

  /// No description provided for @compressionAndroidOnly.
  ///
  /// In en, this message translates to:
  /// **'Video compression is currently available only on Android.'**
  String get compressionAndroidOnly;

  /// No description provided for @notificationPermissionTitle.
  ///
  /// In en, this message translates to:
  /// **'Enable notifications'**
  String get notificationPermissionTitle;

  /// No description provided for @notificationPermissionBody.
  ///
  /// In en, this message translates to:
  /// **'Tap to allow compression alerts and updates.'**
  String get notificationPermissionBody;

  /// No description provided for @notificationPermissionSettingsBody.
  ///
  /// In en, this message translates to:
  /// **'Notifications are blocked. Tap to open system settings.'**
  String get notificationPermissionSettingsBody;

  /// No description provided for @notificationUnavailable.
  ///
  /// In en, this message translates to:
  /// **'Notifications are currently supported on Android.'**
  String get notificationUnavailable;

  /// No description provided for @notificationSetupFailed.
  ///
  /// In en, this message translates to:
  /// **'Notification settings could not be applied. Tap to retry.'**
  String get notificationSetupFailed;

  /// No description provided for @notificationChannelBlocked.
  ///
  /// In en, this message translates to:
  /// **'A notification channel is blocked in system settings.'**
  String get notificationChannelBlocked;

  /// No description provided for @notificationProgressDetails.
  ///
  /// In en, this message translates to:
  /// **'Show progress details in the background. A basic service notification remains while compression runs.'**
  String get notificationProgressDetails;

  /// No description provided for @notificationProgressTitle.
  ///
  /// In en, this message translates to:
  /// **'Compressing video'**
  String get notificationProgressTitle;

  /// No description provided for @notificationProgressBody.
  ///
  /// In en, this message translates to:
  /// **'Tap to view your compression job.'**
  String get notificationProgressBody;

  /// No description provided for @notificationPausedTitle.
  ///
  /// In en, this message translates to:
  /// **'Compression paused'**
  String get notificationPausedTitle;

  /// No description provided for @notificationSavingTitle.
  ///
  /// In en, this message translates to:
  /// **'Saving compressed video'**
  String get notificationSavingTitle;

  /// No description provided for @notificationCompletedTitle.
  ///
  /// In en, this message translates to:
  /// **'Video ready'**
  String get notificationCompletedTitle;

  /// No description provided for @notificationCompletedBody.
  ///
  /// In en, this message translates to:
  /// **'{name} · {size} MB · Saved {saved} MB'**
  String notificationCompletedBody(String name, String size, String saved);

  /// No description provided for @notificationCompletedWarningBody.
  ///
  /// In en, this message translates to:
  /// **'{name} · {size} MB · Review the result warning'**
  String notificationCompletedWarningBody(String name, String size);

  /// No description provided for @notificationFailedTitle.
  ///
  /// In en, this message translates to:
  /// **'Compression interrupted'**
  String get notificationFailedTitle;

  /// No description provided for @notificationInterruptedBody.
  ///
  /// In en, this message translates to:
  /// **'{count} interrupted jobs are available to review.'**
  String notificationInterruptedBody(String count);

  /// No description provided for @notificationReleaseTitle.
  ///
  /// In en, this message translates to:
  /// **'Kuymo {version} is available'**
  String notificationReleaseTitle(String version);

  /// No description provided for @notificationSavingsTitle.
  ///
  /// In en, this message translates to:
  /// **'Your weekly storage savings'**
  String get notificationSavingsTitle;

  /// No description provided for @notificationSavingsBody.
  ///
  /// In en, this message translates to:
  /// **'{count} videos · {saved} MB saved'**
  String notificationSavingsBody(String count, String saved);

  /// No description provided for @hapticsButtons.
  ///
  /// In en, this message translates to:
  /// **'Buttons and taps'**
  String get hapticsButtons;

  /// No description provided for @hapticsButtonsDescription.
  ///
  /// In en, this message translates to:
  /// **'Plays a light pulse when you press an action button. This setting applies across the app; selection changes and swipe gestures have their own controls.'**
  String get hapticsButtonsDescription;

  /// No description provided for @hapticsSelections.
  ///
  /// In en, this message translates to:
  /// **'Selection changes'**
  String get hapticsSelections;

  /// No description provided for @hapticsSelectionsDescription.
  ///
  /// In en, this message translates to:
  /// **'Plays a brief tick when you change a switch, checkbox, or selected value. Disable it to adjust preferences without vibration while keeping button feedback unchanged.'**
  String get hapticsSelectionsDescription;

  /// No description provided for @hapticsGestures.
  ///
  /// In en, this message translates to:
  /// **'Gestures'**
  String get hapticsGestures;

  /// No description provided for @hapticsGesturesDescription.
  ///
  /// In en, this message translates to:
  /// **'Plays a light pulse when a swipe reaches the point that reveals or triggers an action. It helps you feel the action threshold without vibrating throughout the drag.'**
  String get hapticsGesturesDescription;

  /// No description provided for @hapticsSuccess.
  ///
  /// In en, this message translates to:
  /// **'Successful completion'**
  String get hapticsSuccess;

  /// No description provided for @hapticsSuccessDescription.
  ///
  /// In en, this message translates to:
  /// **'Plays a confirmation pulse when video compression finishes. In the background the completion notification provides the vibration, so the same result does not vibrate twice. Sound on completion is controlled separately.'**
  String get hapticsSuccessDescription;

  /// No description provided for @hapticsErrors.
  ///
  /// In en, this message translates to:
  /// **'Errors and interruptions'**
  String get hapticsErrors;

  /// No description provided for @hapticsErrorsDescription.
  ///
  /// In en, this message translates to:
  /// **'Plays a stronger pulse if compression fails or is interrupted. In the background this follows the error notification. Cancelling a job yourself does not trigger an error pulse.'**
  String get hapticsErrorsDescription;

  /// No description provided for @notificationJobUnavailable.
  ///
  /// In en, this message translates to:
  /// **'This job is no longer available. Your history is shown instead.'**
  String get notificationJobUnavailable;

  /// No description provided for @notificationRecoveryHint.
  ///
  /// In en, this message translates to:
  /// **'Review interrupted jobs from the home screen.'**
  String get notificationRecoveryHint;

  /// No description provided for @notificationProgressChannel.
  ///
  /// In en, this message translates to:
  /// **'Compression status'**
  String get notificationProgressChannel;

  /// No description provided for @notificationCompletionChannel.
  ///
  /// In en, this message translates to:
  /// **'Completed videos'**
  String get notificationCompletionChannel;

  /// No description provided for @notificationErrorChannel.
  ///
  /// In en, this message translates to:
  /// **'Compression problems'**
  String get notificationErrorChannel;

  /// No description provided for @notificationReleaseChannel.
  ///
  /// In en, this message translates to:
  /// **'App releases'**
  String get notificationReleaseChannel;

  /// No description provided for @notificationSavingsChannel.
  ///
  /// In en, this message translates to:
  /// **'Storage savings'**
  String get notificationSavingsChannel;

  /// No description provided for @automaticColorSchemeDescription.
  ///
  /// In en, this message translates to:
  /// **'Auto uses a vivid Kuymo palette. Each option previews its own accent colors.'**
  String get automaticColorSchemeDescription;

  /// No description provided for @colorSchemeTonalSpot.
  ///
  /// In en, this message translates to:
  /// **'Tonal spot'**
  String get colorSchemeTonalSpot;

  /// No description provided for @colorSchemeFidelity.
  ///
  /// In en, this message translates to:
  /// **'Fidelity'**
  String get colorSchemeFidelity;

  /// No description provided for @colorSchemeContent.
  ///
  /// In en, this message translates to:
  /// **'Content'**
  String get colorSchemeContent;

  /// No description provided for @colorSchemeExpressive.
  ///
  /// In en, this message translates to:
  /// **'Expressive'**
  String get colorSchemeExpressive;

  /// No description provided for @colorSchemeFruitSalad.
  ///
  /// In en, this message translates to:
  /// **'Fruit salad'**
  String get colorSchemeFruitSalad;

  /// No description provided for @colorSchemeMonochrome.
  ///
  /// In en, this message translates to:
  /// **'Monochrome'**
  String get colorSchemeMonochrome;

  /// No description provided for @colorSchemeNeutral.
  ///
  /// In en, this message translates to:
  /// **'Neutral'**
  String get colorSchemeNeutral;

  /// No description provided for @colorSchemeRainbow.
  ///
  /// In en, this message translates to:
  /// **'Rainbow'**
  String get colorSchemeRainbow;

  /// No description provided for @colorSchemeVibrant.
  ///
  /// In en, this message translates to:
  /// **'Vibrant'**
  String get colorSchemeVibrant;

  /// No description provided for @hapticsButtonsShort.
  ///
  /// In en, this message translates to:
  /// **'Button press feedback'**
  String get hapticsButtonsShort;

  /// No description provided for @hapticsSelectionsShort.
  ///
  /// In en, this message translates to:
  /// **'Feedback when choices change'**
  String get hapticsSelectionsShort;

  /// No description provided for @hapticsGesturesShort.
  ///
  /// In en, this message translates to:
  /// **'Swipe action feedback'**
  String get hapticsGesturesShort;

  /// No description provided for @hapticsSuccessShort.
  ///
  /// In en, this message translates to:
  /// **'A pulse when a video is ready'**
  String get hapticsSuccessShort;

  /// No description provided for @hapticsErrorsShort.
  ///
  /// In en, this message translates to:
  /// **'Feedback when a job fails'**
  String get hapticsErrorsShort;

  /// No description provided for @appUpdatesTitle.
  ///
  /// In en, this message translates to:
  /// **'App updates'**
  String get appUpdatesTitle;

  /// No description provided for @whatsNewTitle.
  ///
  /// In en, this message translates to:
  /// **'What’s new'**
  String get whatsNewTitle;

  /// No description provided for @appUpdatesDescription.
  ///
  /// In en, this message translates to:
  /// **'Check for a new version'**
  String get appUpdatesDescription;

  /// No description provided for @whatsNewDescription.
  ///
  /// In en, this message translates to:
  /// **'Changes in your installed version'**
  String get whatsNewDescription;

  /// No description provided for @installedVersionLabel.
  ///
  /// In en, this message translates to:
  /// **'Installed version'**
  String get installedVersionLabel;

  /// No description provided for @updateAvailableLabel.
  ///
  /// In en, this message translates to:
  /// **'A new version is available'**
  String get updateAvailableLabel;

  /// No description provided for @noUpdatesLabel.
  ///
  /// In en, this message translates to:
  /// **'No newer stable release is available'**
  String get noUpdatesLabel;

  /// No description provided for @releaseNotesEmpty.
  ///
  /// In en, this message translates to:
  /// **'No release notes are available for this version.'**
  String get releaseNotesEmpty;

  /// No description provided for @releaseLoadFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not load release information. Try again when you are connected.'**
  String get releaseLoadFailed;

  /// No description provided for @releaseCachedNotice.
  ///
  /// In en, this message translates to:
  /// **'Could not refresh. Showing the saved release notes.'**
  String get releaseCachedNotice;

  /// No description provided for @openReleaseLabel.
  ///
  /// In en, this message translates to:
  /// **'Open release on GitHub'**
  String get openReleaseLabel;

  /// No description provided for @checkUpdatesLabel.
  ///
  /// In en, this message translates to:
  /// **'Check for updates'**
  String get checkUpdatesLabel;

  /// No description provided for @reloadReleaseLabel.
  ///
  /// In en, this message translates to:
  /// **'Refresh release notes'**
  String get reloadReleaseLabel;

  /// No description provided for @releaseOpenFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not open the release. Please try again.'**
  String get releaseOpenFailed;

  /// No description provided for @appLinkCopied.
  ///
  /// In en, this message translates to:
  /// **'Link copied to clipboard.'**
  String get appLinkCopied;

  /// No description provided for @appInvitationCopied.
  ///
  /// In en, this message translates to:
  /// **'Invitation copied. Paste it into your messaging app.'**
  String get appInvitationCopied;

  /// Invitation to share Kuymo using the current release URL
  ///
  /// In en, this message translates to:
  /// **'Try Kuymo for on-device video compression: {url}'**
  String kuymoShareInvitation(String url);

  /// No description provided for @onDeviceProcessingLabel.
  ///
  /// In en, this message translates to:
  /// **'Video processing on your device'**
  String get onDeviceProcessingLabel;

  /// No description provided for @kuymoShareDescription.
  ///
  /// In en, this message translates to:
  /// **'Choose a target size and prepare your video to share. Video processing stays on your device.'**
  String get kuymoShareDescription;

  /// No description provided for @copyAppLink.
  ///
  /// In en, this message translates to:
  /// **'Copy app link'**
  String get copyAppLink;

  /// No description provided for @enjoyingKuymo.
  ///
  /// In en, this message translates to:
  /// **'Enjoying Kuymo?'**
  String get enjoyingKuymo;

  /// No description provided for @whyChooseKuymo.
  ///
  /// In en, this message translates to:
  /// **'Why choose Kuymo'**
  String get whyChooseKuymo;

  /// No description provided for @projectSupportLink.
  ///
  /// In en, this message translates to:
  /// **'Copy project support link'**
  String get projectSupportLink;

  /// No description provided for @brandTagline.
  ///
  /// In en, this message translates to:
  /// **'More room for your moments.'**
  String get brandTagline;

  /// No description provided for @kuymoAi.
  ///
  /// In en, this message translates to:
  /// **'Kuymo AI'**
  String get kuymoAi;

  /// No description provided for @settingsSaveFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not load or save settings. Your last saved values are retained.'**
  String get settingsSaveFailed;

  /// No description provided for @settingsRecovered.
  ///
  /// In en, this message translates to:
  /// **'Saved settings could not be read. Safe defaults are being used.'**
  String get settingsRecovered;

  /// No description provided for @resetSettingsGroup.
  ///
  /// In en, this message translates to:
  /// **'Reset these settings'**
  String get resetSettingsGroup;

  /// No description provided for @settingsApplyFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not apply settings to the service. Tap to retry.'**
  String get settingsApplyFailed;

  /// No description provided for @saveAiChatHistory.
  ///
  /// In en, this message translates to:
  /// **'Save AI conversations on this device'**
  String get saveAiChatHistory;

  /// No description provided for @permissionGranted.
  ///
  /// In en, this message translates to:
  /// **'Granted'**
  String get permissionGranted;

  /// No description provided for @permissionLimited.
  ///
  /// In en, this message translates to:
  /// **'Limited access'**
  String get permissionLimited;

  /// No description provided for @permissionDenied.
  ///
  /// In en, this message translates to:
  /// **'Not granted. Tap to request access.'**
  String get permissionDenied;

  /// No description provided for @permissionPermanentlyDenied.
  ///
  /// In en, this message translates to:
  /// **'Denied. Tap to open device settings.'**
  String get permissionPermanentlyDenied;

  /// No description provided for @permissionRestricted.
  ///
  /// In en, this message translates to:
  /// **'Restricted by the device'**
  String get permissionRestricted;

  /// No description provided for @permissionUnsupported.
  ///
  /// In en, this message translates to:
  /// **'Unavailable on this platform'**
  String get permissionUnsupported;

  /// No description provided for @selectedFilesAccess.
  ///
  /// In en, this message translates to:
  /// **'Kuymo uses the system file picker. It accesses only files you choose; it does not require access to your entire media library.'**
  String get selectedFilesAccess;

  /// No description provided for @aiOperationFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not finish. Check the selected model, device support, storage and memory budget. Connect power if indexing requires charging, then retry.'**
  String get aiOperationFailed;

  /// No description provided for @noAiModelsAvailable.
  ///
  /// In en, this message translates to:
  /// **'No compatible models are available.'**
  String get noAiModelsAvailable;

  /// No description provided for @aiMessageHint.
  ///
  /// In en, this message translates to:
  /// **'Ask about your videos'**
  String get aiMessageHint;

  /// No description provided for @aiBenchmarkElapsed.
  ///
  /// In en, this message translates to:
  /// **'Benchmark finished in {milliseconds} ms'**
  String aiBenchmarkElapsed(int milliseconds);

  /// No description provided for @aiSend.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get aiSend;

  /// No description provided for @aiDelete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get aiDelete;

  /// No description provided for @aiDownload.
  ///
  /// In en, this message translates to:
  /// **'Download'**
  String get aiDownload;

  /// No description provided for @aiSearch.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get aiSearch;

  /// No description provided for @aiSelectedDocuments.
  ///
  /// In en, this message translates to:
  /// **'Selected files: {count}'**
  String aiSelectedDocuments(int count);

  /// No description provided for @aiToolCreatesCopy.
  ///
  /// In en, this message translates to:
  /// **'Tools create a new file and keep your original. Quiet audio reduction and silence trimming apply when enabled.'**
  String get aiToolCreatesCopy;

  /// No description provided for @aiTrimStart.
  ///
  /// In en, this message translates to:
  /// **'Start time (seconds)'**
  String get aiTrimStart;

  /// No description provided for @aiTrimEnd.
  ///
  /// In en, this message translates to:
  /// **'End time (seconds, empty for full length)'**
  String get aiTrimEnd;

  /// No description provided for @aiOutputSaved.
  ///
  /// In en, this message translates to:
  /// **'Saved on this device: {path}'**
  String aiOutputSaved(String path);

  /// No description provided for @aiChatWelcome.
  ///
  /// In en, this message translates to:
  /// **'Your assistant runs on this device. Choose a model in AI settings to get started.'**
  String get aiChatWelcome;

  /// No description provided for @backendGpu.
  ///
  /// In en, this message translates to:
  /// **'GPU'**
  String get backendGpu;

  /// No description provided for @aiAndroidOnly.
  ///
  /// In en, this message translates to:
  /// **'Local AI features are currently available on Android.'**
  String get aiAndroidOnly;

  /// No description provided for @aiEmbeddingStorageUsage.
  ///
  /// In en, this message translates to:
  /// **'Index storage: {megabytes} MB'**
  String aiEmbeddingStorageUsage(String megabytes);
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
