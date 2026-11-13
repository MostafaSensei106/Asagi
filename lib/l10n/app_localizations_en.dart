// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get zumi => 'Zumi';

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

  @override
  String get compressVideosPrivatelyOnYourDevice =>
      'Compress videos privately, on your device.';

  @override
  String get welcomeToZumi => 'Welcome to Zumi';

  @override
  String get learnHowZumiCompressesYourVideosWithoutEverLeavingYourPhone =>
      'Learn how Zumi compresses your videos without ever leaving your phone.';

  @override
  String get signIn => 'Sign in';

  @override
  String get signInToSyncYourPlanAndKeepYourPurchasesAvailableOnEveryDevice =>
      'Sign in to sync your plan and keep your purchases available on every device.';

  @override
  String get chooseAVideo => 'Choose a video';

  @override
  String get pickAVideoFromYourGalleryToStartCompressing =>
      'Pick a video from your gallery to start compressing.';

  @override
  String get compressionSetup => 'Compression setup';

  @override
  String get chooseResolutionBitrateAndOutputFormatBeforeYouStart =>
      'Choose resolution, bitrate, and output format before you start.';

  @override
  String get compressing => 'Compressing';

  @override
  String get followTheLiveProgressOfYourCompressionJob =>
      'Follow the live progress of your compression job.';

  @override
  String get compressionResult => 'Compression result';

  @override
  String get compareTheBeforeAndAfterSizeThenSaveOrShareTheResult =>
      'Compare the before and after size, then save or share the result.';

  @override
  String get compressionHistory => 'Compression history';

  @override
  String get reviewTheVideosYouHaveCompressedOnThisDevice =>
      'Review the videos you have compressed on this device.';

  @override
  String get settings => 'Settings';

  @override
  String get appearance => 'Appearance';

  @override
  String get themeColorSchemeAndMotionPreferences =>
      'Theme, color scheme, and motion preferences.';

  @override
  String get language => 'Language';

  @override
  String get appLanguageAndTextDirection => 'App language and text direction.';

  @override
  String get compressionDefaults => 'Compression defaults';

  @override
  String get defaultResolutionBitrateAndOutputFormat =>
      'Default resolution, bitrate, and output format.';

  @override
  String get storageCleanup => 'Storage & cleanup';

  @override
  String get storageUsageCacheSizeAndTemporaryFileCleanup =>
      'Storage usage, cache size, and temporary-file cleanup.';

  @override
  String get notifications => 'Notifications';

  @override
  String get jobCompletionAndProductUpdateNotifications =>
      'Job completion and product update notifications.';

  @override
  String get privacy => 'Privacy';

  @override
  String get onDeviceProcessingLocalLogsAndOptionalCrashReports =>
      'On-device processing, local logs, and optional crash reports.';

  @override
  String get aboutZumi => 'About Zumi';

  @override
  String get versionBuildNumberAndApplicationDetails =>
      'Version, build number, and application details.';

  @override
  String get aboutTheDeveloper => 'About the developer';

  @override
  String get theDeveloperAndToolsBehindZumi =>
      'The developer and tools behind Zumi.';

  @override
  String get openSourceLicenses => 'Open-source licenses';

  @override
  String get openSourcePackagesBundledWithZumi =>
      'Open-source packages bundled with Zumi.';

  @override
  String get privacyPolicy => 'Privacy policy';

  @override
  String get howZumiHandlesYourVideosAndData =>
      'How Zumi handles your videos and data.';

  @override
  String get termsOfService => 'Terms of service';

  @override
  String get theTermsThatApplyToZumiAndItsPurchases =>
      'The terms that apply to Zumi and its purchases.';

  @override
  String get dataSafety => 'Data safety';

  @override
  String get summaryOfTheDataZumiCollectsAndWhy =>
      'Summary of the data Zumi collects and why.';

  @override
  String get permissions => 'Permissions';

  @override
  String get runtimePermissionsZumiRequestsAndWhyEachIsNeeded =>
      'Runtime permissions Zumi requests and why each is needed.';

  @override
  String get faq => 'FAQ';

  @override
  String get answersToCommonQuestionsAboutCompressionAndBilling =>
      'Answers to common questions about compression and billing.';

  @override
  String get support => 'Support';

  @override
  String get getHelpWithYourAccountOrAPurchase =>
      'Get help with your account or a purchase.';

  @override
  String get sendFeedback => 'Send feedback';

  @override
  String get reportAProblemOrSuggestAnImprovement =>
      'Report a problem or suggest an improvement.';

  @override
  String get plans => 'Plans';

  @override
  String get comparePlansAndSeeWhatEachOneUnlocks =>
      'Compare plans and see what each one unlocks.';

  @override
  String get planDetails => 'Plan details';

  @override
  String get benefitsLimitsAndPricingForThisPlan =>
      'Benefits, limits, and pricing for this plan.';

  @override
  String get paymentMethods => 'Payment methods';

  @override
  String get supportedWaysToPayIncludingStoreBilling =>
      'Supported ways to pay, including store billing.';

  @override
  String get restorePurchases => 'Restore purchases';

  @override
  String get reApplyAPurchaseMadeOnAnotherDevice =>
      'Re-apply a purchase made on another device.';

  @override
  String get profile => 'Profile';

  @override
  String get yourIdentityPlanStatusAndAccountPreferences =>
      'Your identity, plan status, and account preferences.';

  @override
  String get deleteAccount => 'Delete account';

  @override
  String get permanentlyRemoveYourAccountAndItsServerSideData =>
      'Permanently remove your account and its server-side data.';

  @override
  String get rateZumi => 'Rate Zumi';

  @override
  String get tellOthersHowZumiWorkedForYouOnTheStore =>
      'Tell others how Zumi worked for you on the store.';

  @override
  String get shareZumi => 'Share Zumi';

  @override
  String get recommendZumiToAFriend => 'Recommend Zumi to a friend.';

  @override
  String get settingsGroupAppearance => 'Appearance & language';

  @override
  String get settingsGroupCompression => 'Compression';

  @override
  String get settingsGroupAi => 'On-device AI';

  @override
  String get settingsGroupPrivacy => 'Notifications & privacy';

  @override
  String get settingsGroupPlans => 'Plans & purchases';

  @override
  String get settingsGroupAbout => 'About';

  @override
  String get settingsGroupLegal => 'Legal';

  @override
  String get settingsGroupHelp => 'Help & feedback';

  @override
  String get settingsGroupAccount => 'Account';

  @override
  String get settingsAppearanceSubtitle => 'Theme and app language';

  @override
  String get settingsLanguageSubtitle => 'App language and direction';

  @override
  String get settingsCompressionSubtitle => 'Default quality and format';

  @override
  String get settingsStorageSubtitle => 'Cache and storage usage';

  @override
  String get aiSettings => 'AI settings';

  @override
  String get zumiAssistant => 'Zumi Assistant';

  @override
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere =>
      'A private assistant for your videos is coming soon. You will be able to ask about compression, organization, and saved videos here.';

  @override
  String get settingsAiSubtitle => 'Local models and smart tools';

  @override
  String get exploreLocalModelsAndFutureAiToolsTheseOptionsAreNotActiveYet =>
      'Explore local models and future AI tools. These options are not active yet.';

  @override
  String get localModels => 'Local models';

  @override
  String get aiModelsSubtitle => 'Browse and download supported models';

  @override
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere =>
      'Choose a supported model, download it to this device, and manage installed models here.';

  @override
  String get importAModel => 'Import a model';

  @override
  String get aiImportSubtitle => 'Use a compatible model from your files';

  @override
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt =>
      'Select a compatible local model file and review its requirements before using it.';

  @override
  String get smartFeatures => 'Smart features';

  @override
  String get aiFeaturesSubtitle => 'Compression, organization, and search';

  @override
  String
  get chooseWhichLocalAiSuggestionsToUseForVideoCompressionOrganizationNamingAndSearch =>
      'Choose which local AI suggestions to use for video compression, organization, naming, and search.';

  @override
  String get modelPerformance => 'Model performance';

  @override
  String get aiRuntimeSubtitle => 'Processing and resource preferences';

  @override
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels =>
      'Control the processing backend and resource limits for supported models.';

  @override
  String get conversationSettings => 'Conversation settings';

  @override
  String get aiChatSettingsSubtitle =>
      'Streaming, thinking, and response length';

  @override
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits =>
      'Configure how the assistant responds, including streaming, thinking mode, sampling, and response limits.';

  @override
  String get imagesAndAudio => 'Images and audio';

  @override
  String get aiMediaSubtitle => 'Control multimodal inputs';

  @override
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos =>
      'Choose whether compatible models can analyze selected images and audio from your videos.';

  @override
  String get semanticSearch => 'Semantic search';

  @override
  String get aiSearchSubtitle => 'Embeddings and local indexing';

  @override
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning =>
      'Manage the local embedding model and search index for finding videos and moments by meaning.';

  @override
  String get toolsAndStructuredOutput => 'Tools and structured output';

  @override
  String get aiToolsSubtitle => 'Actions, schemas, and confirmations';

  @override
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation =>
      'Manage supported assistant actions and structured responses. Actions that affect files will require your confirmation.';

  @override
  String get aiGroupModels => 'Models';

  @override
  String get aiGroupExperience => 'Assistant experience';

  @override
  String get aiGroupCapabilities => 'Smart capabilities';

  @override
  String get aiGroupPerformance => 'Performance';

  @override
  String get compressionHistorySubtitle => 'Your compressed video history';

  @override
  String get settingsNotificationsSubtitle => 'Completion and update alerts';

  @override
  String get settingsPrivacySubtitle => 'Your data stays local';

  @override
  String get plansSubtitle => 'Compare plans and upgrade';

  @override
  String get plansMethodsSubtitle => 'Payment methods and billing';

  @override
  String get plansRestoreSubtitle => 'Restore your previous purchase';

  @override
  String get aboutAppSubtitle => 'Version and build details';

  @override
  String get aboutDeveloperSubtitle => 'The developer behind Zumi';

  @override
  String get aboutLicensesSubtitle => 'Open source package licenses';

  @override
  String get legalPrivacySubtitle => 'How data is handled';

  @override
  String get legalTermsSubtitle => 'Rules for using Zumi';

  @override
  String get legalDataSafetySubtitle => 'What data we collect';

  @override
  String get legalPermissionsSubtitle => 'Why we need permissions';

  @override
  String get helpFaqSubtitle => 'Answers to common questions';

  @override
  String get helpSupportSubtitle => 'Reach the developer directly';

  @override
  String get helpFeedbackSubtitle => 'Send us your feedback';

  @override
  String get compressionPickVideo => 'Pick video';

  @override
  String get compressionTargetMb => 'Target size (MB)';

  @override
  String get compressionStart => 'Start compression';

  @override
  String get compressionPause => 'Pause';

  @override
  String get compressionResume => 'Resume';

  @override
  String get compressionViewResult => 'View result';

  @override
  String get compressionSaveGallery => 'Save to gallery';

  @override
  String get compressionShare => 'Share video';

  @override
  String get compressionOriginalSize => 'Original size';

  @override
  String get compressionOutputSize => 'Output size';

  @override
  String get compressionEmptyHistory => 'No compressed videos yet';

  @override
  String get compressionSavedGallery => 'Saved to gallery';

  @override
  String get compressionInvalidTarget =>
      'Enter a target size greater than zero';

  @override
  String get compressionCancelled => 'Compression cancelled';

  @override
  String get compressionTargetExceeded =>
      'This video could not reach the selected size. Try a larger target size.';

  @override
  String get compressionTargetInfeasible =>
      'The selected size is too small for this video. Choose a larger size.';

  @override
  String get compressionPreviewBefore => 'Original preview';

  @override
  String get compressionPreviewAfter => 'Compressed preview';

  @override
  String get compressionPreset => 'Target preset';

  @override
  String get compressionCustom => 'Custom size';

  @override
  String get compressionPreviewUnavailable => 'Preview unavailable';

  @override
  String get compressionAdvanced => 'Advanced controls';

  @override
  String get compressionAutomatic => 'Automatic';

  @override
  String get compressionResolutionLimit => 'Maximum resolution';

  @override
  String get compressionSourceResolution => 'Original resolution';

  @override
  String get compressionFrameRateLimit => 'Maximum frame rate';

  @override
  String get compressionAudioQuality => 'Audio bitrate';

  @override
  String get compressionRemoveAudio => 'Remove audio';

  @override
  String get compressionVideoBitrateLimit => 'Video bitrate ceiling (kbps)';

  @override
  String get compressionHdrPolicy => 'HDR handling';

  @override
  String get compressionHdrConvert => 'Convert to SDR';

  @override
  String get compressionHdrPreserve => 'Keep HDR when supported';

  @override
  String get compressionPlanPreview => 'Before you start';

  @override
  String get compressionPlanLoading => 'Calculating compression plan…';

  @override
  String get compressionPlanResolution => 'Planned resolution';

  @override
  String get compressionPlanVideoBitrate => 'Planned video bitrate';

  @override
  String get compressionPlanAudioBitrate => 'Planned audio bitrate';

  @override
  String get compressionAudioConversionNote =>
      'Re-encoding converts audio to AAC stereo. Dolby Atmos and DTS spatial audio will not be preserved.';

  @override
  String get compressionPlanTooSmall =>
      'This target is too small for a usable video. Increase the size or lower other limits.';

  @override
  String get compressionPlanLowQuality =>
      'The selected target may reduce video quality.';

  @override
  String get compressionPlanAlreadyWithinLimit =>
      'The source is already within the size limit.';

  @override
  String get compressionInvalidBitrate =>
      'Enter a bitrate of at least 150 kbps, or leave blank for automatic';

  @override
  String get compressionInvalidResolution =>
      'Enter an even resolution from 240 to 16384, or leave blank for automatic';

  @override
  String get compressionSeek => 'Video position';

  @override
  String get compressionInterrupted =>
      'A previous compression was interrupted. Its temporary files were cleaned up; you can select the video and try again.';

  @override
  String get compressionDismiss => 'Dismiss';

  @override
  String get compressionClearHistory => 'Clear history';

  @override
  String get compressionClearHistoryConfirm =>
      'Remove all history entries? Saved videos will remain on your device.';

  @override
  String get compressionAttempts => 'Attempts';

  @override
  String get compressionTargetSize => 'Target size';

  @override
  String get compressionOutputResolution => 'Output resolution';

  @override
  String get compressionInvalidVideo =>
      'This video could not be read. Choose another file.';

  @override
  String get compressionInvalidOutput =>
      'The encoded video failed verification. Your original video was not changed.';

  @override
  String get compressionEncoderUnsupported =>
      'This device cannot encode the selected resolution or frame rate. Lower that setting and try again.';

  @override
  String get compressionAudioDecoderUnsupported =>
      'This device cannot decode this audio format for compression. Remove audio or use a supported source.';

  @override
  String get compressionVideoDecoderUnsupported =>
      'This device cannot decode this video format or profile for compression. Choose another source or device.';

  @override
  String get compressionMp4NotStreamable =>
      'The exported MP4 is not ready for streaming. Try another video or device.';

  @override
  String get compressionNoSpace =>
      'There is not enough free storage to compress this video.';

  @override
  String get compressionHdrUnsupported =>
      'This device cannot process the selected HDR mode. Try converting to SDR.';

  @override
  String get compressionGeneralFailure =>
      'Compression could not be completed. Try another setting or video.';

  @override
  String get aboutIdentitySection => 'App identity';

  @override
  String get aboutAppName => 'App name';

  @override
  String get aboutPackageName => 'Package name';

  @override
  String get aboutVersion => 'Version';

  @override
  String get aboutBuildNumber => 'Build number';

  @override
  String get aboutEnvironmentSection => 'Device and build';

  @override
  String get aboutOperatingSystem => 'Operating system';

  @override
  String get aboutOsVersion => 'OS version';

  @override
  String get aboutBuildMode => 'Build mode';

  @override
  String get aboutDebug => 'Debug';

  @override
  String get aboutRelease => 'Release';

  @override
  String get aboutToolchainSection => 'Built with';

  @override
  String get aboutInstallationSection => 'Installation';

  @override
  String get aboutInstaller => 'Installed from';

  @override
  String get aboutInstalledOn => 'Installed on';

  @override
  String get aboutUpdatedOn => 'Updated on';

  @override
  String get aboutUnavailable => 'Unavailable';

  @override
  String get aboutProjectSection => 'Project and support';

  @override
  String get aboutRepository => 'GitHub repository';

  @override
  String get aboutRepositorySubtitle => 'View Zumi source code';

  @override
  String get aboutReadme => 'Read the README';

  @override
  String get aboutReadmeSubtitle => 'Learn about Zumi on GitHub';

  @override
  String get aboutIssues => 'Report an issue';

  @override
  String get aboutIssuesSubtitle => 'View and create GitHub issues';

  @override
  String get aboutLatestRelease => 'Latest release';

  @override
  String get aboutLatestReleaseSubtitle => 'View releases and downloads';

  @override
  String get aboutDonate => 'Support Zumi';

  @override
  String get aboutDonateSubtitle => 'Open the official donation page';

  @override
  String get aboutLinkError => 'Could not open the link. Please try again.';

  @override
  String get aboutDeveloperSection => 'Developer';

  @override
  String get aboutDeveloperName => 'Mostafa Sensei';

  @override
  String get aboutDeveloperProfile => 'GitHub profile';

  @override
  String get aboutDeveloperProfileSubtitle =>
      'See projects and contact details';

  @override
  String get maintenanceInProgress => 'Maintenance in progress';

  @override
  String get maintenanceMessage =>
      'Zumi is temporarily unavailable. Please try again later.';

  @override
  String get comingSoon => 'Coming soon';

  @override
  String get languageName => 'English';

  @override
  String get countryCode => 'US';

  @override
  String countryName(String countryCode) {
    String _temp0 = intl.Intl.selectLogic(countryCode, {
      'DZ': 'Algeria',
      'BH': 'Bahrain',
      'KM': 'Comoros',
      'DJ': 'Djibouti',
      'EG': 'Egypt',
      'IQ': 'Iraq',
      'JO': 'Jordan',
      'KW': 'Kuwait',
      'LB': 'Lebanon',
      'LY': 'Libya',
      'MR': 'Mauritania',
      'MA': 'Morocco',
      'OM': 'Oman',
      'PS': 'Palestinian Territories',
      'QA': 'Qatar',
      'SA': 'Saudi Arabia',
      'SO': 'Somalia',
      'SD': 'Sudan',
      'SY': 'Syria',
      'TN': 'Tunisia',
      'AE': 'United Arab Emirates',
      'YE': 'Yemen',
      'US': 'United States',
      'GB': 'United Kingdom',
      'JP': 'Japan',
      'FR': 'France',
      'DE': 'Germany',
      'ES': 'Spain',
      'TR': 'Türkiye',
      'NL': 'Netherlands',
      'other': 'Country',
    });
    return '$_temp0';
  }
}

