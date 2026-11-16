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
  String get cancel => 'Cancel';

  @override
  String get confirm => 'Confirm';

  @override
  String get pleaseWait => 'Please wait…';

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
  String get sharperTextAndSurfaces => 'Pure black and white surfaces ';

  @override
  String get zumiEngine => 'Zumi Engine';

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
  String get openSourceLicenses => 'Open Source Licenses';

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
  String get appearanceLanguage => 'Appearance & language';

  @override
  String get compression => 'Compression';

  @override
  String get onDeviceAI => 'On-device AI';

  @override
  String get notificationsPrivacy => 'Notifications & privacy';

  @override
  String get plansPurchases => 'Plans & purchases';

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
  String get zumiAssistant => 'Zumi Assistant';

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
  String get comparePlansAndUpgrade => 'Compare plans and upgrade';

  @override
  String get paymentMethodsAndBilling => 'Payment methods and billing';

  @override
  String get restoreYourPreviousPurchase => 'Restore your previous purchase';

  @override
  String get versionAndBuildDetails => 'Version and build details';

  @override
  String get theDeveloperBehindZumi => 'The developer behind Zumi';

  @override
  String get openSourcePackageLicenses => 'Open source package licenses';

  @override
  String get howDataIsHandled => 'How data is handled';

  @override
  String get rulesForUsingZumi => 'Rules for using Zumi';

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
  String get viewZumiSourceCode => 'View Zumi source code';

  @override
  String get readTheREADME => 'Read the README';

  @override
  String get learnAboutZumiOnGitHub => 'Learn about Zumi on GitHub';

  @override
  String get reportAnIssue => 'Report an issue';

  @override
  String get viewAndCreateGitHubIssues => 'View and create GitHub issues';

  @override
  String get latestRelease => 'Latest release';

  @override
  String get viewReleasesAndDownloads => 'View releases and downloads';

  @override
  String get supportZumi => 'Support Zumi';

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
  String get zumiIsTemporarilyUnavailablePleaseTryAgainLater =>
      'Zumi is temporarily unavailable. Please try again later.';

  @override
  String get comingSoon => 'Coming soon';

  @override
  String get zumiProTitle => 'Zumi Pro';

  @override
  String subscriptionPerMonth(Object price) {
    return '$price / month';
  }

  @override
  String get planUnavailable => 'Unavailable';

  @override
  String get loading => 'Loading…';

  @override
  String get subscriptionActive => 'Active subscription';

  @override
  String get proFeaturesDescription =>
      'Unlock Discord Nitro, YouTube Shorts and Custom compression.';

  @override
  String get subscribe => 'Subscribe';

  @override
  String currentLoyaltyDiscount(Object percent) {
    return 'Loyalty discount: $percent%';
  }

  @override
  String nextMonthLoyaltyPrice(Object percent, Object price) {
    return 'Next month: $percent% loyalty discount — estimated $price';
  }

  @override
  String nextMonthLoyaltyDiscount(Object percent) {
    return 'Next month: $percent% loyalty discount';
  }

  @override
  String get loyaltyCancellationWarning =>
      'Cancelling resets your accumulated loyalty discount to the base price. If you subscribe again, loyalty starts again at 2%.';

  @override
  String get purchaseCancelled => 'Purchase cancelled.';

  @override
  String get purchaseVerified => 'Purchase verified.';

  @override
  String get purchasesRestored => 'Purchases restored.';

  @override
  String get noActivePurchaseFound => 'No active purchase found.';

  @override
  String get restorePurchaseDescription =>
      'Restore purchases made with this Google Play account.';

  @override
  String get zumiProActive => 'Zumi Pro is active';

  @override
  String get checking => 'Checking…';

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
  String get clean => 'Clean';

  @override
  String get ffmpegLicenseTitle => 'FFmpeg LGPL 2.1 license text';

  @override
  String ffmpegLicense(Object license) {
    return 'License: $license';
  }

  @override
  String ffmpegVersion(Object version) {
    return 'Version: $version';
  }

  @override
  String ffmpegLinkage(Object linkage) {
    return 'Linkage: $linkage';
  }

  @override
  String ffmpegBuiltAbis(Object abis) {
    return 'Built ABIs: $abis';
  }

  @override
  String ffmpegSource(Object source) {
    return 'Source: $source';
  }

  @override
  String get thirdPartyLicenses => 'Flutter and Dart packages';

  @override
  String get thirdPartyLicensesDescription =>
      'Open their third-party license notices.';

  @override
  String get fullFfmpegLicenseFallback =>
      'Full license text is shipped in the app\'s LGPL license asset.';

  @override
  String get billingUnavailable =>
      'Subscription details are unavailable right now.';

  @override
  String get purchaseFailed => 'The purchase could not be completed.';

  @override
  String get restoreFailed => 'Purchases could not be restored.';

  @override
  String get receiptVerificationFailed =>
      'The purchase receipt could not be verified.';

  @override
  String get ffmpegName => 'FFmpeg';

  @override
  String get storageJobsLoadFailed => 'Interrupted jobs could not be loaded.';

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
  String get appearanceLanguage => 'Appearance & language';

  @override
  String get compression => 'Compression';

  @override
  String get onDeviceAI => 'On-device AI';

  @override
  String get notificationsPrivacy => 'Notifications & privacy';

  @override
  String get plansPurchases => 'Plans & purchases';

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
  String get zumiAssistant => 'Zumi Assistant';

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
  String get comparePlansAndUpgrade => 'Compare plans and upgrade';

  @override
  String get paymentMethodsAndBilling => 'Payment methods and billing';

  @override
  String get restoreYourPreviousPurchase => 'Restore your previous purchase';

  @override
  String get versionAndBuildDetails => 'Version and build details';

  @override
  String get theDeveloperBehindZumi => 'The developer behind Zumi';

  @override
  String get openSourcePackageLicenses => 'Open source package licenses';

  @override
  String get howDataIsHandled => 'How data is handled';

  @override
  String get rulesForUsingZumi => 'Rules for using Zumi';

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
  String get viewZumiSourceCode => 'View Zumi source code';

  @override
  String get readTheREADME => 'Read the README';

  @override
  String get learnAboutZumiOnGitHub => 'Learn about Zumi on GitHub';

  @override
  String get reportAnIssue => 'Report an issue';

  @override
  String get viewAndCreateGitHubIssues => 'View and create GitHub issues';

  @override
  String get latestRelease => 'Latest release';

  @override
  String get viewReleasesAndDownloads => 'View releases and downloads';

  @override
  String get supportZumi => 'Support Zumi';

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
  String get zumiIsTemporarilyUnavailablePleaseTryAgainLater =>
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
}
