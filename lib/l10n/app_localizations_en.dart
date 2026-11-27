// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get kuymo => 'Kuymo';

  @override
  String get downloadFile => 'Download File';

  @override
  String fileOpenedInBrowser(String fileName) {
    return 'File opened in browser: $fileName';
  }

  @override
  String fileSavedToGallery(String fileName) {
    return 'File saved to gallery: $fileName';
  }

  @override
  String fileSavedToDocuments(String fileName) {
    return 'File saved to documents: $fileName';
  }

  @override
  String get fileIsAlreadySaved => 'File is already saved';

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
  String get addressLineCannotBeEmpty => 'Address line cannot be empty';

  @override
  String get addressLineIsTooLong => 'Address line is too long';

  @override
  String get specialCharactersAreNotAllowed =>
      'Special characters are not allowed';

  @override
  String get emojisAreNotAllowed => 'Emojis are not allowed';

  @override
  String get cityCannotBeEmpty => 'City cannot be empty';

  @override
  String get cityNameIsTooLong => 'City name is too long';

  @override
  String get cityContainsInvalidSpecialCharacters =>
      'City contains invalid special characters';

  @override
  String get addressLabelCannotBeEmpty => 'Address label cannot be empty';

  @override
  String get addressLabelIsTooLong => 'Address label is too long';

  @override
  String get emailCannotBeEmpty => 'Email cannot be empty';

  @override
  String get invalidEmailFormat => 'Invalid email format';

  @override
  String get emailContainsInvalidCharacters =>
      'Email contains invalid characters';

  @override
  String get emailMustContain => 'Email must contain @';

  @override
  String get emailMustBeInLowercase => 'Email must be in lowercase';

  @override
  String get arabicCharactersAreNotAllowed =>
      'Arabic characters are not allowed';

  @override
  String get emojisAreNotAllowedInEmail => 'Emojis are not allowed in email';

  @override
  String get phoneNumberCannotBeEmpty => 'Phone number cannot be empty';

  @override
  String get invalidPhoneNumber => 'Invalid phone number';

  @override
  String get phoneNumberMustBeAtLeast11Digits =>
      'Phone number must be at least 11 digits';

  @override
  String get nameCannotBeEmpty => 'Name cannot be empty';

  @override
  String get invalidName => 'Invalid name';

  @override
  String get nameMustBeAtLeast3Characters =>
      'Name must be at least 3 characters';

  @override
  String get nameCannotExceed20Characters => 'Name cannot exceed 20 characters';

  @override
  String get nameContainsInvalidSpecialCharacters =>
      'Name contains invalid special characters';

  @override
  String get emojisAreNotAllowedInName => 'Emojis are not allowed in name';

  @override
  String get passwordCannotBeEmpty => 'Password cannot be empty';

  @override
  String get passwordMustContainUppercaseLowercaseNumberAndSpecialCharacter =>
      'Password must contain uppercase, lowercase, number, and special character';

  @override
  String get passwordMustBeAtLeast8CharactersLong =>
      'Password must be at least 8 characters long';

  @override
  String get noInternetConnection => 'No internet connection';

  @override
  String get internetConnectionRestored => 'Internet connection restored';

  @override
  String get retry => 'Retry';

  @override
  String get confirm => 'Confirm';

  @override
  String get ok => 'OK';

  @override
  String get compressVideosPrivatelyOnYourDevice =>
      'Compress videos privately, on your device.';

  @override
  String get welcomeToKuymo => 'Welcome to Kuymo';

  @override
  String get learnHowKuymoCompressesYourVideosWithoutEverLeavingYourPhone =>
      'Learn how Kuymo compresses your videos without ever leaving your phone.';

  @override
  String get signIn => 'Sign in';

  @override
  String get chooseAVideo => 'Choose a video';

  @override
  String get preparingSelectedVideo => 'Getting your video ready';

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
  String get system => 'System';

  @override
  String get matchYourDeviceSetting => 'Match your device setting.';

  @override
  String get light => 'Light';

  @override
  String get alwaysUseTheLightTheme => 'Always use the light theme.';

  @override
  String get dark => 'Dark';

  @override
  String get alwaysUseTheDarkTheme => 'Always use the dark theme.';

  @override
  String get theme => 'Theme';

  @override
  String get themePreview => 'Theme preview';

  @override
  String get surfacesTextAndAccents => 'Surfaces, text, and accents';

  @override
  String get highContrast => 'High contrast';

  @override
  String get colorScheme => 'Color scheme';

  @override
  String get automaticColorScheme => 'Auto';

  @override
  String get sharperTextAndSurfaces => 'Pure black and white surfaces ';

  @override
  String get kuymoEngine => 'Kuymo Engine';

  @override
  String get targetSizeOptimizer => 'Target-Size Video Optimizer';

  @override
  String get encodingFormat => 'Encoding • H.265 / HEVC';

  @override
  String get compressAction => 'Compress';

  @override
  String get primaryColor => 'Primary';

  @override
  String get secondaryColor => 'Secondary';

  @override
  String get tertiaryColor => 'Tertiary';

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
  String get aboutKuymo => 'About Kuymo';

  @override
  String get versionBuildNumberAndApplicationDetails =>
      'Version, build number, and application details.';

  @override
  String get aboutTheDeveloper => 'About the developer';

  @override
  String get theDeveloperAndToolsBehindKuymo =>
      'The developer and tools behind Kuymo.';

  @override
  String get openSourcePackagesBundledWithKuymo =>
      'Open-source packages bundled with Kuymo.';

  @override
  String get privacyPolicy => 'Privacy policy';

  @override
  String get howKuymoHandlesYourVideosAndData =>
      'How Kuymo handles your videos and data.';

  @override
  String get termsOfService => 'Terms of service';

  @override
  String get dataSafety => 'Data safety';

  @override
  String get summaryOfTheDataKuymoCollectsAndWhy =>
      'Summary of the datan Kuymo collects and why.';

  @override
  String get permissions => 'Permissions';

  @override
  String get runtimePermissionsKuymoRequestsAndWhyEachIsNeeded =>
      'Runtime permissions Kuymo requests and why each is needed.';

  @override
  String get faq => 'FAQ';

  @override
  String get support => 'Support';

  @override
  String get sendFeedback => 'Send feedback';

  @override
  String get reportAProblemOrSuggestAnImprovement =>
      'Report a problem or suggest an improvement.';

  @override
  String get profile => 'Profile';

  @override
  String get deleteAccount => 'Delete account';

  @override
  String get permanentlyRemoveYourAccountAndItsServerSideData =>
      'Permanently remove your account and its server-side data.';

  @override
  String get rateKuymo => 'Rate Kuymo';

  @override
  String get tellOthersHowKuymoWorkedForYouOnTheStore =>
      'Tell others how Kuymo worked for you on the store.';

  @override
  String get shareKuymo => 'Share Kuymo';

  @override
  String get recommendKuymoToAFriend => 'Recommend Kuymo to a friend.';

  @override
  String get appearanceLanguage => 'Appearance & language';

  @override
  String get compression => 'Compression';

  @override
  String get onDeviceAI => 'On-device AI';

  @override
  String get notificationsPrivacy => 'Notifications & privacy';

  @override
  String get about => 'About';

  @override
  String get legal => 'Legal';

  @override
  String get helpFeedback => 'Help & feedback';

  @override
  String get account => 'Account';

  @override
  String get themeAndAppLanguage => 'Theme and app language';

  @override
  String get appLanguageAndDirection => 'App language and direction';

  @override
  String get defaultQualityAndFormat => 'Default quality and format';

  @override
  String get cacheAndStorageUsage => 'Cache and storage usage';

  @override
  String get aiSettings => 'AI settings';

  @override
  String get kuymoAssistant => 'Kuymo Assistant';

  @override
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere =>
      'A private assistant for your videos is coming soon. You will be able to ask about compression, organization, and saved videos here.';

  @override
  String get localModelsAndSmartTools => 'Local models and smart tools';

  @override
  String get exploreLocalModelsAndFutureAIToolsTheseOptionsAreNotActiveYet =>
      'Explore local models and future AI tools. These options are not active yet.';

  @override
  String get localModels => 'Local models';

  @override
  String get browseAndDownloadSupportedModels =>
      'Browse and download supported models';

  @override
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere =>
      'Choose a supported model, download it to this device, and manage installed models here.';

  @override
  String get importAModel => 'Import a model';

  @override
  String get useACompatibleModelFromYourFiles =>
      'Use a compatible model from your files';

  @override
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt =>
      'Select a compatible local model file and review its requirements before using it.';

  @override
  String get smartFeatures => 'Smart features';

  @override
  String get compressionOrganizationAndSearch =>
      'Compression, organization, and search';

  @override
  String
  get chooseWhichLocalAISuggestionsToUseForVideoCompressionOrganizationNamingAndSearch =>
      'Choose which local AI suggestions to use for video compression, organization, naming, and search.';

  @override
  String get modelPerformance => 'Model performance';

  @override
  String get processingAndResourcePreferences =>
      'Processing and resource preferences';

  @override
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels =>
      'Control the processing backend and resource limits for supported models.';

  @override
  String get conversationSettings => 'Conversation settings';

  @override
  String get streamingThinkingAndResponseLength =>
      'Streaming, thinking, and response length';

  @override
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits =>
      'Configure how the assistant responds, including streaming, thinking mode, sampling, and response limits.';

  @override
  String get imagesAndAudio => 'Images and audio';

  @override
  String get controlMultimodalInputs => 'Control multimodal inputs';

  @override
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos =>
      'Choose whether compatible models can analyze selected images and audio from your videos.';

  @override
  String get semanticSearch => 'Semantic search';

  @override
  String get embeddingsAndLocalIndexing => 'Embeddings and local indexing';

  @override
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning =>
      'Manage the local embedding model and search index for finding videos and moments by meaning.';

  @override
  String get toolsAndStructuredOutput => 'Tools and structured output';

  @override
  String get actionsSchemasAndConfirmations =>
      'Actions, schemas, and confirmations';

  @override
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation =>
      'Manage supported assistant actions and structured responses. Actions that affect files will require your confirmation.';

  @override
  String get models => 'Models';

  @override
  String get assistantExperience => 'Assistant experience';

  @override
  String get smartCapabilities => 'Smart capabilities';

  @override
  String get performance => 'Performance';

  @override
  String get yourCompressedVideoHistory => 'Your compressed video history';

  @override
  String get completionAndUpdateAlerts => 'Completion and update alerts';

  @override
  String get yourDataStaysLocal => 'Your data stays local';

  @override
  String get versionAndBuildDetails => 'Version and build details';

  @override
  String get theDeveloperBehindKuymo => 'The developer behind Kuymo';

  @override
  String get openSourcePackageLicenses => 'Open source package licenses';

  @override
  String get howDataIsHandled => 'How data is handled';

  @override
  String get rulesForUsingKuymo => 'Rules for using Kuymo';

  @override
  String get whatDataWeCollect => 'What data we collect';

  @override
  String get whyWeNeedPermissions => 'Why we need permissions';

  @override
  String get answersToCommonQuestions => 'Answers to common questions';

  @override
  String get reachTheDeveloperDirectly => 'Reach the developer directly';

  @override
  String get sendUsYourFeedback => 'Send us your feedback';

  @override
  String get pickVideo => 'Pick video';

  @override
  String get targetSizeMB => 'Target size (MB)';

  @override
  String get startCompression => 'Start compression';

  @override
  String get pause => 'Pause';

  @override
  String get resume => 'Resume';

  @override
  String get viewResult => 'View result';

  @override
  String get saveToGallery => 'Save to gallery';

  @override
  String get shareVideo => 'Share video';

  @override
  String get originalSize => 'Original size';

  @override
  String get outputSize => 'Output size';

  @override
  String get noCompressedVideosYet => 'No compressed videos yet';

  @override
  String get savedToGallery => 'Saved to gallery';

  @override
  String get enterATargetSizeGreaterThanZero =>
      'Enter a target size greater than zero';

  @override
  String get compressionCancelled => 'Compression cancelled';

  @override
  String get thisVideoCouldNotReachTheSelectedSizeTryALargerTargetSize =>
      'This video could not reach the selected size. Try a larger target size.';

  @override
  String get theSelectedSizeIsTooSmallForThisVideoChooseALargerSize =>
      'The selected size is too small for this video. Choose a larger size.';

  @override
  String get originalPreview => 'Original preview';

  @override
  String get compressedPreview => 'Compressed preview';

  @override
  String get targetPreset => 'Target preset';

  @override
  String get customSize => 'Custom size';

  @override
  String get previewUnavailable => 'Preview unavailable';

  @override
  String get advancedControls => 'Advanced controls';

  @override
  String get automatic => 'Automatic';

  @override
  String get maximumResolution => 'Maximum resolution';

  @override
  String get originalResolution => 'Original resolution';

  @override
  String get maximumFrameRate => 'Maximum frame rate';

  @override
  String get audioBitrate => 'Audio bitrate';

  @override
  String get removeAudio => 'Remove audio';

  @override
  String get videoBitrateCeilingKbps => 'Video bitrate ceiling (kbps)';

  @override
  String get hdrHandling => 'HDR handling';

  @override
  String get convertToSDR => 'Convert to SDR';

  @override
  String get keepHDRWhenSupported => 'Keep HDR when supported';

  @override
  String get beforeYouStart => 'Before you start';

  @override
  String get calculatingCompressionPlan => 'Calculating compression plan…';

  @override
  String get plannedResolution => 'Planned resolution';

  @override
  String get plannedVideoBitrate => 'Planned video bitrate';

  @override
  String get plannedAudioBitrate => 'Planned audio bitrate';

  @override
  String
  get reEncodingConvertsAudioToAACStereoDolbyAtmosAndDTSSpatialAudioWillNotBePreserved =>
      'Re-encoding converts audio to AAC stereo. Dolby Atmos and DTS spatial audio will not be preserved.';

  @override
  String
  get thisTargetIsTooSmallForAUsableVideoIncreaseTheSizeOrLowerOtherLimits =>
      'This target is too small for a usable video. Increase the size or lower other limits.';

  @override
  String get theSelectedTargetMayReduceVideoQuality =>
      'The selected target may reduce video quality.';

  @override
  String get theSourceIsAlreadyWithinTheSizeLimit =>
      'The source is already within the size limit.';

  @override
  String get enterABitrateOfAtLeast150KbpsOrLeaveBlankForAutomatic =>
      'Enter a bitrate of at least 150 kbps, or leave blank for automatic';

  @override
  String get enterAnEvenResolutionFrom240To16384OrLeaveBlankForAutomatic =>
      'Enter an even resolution from 240 to 16384, or leave blank for automatic';

  @override
  String get videoPosition => 'Video position';

  @override
  String
  get aPreviousCompressionWasInterruptedItsTemporaryFilesWereCleanedUpYouCanSelectTheVideoAndTryAgain =>
      'A previous compression was interrupted. Its temporary files were cleaned up; you can select the video and try again.';

  @override
  String get dismiss => 'Dismiss';

  @override
  String get clearHistory => 'Clear history';

  @override
  String get removeAllHistoryEntriesSavedVideosWillRemainOnYourDevice =>
      'Remove all history entries? Saved videos will remain on your device.';

  @override
  String get attempts => 'Attempts';

  @override
  String get targetSize => 'Target size';

  @override
  String get outputResolution => 'Output resolution';

  @override
  String get thisVideoCouldNotBeReadChooseAnotherFile =>
      'This video could not be read. Choose another file.';

  @override
  String get theEncodedVideoFailedVerificationYourOriginalVideoWasNotChanged =>
      'The encoded video failed verification. Your original video was not changed.';

  @override
  String
  get thisDeviceCannotEncodeTheSelectedResolutionOrFrameRateLowerThatSettingAndTryAgain =>
      'This device cannot encode the selected resolution or frame rate. Lower that setting and try again.';

  @override
  String
  get thisDeviceCannotDecodeThisAudioFormatForCompressionRemoveAudioOrUseASupportedSource =>
      'This device cannot decode this audio format for compression. Remove audio or use a supported source.';

  @override
  String
  get thisDeviceCannotDecodeThisVideoFormatOrProfileForCompressionChooseAnotherSourceOrDevice =>
      'This device cannot decode this video format or profile for compression. Choose another source or device.';

  @override
  String get theExportedMP4IsNotReadyForStreamingTryAnotherVideoOrDevice =>
      'The exported MP4 is not ready for streaming. Try another video or device.';

  @override
  String get thereIsNotEnoughFreeStorageToCompressThisVideo =>
      'There is not enough free storage to compress this video.';

  @override
  String get thisDeviceCannotProcessTheSelectedHDRModeTryConvertingToSDR =>
      'This device cannot process the selected HDR mode. Try converting to SDR.';

  @override
  String get compressionCouldNotBeCompletedTryAnotherSettingOrVideo =>
      'Compression could not be completed. Try another setting or video.';

  @override
  String get appIdentity => 'App identity';

  @override
  String get appName => 'App name';

  @override
  String get packageName => 'Package name';

  @override
  String get version => 'Version';

  @override
  String get buildNumber => 'Build number';

  @override
  String get deviceAndBuild => 'Device and build';

  @override
  String get operatingSystem => 'Operating system';

  @override
  String get osVersion => 'OS version';

  @override
  String get buildMode => 'Build mode';

  @override
  String get debug => 'Debug';

  @override
  String get release => 'Release';

  @override
  String get builtWith => 'Built with';

  @override
  String get installation => 'Installation';

  @override
  String get installedFrom => 'Installed from';

  @override
  String get installedOn => 'Installed on';

  @override
  String get updatedOn => 'Updated on';

  @override
  String get unavailable => 'Unavailable';

  @override
  String get projectAndSupport => 'Project and support';

  @override
  String get githubRepository => 'GitHub repository';

  @override
  String get viewKuymoSourceCode => 'View Kuymo source code';

  @override
  String get readTheREADME => 'Read the README';

  @override
  String get learnAboutKuymoOnGitHub => 'Learn about Kuymo on GitHub';

  @override
  String get reportAnIssue => 'Report an issue';

  @override
  String get viewAndCreateGitHubIssues => 'View and create GitHub issues';

  @override
  String get latestRelease => 'Latest release';

  @override
  String get viewReleasesAndDownloads => 'View releases and downloads';

  @override
  String get supportKuymo => 'Support Kuymo';

  @override
  String get openTheOfficialDonationPage => 'Open the official donation page';

  @override
  String get couldNotOpenTheLinkPleaseTryAgain =>
      'Could not open the link. Please try again.';

  @override
  String get developer => 'Developer';

  @override
  String get mostafaSensei => 'Mostafa Sensei';

  @override
  String get githubProfile => 'GitHub profile';

  @override
  String get seeProjectsAndContactDetails => 'See projects and contact details';

  @override
  String get maintenanceInProgress => 'Maintenance in progress';

  @override
  String get kuymoIsTemporarilyUnavailablePleaseTryAgainLater =>
      'Kuymo is temporarily unavailable. Please try again later.';

  @override
  String get comingSoon => 'Coming soon';

  @override
  String get loading => 'Loading…';

  @override
  String get pleaseWait => 'Please wait…';

  @override
  String get interruptedCompressionJobs => 'Interrupted compression jobs';

  @override
  String get interruptedJobsDescription =>
      'You can resume these jobs from compression. Cleanup removes their temporary files and saved job state.';

  @override
  String get noInterruptedJobs => 'No interrupted jobs found.';

  @override
  String get cleanInterruptedJobs => 'Clean interrupted files';

  @override
  String get cleaning => 'Cleaning…';

  @override
  String get cleanInterruptedJobsTitle => 'Clean interrupted jobs?';

  @override
  String get cleanInterruptedJobsConfirmation =>
      'This removes .inprogress files and job_state.json from interrupted jobs only.';

  @override
  String get cancel => 'Cancel';

  @override
  String get clean => 'Clean';

  @override
  String get openSourceLicenses => 'Open Source Licenses';

  @override
  String get storageJobsLoadFailed => 'Interrupted jobs could not be loaded.';

  @override
  String get cleanupInterruptedJobsFailed =>
      'The interrupted files could not be cleaned.';

  @override
  String get languageName => 'English';

  @override
  String get countryCode => 'US';

  @override
  String countryName(String countryCode) {
    String _temp0 = intl.Intl.selectLogic(countryCode, {
      'AE': 'United Arab Emirates',
      'AT': 'Austria',
      'AU': 'Australia',
      'BE': 'Belgium',
      'BH': 'Bahrain',
      'BR': 'Brazil',
      'CA': 'Canada',
      'CH': 'Switzerland',
      'CN': 'China',
      'DE': 'Germany',
      'DJ': 'Djibouti',
      'DZ': 'Algeria',
      'EG': 'Egypt',
      'ES': 'Spain',
      'FR': 'France',
      'GB': 'United Kingdom',
      'HK': 'Hong Kong SAR China',
      'ID': 'Indonesia',
      'IQ': 'Iraq',
      'IT': 'Italy',
      'JO': 'Jordan',
      'JP': 'Japan',
      'KM': 'Comoros',
      'KR': 'South Korea',
      'KW': 'Kuwait',
      'LB': 'Lebanon',
      'LY': 'Libya',
      'MA': 'Morocco',
      'MR': 'Mauritania',
      'MX': 'Mexico',
      'NL': 'Netherlands',
      'OM': 'Oman',
      'PL': 'Poland',
      'PS': 'Palestinian Territories',
      'PT': 'Portugal',
      'QA': 'Qatar',
      'RU': 'Russia',
      'SA': 'Saudi Arabia',
      'SD': 'Sudan',
      'SE': 'Sweden',
      'SG': 'Singapore',
      'SO': 'Somalia',
      'SY': 'Syria',
      'TH': 'Thailand',
      'TN': 'Tunisia',
      'TR': 'Türkiye',
      'TW': 'Taiwan',
      'US': 'United States',
      'VN': 'Vietnam',
      'YE': 'Yemen',
      'other': 'Country',
    });
    return '$_temp0';
  }

  @override
  String get losslessVisualQuality => 'Lossless visual quality';

  @override
  String get upTo90PercentSizeReduction => 'Up to 90% size reduction';

  @override
  String get instantPreview => 'Instant preview';

  @override
  String
  get zeroCloudUploadsYourVideosAndPersonalMemoriesNeverLeaveYourDeviceHardware =>
      'Zero cloud uploads. Your videos and personal memories never leave your device.';

  @override
  String get fullyOffline => '100% offline';

  @override
  String get noTracking => 'No tracking';

  @override
  String get zeroCloudServers => 'Zero cloud servers';

  @override
  String get nativeEngineSpeed => 'Native compression engine';

  @override
  String get nativeEngineDescription =>
      'Uses Android’s native media engine to compress videos on your device.';

  @override
  String get h264AndHevc => 'H.264 & HEVC';

  @override
  String get av1Support => 'AV1 support';

  @override
  String get batchQueuing => 'Batch queuing';

  @override
  String get continueLabel => 'Continue';

  @override
  String
  get foundInterruptedCompressionJobsYouCanResumeThemWithTheSameSettingsOrDeleteThem =>
      'Found interrupted compression jobs. You can resume them with the same settings or delete them.';

  @override
  String get originalFileIsMissingDeleteTheJobToCleanUpTemporaryFiles =>
      'Original file is missing · delete the job to clean up temporary files';

  @override
  String get deleteInterruptedJob => 'Delete interrupted job';

  @override
  String get whatsappAlgorithmBadge => '16MB cap · 720p';

  @override
  String get whatsappPresetDescription =>
      'Tuned to WhatsApp\'s strict limits to avoid failed sends.';

  @override
  String get whatsappHdAlgorithmBadge => '1080p HD';

  @override
  String get whatsappHdPresetDescription =>
      'The highest clarity WhatsApp allows in HD media mode.';

  @override
  String get instagramReelsAlgorithmBadge => '5 Mbps cap · 1080p';

  @override
  String get instagramReelsPresetDescription =>
      'Capped at 5 Mbps to protect the video from Instagram\'s aggressive compression.';

  @override
  String get tikTokAlgorithmBadge => '60fps · 6 Mbps cap';

  @override
  String get tikTokPresetDescription =>
      'A balanced mix of motion quality and processing speed on TikTok.';

  @override
  String get discordAlgorithmBadge => '10MB cap';

  @override
  String get discordPresetDescription =>
      'Avoids the \"Your files are too powerful\" message and ensures instant uploads.';

  @override
  String get xAlgorithmBadge => 'Forced faststart';

  @override
  String get xPresetDescription =>
      'Places the moov atom at the start of the file so playback starts instantly in the feed.';

  @override
  String get facebookAlgorithmBadge => 'Constrained VBR · 1080p';

  @override
  String get facebookPresetDescription =>
      'A constrained bitrate protects image sharpness in the feed and Reels.';

  @override
  String get youTubeShortsAlgorithmBadge => 'High bitrate · 1080p';

  @override
  String get youTubeShortsPresetDescription =>
      'Fast upload prep that keeps the highest possible detail and quality.';

  @override
  String get emailAlgorithmBadge => 'True 25MB cap';

  @override
  String get emailPresetDescription =>
      'A definitive fix for exceeding email attachment limits.';

  @override
  String get anySize => 'Any size';

  @override
  String get manualControl => 'Manual control';

  @override
  String get kuymoIsStudyingThePlatformAlgorithmAndCalculatingTheBudget =>
      '🐾 Kuymo is studying the platform\'s algorithm and calculating the budget...';

  @override
  String get customControlMode => 'Custom control mode';

  @override
  String
  get youSetTheTargetSizeManuallyTheEngineWillApplyTheHighestPossibleQualityWithinThatCap =>
      'You set the target size manually. The engine will apply the highest possible resolution and quality within that cap.';

  @override
  String kuymoIsPuzzledAnImpossibleTargetForTheNameCap(String name) {
    return 'Kuymo is puzzled (impossible target for the $name cap)';
  }

  @override
  String
  theVideoIsTooLongToFitWithinTheSizeCapWithoutSevereDistortionWeSuggestTrimmingTheVideoOrChoosingAnotherPlatformWithAHigherCap(
    String size,
  ) {
    return 'The video is too long to fit within the $size cap without severe image distortion. We suggest trimming the video or choosing another platform with a higher cap.';
  }

  @override
  String get kuymoAlertProtectingQualityFromDistortion =>
      'Kuymo alert: protecting quality from distortion';

  @override
  String
  theNameBudgetIsTightForThisDurationSoWeLoweredTheResolutionToWidthHeightToPreventPixelScatterAndEnsureSmoothPlayback(
    String name,
    int width,
    int height,
  ) {
    return 'The $name budget is tight for this duration, so we lowered the resolution to $width×$height to prevent pixel scatter and ensure smooth playback.';
  }

  @override
  String adjustingTheCapForName(String name) {
    return 'Adjusting the cap for $name';
  }

  @override
  String
  theBaseCapIsVeryTightSoTheTargetWasAutomaticallyRaisedToTargetMbMbToProduceAClearAcceptableVideo(
    String targetMb,
  ) {
    return 'The base cap is very tight, so the target was automatically raised to $targetMb MB to produce a clear, acceptable video.';
  }

  @override
  String tunedForTheNameAlgorithm(String name) {
    return 'Tuned for the $name algorithm';
  }

  @override
  String get exactMatch => 'Exact match';

  @override
  String get targetPlatformOrSize => 'Target platform or size';

  @override
  String
  get setAutomaticallyForThePlatformChangingTheNumberSwitchesToCustomMode =>
      'Set automatically for the platform (changing the number switches to custom mode)';

  @override
  String get termsOfServiceFullText =>
      'Kuymo is free and open source. Video processing runs on your device. You retain ownership of your content. The app is provided without a guarantee of any particular output size or quality.';

  @override
  String get termsCopiedToClipboard => 'Terms copied to clipboard';

  @override
  String get termsAcceptanceLicenseTitle => '1. Acceptance & License';

  @override
  String get termsAcceptanceLicenseBody =>
      'Kuymo is free and open source. All features are available to everyone, and video processing runs locally on your devices.';

  @override
  String get termsContentOwnershipTitle => '2. 100% Content Ownership';

  @override
  String get termsContentOwnershipBody =>
      'You retain all copyrights and ownership over your videos. Kuymo does not transmit, store, or claim any rights to your media files.';

  @override
  String get termsLocalOnDeviceProcessingTitle =>
      '3. Local On-Device Processing';

  @override
  String get termsLocalOnDeviceProcessingBody =>
      'All compression pipelines run completely on your device hardware without external server dependencies or remote media processing.';

  @override
  String get termsDisclaimersAndFairUseTitle => '5. Disclaimers & Fair Use';

  @override
  String get termsDisclaimersAndFairUseBody =>
      'The software is provided \"as is.\" You are responsible for ensuring you have proper rights to the video content you process.';

  @override
  String get version12November2026 => 'Version 1.2 • November 2026';

  @override
  String get videosAndPhotos => 'Videos and Photos';

  @override
  String
  get processedExclusivelyOnDeviceMediaFilesAreNeverTransmittedToExternalServersOrThirdPartyPlatforms =>
      'Processed exclusively on-device. Media files are never transmitted to external servers or third-party platforms.';

  @override
  String get appPerformanceAndCrashLogs => 'App Performance & Crash Logs';

  @override
  String
  get optionalNonIdentifiableCrashLogsAndStackTracesUsedSolelyForDiagnosingBugsAndOptimizingStability =>
      'Optional non-identifiable crash logs and stack traces used solely for diagnosing bugs and optimizing stability.';

  @override
  String get deviceOrOtherIdentifiers => 'Device or Other Identifiers';

  @override
  String
  get noAdvertisingIdsImeiNumbersMacAddressesOrPersistentHardwareIdentifiersAreGathered =>
      'No advertising IDs, IMEI numbers, MAC addresses, or persistent hardware identifiers are gathered.';

  @override
  String get storeSafetySummary => 'Store Safety Summary';

  @override
  String get noDataSharedWithThirdParties =>
      'No data shared with third parties';

  @override
  String get noUserDataCollectedForAdvertising =>
      'No user data collected for advertising';

  @override
  String get youCanRequestDataDeletionAtAnyTime =>
      'You can request data deletion at any time';

  @override
  String get dataCollectionBreakdown => 'Data Collection Breakdown';

  @override
  String get optionalOnly => 'Optional Only';

  @override
  String get notCollected => 'Not Collected';

  @override
  String get zeroCloudUploads => 'Zero Cloud Uploads';

  @override
  String get videosNeverLeaveLocalMemoryOrStorageDuringProcessing =>
      'Videos never leave local memory or storage during processing.';

  @override
  String get noAdvertisingIds => 'No Advertising IDs';

  @override
  String get noAdSdksUserFingerprintingOrCommercialTrackingCookies =>
      'No ad SDKs, user fingerprinting, or commercial tracking cookies.';

  @override
  String get oneHundredPercentUserGoverned => '100% User Governed';

  @override
  String get allCacheAndHistoryCanBePurgedWithASingleTapInSettings =>
      'All cache and history can be purged with a single tap in settings.';

  @override
  String get lastUpdatedNovember2026 => 'Last updated: November 2026';

  @override
  String get detailedPrivacyPolicies => 'Detailed Privacy Policies';

  @override
  String get videoProcessingCommitmentTitle => '1. Video Processing Commitment';

  @override
  String get videoProcessingCommitmentBody =>
      'Kuymo was built with a fundamental architectural guarantee: your videos, clips, and audio tracks are encoded exclusively on your device hardware using local native codecs. At no point is your media streamed, stored, or processed on external cloud infrastructure.';

  @override
  String get informationWeNeverCollectTitle =>
      '2. Information We Never Collect';

  @override
  String get informationWeNeverCollectBody =>
      'We do not collect names, email addresses (unless you explicitly contact customer support), phone numbers, contacts, device locations, biometric identifiers, or visual contents of your media library.';

  @override
  String get optionalDiagnosticsTitle => '3. Optional Diagnostics';

  @override
  String get optionalDiagnosticsBody =>
      'You may optionally enable anonymous crash reporting to help us identify and fix bugs. These reports contain only non-identifying operating system versions, device models, and exception stack traces, never media content.';

  @override
  String get dataDeletionAndStorageHygieneTitle =>
      '5. Data Deletion & Storage Hygiene';

  @override
  String get dataDeletionAndStorageHygieneBody =>
      'All compression history records and temporary preview files reside strictly in sandboxed application directories. You can wipe all history and cached frames at any time directly through Storage Settings.';

  @override
  String get copyTerms => 'Copy Terms';

  @override
  String get compressionIntelligence => 'Compression Intelligence';

  @override
  String get smartBitrateRecommender => 'Smart Bitrate Recommender';

  @override
  String get bitrateRecommenderDescription => 'Allocates bitrate by motion.';

  @override
  String get bitrateRecommender => 'Bitrate recommender';

  @override
  String get sceneAwareKeyframePlacement => 'Scene-Aware Keyframe Placement';

  @override
  String get sceneKeyframeDescription => 'Places keyframes at scene changes.';

  @override
  String get sceneKeyframes => 'Scene keyframes';

  @override
  String get cameraSensorDenoising => 'Camera Sensor De-Noising';

  @override
  String get noiseReductionDescription => 'Reduces low-light image noise.';

  @override
  String get noiseReduction => 'Noise reduction';

  @override
  String get silentAudioTrimming => 'Silent Audio Trimming';

  @override
  String get silentAudioDescription => 'Skips silent audio sections.';

  @override
  String get silentTrim => 'Silent trim';

  @override
  String get subjectFacePriority => 'Subject & Face Priority';

  @override
  String get facePriorityDescription => 'Improves quality around faces.';

  @override
  String get facePriority => 'Face priority';

  @override
  String get hardwareAcceleration => 'Hardware Acceleration';

  @override
  String get computeBackend => 'Compute Backend';

  @override
  String get backendAuto => 'Auto (Neural Engine / GPU)';

  @override
  String get backendVulkan => 'Vulkan / GPU Compute';

  @override
  String get backendCpu => 'CPU Multi-Threading';

  @override
  String cpuThreadAllocation(int count) {
    return 'CPU Thread Allocation: $count Threads';
  }

  @override
  String cpuThreadLabel(int count) {
    return '$count Threads';
  }

  @override
  String get memoryBudgetCap => 'Memory Budget Cap';

  @override
  String get batterySaverMode => 'Battery Saver Mode';

  @override
  String get batterySaverDescription => 'Limits compute to save battery.';

  @override
  String get benchmarking => 'Testing…';

  @override
  String get benchmarkEngineNow => 'Benchmark Engine Now';

  @override
  String get benchmarkResult =>
      'Benchmark score: 4,820 tokens/sec • Hardware optimal';

  @override
  String get interactionStyle => 'Interaction Style';

  @override
  String get streamTextOutput => 'Stream Text Output';

  @override
  String get streamTextDescription => 'Shows the reply as generated.';

  @override
  String get showReasoningThinking => 'Show Reasoning / Thinking';

  @override
  String get showReasoningDescription =>
      'Displays reasoning inside chat bubbles.';

  @override
  String get generationSampling => 'Generation Sampling';

  @override
  String creativityTemperature(String value) {
    return 'Creativity & Temperature: $value';
  }

  @override
  String get maxGenerationTokens => 'Max Generation Tokens';

  @override
  String tokensCount(int count) {
    return '$count Tokens';
  }

  @override
  String get visualSampling => 'Visual Sampling';

  @override
  String get analyzeVideoThumbnails => 'Analyze Video Thumbnails';

  @override
  String get analyzeThumbnailsDescription =>
      'Finds scenes, actions, and lighting.';

  @override
  String get keyframeSamplingDensity => 'Keyframe Sampling Density';

  @override
  String framePerSecond(int count) {
    return '$count Frame/sec';
  }

  @override
  String framesPerSecond(int count) {
    return '$count Frames/sec';
  }

  @override
  String get audioTranscription => 'Audio Transcription';

  @override
  String get speechToText => 'Speech-to-Text Transcription';

  @override
  String get speechToTextDescription => 'Creates subtitles from audio.';

  @override
  String get spokenLanguageAutoDetect => 'Spoken Language Auto-Detect';

  @override
  String get spokenLanguageDescription =>
      'Detects spoken language automatically.';

  @override
  String get semanticIndexRebuilt =>
      'Semantic video search index rebuilt (142 videos indexed)';

  @override
  String get vectorDatabaseStatus => 'Vector Database Status';

  @override
  String videosIndexed(int count) {
    return '$count Videos Indexed';
  }

  @override
  String get embeddingStorage =>
      'Embedding dimension: 384-dim • Storage used: 12.4 MB';

  @override
  String get rebuilding => 'Rebuilding…';

  @override
  String get rebuildIndex => 'Rebuild Index';

  @override
  String get indexingPreferences => 'Indexing Preferences';

  @override
  String get enableSemanticSearch => 'Enable Semantic Search';

  @override
  String get semanticSearchDescription => 'Finds videos using natural phrases.';

  @override
  String get indexOnlyWhenCharging => 'Index Only When Charging';

  @override
  String get indexChargingDescription => 'Indexes videos while charging only.';

  @override
  String get assistantCapabilities => 'Assistant Capabilities';

  @override
  String get directVideoTrimming => 'Direct Video Trimming';

  @override
  String get directTrimmingDescription => 'Trims videos without re-encoding.';

  @override
  String get videoTrimmer => 'Video trimmer';

  @override
  String get audioTrackExtraction => 'Audio Track Extraction';

  @override
  String get audioExtractionDescription =>
      'Exports audio without video encoding.';

  @override
  String get audioExtractor => 'Audio extractor';

  @override
  String get metadataScrubber => 'Metadata Scrubber';

  @override
  String get metadataScrubberDescription => 'Removes personal media metadata.';

  @override
  String get metadataScrubberToast => 'Metadata scrubber';

  @override
  String get safetyGuardrails => 'Safety & Guardrails';

  @override
  String get requireConfirmation => 'Require Confirmation For Changes';

  @override
  String get requireConfirmationDescription =>
      'Confirms changes before file edits.';

  @override
  String get safetyConfirmation => 'Safety confirmation';

  @override
  String get sandboxedScratchpad => 'Sandboxed Temp Scratchpad';

  @override
  String get sandboxedScratchpadDescription =>
      'Keeps temporary edits isolated.';

  @override
  String get sandboxedScratchpadToast => 'Sandboxed scratchpad';

  @override
  String get enabled => 'enabled';

  @override
  String get disabled => 'disabled';

  @override
  String get supportedOnDeviceModels => 'Supported On-Device Models';

  @override
  String get kuymoBitrateOptimizer => 'Kuymo Bitrate Optimizer (0.2B)';

  @override
  String get localRateControlDescription =>
      'Local neural rate-control model for optimal scene quantization.';

  @override
  String get mobileNetSceneClassifier => 'MobileNetV4 Scene Classifier';

  @override
  String get sceneClassifierDescription =>
      'Detects fast motion and camera cuts to place clean keyframes.';

  @override
  String get whisperTinyTranscriber => 'Whisper Tiny Audio Transcriber';

  @override
  String get whisperTranscriberDescription =>
      'High-speed local speech-to-text for automatic video subtitles.';

  @override
  String get llamaMobileAssistant => 'Llama 3.2 1B Mobile Assistant';

  @override
  String get llamaAssistantDescription =>
      'Conversational assistant for video questions and editing advice.';

  @override
  String get active => 'Active';

  @override
  String get setActive => 'Set Active';

  @override
  String get installed => 'Installed';

  @override
  String downloadModel(String size) {
    return 'Download ($size)';
  }

  @override
  String modelActivated(String name) {
    return '$name activated';
  }

  @override
  String modelDownloadQueued(String name) {
    return 'Download queued for $name';
  }

  @override
  String get modelFileSelected => 'Model file selected';

  @override
  String get modelImportedVerified =>
      'Model imported and verified for local inference';

  @override
  String get noModelFileSelected => 'No Model File Selected';

  @override
  String get compatibleModelFormats =>
      'Compatible formats: .gguf, .onnx, .tflite';

  @override
  String get browseFiles => 'Browse Files';

  @override
  String get importCompatibilityChecklist => 'Import Compatibility Checklist';

  @override
  String get formatQuantizationChecklist =>
      'Format & Quantization (GGUF / ONNX / TFLite)';

  @override
  String get memoryCapVerification =>
      'Memory Cap Verification (< 2GB Peak RAM)';

  @override
  String get architectureCompatibility =>
      'Architecture (Llama / MobileNet / Whisper)';

  @override
  String get validatingModel => 'Validating…';

  @override
  String get validateImportModel => 'Validate & Import Model';

  @override
  String modelStorageUsage(String size, String ram) {
    return '$size • $ram';
  }

  @override
  String get bitrateRecommenderDetails =>
      'Analyzes movement and visual complexity to recommend the bitrate for each scene. This helps preserve detail where the video needs it.';

  @override
  String get sceneKeyframeDetails =>
      'Detects scene changes and camera cuts, then places keyframes at useful points. This keeps seeking through the video smooth and responsive.';

  @override
  String get noiseReductionDetails =>
      'Reduces grain in low-light footage before compression. Cleaner footage can look clearer and may produce a smaller output file.';

  @override
  String get silentAudioDetails =>
      'Finds quiet sections in the audio track and trims them. This removes audio data that does not add useful sound.';

  @override
  String get facePriorityDetails =>
      'Detects people and faces in the video. Compression then preserves more visual detail around those subjects.';

  @override
  String get batterySaverDetails =>
      'Reduces intensive model processing when the battery is low. This helps extend device runtime during demanding tasks.';

  @override
  String get streamTextDetails =>
      'Displays the assistant response as it is generated. You can begin reading before the complete response is ready.';

  @override
  String get showReasoningDetails =>
      'Shows extra reasoning details in chat responses when the selected model provides them. It may make responses longer and more detailed.';

  @override
  String get analyzeThumbnailsDetails =>
      'Samples video frames to recognize scenes, activities, and lighting. This gives the assistant visual context about the selected video.';

  @override
  String get samplingDensityDetails =>
      'Choose how many frames are checked each second. Higher sampling can capture more scene changes and requires more processing.';

  @override
  String get speechToTextDetails =>
      'Processes the selected video audio on this device and turns spoken words into text. The resulting text can support subtitles and search.';

  @override
  String get spokenLanguageDetails =>
      'Identifies the language spoken in the audio. The detected language helps choose suitable transcription settings.';

  @override
  String get semanticSearchDetails =>
      'Builds a meaning-based search index stored on this device. You can use descriptions such as “beach at sunset” to find matching videos.';

  @override
  String get indexChargingDetails =>
      'Waits until the device is connected to power before generating search data. This reduces indexing activity while using battery power.';

  @override
  String get directTrimmingDetails =>
      'Lets the assistant trim video clips without re-encoding the video. This is faster and preserves the original video quality.';

  @override
  String get audioExtractionDetails =>
      'Lets the assistant export a video’s audio track as a separate audio file. The video itself is not re-encoded.';

  @override
  String get metadataScrubberDetails =>
      'Removes personal metadata such as EXIF details and GPS location from media. This helps protect information before sharing files.';

  @override
  String get requireConfirmationDetails =>
      'Asks for your approval before the assistant changes files. You can review actions that overwrite, save, or delete content.';

  @override
  String get sandboxedScratchpadDetails =>
      'Keeps intermediate edits in a temporary isolated location. The original files remain untouched while the operation is in progress.';

  @override
  String get compressionAlerts => 'Compression Alerts';

  @override
  String get feedbackAndHaptics => 'Feedback & Haptics';

  @override
  String get productStorageInsights => 'Product & Storage Insights';

  @override
  String get jobCompletedNotification => 'Job Completed';

  @override
  String get jobCompletedShort => 'Compression finished';

  @override
  String get jobCompletedDetails =>
      'Sends a notification after a video finishes compressing in the background. Open it to return to the completed job.';

  @override
  String get jobCompletedToast => 'Job completed alert';

  @override
  String get backgroundStatusNotification => 'Background Status';

  @override
  String get backgroundStatusShort => 'Background job status';

  @override
  String get backgroundStatusDetails =>
      'Keeps an ongoing status visible while compression is running in the background. This helps you see that work is still in progress.';

  @override
  String get backgroundStatusToast => 'Background status';

  @override
  String get interruptionErrorNotification => 'Interruption & Error Alerts';

  @override
  String get interruptionErrorShort => 'Compression error alerts';

  @override
  String get interruptionErrorDetails =>
      'Notifies you if a compression job stops because of low storage, battery, or another error. The message helps you understand why the job did not finish.';

  @override
  String get interruptionErrorToast => 'Error alerts';

  @override
  String get completionSoundNotification => 'Sound on Completion';

  @override
  String get completionSoundShort => 'Completion chime';

  @override
  String get completionSoundDetails =>
      'Plays a brief chime when video compression and export are complete. Turn it off to receive visual notifications only.';

  @override
  String get completionSoundToast => 'Completion sound';

  @override
  String get hapticFeedbackNotification => 'Haptic Vibration';

  @override
  String get hapticFeedbackShort => 'Interaction vibration';

  @override
  String get hapticFeedbackDetails =>
      'Uses a short vibration after compression finishes and selected button interactions. Turn it off for a quieter tactile experience.';

  @override
  String get hapticFeedbackToast => 'Haptic feedback';

  @override
  String get productUpdatesNotification => 'New Features & Codecs';

  @override
  String get productUpdatesShort => 'Feature and codec news';

  @override
  String get productUpdatesDetails =>
      'Sends updates about major app features and newly supported video codecs. Turn it off to limit product news notifications.';

  @override
  String get productUpdatesToast => 'Feature notifications';

  @override
  String get savingsDigestNotification => 'Storage Savings Digest';

  @override
  String get savingsDigestShort => 'Storage space saved';

  @override
  String get savingsDigestDetails =>
      'Occasionally summarizes the storage space saved by compressing your videos. It gives you a quick view of the value of your compression history.';

  @override
  String get savingsDigestToast => 'Savings digest';

  @override
  String get diagnosticsTelemetry => 'Diagnostics & Telemetry';

  @override
  String get anonymousCrashReports => 'Anonymous Crash Reports';

  @override
  String get anonymousCrashReportsDescription =>
      'Help fix crashes by sending non-identifiable system error stack traces';

  @override
  String get encoderPerformanceTelemetry => 'Encoder Performance Telemetry';

  @override
  String get encoderPerformanceTelemetryDescription =>
      'Share hardware encoding timings to help tune platform profiles';

  @override
  String get metadataAndTempFiles => 'Metadata & Temp Files';

  @override
  String get preserveVideoMetadata => 'Preserve Video Metadata';

  @override
  String get preserveVideoMetadataDescription =>
      'Keep EXIF camera info, GPS coordinates, and creation timestamps in output';

  @override
  String get autoWipeTempBuffers => 'Auto-Wipe Temp Buffers';

  @override
  String get autoWipeTempBuffersDescription =>
      'Immediately purge temporary encoding scratchpads upon completion';

  @override
  String get clearScratchpadNow => 'Clear Scratchpad Now';

  @override
  String get clearScratchpadDescription =>
      'Free any lingering temporary preview frames and worker caches';

  @override
  String get scratchpadCleared => 'Temporary compression scratchpad cleared';

  @override
  String get clearing => 'Clearing…';

  @override
  String get clear => 'Clear';

  @override
  String get crashReportsLabel => 'Crash reports';

  @override
  String get telemetryLabel => 'Telemetry';

  @override
  String get metadataPreservationLabel => 'Metadata preservation';

  @override
  String get autoWipeLabel => 'Auto wipe';

  @override
  String get privacyDocumentsAndPolicies => 'Privacy Documents & Policies';

  @override
  String get crashReportsSummary => 'Crash diagnostics stay anonymous';

  @override
  String get encoderTelemetrySummary => 'Hardware encoding timings';

  @override
  String get metadataPreservationSummary => 'Keep camera details';

  @override
  String get automaticTempCleanupSummary => 'Delete temporary buffers';

  @override
  String get scratchpadCleanupSummary => 'Remove cached preview files';

  @override
  String get privacyPolicySummary => 'How Kuymo handles data';

  @override
  String get dataSafetySummary => 'Collected data and purpose';

  @override
  String get permissionsSummary => 'Why Kuymo needs access';

  @override
  String get megabytesShort => 'MB';

  @override
  String percentSmaller(Object percent) {
    return '$percent% smaller';
  }

  @override
  String percentSaved(Object percent) {
    return '-$percent%';
  }

  @override
  String get encodingHardwareLive =>
      'Encoding and optimizing video with native hardware…';

  @override
  String get verifyingCompressedVideo =>
      'Checking the compressed video and its audio…';

  @override
  String get retryingCompression =>
      'Adjusting settings for another compression pass…';

  @override
  String targetSizeNotReachedOutputIs(String size) {
    return 'Could not reach the target size. Output size: $size MB.';
  }

  @override
  String get targetMayNotBeReachedBestEffort =>
      'The selected size may not be reachable. The export will use the best available settings, and its final size will be shown.';

  @override
  String requestedSettingsUnavailableBestQualityIs(
    String width,
    String height,
  ) {
    return 'The requested settings cannot be applied. Best available quality is $width × $height; the final file size will be shown after compression.';
  }

  @override
  String get savingCompressedVideo =>
      'Saving the compressed video on this device…';

  @override
  String get compressionCompletedSuccessfully =>
      'Compression finished successfully!';

  @override
  String get compressionStrictness => 'Compression Strictness';

  @override
  String get strictnessDefault => 'Default (93%)';

  @override
  String get strictnessSafe => 'Safe (90%)';

  @override
  String get strictnessAggressive => 'Aggressive (96%)';

  @override
  String historySummarySubtitle(Object count, Object savedMb) {
    return '$count videos compressed • $savedMb MB saved';
  }

  @override
  String get compressionHelpDescription =>
      'Answers to common questions about video compression.';

  @override
  String get appSupportDescription => 'Get help using Kuymo.';

  @override
  String get appTermsDescription =>
      'Terms for using the free, open source Kuymo app.';

  @override
  String get compressionAndroidOnly =>
      'Video compression is currently available only on Android.';

  @override
  String get notificationPermissionTitle => 'Enable notifications';

  @override
  String get notificationPermissionBody =>
      'Tap to allow compression alerts and updates.';

  @override
  String get notificationPermissionSettingsBody =>
      'Notifications are blocked. Tap to open system settings.';

  @override
  String get notificationUnavailable =>
      'Notifications are currently supported on Android.';

  @override
  String get notificationSetupFailed =>
      'Notification settings could not be applied. Tap to retry.';

  @override
  String get notificationChannelBlocked =>
      'A notification channel is blocked in system settings.';

  @override
  String get notificationProgressDetails =>
      'Show progress details in the background. A basic service notification remains while compression runs.';

  @override
  String get notificationProgressTitle => 'Compressing video';

  @override
  String get notificationProgressBody => 'Tap to view your compression job.';

  @override
  String get notificationPausedTitle => 'Compression paused';

  @override
  String get notificationSavingTitle => 'Saving compressed video';

  @override
  String get notificationCompletedTitle => 'Video ready';

  @override
  String notificationCompletedBody(String name, String size, String saved) {
    return '$name · $size MB · Saved $saved MB';
  }

  @override
  String notificationCompletedWarningBody(String name, String size) {
    return '$name · $size MB · Review the result warning';
  }

  @override
  String get notificationFailedTitle => 'Compression interrupted';

  @override
  String notificationInterruptedBody(String count) {
    return '$count interrupted jobs are available to review.';
  }

  @override
  String notificationReleaseTitle(String version) {
    return 'Kuymo $version is available';
  }

  @override
  String get notificationSavingsTitle => 'Your weekly storage savings';

  @override
  String notificationSavingsBody(String count, String saved) {
    return '$count videos · $saved MB saved';
  }

  @override
  String get hapticsButtons => 'Buttons and taps';

  @override
  String get hapticsButtonsDescription =>
      'Plays a light pulse when you press an action button. This setting applies across the app; selection changes and swipe gestures have their own controls.';

  @override
  String get hapticsSelections => 'Selection changes';

  @override
  String get hapticsSelectionsDescription =>
      'Plays a brief tick when you change a switch, checkbox, or selected value. Disable it to adjust preferences without vibration while keeping button feedback unchanged.';

  @override
  String get hapticsGestures => 'Gestures';

  @override
  String get hapticsGesturesDescription =>
      'Plays a light pulse when a swipe reaches the point that reveals or triggers an action. It helps you feel the action threshold without vibrating throughout the drag.';

  @override
  String get hapticsSuccess => 'Successful completion';

  @override
  String get hapticsSuccessDescription =>
      'Plays a confirmation pulse when video compression finishes. In the background the completion notification provides the vibration, so the same result does not vibrate twice. Sound on completion is controlled separately.';

  @override
  String get hapticsErrors => 'Errors and interruptions';

  @override
  String get hapticsErrorsDescription =>
      'Plays a stronger pulse if compression fails or is interrupted. In the background this follows the error notification. Cancelling a job yourself does not trigger an error pulse.';

  @override
  String get notificationJobUnavailable =>
      'This job is no longer available. Your history is shown instead.';

  @override
  String get notificationRecoveryHint =>
      'Review interrupted jobs from the home screen.';

  @override
  String get notificationProgressChannel => 'Compression status';

  @override
  String get notificationCompletionChannel => 'Completed videos';

  @override
  String get notificationErrorChannel => 'Compression problems';

  @override
  String get notificationReleaseChannel => 'App releases';

  @override
  String get notificationSavingsChannel => 'Storage savings';

  @override
  String get automaticColorSchemeDescription =>
      'Auto uses a vivid Kuymo palette. Each option previews its own accent colors.';

  @override
  String get colorSchemeTonalSpot => 'Tonal spot';

  @override
  String get colorSchemeFidelity => 'Fidelity';

  @override
  String get colorSchemeContent => 'Content';

  @override
  String get colorSchemeExpressive => 'Expressive';

  @override
  String get colorSchemeFruitSalad => 'Fruit salad';

  @override
  String get colorSchemeMonochrome => 'Monochrome';

  @override
  String get colorSchemeNeutral => 'Neutral';

  @override
  String get colorSchemeRainbow => 'Rainbow';

  @override
  String get colorSchemeVibrant => 'Vibrant';

  @override
  String get hapticsButtonsShort => 'Button press feedback';

  @override
  String get hapticsSelectionsShort => 'Feedback when choices change';

  @override
  String get hapticsGesturesShort => 'Swipe action feedback';

  @override
  String get hapticsSuccessShort => 'A pulse when a video is ready';

  @override
  String get hapticsErrorsShort => 'Feedback when a job fails';

  @override
  String get appUpdatesTitle => 'App updates';

  @override
  String get whatsNewTitle => 'What’s new';

  @override
  String get appUpdatesDescription => 'Check for a new version';

  @override
  String get whatsNewDescription => 'Changes in your installed version';

  @override
  String get installedVersionLabel => 'Installed version';

  @override
  String get updateAvailableLabel => 'A new version is available';

  @override
  String get noUpdatesLabel => 'No newer stable release is available';

  @override
  String get releaseNotesEmpty =>
      'No release notes are available for this version.';

  @override
  String get releaseLoadFailed =>
      'Could not load release information. Try again when you are connected.';

  @override
  String get releaseCachedNotice =>
      'Could not refresh. Showing the saved release notes.';

  @override
  String get openReleaseLabel => 'Open release on GitHub';

  @override
  String get checkUpdatesLabel => 'Check for updates';

  @override
  String get reloadReleaseLabel => 'Refresh release notes';

  @override
  String get releaseOpenFailed =>
      'Could not open the release. Please try again.';

  @override
  String get appLinkCopied => 'Link copied to clipboard.';

  @override
  String get appInvitationCopied =>
      'Invitation copied. Paste it into your messaging app.';

  @override
  String kuymoShareInvitation(String url) {
    return 'Try Kuymo for on-device video compression: $url';
  }

  @override
  String get onDeviceProcessingLabel => 'Video processing on your device';

  @override
  String get kuymoShareDescription =>
      'Choose a target size and prepare your video to share. Video processing stays on your device.';

  @override
  String get copyAppLink => 'Copy app link';

  @override
  String get enjoyingKuymo => 'Enjoying Kuymo?';

  @override
  String get whyChooseKuymo => 'Why choose Kuymo';

  @override
  String get projectSupportLink => 'Copy project support link';

  @override
  String get brandTagline => 'More room for your moments.';

  @override
  String get kuymoAi => 'Kuymo AI';

  @override
  String get settingsSaveFailed =>
      'Could not load or save settings. Your last saved values are retained.';

  @override
  String get settingsRecovered =>
      'Saved settings could not be read. Safe defaults are being used.';

  @override
  String get resetSettingsGroup => 'Reset these settings';

  @override
  String get settingsApplyFailed =>
      'Could not apply settings to the service. Tap to retry.';

  @override
  String get saveAiChatHistory => 'Save AI conversations on this device';

  @override
  String get permissionGranted => 'Granted';

  @override
  String get permissionLimited => 'Limited access';

  @override
  String get permissionDenied => 'Not granted. Tap to request access.';

  @override
  String get permissionPermanentlyDenied =>
      'Denied. Tap to open device settings.';

  @override
  String get permissionRestricted => 'Restricted by the device';

  @override
  String get permissionUnsupported => 'Unavailable on this platform';

  @override
  String get selectedFilesAccess =>
      'Kuymo uses the system file picker. It accesses only files you choose; it does not require access to your entire media library.';

  @override
  String get aiOperationFailed =>
      'Could not finish. Check the selected model, device support, storage and memory budget. Connect power if indexing requires charging, then retry.';

  @override
  String get noAiModelsAvailable => 'No compatible models are available.';

  @override
  String get aiMessageHint => 'Ask about your videos';

  @override
  String aiBenchmarkElapsed(int milliseconds) {
    return 'Benchmark finished in $milliseconds ms';
  }

  @override
  String get aiSend => 'Send';

  @override
  String get aiDelete => 'Delete';

  @override
  String get aiDownload => 'Download';

  @override
  String get aiSearch => 'Search';

  @override
  String aiSelectedDocuments(int count) {
    return 'Selected files: $count';
  }

  @override
  String get aiToolCreatesCopy =>
      'Tools create a new file and keep your original. Quiet audio reduction and silence trimming apply when enabled.';

  @override
  String get aiTrimStart => 'Start time (seconds)';

  @override
  String get aiTrimEnd => 'End time (seconds, empty for full length)';

  @override
  String aiOutputSaved(String path) {
    return 'Saved on this device: $path';
  }

  @override
  String get aiChatWelcome =>
      'Your assistant runs on this device. Choose a model in AI settings to get started.';

  @override
  String get backendGpu => 'GPU';

  @override
  String get aiAndroidOnly =>
      'Local AI features are currently available on Android.';

  @override
  String aiEmbeddingStorageUsage(String megabytes) {
    return 'Index storage: $megabytes MB';
  }

  @override
  String get applyChanges => 'Apply';

  @override
  String get advancedSettingsDraftHint =>
      'Fine-tune this video. Changes take effect only when you apply them.';

  @override
  String get homeVideoWorkspace => 'Make room for your video';

  @override
  String get homeImportHint =>
      'Choose a video, pick where to share it, and we’ll handle the size.';

  @override
  String get changeVideo => 'Change video';

  @override
  String get shareDestination => 'Where are you sharing?';

  @override
  String get moreDestinations => 'All destinations';

  @override
  String get expectedOutputSize => 'Target output size';

  @override
  String get homeReadyToShare => 'Ready to share';

  @override
  String get homeNewVideo => 'Another video';

  @override
  String get homeRecoverJobs => 'Unfinished videos';

  @override
  String get homeSaveFailed => 'Couldn’t save the video. Try again.';

  @override
  String get homeShareFailed => 'Couldn’t open sharing. Try again.';

  @override
  String get homePlanDetails => 'Output details';
}