/// The translations for English, as used in the United Kingdom (`en_GB`).
class AppLocalizationsEnGb extends AppLocalizationsEn {
  AppLocalizationsEnGb() : super('en_GB');

  @override
  String get zumi => 'Zumi';

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

  @override
  String get compressVideosPrivatelyOnYourDevice =>
      'Compress videos privately, on your device.';

  @override
  String get welcomeToZumi => 'Welcome to Zumi';

  @override
  String get learnHowZumiCompressesYourVideosWithoutEverLeavingYourPhone =>
      'Learn how Zumi compresses your videos without ever leaving your phone.';

  @override
  String get signIn => 'Sign in';

  @override
  String get signInToSyncYourPlanAndKeepYourPurchasesAvailableOnEveryDevice =>
      'Sign in to sync your plan and keep your purchases available on every device.';

  @override
  String get chooseAVideo => 'Choose a video';

  @override
  String get pickAVideoFromYourGalleryToStartCompressing =>
      'Pick a video from your gallery to start compressing.';

  @override
  String get compressionSetup => 'Compression setup';

  @override
  String get chooseResolutionBitrateAndOutputFormatBeforeYouStart =>
      'Choose resolution, bitrate, and output format before you start.';

  @override
  String get compressing => 'Compressing';

  @override
  String get followTheLiveProgressOfYourCompressionJob =>
      'Follow the live progress of your compression job.';

