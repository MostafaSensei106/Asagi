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

  @override
  String get homeTitle => 'Zumi';

  @override
  String get homeDescription => 'Compress videos privately, on your device.';

  @override
  String get onboardingTitle => 'Welcome to Zumi';

  @override
  String get onboardingDescription =>
      'Learn how Zumi compresses your videos without ever leaving your phone.';

  @override
  String get loginTitle => 'Sign in';

  @override
  String get loginDescription =>
      'Sign in to sync your plan and keep your purchases available on every device.';

  @override
  String get videoSelectTitle => 'Choose a video';

  @override
  String get videoSelectDescription =>
      'Pick a video from your gallery to start compressing.';

  @override
  String get compressionSetupTitle => 'Compression setup';

  @override
  String get compressionSetupDescription =>
      'Choose resolution, bitrate, and output format before you start.';

  @override
  String get compressionProgressTitle => 'Compressing';

  @override
  String get compressionProgressDescription =>
      'Follow the live progress of your compression job.';

  @override
  String get compressionResultTitle => 'Compression result';

  @override
  String get compressionResultDescription =>
      'Compare the before and after size, then save or share the result.';

  @override
  String get compressionHistoryTitle => 'Compression history';

  @override
  String get compressionHistoryDescription =>
      'Review the videos you have compressed on this device.';

  @override
  String get settingsTitle => 'Settings';

  @override
  String get settingsAppearanceTitle => 'Appearance';

  @override
  String get settingsAppearanceDescription =>
      'Theme, color scheme, and motion preferences.';

  @override
  String get settingsLanguageTitle => 'Language';

  @override
  String get settingsLanguageDescription => 'App language and text direction.';

  @override
  String get settingsCompressionTitle => 'Compression defaults';

  @override
  String get settingsCompressionDescription =>
      'Default resolution, bitrate, and output format.';

  @override
  String get settingsStorageTitle => 'Storage & cleanup';

  @override
  String get settingsStorageDescription =>
      'Storage usage, cache size, and temporary-file cleanup.';

  @override
  String get settingsNotificationsTitle => 'Notifications';

  @override
  String get settingsNotificationsDescription =>
      'Job completion and product update notifications.';

  @override
  String get settingsPrivacyTitle => 'Privacy';

  @override
  String get settingsPrivacyDescription =>
      'On-device processing, local logs, and optional crash reports.';

  @override
  String get aboutAppTitle => 'About Zumi';

  @override
  String get aboutAppDescription =>
      'Version, build number, and application details.';

  @override
  String get aboutDeveloperTitle => 'About the developer';

  @override
  String get aboutDeveloperDescription =>
      'The developer and tools behind Zumi.';

  @override
  String get aboutLicensesTitle => 'Open-source licenses';

  @override
  String get aboutLicensesDescription =>
      'Open-source packages bundled with Zumi.';

  @override
  String get legalPrivacyTitle => 'Privacy policy';

  @override
  String get legalPrivacyDescription =>
      'How Zumi handles your videos and data.';

  @override
  String get legalTermsTitle => 'Terms of service';

  @override
  String get legalTermsDescription =>
      'The terms that apply to Zumi and its purchases.';

  @override
  String get legalDataSafetyTitle => 'Data safety';

  @override
  String get legalDataSafetyDescription =>
      'Summary of the data Zumi collects and why.';

  @override
  String get legalPermissionsTitle => 'Permissions';

  @override
  String get legalPermissionsDescription =>
      'Runtime permissions Zumi requests and why each is needed.';

  @override
  String get helpFaqTitle => 'FAQ';

  @override
  String get helpFaqDescription =>
      'Answers to common questions about compression and billing.';

  @override
  String get helpSupportTitle => 'Support';

  @override
  String get helpSupportDescription =>
      'Get help with your account or a purchase.';

  @override
  String get helpFeedbackTitle => 'Send feedback';

  @override
  String get helpFeedbackDescription =>
      'Report a problem or suggest an improvement.';

  @override
  String get plansTitle => 'Plans';

  @override
  String get plansDescription => 'Compare plans and see what each one unlocks.';

  @override
  String get plansDetailsTitle => 'Plan details';

  @override
  String get plansDetailsDescription =>
      'Benefits, limits, and pricing for this plan.';

  @override
  String get plansMethodsTitle => 'Payment methods';

  @override
  String get plansMethodsDescription =>
      'Supported ways to pay, including store billing.';

  @override
  String get plansRestoreTitle => 'Restore purchases';

  @override
  String get plansRestoreDescription =>
      'Re-apply a purchase made on another device.';

  @override
  String get profileTitle => 'Profile';

  @override
  String get profileDescription =>
      'Your identity, plan status, and account preferences.';

  @override
  String get profileDeleteTitle => 'Delete account';

  @override
  String get profileDeleteDescription =>
      'Permanently remove your account and its server-side data.';

  @override
  String get rateAppTitle => 'Rate Zumi';

  @override
  String get rateAppDescription =>
      'Tell others how Zumi worked for you on the store.';

  @override
  String get shareAppTitle => 'Share Zumi';

  @override
  String get shareAppDescription => 'Recommend Zumi to a friend.';

  @override
  String get settingsGroupAppearance => 'Appearance & language';

  @override
  String get settingsGroupCompression => 'Compression';

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
  String get compressionNoSpace =>
      'There is not enough free storage to compress this video.';

  @override
  String get compressionHdrUnsupported =>
      'This device cannot process the selected HDR mode. Try converting to SDR.';

  @override
  String get compressionGeneralFailure =>
      'Compression could not be completed. Try another setting or video.';

  @override
  String get comingSoon => 'Coming soon';
}