/// The translations for English, as used in the United Kingdom (`en_GB`).
class AppLocalizationsEnGb extends AppLocalizationsEn {
  AppLocalizationsEnGb() : super('en_GB');

  @override
  String get kuymo => 'Kuymo';

  @override
  String get downloadFile => 'Download File';

  @override
  String fileOpenedInBrowser(String fileName) {
    return 'File opened in browser: $fileName';
  }

  @override
  String fileSavedToGallery(String fileName) {
    return 'File saved to gallery: $fileName';
  }

  @override
  String fileSavedToDocuments(String fileName) {
    return 'File saved to documents: $fileName';
  }

  @override
  String get fileIsAlreadySaved => 'File is already saved';

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
  String get addressLineCannotBeEmpty => 'Address line cannot be empty';

  @override
  String get addressLineIsTooLong => 'Address line is too long';

  @override
  String get specialCharactersAreNotAllowed =>
      'Special characters are not allowed';

  @override
  String get emojisAreNotAllowed => 'Emojis are not allowed';

  @override
  String get cityCannotBeEmpty => 'City cannot be empty';

  @override
  String get cityNameIsTooLong => 'City name is too long';

  @override
  String get cityContainsInvalidSpecialCharacters =>
      'City contains invalid special characters';

  @override
  String get addressLabelCannotBeEmpty => 'Address label cannot be empty';