  @override
  String get compressionResult => 'Compression result';

  @override
  String get compareTheBeforeAndAfterSizeThenSaveOrShareTheResult =>
      'Compare the before and after size, then save or share the result.';

  @override
  String get compressionHistory => 'Compression history';

  @override
  String get reviewTheVideosYouHaveCompressedOnThisDevice =>
      'Review the videos you have compressed on this device.';

  @override
  String get settings => 'Settings';

  @override
  String get appearance => 'Appearance';

  @override
  String get themeColorSchemeAndMotionPreferences =>
      'Theme, colour scheme, and motion preferences.';

  @override
  String get language => 'Language';

  @override
  String get appLanguageAndTextDirection => 'App language and text direction.';

  @override
  String get compressionDefaults => 'Compression defaults';

  @override
  String get defaultResolutionBitrateAndOutputFormat =>
      'Default resolution, bitrate, and output format.';

  @override
  String get storageCleanup => 'Storage & cleanup';

  @override
  String get storageUsageCacheSizeAndTemporaryFileCleanup =>
      'Storage usage, cache size, and temporary-file cleanup.';

  @override
  String get notifications => 'Notifications';

  @override
  String get jobCompletionAndProductUpdateNotifications =>
      'Job completion and product update notifications.';

  @override
  String get privacy => 'Privacy';

  @override
  String get onDeviceProcessingLocalLogsAndOptionalCrashReports =>
      'On-device processing, local logs, and optional crash reports.';

  @override
  String get aboutZumi => 'About Zumi';

  @override
  String get versionBuildNumberAndApplicationDetails =>
      'Version, build number, and application details.';

  @override
  String get aboutTheDeveloper => 'About the developer';

  @override
  String get theDeveloperAndToolsBehindZumi =>
      'The developer and tools behind Zumi.';

  @override
  String get openSourceLicenses => 'Open-source licenses';

  @override
  String get openSourcePackagesBundledWithZumi =>
      'Open-source packages bundled with Zumi.';

  @override
  String get privacyPolicy => 'Privacy policy';

  @override
  String get howZumiHandlesYourVideosAndData =>
      'How Zumi handles your videos and data.';

  @override
  String get termsOfService => 'Terms of service';

  @override
  String get theTermsThatApplyToZumiAndItsPurchases =>
      'The terms that apply to Zumi and its purchases.';

  @override
  String get dataSafety => 'Data safety';

  @override
  String get summaryOfTheDataZumiCollectsAndWhy =>
      'Summary of the data Zumi collects and why.';

  @override
  String get permissions => 'Permissions';

  @override
  String get runtimePermissionsZumiRequestsAndWhyEachIsNeeded =>
      'Runtime permissions Zumi requests and why each is needed.';

  @override
  String get faq => 'FAQ';

  @override
  String get answersToCommonQuestionsAboutCompressionAndBilling =>
      'Answers to common questions about compression and billing.';

  @override
  String get support => 'Support';

  @override
  String get getHelpWithYourAccountOrAPurchase =>
      'Get help with your account or a purchase.';

  @override
  String get sendFeedback => 'Send feedback';

  @override
  String get reportAProblemOrSuggestAnImprovement =>
      'Report a problem or suggest an improvement.';

  @override
  String get plans => 'Plans';

  @override
  String get comparePlansAndSeeWhatEachOneUnlocks =>
      'Compare plans and see what each one unlocks.';

  @override
  String get planDetails => 'Plan details';

  @override
  String get benefitsLimitsAndPricingForThisPlan =>
      'Benefits, limits, and pricing for this plan.';

  @override
  String get paymentMethods => 'Payment methods';

  @override
  String get supportedWaysToPayIncludingStoreBilling =>
      'Supported ways to pay, including store billing.';

  @override
  String get restorePurchases => 'Restore purchases';

  @override
  String get reApplyAPurchaseMadeOnAnotherDevice =>
      'Re-apply a purchase made on another device.';

  @override
  String get profile => 'Profile';

  @override
  String get yourIdentityPlanStatusAndAccountPreferences =>
      'Your identity, plan status, and account preferences.';

  @override
  String get deleteAccount => 'Delete account';

  @override
  String get permanentlyRemoveYourAccountAndItsServerSideData =>
      'Permanently remove your account and its server-side data.';

  @override
  String get rateZumi => 'Rate Zumi';

  @override
  String get tellOthersHowZumiWorkedForYouOnTheStore =>
      'Tell others how Zumi worked for you on the store.';

  @override
  String get shareZumi => 'Share Zumi';

  @override
  String get recommendZumiToAFriend => 'Recommend Zumi to a friend.';

  @override
  String get settingsGroupAppearance => 'Appearance & language';

  @override
  String get settingsGroupCompression => 'Compression';

  @override
  String get settingsGroupAi => 'On-device AI';

  @override
  String get settingsGroupPrivacy => 'Notifications & privacy';

  @override
  String get settingsGroupPlans => 'Plans & purchases';

  @override
  String get settingsGroupAbout => 'About';

  @override
  String get settingsGroupLegal => 'Legal';

  @override
  String get settingsGroupHelp => 'Help & feedback';

  @override
  String get settingsGroupAccount => 'Account';

  @override
  String get settingsAppearanceSubtitle => 'Theme and app language';

  @override
  String get settingsLanguageSubtitle => 'App language and direction';

  @override
  String get settingsCompressionSubtitle => 'Default quality and format';

  @override
  String get settingsStorageSubtitle => 'Cache and storage usage';

  @override
  String get aiSettings => 'AI settings';

  @override
  String get zumiAssistant => 'Zumi Assistant';

  @override
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere =>
      'A private assistant for your videos is coming soon. You will be able to ask about compression, organisation, and saved videos here.';

  @override
  String get settingsAiSubtitle => 'Local models and smart tools';

  @override
  String get exploreLocalModelsAndFutureAiToolsTheseOptionsAreNotActiveYet =>
      'Explore local models and future AI tools. These options are not active yet.';

  @override
  String get localModels => 'Local models';

  @override
  String get aiModelsSubtitle => 'Browse and download supported models';

  @override
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere =>
      'Choose a supported model, download it to this device, and manage installed models here.';

  @override
  String get importAModel => 'Import a model';

  @override
  String get aiImportSubtitle => 'Use a compatible model from your files';

  @override
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt =>
      'Select a compatible local model file and review its requirements before using it.';

  @override
  String get smartFeatures => 'Smart features';

  @override
  String get aiFeaturesSubtitle => 'Compression, organisation, and search';

  @override
  String
  get chooseWhichLocalAiSuggestionsToUseForVideoCompressionOrganizationNamingAndSearch =>
      'Choose which local AI suggestions to use for video compression, organisation, naming, and search.';

  @override
  String get modelPerformance => 'Model performance';

  @override
  String get aiRuntimeSubtitle => 'Processing and resource preferences';

  @override
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels =>
      'Control the processing backend and resource limits for supported models.';

  @override
  String get conversationSettings => 'Conversation settings';

  @override
  String get aiChatSettingsSubtitle =>
      'Streaming, thinking, and response length';

  @override
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits =>
      'Configure how the assistant responds, including streaming, thinking mode, sampling, and response limits.';

  @override
  String get imagesAndAudio => 'Images and audio';

  @override
  String get aiMediaSubtitle => 'Control multimodal inputs';

  @override
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos =>
      'Choose whether compatible models can analyze selected images and audio from your videos.';

  @override
  String get semanticSearch => 'Semantic search';

  @override
  String get aiSearchSubtitle => 'Embeddings and local indexing';

  @override
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning =>
      'Manage the local embedding model and search index for finding videos and moments by meaning.';

  @override
  String get toolsAndStructuredOutput => 'Tools and structured output';

  @override
  String get aiToolsSubtitle => 'Actions, schemas, and confirmations';

  @override
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation =>
      'Manage supported assistant actions and structured responses. Actions that affect files will require your confirmation.';

  @override
  String get aiGroupModels => 'Models';

  @override
  String get aiGroupExperience => 'Assistant experience';

  @override
  String get aiGroupCapabilities => 'Smart capabilities';

  @override
  String get aiGroupPerformance => 'Performance';

  @override
  String get compressionHistorySubtitle => 'Your compressed video history';

  @override
  String get settingsNotificationsSubtitle => 'Completion and update alerts';