  @override
  String get addressLabelIsTooLong => 'Address label is too long';

  @override
  String get emailCannotBeEmpty => 'Email cannot be empty';

  @override
  String get invalidEmailFormat => 'Invalid email format';

  @override
  String get emailContainsInvalidCharacters =>
      'Email contains invalid characters';

  @override
  String get emailMustContain => 'Email must contain @';

  @override
  String get emailMustBeInLowercase => 'Email must be in lowercase';

  @override
  String get arabicCharactersAreNotAllowed =>
      'Arabic characters are not allowed';

  @override
  String get emojisAreNotAllowedInEmail => 'Emojis are not allowed in email';

  @override
  String get phoneNumberCannotBeEmpty => 'Phone number cannot be empty';

  @override
  String get invalidPhoneNumber => 'Invalid phone number';

  @override
  String get phoneNumberMustBeAtLeast11Digits =>
      'Phone number must be at least 11 digits';

  @override
  String get nameCannotBeEmpty => 'Name cannot be empty';

  @override
  String get invalidName => 'Invalid name';

  @override
  String get nameMustBeAtLeast3Characters =>
      'Name must be at least 3 characters';

  @override
  String get nameCannotExceed20Characters => 'Name cannot exceed 20 characters';

  @override
  String get nameContainsInvalidSpecialCharacters =>
      'Name contains invalid special characters';