  @override
  String get settingsPrivacySubtitle => 'Your data stays local';

  @override
  String get plansSubtitle => 'Compare plans and upgrade';

  @override
  String get plansMethodsSubtitle => 'Payment methods and billing';

  @override
  String get plansRestoreSubtitle => 'Restore your previous purchase';

  @override
  String get aboutAppSubtitle => 'Version and build details';

  @override
  String get aboutDeveloperSubtitle => 'The developer behind Zumi';

  @override
  String get aboutLicensesSubtitle => 'Open source package licenses';

  @override
  String get legalPrivacySubtitle => 'How data is handled';

  @override
  String get legalTermsSubtitle => 'Rules for using Zumi';

  @override
  String get legalDataSafetySubtitle => 'What data we collect';

  @override
  String get legalPermissionsSubtitle => 'Why we need permissions';

  @override
  String get helpFaqSubtitle => 'Answers to common questions';

  @override
  String get helpSupportSubtitle => 'Reach the developer directly';

  @override
  String get helpFeedbackSubtitle => 'Send us your feedback';

  @override
  String get compressionPickVideo => 'Pick video';

  @override
  String get compressionTargetMb => 'Target size (MB)';

  @override
  String get compressionStart => 'Start compression';

  @override
  String get compressionPause => 'Pause';

  @override
  String get compressionResume => 'Resume';

  @override
  String get compressionViewResult => 'View result';

  @override
  String get compressionSaveGallery => 'Save to gallery';

  @override
  String get compressionShare => 'Share video';

  @override
  String get compressionOriginalSize => 'Original size';

  @override
  String get compressionOutputSize => 'Output size';

  @override
  String get compressionEmptyHistory => 'No compressed videos yet';

  @override
  String get compressionSavedGallery => 'Saved to gallery';

  @override
  String get compressionInvalidTarget =>
      'Enter a target size greater than zero';

  @override
  String get compressionCancelled => 'Compression cancelled';

  @override
  String get compressionTargetExceeded =>
      'This video could not reach the selected size. Try a larger target size.';

  @override
  String get compressionTargetInfeasible =>
      'The selected size is too small for this video. Choose a larger size.';

  @override
  String get compressionPreviewBefore => 'Original preview';

  @override
  String get compressionPreviewAfter => 'Compressed preview';

  @override
  String get compressionPreset => 'Target preset';

  @override
  String get compressionCustom => 'Custom size';

  @override
  String get compressionPreviewUnavailable => 'Preview unavailable';

  @override
  String get compressionAdvanced => 'Advanced controls';

  @override
  String get compressionAutomatic => 'Automatic';

  @override
  String get compressionResolutionLimit => 'Maximum resolution';

  @override
  String get compressionSourceResolution => 'Original resolution';

  @override
  String get compressionFrameRateLimit => 'Maximum frame rate';

  @override
  String get compressionAudioQuality => 'Audio bitrate';

  @override
  String get compressionRemoveAudio => 'Remove audio';

  @override
  String get compressionVideoBitrateLimit => 'Video bitrate ceiling (kbps)';

  @override
  String get compressionHdrPolicy => 'HDR handling';

  @override
  String get compressionHdrConvert => 'Convert to SDR';

  @override
  String get compressionHdrPreserve => 'Keep HDR when supported';

  @override
  String get compressionPlanPreview => 'Before you start';

  @override
  String get compressionPlanLoading => 'Calculating compression plan…';

  @override
  String get compressionPlanResolution => 'Planned resolution';

  @override
  String get compressionPlanVideoBitrate => 'Planned video bitrate';

  @override
  String get compressionPlanAudioBitrate => 'Planned audio bitrate';

  @override
  String get compressionAudioConversionNote =>
      'Re-encoding converts audio to AAC stereo. Dolby Atmos and DTS spatial audio will not be preserved.';

  @override
  String get compressionPlanTooSmall =>
      'This target is too small for a usable video. Increase the size or lower other limits.';

  @override
  String get compressionPlanLowQuality =>
      'The selected target may reduce video quality.';

  @override
  String get compressionPlanAlreadyWithinLimit =>
      'The source is already within the size limit.';

  @override
  String get compressionInvalidBitrate =>
      'Enter a bitrate of at least 150 kbps, or leave blank for automatic';

  @override
  String get compressionInvalidResolution =>
      'Enter an even resolution from 240 to 16384, or leave blank for automatic';

  @override
  String get compressionSeek => 'Video position';

  @override
  String get compressionInterrupted =>
      'A previous compression was interrupted. Its temporary files were cleaned up; you can select the video and try again.';

  @override
  String get compressionDismiss => 'Dismiss';

  @override
  String get compressionClearHistory => 'Clear history';

  @override
  String get compressionClearHistoryConfirm =>
      'Remove all history entries? Saved videos will remain on your device.';

  @override
  String get compressionAttempts => 'Attempts';

  @override
  String get compressionTargetSize => 'Target size';

  @override
  String get compressionOutputResolution => 'Output resolution';

  @override
  String get compressionInvalidVideo =>
      'This video could not be read. Choose another file.';

  @override
  String get compressionInvalidOutput =>
      'The encoded video failed verification. Your original video was not changed.';

  @override
  String get compressionEncoderUnsupported =>
      'This device cannot encode the selected resolution or frame rate. Lower that setting and try again.';

  @override
  String get compressionAudioDecoderUnsupported =>
      'This device cannot decode this audio format for compression. Remove audio or use a supported source.';

  @override
  String get compressionVideoDecoderUnsupported =>
      'This device cannot decode this video format or profile for compression. Choose another source or device.';

  @override
  String get compressionMp4NotStreamable =>
      'The exported MP4 is not ready for streaming. Try another video or device.';

  @override
  String get compressionNoSpace =>
      'There is not enough free storage to compress this video.';

  @override
  String get compressionHdrUnsupported =>
      'This device cannot process the selected HDR mode. Try converting to SDR.';

  @override
  String get compressionGeneralFailure =>
      'Compression could not be completed. Try another setting or video.';

  @override
  String get aboutIdentitySection => 'App identity';

  @override
  String get aboutAppName => 'App name';

  @override
  String get aboutPackageName => 'Package name';

  @override
  String get aboutVersion => 'Version';

  @override
  String get aboutBuildNumber => 'Build number';

  @override
  String get aboutEnvironmentSection => 'Device and build';

  @override
  String get aboutOperatingSystem => 'Operating system';

  @override
  String get aboutOsVersion => 'OS version';

  @override
  String get aboutBuildMode => 'Build mode';

  @override
  String get aboutDebug => 'Debug';

  @override
  String get aboutRelease => 'Release';

  @override
  String get aboutToolchainSection => 'Built with';

  @override
  String get aboutInstallationSection => 'Installation';

  @override
  String get aboutInstaller => 'Installed from';

  @override
  String get aboutInstalledOn => 'Installed on';

  @override
  String get aboutUpdatedOn => 'Updated on';

  @override
  String get aboutUnavailable => 'Unavailable';

  @override
  String get aboutProjectSection => 'Project and support';

  @override
  String get aboutRepository => 'GitHub repository';

  @override
  String get aboutRepositorySubtitle => 'View Zumi source code';

  @override
  String get aboutReadme => 'Read the README';

  @override
  String get aboutReadmeSubtitle => 'Learn about Zumi on GitHub';

  @override
  String get aboutIssues => 'Report an issue';

  @override
  String get aboutIssuesSubtitle => 'View and create GitHub issues';

  @override
  String get aboutLatestRelease => 'Latest release';

  @override
  String get aboutLatestReleaseSubtitle => 'View releases and downloads';

  @override
  String get aboutDonate => 'Support Zumi';

  @override
  String get aboutDonateSubtitle => 'Open the official donation page';

  @override
  String get aboutLinkError => 'Could not open the link. Please try again.';

  @override
  String get aboutDeveloperSection => 'Developer';

  @override
  String get aboutDeveloperName => 'Mostafa Sensei';

  @override
  String get aboutDeveloperProfile => 'GitHub profile';

  @override
  String get aboutDeveloperProfileSubtitle =>
      'See projects and contact details';

  @override
  String get maintenanceInProgress => 'Maintenance in progress';

  @override
  String get maintenanceMessage =>
      'Zumi is temporarily unavailable. Please try again later.';

  @override
  String get comingSoon => 'Coming soon';

  @override
  String get languageName => 'English';

  @override
  String get countryCode => 'GB';

  @override
  String countryName(String countryCode) {
    String _temp0 = intl.Intl.selectLogic(countryCode, {
      'DZ': 'Algeria',
      'BH': 'Bahrain',
      'KM': 'Comoros',
      'DJ': 'Djibouti',
      'EG': 'Egypt',
      'IQ': 'Iraq',
      'JO': 'Jordan',
      'KW': 'Kuwait',
      'LB': 'Lebanon',
      'LY': 'Libya',
      'MR': 'Mauritania',
      'MA': 'Morocco',
      'OM': 'Oman',
      'PS': 'Palestinian Territories',
      'QA': 'Qatar',
      'SA': 'Saudi Arabia',
      'SO': 'Somalia',
      'SD': 'Sudan',
      'SY': 'Syria',
      'TN': 'Tunisia',
      'AE': 'United Arab Emirates',
      'YE': 'Yemen',
      'US': 'United States',
      'GB': 'United Kingdom',
      'JP': 'Japan',
      'FR': 'France',
      'DE': 'Germany',
      'ES': 'Spain',
      'TR': 'Türkiye',
      'NL': 'Netherlands',
      'other': 'Country',
    });
    return '$_temp0';
  }
}

/// The translations for English, as used in the United States (`en_US`).
class AppLocalizationsEnUs extends AppLocalizationsEn {
  AppLocalizationsEnUs() : super('en_US');

  @override
  String get zumi => 'Zumi';

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

  @override
  String get compressVideosPrivatelyOnYourDevice =>
      'Compress videos privately, on your device.';

  @override
  String get welcomeToZumi => 'Welcome to Zumi';

  @override
  String get learnHowZumiCompressesYourVideosWithoutEverLeavingYourPhone =>
      'Learn how Zumi compresses your videos without ever leaving your phone.';

  @override
  String get signIn => 'Sign in';

  @override
  String get signInToSyncYourPlanAndKeepYourPurchasesAvailableOnEveryDevice =>
      'Sign in to sync your plan and keep your purchases available on every device.';

  @override
  String get chooseAVideo => 'Choose a video';

  @override
  String get pickAVideoFromYourGalleryToStartCompressing =>
      'Pick a video from your gallery to start compressing.';

  @override
  String get compressionSetup => 'Compression setup';

  @override
  String get chooseResolutionBitrateAndOutputFormatBeforeYouStart =>
      'Choose resolution, bitrate, and output format before you start.';

  @override
  String get compressing => 'Compressing';

  @override
  String get followTheLiveProgressOfYourCompressionJob =>
      'Follow the live progress of your compression job.';

  @override
  String get compressionResult => 'Compression result';

  @override
  String get compareTheBeforeAndAfterSizeThenSaveOrShareTheResult =>
      'Compare the before and after size, then save or share the result.';

  @override
  String get compressionHistory => 'Compression history';

  @override
  String get reviewTheVideosYouHaveCompressedOnThisDevice =>
      'Review the videos you have compressed on this device.';

  @override
  String get settings => 'Settings';

  @override
  String get appearance => 'Appearance';

  @override
  String get themeColorSchemeAndMotionPreferences =>
      'Theme, color scheme, and motion preferences.';

  @override
  String get language => 'Language';

  @override
  String get appLanguageAndTextDirection => 'App language and text direction.';

  @override
  String get compressionDefaults => 'Compression defaults';

  @override
  String get defaultResolutionBitrateAndOutputFormat =>
      'Default resolution, bitrate, and output format.';

  @override
  String get storageCleanup => 'Storage & cleanup';

  @override
  String get storageUsageCacheSizeAndTemporaryFileCleanup =>
      'Storage usage, cache size, and temporary-file cleanup.';

  @override
  String get notifications => 'Notifications';

  @override
  String get jobCompletionAndProductUpdateNotifications =>
      'Job completion and product update notifications.';

  @override
  String get privacy => 'Privacy';

  @override
  String get onDeviceProcessingLocalLogsAndOptionalCrashReports =>
      'On-device processing, local logs, and optional crash reports.';

  @override
  String get aboutZumi => 'About Zumi';

  @override
  String get versionBuildNumberAndApplicationDetails =>
      'Version, build number, and application details.';

  @override
  String get aboutTheDeveloper => 'About the developer';

  @override
  String get theDeveloperAndToolsBehindZumi =>
      'The developer and tools behind Zumi.';

  @override
  String get openSourceLicenses => 'Open-source licenses';

  @override
  String get openSourcePackagesBundledWithZumi =>
      'Open-source packages bundled with Zumi.';

  @override
  String get privacyPolicy => 'Privacy policy';

  @override
  String get howZumiHandlesYourVideosAndData =>
      'How Zumi handles your videos and data.';

  @override
  String get termsOfService => 'Terms of service';

  @override
  String get theTermsThatApplyToZumiAndItsPurchases =>
      'The terms that apply to Zumi and its purchases.';

  @override
  String get dataSafety => 'Data safety';

  @override
  String get summaryOfTheDataZumiCollectsAndWhy =>
      'Summary of the data Zumi collects and why.';

  @override
  String get permissions => 'Permissions';

  @override
  String get runtimePermissionsZumiRequestsAndWhyEachIsNeeded =>
      'Runtime permissions Zumi requests and why each is needed.';

  @override
  String get faq => 'FAQ';

  @override
  String get answersToCommonQuestionsAboutCompressionAndBilling =>
      'Answers to common questions about compression and billing.';

  @override
  String get support => 'Support';

  @override
  String get getHelpWithYourAccountOrAPurchase =>
      'Get help with your account or a purchase.';

  @override
  String get sendFeedback => 'Send feedback';

  @override
  String get reportAProblemOrSuggestAnImprovement =>
      'Report a problem or suggest an improvement.';

  @override
  String get plans => 'Plans';

  @override
  String get comparePlansAndSeeWhatEachOneUnlocks =>
      'Compare plans and see what each one unlocks.';

  @override
  String get planDetails => 'Plan details';

  @override
  String get benefitsLimitsAndPricingForThisPlan =>
      'Benefits, limits, and pricing for this plan.';