  @override
  String get emojisAreNotAllowedInName => 'Emojis are not allowed in name';

  @override
  String get passwordCannotBeEmpty => 'Password cannot be empty';

  @override
  String get passwordMustContainUppercaseLowercaseNumberAndSpecialCharacter =>
      'Password must contain uppercase, lowercase, number, and special character';

  @override
  String get passwordMustBeAtLeast8CharactersLong =>
      'Password must be at least 8 characters long';

  @override
  String get noInternetConnection => 'No internet connection';

  @override
  String get internetConnectionRestored => 'Internet connection restored';

  @override
  String get retry => 'Retry';

  @override
  String get confirm => 'Confirm';

  @override
  String get ok => 'OK';

  @override
  String get compressVideosPrivatelyOnYourDevice =>
      'Compress videos privately, on your device.';

  @override
  String get welcomeToKuymo => 'Welcome to Kuymo';

  @override
  String get learnHowKuymoCompressesYourVideosWithoutEverLeavingYourPhone =>
      'Learn how Kuymo compresses your videos without ever leaving your phone.';

  @override
  String get signIn => 'Sign in';

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
  String get aboutKuymo => 'About Kuymo';

  @override
  String get versionBuildNumberAndApplicationDetails =>
      'Version, build number, and application details.';

  @override
  String get aboutTheDeveloper => 'About the developer';