  @override
  String get paymentMethods => 'Payment methods';

  @override
  String get supportedWaysToPayIncludingStoreBilling =>
      'Supported ways to pay, including store billing.';

  @override
  String get restorePurchases => 'Restore purchases';

  @override
  String get reApplyAPurchaseMadeOnAnotherDevice =>
      'Re-apply a purchase made on another device.';

  @override
  String get profile => 'Profile';

  @override
  String get yourIdentityPlanStatusAndAccountPreferences =>
      'Your identity, plan status, and account preferences.';

  @override
  String get deleteAccount => 'Delete account';

  @override
  String get permanentlyRemoveYourAccountAndItsServerSideData =>
      'Permanently remove your account and its server-side data.';

  @override
  String get rateZumi => 'Rate Zumi';

  @override
  String get tellOthersHowZumiWorkedForYouOnTheStore =>
      'Tell others how Zumi worked for you on the store.';

  @override
  String get shareZumi => 'Share Zumi';

  @override
  String get recommendZumiToAFriend => 'Recommend Zumi to a friend.';

  @override
  String get settingsGroupAppearance => 'Appearance & language';

  @override
  String get settingsGroupCompression => 'Compression';

  @override
  String get settingsGroupAi => 'On-device AI';

  @override
  String get settingsGroupPrivacy => 'Notifications & privacy';

  @override
  String get settingsGroupPlans => 'Plans & purchases';

  @override
  String get settingsGroupAbout => 'About';

  @override
  String get settingsGroupLegal => 'Legal';

  @override
  String get settingsGroupHelp => 'Help & feedback';

  @override
  String get settingsGroupAccount => 'Account';

  @override
  String get settingsAppearanceSubtitle => 'Theme and app language';

  @override
  String get settingsLanguageSubtitle => 'App language and direction';

  @override
  String get settingsCompressionSubtitle => 'Default quality and format';

  @override
  String get settingsStorageSubtitle => 'Cache and storage usage';

  @override
  String get aiSettings => 'AI settings';

  @override
  String get zumiAssistant => 'Zumi Assistant';

  @override
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere =>
      'A private assistant for your videos is coming soon. You will be able to ask about compression, organization, and saved videos here.';

  @override
  String get settingsAiSubtitle => 'Local models and smart tools';

  @override
  String get exploreLocalModelsAndFutureAiToolsTheseOptionsAreNotActiveYet =>
      'Explore local models and future AI tools. These options are not active yet.';

  @override
  String get localModels => 'Local models';

  @override
  String get aiModelsSubtitle => 'Browse and download supported models';

  @override
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere =>
      'Choose a supported model, download it to this device, and manage installed models here.';

  @override
  String get importAModel => 'Import a model';

  @override
  String get aiImportSubtitle => 'Use a compatible model from your files';

  @override
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt =>
      'Select a compatible local model file and review its requirements before using it.';

  @override
  String get smartFeatures => 'Smart features';

  @override
  String get aiFeaturesSubtitle => 'Compression, organization, and search';

  @override
  String
  get chooseWhichLocalAiSuggestionsToUseForVideoCompressionOrganizationNamingAndSearch =>
      'Choose which local AI suggestions to use for video compression, organization, naming, and search.';

  @override
  String get modelPerformance => 'Model performance';

  @override
  String get aiRuntimeSubtitle => 'Processing and resource preferences';

  @override
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels =>
      'Control the processing backend and resource limits for supported models.';

  @override
  String get conversationSettings => 'Conversation settings';

  @override
  String get aiChatSettingsSubtitle =>
      'Streaming, thinking, and response length';

  @override
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits =>
      'Configure how the assistant responds, including streaming, thinking mode, sampling, and response limits.';

  @override
  String get imagesAndAudio => 'Images and audio';

  @override
  String get aiMediaSubtitle => 'Control multimodal inputs';

  @override
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos =>
      'Choose whether compatible models can analyze selected images and audio from your videos.';

  @override
  String get semanticSearch => 'Semantic search';

  @override
  String get aiSearchSubtitle => 'Embeddings and local indexing';

  @override
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning =>
      'Manage the local embedding model and search index for finding videos and moments by meaning.';

  @override
  String get toolsAndStructuredOutput => 'Tools and structured output';

  @override
  String get aiToolsSubtitle => 'Actions, schemas, and confirmations';

  @override
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation =>
      'Manage supported assistant actions and structured responses. Actions that affect files will require your confirmation.';

  @override
  String get aiGroupModels => 'Models';

  @override
  String get aiGroupExperience => 'Assistant experience';

  @override
  String get aiGroupCapabilities => 'Smart capabilities';

  @override
  String get aiGroupPerformance => 'Performance';

  @override
  String get compressionHistorySubtitle => 'Your compressed video history';

  @override
  String get settingsNotificationsSubtitle => 'Completion and update alerts';

  @override
  String get settingsPrivacySubtitle => 'Your data stays local';

  @override
  String get plansSubtitle => 'Compare plans and upgrade';

  @override
  String get plansMethodsSubtitle => 'Payment methods and billing';

  @override
  String get plansRestoreSubtitle => 'Restore your previous purchase';

  @override
  String get aboutAppSubtitle => 'Version and build details';

  @override
  String get aboutDeveloperSubtitle => 'The developer behind Zumi';

  @override
  String get aboutLicensesSubtitle => 'Open source package licenses';

  @override
  String get legalPrivacySubtitle => 'How data is handled';

  @override
  String get legalTermsSubtitle => 'Rules for using Zumi';

  @override
  String get legalDataSafetySubtitle => 'What data we collect';

  @override
  String get legalPermissionsSubtitle => 'Why we need permissions';

  @override
  String get helpFaqSubtitle => 'Answers to common questions';

  @override
  String get helpSupportSubtitle => 'Reach the developer directly';

  @override
  String get helpFeedbackSubtitle => 'Send us your feedback';

  @override
  String get compressionPickVideo => 'Pick video';

  @override
  String get compressionTargetMb => 'Target size (MB)';

  @override
  String get compressionStart => 'Start compression';

  @override
  String get compressionPause => 'Pause';

  @override
  String get compressionResume => 'Resume';

  @override
  String get compressionViewResult => 'View result';

  @override
  String get compressionSaveGallery => 'Save to gallery';

  @override
  String get compressionShare => 'Share video';

  @override
  String get compressionOriginalSize => 'Original size';

  @override
  String get compressionOutputSize => 'Output size';

  @override
  String get compressionEmptyHistory => 'No compressed videos yet';

  @override
  String get compressionSavedGallery => 'Saved to gallery';

  @override
  String get compressionInvalidTarget =>
      'Enter a target size greater than zero';

  @override
  String get compressionCancelled => 'Compression cancelled';

  @override
  String get compressionTargetExceeded =>
      'This video could not reach the selected size. Try a larger target size.';

  @override
  String get compressionTargetInfeasible =>
      'The selected size is too small for this video. Choose a larger size.';

  @override
  String get compressionPreviewBefore => 'Original preview';

  @override
  String get compressionPreviewAfter => 'Compressed preview';

  @override
  String get compressionPreset => 'Target preset';

  @override
  String get compressionCustom => 'Custom size';