  @override
  String get theDeveloperAndToolsBehindKuymo =>
      'The developer and tools behind Kuymo.';

  @override
  String get openSourcePackagesBundledWithKuymo =>
      'Open-source packages bundled with Kuymo.';

  @override
  String get privacyPolicy => 'Privacy policy';

  @override
  String get howKuymoHandlesYourVideosAndData =>
      'How Kuymo handles your videos and data.';

  @override
  String get termsOfService => 'Terms of service';

  @override
  String get dataSafety => 'Data safety';

  @override
  String get summaryOfTheDataKuymoCollectsAndWhy =>
      'Summary of the datan Kuymo collects and why.';

  @override
  String get permissions => 'Permissions';

  @override
  String get runtimePermissionsKuymoRequestsAndWhyEachIsNeeded =>
      'Runtime permissions Kuymo requests and why each is needed.';

  @override
  String get faq => 'FAQ';

  @override
  String get support => 'Support';

  @override
  String get sendFeedback => 'Send feedback';

  @override
  String get reportAProblemOrSuggestAnImprovement =>
      'Report a problem or suggest an improvement.';

  @override
  String get profile => 'Profile';

  @override
  String get deleteAccount => 'Delete account';

  @override
  String get permanentlyRemoveYourAccountAndItsServerSideData =>
      'Permanently remove your account and its server-side data.';

  @override
  String get rateKuymo => 'Rate Kuymo';

  @override
  String get tellOthersHowKuymoWorkedForYouOnTheStore =>
      'Tell others how Kuymo worked for you on the store.';

  @override
  String get shareKuymo => 'Share Kuymo';

  @override
  String get recommendKuymoToAFriend => 'Recommend Kuymo to a friend.';

  @override
  String get appearanceLanguage => 'Appearance & language';

  @override
  String get compression => 'Compression';

  @override
  String get onDeviceAI => 'On-device AI';

  @override
  String get notificationsPrivacy => 'Notifications & privacy';

  @override
  String get about => 'About';

  @override
  String get legal => 'Legal';

  @override
  String get helpFeedback => 'Help & feedback';

  @override
  String get account => 'Account';

  @override
  String get themeAndAppLanguage => 'Theme and app language';

  @override
  String get appLanguageAndDirection => 'App language and direction';

  @override
  String get defaultQualityAndFormat => 'Default quality and format';

  @override
  String get cacheAndStorageUsage => 'Cache and storage usage';

  @override
  String get aiSettings => 'AI settings';

  @override
  String get kuymoAssistant => 'Kuymo Assistant';

  @override
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere =>
      'A private assistant for your videos is coming soon. You will be able to ask about compression, organisation, and saved videos here.';