  @override
  String get compressionPreviewUnavailable => 'Preview unavailable';

  @override
  String get compressionAdvanced => 'Advanced controls';

  @override
  String get compressionAutomatic => 'Automatic';

  @override
  String get compressionResolutionLimit => 'Maximum resolution';

  @override
  String get compressionSourceResolution => 'Original resolution';

  @override
  String get compressionFrameRateLimit => 'Maximum frame rate';

  @override
  String get compressionAudioQuality => 'Audio bitrate';

  @override
  String get compressionRemoveAudio => 'Remove audio';

  @override
  String get compressionVideoBitrateLimit => 'Video bitrate ceiling (kbps)';

  @override
  String get compressionHdrPolicy => 'HDR handling';

  @override
  String get compressionHdrConvert => 'Convert to SDR';

  @override
  String get compressionHdrPreserve => 'Keep HDR when supported';

  @override
  String get compressionPlanPreview => 'Before you start';

  @override
  String get compressionPlanLoading => 'Calculating compression plan…';

  @override
  String get compressionPlanResolution => 'Planned resolution';

  @override
  String get compressionPlanVideoBitrate => 'Planned video bitrate';

  @override
  String get compressionPlanAudioBitrate => 'Planned audio bitrate';

  @override
  String get compressionAudioConversionNote =>
      'Re-encoding converts audio to AAC stereo. Dolby Atmos and DTS spatial audio will not be preserved.';

  @override
  String get compressionPlanTooSmall =>
      'This target is too small for a usable video. Increase the size or lower other limits.';

  @override
  String get compressionPlanLowQuality =>
      'The selected target may reduce video quality.';

  @override
  String get compressionPlanAlreadyWithinLimit =>
      'The source is already within the size limit.';

  @override
  String get compressionInvalidBitrate =>
      'Enter a bitrate of at least 150 kbps, or leave blank for automatic';

  @override
  String get compressionInvalidResolution =>
      'Enter an even resolution from 240 to 16384, or leave blank for automatic';

  @override
  String get compressionSeek => 'Video position';

  @override
  String get compressionInterrupted =>
      'A previous compression was interrupted. Its temporary files were cleaned up; you can select the video and try again.';

  @override
  String get compressionDismiss => 'Dismiss';

  @override
  String get compressionClearHistory => 'Clear history';

  @override
  String get compressionClearHistoryConfirm =>
      'Remove all history entries? Saved videos will remain on your device.';

  @override
  String get compressionAttempts => 'Attempts';

  @override
  String get compressionTargetSize => 'Target size';

  @override
  String get compressionOutputResolution => 'Output resolution';

  @override
  String get compressionInvalidVideo =>
      'This video could not be read. Choose another file.';

  @override
  String get compressionInvalidOutput =>
      'The encoded video failed verification. Your original video was not changed.';

  @override
  String get compressionEncoderUnsupported =>
      'This device cannot encode the selected resolution or frame rate. Lower that setting and try again.';

  @override
  String get compressionAudioDecoderUnsupported =>
      'This device cannot decode this audio format for compression. Remove audio or use a supported source.';

  @override
  String get compressionVideoDecoderUnsupported =>
      'This device cannot decode this video format or profile for compression. Choose another source or device.';

  @override
  String get compressionMp4NotStreamable =>
      'The exported MP4 is not ready for streaming. Try another video or device.';

  @override
  String get compressionNoSpace =>
      'There is not enough free storage to compress this video.';

  @override
  String get compressionHdrUnsupported =>
      'This device cannot process the selected HDR mode. Try converting to SDR.';

  @override
  String get compressionGeneralFailure =>
      'Compression could not be completed. Try another setting or video.';

  @override
  String get aboutIdentitySection => 'App identity';

  @override
  String get aboutAppName => 'App name';

  @override
  String get aboutPackageName => 'Package name';

  @override
  String get aboutVersion => 'Version';

  @override
  String get aboutBuildNumber => 'Build number';

  @override
  String get aboutEnvironmentSection => 'Device and build';

  @override
  String get aboutOperatingSystem => 'Operating system';

  @override
  String get aboutOsVersion => 'OS version';

  @override
  String get aboutBuildMode => 'Build mode';

  @override
  String get aboutDebug => 'Debug';

  @override
  String get aboutRelease => 'Release';

  @override
  String get aboutToolchainSection => 'Built with';

  @override
  String get aboutInstallationSection => 'Installation';

  @override
  String get aboutInstaller => 'Installed from';

  @override
  String get aboutInstalledOn => 'Installed on';

  @override
  String get aboutUpdatedOn => 'Updated on';

  @override
  String get aboutUnavailable => 'Unavailable';

  @override
  String get aboutProjectSection => 'Project and support';

  @override
  String get aboutRepository => 'GitHub repository';

  @override
  String get aboutRepositorySubtitle => 'View Zumi source code';

  @override
  String get aboutReadme => 'Read the README';

  @override
  String get aboutReadmeSubtitle => 'Learn about Zumi on GitHub';

  @override
  String get aboutIssues => 'Report an issue';

  @override
  String get aboutIssuesSubtitle => 'View and create GitHub issues';

  @override
  String get aboutLatestRelease => 'Latest release';

  @override
  String get aboutLatestReleaseSubtitle => 'View releases and downloads';

  @override
  String get aboutDonate => 'Support Zumi';

  @override
  String get aboutDonateSubtitle => 'Open the official donation page';

  @override
  String get aboutLinkError => 'Could not open the link. Please try again.';

  @override
  String get aboutDeveloperSection => 'Developer';

  @override
  String get aboutDeveloperName => 'Mostafa Sensei';

  @override
  String get aboutDeveloperProfile => 'GitHub profile';

  @override
  String get aboutDeveloperProfileSubtitle =>
      'See projects and contact details';

  @override
  String get maintenanceInProgress => 'Maintenance in progress';

  @override
  String get maintenanceMessage =>
      'Zumi is temporarily unavailable. Please try again later.';

  @override
  String get comingSoon => 'Coming soon';

  @override
  String get languageName => 'English';

  @override
  String get countryCode => 'US';

  @override
  String countryName(String countryCode) {
    String _temp0 = intl.Intl.selectLogic(countryCode, {
      'DZ': 'Algeria',
      'BH': 'Bahrain',
      'KM': 'Comoros',
      'DJ': 'Djibouti',
      'EG': 'Egypt',
      'IQ': 'Iraq',
      'JO': 'Jordan',
      'KW': 'Kuwait',
      'LB': 'Lebanon',
      'LY': 'Libya',
      'MR': 'Mauritania',
      'MA': 'Morocco',
      'OM': 'Oman',
      'PS': 'Palestinian Territories',
      'QA': 'Qatar',
      'SA': 'Saudi Arabia',
      'SO': 'Somalia',
      'SD': 'Sudan',
      'SY': 'Syria',
      'TN': 'Tunisia',
      'AE': 'United Arab Emirates',
      'YE': 'Yemen',
      'US': 'United States',
      'GB': 'United Kingdom',
      'JP': 'Japan',
      'FR': 'France',
      'DE': 'Germany',
      'ES': 'Spain',
      'TR': 'Türkiye',
      'NL': 'Netherlands',
      'other': 'Country',
    });
    return '$_temp0';
  }
}