  @override
  String get localModelsAndSmartTools => 'Local models and smart tools';

  @override
  String get exploreLocalModelsAndFutureAIToolsTheseOptionsAreNotActiveYet =>
      'Explore local models and future AI tools. These options are not active yet.';

  @override
  String get localModels => 'Local models';

  @override
  String get browseAndDownloadSupportedModels =>
      'Browse and download supported models';

  @override
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere =>
      'Choose a supported model, download it to this device, and manage installed models here.';

  @override
  String get importAModel => 'Import a model';

  @override
  String get useACompatibleModelFromYourFiles =>
      'Use a compatible model from your files';

  @override
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt =>
      'Select a compatible local model file and review its requirements before using it.';

  @override
  String get smartFeatures => 'Smart features';

  @override
  String get compressionOrganizationAndSearch =>
      'Compression, organisation, and search';

  @override
  String
  get chooseWhichLocalAISuggestionsToUseForVideoCompressionOrganizationNamingAndSearch =>
      'Choose which local AI suggestions to use for video compression, organisation, naming, and search.';

  @override
  String get modelPerformance => 'Model performance';

  @override
  String get processingAndResourcePreferences =>
      'Processing and resource preferences';

  @override
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels =>
      'Control the processing backend and resource limits for supported models.';

  @override
  String get conversationSettings => 'Conversation settings';

  @override
  String get streamingThinkingAndResponseLength =>
      'Streaming, thinking, and response length';

  @override
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits =>
      'Configure how the assistant responds, including streaming, thinking mode, sampling, and response limits.';

  @override
  String get imagesAndAudio => 'Images and audio';

  @override
  String get controlMultimodalInputs => 'Control multimodal inputs';

  @override
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos =>
      'Choose whether compatible models can analyze selected images and audio from your videos.';

  @override
  String get semanticSearch => 'Semantic search';

  @override
  String get embeddingsAndLocalIndexing => 'Embeddings and local indexing';

  @override
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning =>
      'Manage the local embedding model and search index for finding videos and moments by meaning.';

  @override
  String get toolsAndStructuredOutput => 'Tools and structured output';

  @override
  String get actionsSchemasAndConfirmations =>
      'Actions, schemas, and confirmations';

  @override
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation =>
      'Manage supported assistant actions and structured responses. Actions that affect files will require your confirmation.';

  @override
  String get models => 'Models';

  @override
  String get assistantExperience => 'Assistant experience';

  @override
  String get smartCapabilities => 'Smart capabilities';

  @override
  String get performance => 'Performance';

  @override
  String get yourCompressedVideoHistory => 'Your compressed video history';

  @override
  String get completionAndUpdateAlerts => 'Completion and update alerts';

  @override
  String get yourDataStaysLocal => 'Your data stays local';

  @override
  String get versionAndBuildDetails => 'Version and build details';

  @override
  String get theDeveloperBehindKuymo => 'The developer behind Kuymo';

  @override
  String get openSourcePackageLicenses => 'Open source package licenses';

  @override
  String get howDataIsHandled => 'How data is handled';

  @override
  String get rulesForUsingKuymo => 'Rules for using Kuymo';

  @override
  String get whatDataWeCollect => 'What data we collect';

  @override
  String get whyWeNeedPermissions => 'Why we need permissions';

  @override
  String get answersToCommonQuestions => 'Answers to common questions';

  @override
  String get reachTheDeveloperDirectly => 'Reach the developer directly';

  @override
  String get sendUsYourFeedback => 'Send us your feedback';

  @override
  String get pickVideo => 'Pick video';

  @override
  String get targetSizeMB => 'Target size (MB)';

  @override
  String get startCompression => 'Start compression';

  @override
  String get pause => 'Pause';

  @override
  String get resume => 'Resume';

  @override
  String get viewResult => 'View result';

  @override
  String get saveToGallery => 'Save to gallery';

  @override
  String get shareVideo => 'Share video';

  @override
  String get originalSize => 'Original size';

  @override
  String get outputSize => 'Output size';

  @override
  String get noCompressedVideosYet => 'No compressed videos yet';

  @override
  String get savedToGallery => 'Saved to gallery';

  @override
  String get enterATargetSizeGreaterThanZero =>
      'Enter a target size greater than zero';

  @override
  String get compressionCancelled => 'Compression cancelled';

  @override
  String get thisVideoCouldNotReachTheSelectedSizeTryALargerTargetSize =>
      'This video could not reach the selected size. Try a larger target size.';

  @override
  String get theSelectedSizeIsTooSmallForThisVideoChooseALargerSize =>
      'The selected size is too small for this video. Choose a larger size.';

  @override
  String get originalPreview => 'Original preview';

  @override
  String get compressedPreview => 'Compressed preview';

  @override
  String get targetPreset => 'Target preset';

  @override
  String get customSize => 'Custom size';

  @override
  String get previewUnavailable => 'Preview unavailable';

  @override
  String get advancedControls => 'Advanced controls';

  @override
  String get automatic => 'Automatic';

  @override
  String get maximumResolution => 'Maximum resolution';

  @override
  String get originalResolution => 'Original resolution';

  @override
  String get maximumFrameRate => 'Maximum frame rate';

  @override
  String get audioBitrate => 'Audio bitrate';

  @override
  String get removeAudio => 'Remove audio';

  @override
  String get videoBitrateCeilingKbps => 'Video bitrate ceiling (kbps)';

  @override
  String get hdrHandling => 'HDR handling';

  @override
  String get convertToSDR => 'Convert to SDR';

  @override
  String get keepHDRWhenSupported => 'Keep HDR when supported';

  @override
  String get beforeYouStart => 'Before you start';

  @override
  String get calculatingCompressionPlan => 'Calculating compression plan…';

  @override
  String get plannedResolution => 'Planned resolution';

  @override
  String get plannedVideoBitrate => 'Planned video bitrate';

  @override
  String get plannedAudioBitrate => 'Planned audio bitrate';

  @override
  String
  get reEncodingConvertsAudioToAACStereoDolbyAtmosAndDTSSpatialAudioWillNotBePreserved =>
      'Re-encoding converts audio to AAC stereo. Dolby Atmos and DTS spatial audio will not be preserved.';

  @override
  String
  get thisTargetIsTooSmallForAUsableVideoIncreaseTheSizeOrLowerOtherLimits =>
      'This target is too small for a usable video. Increase the size or lower other limits.';

  @override
  String get theSelectedTargetMayReduceVideoQuality =>
      'The selected target may reduce video quality.';

  @override
  String get theSourceIsAlreadyWithinTheSizeLimit =>
      'The source is already within the size limit.';

  @override
  String get enterABitrateOfAtLeast150KbpsOrLeaveBlankForAutomatic =>
      'Enter a bitrate of at least 150 kbps, or leave blank for automatic';

  @override
  String get enterAnEvenResolutionFrom240To16384OrLeaveBlankForAutomatic =>
      'Enter an even resolution from 240 to 16384, or leave blank for automatic';

  @override
  String get videoPosition => 'Video position';

  @override
  String
  get aPreviousCompressionWasInterruptedItsTemporaryFilesWereCleanedUpYouCanSelectTheVideoAndTryAgain =>
      'A previous compression was interrupted. Its temporary files were cleaned up; you can select the video and try again.';

  @override
  String get dismiss => 'Dismiss';

  @override
  String get clearHistory => 'Clear history';

  @override
  String get removeAllHistoryEntriesSavedVideosWillRemainOnYourDevice =>
      'Remove all history entries? Saved videos will remain on your device.';

  @override
  String get attempts => 'Attempts';

  @override
  String get targetSize => 'Target size';

  @override
  String get outputResolution => 'Output resolution';

  @override
  String get thisVideoCouldNotBeReadChooseAnotherFile =>
      'This video could not be read. Choose another file.';

  @override
  String get theEncodedVideoFailedVerificationYourOriginalVideoWasNotChanged =>
      'The encoded video failed verification. Your original video was not changed.';

  @override
  String
  get thisDeviceCannotEncodeTheSelectedResolutionOrFrameRateLowerThatSettingAndTryAgain =>
      'This device cannot encode the selected resolution or frame rate. Lower that setting and try again.';

  @override
  String
  get thisDeviceCannotDecodeThisAudioFormatForCompressionRemoveAudioOrUseASupportedSource =>
      'This device cannot decode this audio format for compression. Remove audio or use a supported source.';

  @override
  String
  get thisDeviceCannotDecodeThisVideoFormatOrProfileForCompressionChooseAnotherSourceOrDevice =>
      'This device cannot decode this video format or profile for compression. Choose another source or device.';

  @override
  String get theExportedMP4IsNotReadyForStreamingTryAnotherVideoOrDevice =>
      'The exported MP4 is not ready for streaming. Try another video or device.';

  @override
  String get thereIsNotEnoughFreeStorageToCompressThisVideo =>
      'There is not enough free storage to compress this video.';

  @override
  String get thisDeviceCannotProcessTheSelectedHDRModeTryConvertingToSDR =>
      'This device cannot process the selected HDR mode. Try converting to SDR.';

  @override
  String get compressionCouldNotBeCompletedTryAnotherSettingOrVideo =>
      'Compression could not be completed. Try another setting or video.';

  @override
  String get appIdentity => 'App identity';

  @override
  String get appName => 'App name';

  @override
  String get packageName => 'Package name';

  @override
  String get version => 'Version';

  @override
  String get buildNumber => 'Build number';

  @override
  String get deviceAndBuild => 'Device and build';

  @override
  String get operatingSystem => 'Operating system';

  @override
  String get osVersion => 'OS version';

  @override
  String get buildMode => 'Build mode';

  @override
  String get debug => 'Debug';

  @override
  String get release => 'Release';

  @override
  String get builtWith => 'Built with';

  @override
  String get installation => 'Installation';

  @override
  String get installedFrom => 'Installed from';

  @override
  String get installedOn => 'Installed on';

  @override
  String get updatedOn => 'Updated on';

  @override
  String get unavailable => 'Unavailable';

  @override
  String get projectAndSupport => 'Project and support';

  @override
  String get githubRepository => 'GitHub repository';

  @override
  String get viewKuymoSourceCode => 'View Kuymo source code';

  @override
  String get readTheREADME => 'Read the README';

  @override
  String get learnAboutKuymoOnGitHub => 'Learn about Kuymo on GitHub';

  @override
  String get reportAnIssue => 'Report an issue';

  @override
  String get viewAndCreateGitHubIssues => 'View and create GitHub issues';

  @override
  String get latestRelease => 'Latest release';

  @override
  String get viewReleasesAndDownloads => 'View releases and downloads';

  @override
  String get supportKuymo => 'Support Kuymo';

  @override
  String get openTheOfficialDonationPage => 'Open the official donation page';

  @override
  String get couldNotOpenTheLinkPleaseTryAgain =>
      'Could not open the link. Please try again.';

  @override
  String get developer => 'Developer';

  @override
  String get mostafaSensei => 'Mostafa Sensei';

  @override
  String get githubProfile => 'GitHub profile';

  @override
  String get seeProjectsAndContactDetails => 'See projects and contact details';

  @override
  String get maintenanceInProgress => 'Maintenance in progress';

  @override
  String get kuymoIsTemporarilyUnavailablePleaseTryAgainLater =>
      'Kuymo is temporarily unavailable. Please try again later.';

  @override
  String get comingSoon => 'Coming soon';

  @override
  String get pleaseWait => 'Please wait...';

  @override
  String get cancel => 'Cancel';

  @override
  String get openSourceLicenses => 'Open-source licenses';

  @override
  String get languageName => 'English';

  @override
  String get countryCode => 'GB';

  @override
  String countryName(String countryCode) {
    String _temp0 = intl.Intl.selectLogic(countryCode, {
      'AE': 'United Arab Emirates',
      'AT': 'Austria',
      'AU': 'Australia',
      'BE': 'Belgium',
      'BH': 'Bahrain',
      'BR': 'Brazil',
      'CA': 'Canada',
      'CH': 'Switzerland',
      'CN': 'China',
      'DE': 'Germany',
      'DJ': 'Djibouti',
      'DZ': 'Algeria',
      'EG': 'Egypt',
      'ES': 'Spain',
      'FR': 'France',
      'GB': 'United Kingdom',
      'HK': 'Hong Kong SAR China',
      'ID': 'Indonesia',
      'IQ': 'Iraq',
      'IT': 'Italy',
      'JO': 'Jordan',
      'JP': 'Japan',
      'KM': 'Comoros',
      'KR': 'South Korea',
      'KW': 'Kuwait',
      'LB': 'Lebanon',
      'LY': 'Libya',
      'MA': 'Morocco',
      'MR': 'Mauritania',
      'MX': 'Mexico',
      'NL': 'Netherlands',
      'OM': 'Oman',
      'PL': 'Poland',
      'PS': 'Palestinian Territories',
      'PT': 'Portugal',
      'QA': 'Qatar',
      'RU': 'Russia',
      'SA': 'Saudi Arabia',
      'SD': 'Sudan',
      'SE': 'Sweden',
      'SG': 'Singapore',
      'SO': 'Somalia',
      'SY': 'Syria',
      'TH': 'Thailand',
      'TN': 'Tunisia',
      'TR': 'Türkiye',
      'TW': 'Taiwan',
      'US': 'United States',
      'VN': 'Vietnam',
      'YE': 'Yemen',
      'other': 'Country',
    });
    return '$_temp0';
  }

  @override
  String get termsOfServiceFullText =>
      'Kuymo is free and open source. Video processing runs on your device. You retain ownership of your content. The app is provided without a guarantee of any particular output size or quality.';

  @override
  String get termsAcceptanceLicenseBody =>
      'Kuymo is free and open source. All features are available to everyone, and video processing runs locally on your devices.';

  @override
  String get compressionHelpDescription =>
      'Answers to common questions about video compression.';

  @override
  String get appSupportDescription => 'Get help using Kuymo.';

  @override
  String get appTermsDescription =>
      'Terms for using the free, open source Kuymo app.';

  @override
  String get compressionAndroidOnly =>
      'Video compression is currently available only on Android.';

  @override
  String get settingsSaveFailed =>
      'Could not load or save settings. Your last saved values are retained.';

  @override
  String get settingsRecovered =>
      'Saved settings could not be read. Safe defaults are being used.';

  @override
  String get resetSettingsGroup => 'Reset these settings';

  @override
  String get settingsApplyFailed =>
      'Could not apply settings to the service. Tap to retry.';

  @override
  String get saveAiChatHistory => 'Save AI conversations on this device';

  @override
  String get permissionGranted => 'Granted';

  @override
  String get permissionLimited => 'Limited access';

  @override
  String get permissionDenied => 'Not granted. Tap to request access.';

  @override
  String get permissionPermanentlyDenied =>
      'Denied. Tap to open device settings.';

  @override
  String get permissionRestricted => 'Restricted by the device';

  @override
  String get permissionUnsupported => 'Unavailable on this platform';

  @override
  String get selectedFilesAccess =>
      'Kuymo uses the system file picker. It accesses only files you choose; it does not require access to your entire media library.';

  @override
  String get aiOperationFailed =>
      'Could not finish. Check the selected model, device support, storage and memory budget. Connect power if indexing requires charging, then retry.';

  @override
  String get noAiModelsAvailable => 'No compatible models are available.';

  @override
  String get aiMessageHint => 'Ask about your videos';

  @override
  String aiBenchmarkElapsed(int milliseconds) {
    return 'Benchmark finished in $milliseconds ms';
  }

  @override
  String get aiSend => 'Send';

  @override
  String get aiDelete => 'Delete';

  @override
  String get aiDownload => 'Download';

  @override
  String get aiSearch => 'Search';

  @override
  String aiSelectedDocuments(int count) {
    return 'Selected files: $count';
  }

  @override
  String get aiToolCreatesCopy =>
      'Tools create a new file and keep your original. Quiet audio reduction and silence trimming apply when enabled.';

  @override
  String get aiTrimStart => 'Start time (seconds)';

  @override
  String get aiTrimEnd => 'End time (seconds, empty for full length)';

  @override
  String aiOutputSaved(String path) {
    return 'Saved on this device: $path';
  }

  @override
  String get aiChatWelcome =>
      'Your assistant runs on this device. Choose a model in AI settings to get started.';

  @override
  String get backendGpu => 'GPU';

  @override
  String get aiAndroidOnly =>
      'Local AI features are currently available on Android.';

  @override
  String aiEmbeddingStorageUsage(String megabytes) {
    return 'Index storage: $megabytes MB';
  }
}
