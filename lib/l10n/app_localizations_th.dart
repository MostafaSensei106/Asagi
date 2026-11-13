// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Thai (`th`).
class AppLocalizationsTh extends AppLocalizations {
  AppLocalizationsTh([String locale = 'th']) : super(locale);

  @override
  String get zumi => 'Zumi';

  @override
  String get downloadFile => 'ดาวน์โหลดไฟล์';

  @override
  String fileOpenedInBrowser(String fileName) {
    return 'ไฟล์ถูกเปิดในเบราว์เซอร์: $fileName';
  }

  @override
  String fileSavedToDcim(String fileName) {
    return 'ไฟล์ถูกบันทึกในแกลเลอรี: $fileName';
  }

  @override
  String fileSavedToDocuments(String fileName) {
    return 'ไฟล์ถูกบันทึกในเอกสาร: $fileName';
  }

  @override
  String get fileAlreadySaved => 'ไฟล์ถูกบันทึกแล้ว';

  @override
  String get error => 'ข้อผิดพลาด';

  @override
  String get info => 'ข้อมูล';

  @override
  String get success => 'สำเร็จ';

  @override
  String get warning => 'คำเตือน';

  @override
  String get paid => 'ชำระเงินแล้ว';

  @override
  String get unpaid => 'ยังไม่ได้ชำระ';

  @override
  String get partial => 'บางส่วน';

  @override
  String get error_address_line_cant_be_empty => 'บรรทัดที่อยู่ต้องไม่ว่าง';

  @override
  String get error_address_line_too_long => 'บรรทัดที่อยู่นานเกินไป';

  @override
  String get error_address_invalid_special_characters =>
      'ไม่อนุญาตให้ใช้ตัวอักษรพิเศษ';

  @override
  String get error_address_emoji_not_allowed =>
      'ไม่อนุญาตให้ใช้สัญลักษณ์อีโมจิ';

  @override
  String get error_city_cant_be_empty => 'เมืองต้องไม่ว่าง';

  @override
  String get error_city_too_long => 'ชื่อเมืองยาวเกินไป';

  @override
  String get error_city_invalid_special_characters =>
      'เมืองมีตัวอักษรพิเศษที่ไม่ถูกต้อง';

  @override
  String get error_address_label_cant_be_empty => 'ป้ายที่อยู่ต้องไม่ว่าง';

  @override
  String get error_address_label_too_long => 'ป้ายที่อยู่นานเกินไป';

  @override
  String get error_email_cant_be_empty => 'อีเมลต้องไม่ว่าง';

  @override
  String get error_email_not_invalid_format => 'รูปแบบอีเมลไม่ถูกต้อง';

  @override
  String get error_email_contains_invalid_characters =>
      'อีเมลมีอักขระที่ไม่ถูกต้อง';

  @override
  String get error_email_must_contain_at_symbol => 'อีเมลต้องมี @';

  @override
  String get error_email_must_be_in_lowercase => 'อีเมลต้องเป็นตัวพิมพ์เล็ก';

  @override
  String get error_arabic_not_allowed => 'ไม่อนุญาตให้ใช้ตัวอักษรอาหรับ';

  @override
  String get error_email_emoji_not_allowed =>
      'ไม่อนุญาตให้ใช้สัญลักษณ์อีโมจิในอีเมล';

  @override
  String get error_phone_number_cant_be_empty =>
      'หมายเลขโทรศัพท์ไม่สามารถเว้นว่างได้';

  @override
  String get error_phone_number_invalid => 'หมายเลขโทรศัพท์ไม่ถูกต้อง';

  @override
  String get error_phone_number_min_length =>
      'หมายเลขโทรศัพท์ต้องมีอย่างน้อย 11 หลัก';

  @override
  String get error_name_cant_be_empty => 'ชื่อไม่สามารถเว้นว่างได้';

  @override
  String get error_name_invalid => 'ชื่อไม่ถูกต้อง';

  @override
  String get error_name_too_short_at_least_3_characters =>
      'ชื่อต้องมีอย่างน้อย 3 ตัวอักษร';

  @override
  String get error_name_too_long_maximum_20_characters =>
      'ชื่อไม่สามารถเกิน 20 ตัวอักษร';

  @override
  String get error_name_invalid_special_characters =>
      'ชื่อมีอักขระพิเศษที่ไม่ถูกต้อง';

  @override
  String get error_name_emoji_not_allowed =>
      'ไม่อนุญาตให้ใช้สัญลักษณ์อีโมจิในชื่อ';

  @override
  String get error_password_cant_be_empty => 'รหัสผ่านไม่สามารถเว้นว่างได้';

  @override
  String
  get error_password_must_contain_uppercase_lowercase_number_and_special_character =>
      'รหัสผ่านต้องประกอบด้วยอักษรตัวใหญ่ ตัวเล็ก ตัวเลข และอักขระพิเศษ';

  @override
  String get error_password_must_be_at_least_8_characters_long =>
      'รหัสผ่านต้องมีอย่างน้อย 8 ตัวอักษร';

  @override
  String get noInternetConnection => 'ไม่มีการเชื่อมต่ออินเทอร์เน็ต';

  @override
  String get internetConnectionRestored => 'การเชื่อมต่ออินเทอร์เน็ตกลับมาแล้ว';

  @override
  String get retry => 'ลองอีกครั้ง';

  @override
  String get cancel => 'ยกเลิก';

  @override
  String get confirm => 'ยืนยัน';

  @override
  String get pleaseWait => 'กรุณารอสักครู่...';

  @override
  String get ok => 'ตกลง';

  @override
  String get compressVideosPrivatelyOnYourDevice =>
      'บีบอัดวิดีโออย่างเป็นส่วนตัวบนอุปกรณ์ของคุณ';

  @override
  String get welcomeToZumi => 'ยินดีต้อนรับสู่ Zumi';

  @override
  String get learnHowZumiCompressesYourVideosWithoutEverLeavingYourPhone =>
      'เรียนรู้ว่า Zumi บีบอัดวิดีโอของคุณอย่างไรโดยไม่ต้องออกจากโทรศัพท์';

  @override
  String get signIn => 'ลงชื่อเข้าใช้';

  @override
  String get signInToSyncYourPlanAndKeepYourPurchasesAvailableOnEveryDevice =>
      'ลงชื่อเข้าใช้เพื่อซิงค์แผนของคุณและเก็บการซื้อของคุณให้สามารถใช้งานได้บนทุกอุปกรณ์';

  @override
  String get chooseAVideo => 'เลือกวิดีโอ';

  @override
  String get pickAVideoFromYourGalleryToStartCompressing =>
      'เลือกรายการวิดีโอจากคลังของคุณเพื่อเริ่มบีบอัด';

  @override
  String get compressionSetup => 'การตั้งค่าการบีบอัด';

  @override
  String get chooseResolutionBitrateAndOutputFormatBeforeYouStart =>
      'เลือกความละเอียด อัตราบิต และรูปแบบเอาต์พุตก่อนเริ่ม';

  @override
  String get compressing => 'กำลังบีบอัด';

  @override
  String get followTheLiveProgressOfYourCompressionJob =>
      'ติดตามความคืบหน้าของงานบีบอัดแบบเรียลไทม์';

  @override
  String get compressionResult => 'ผลลัพธ์การบีบอัด';

  @override
  String get compareTheBeforeAndAfterSizeThenSaveOrShareTheResult =>
      'เปรียบเทียบขนาดก่อนและหลัง จากนั้นบันทึกหรือแชร์ผลลัพธ์';

  @override
  String get compressionHistory => 'ประวัติการบีบอัด';

  @override
  String get reviewTheVideosYouHaveCompressedOnThisDevice =>
      'ตรวจสอบวิดีโอที่คุณได้บีบอัดบนอุปกรณ์นี้';

  @override
  String get settings => 'การตั้งค่า';

  @override
  String get appearance => 'ลักษณะ';

  @override
  String get themeColorSchemeAndMotionPreferences =>
      'ธีม โทนสี และรูปแบบการเคลื่อนไหว';

  @override
  String get language => 'ภาษา';

  @override
  String get appLanguageAndTextDirection => 'ภาษาของแอปและทิศทางข้อความ';

  @override
  String get compressionDefaults => 'ค่าพื้นฐานการบีบอัด';

  @override
  String get defaultResolutionBitrateAndOutputFormat =>
      'ความละเอียด อัตราบิต และรูปแบบเอาต์พุตเริ่มต้น';

  @override
  String get storageCleanup => 'พื้นที่เก็บข้อมูล & การทำความสะอาด';

  @override
  String get storageUsageCacheSizeAndTemporaryFileCleanup =>
      'การใช้งานพื้นที่จัดเก็บ ขนาดแคช และการล้างไฟล์ชั่วคราว';

  @override
  String get notifications => 'การแจ้งเตือน';

  @override
  String get jobCompletionAndProductUpdateNotifications =>
      'การแจ้งเตือนเมื่อทำงานเสร็จและอัปเดตผลิตภัณฑ์';

  @override
  String get privacy => 'ความเป็นส่วนตัว';

  @override
  String get onDeviceProcessingLocalLogsAndOptionalCrashReports =>
      'การประมวลผลบนอุปกรณ์ บันทึกภายใน และรายงานข้อขัดข้อง (ไม่บังคับ)';

  @override
  String get aboutZumi => 'เกี่ยวกับ Zumi';

  @override
  String get versionBuildNumberAndApplicationDetails =>
      'เวอร์ชัน หมายเลขบิลด์ และรายละเอียดแอปพลิเคชัน';

  @override
  String get aboutTheDeveloper => 'เกี่ยวกับผู้พัฒนา';

  @override
  String get theDeveloperAndToolsBehindZumi =>
      'ผู้พัฒนาและเครื่องมือเบื้องหลัง Zumi';

  @override
  String get openSourceLicenses => 'ใบอนุญาตโอเพนซอร์ส';

  @override
  String get openSourcePackagesBundledWithZumi =>
      'แพ็กเกจโอเพนซอร์สที่มาพร้อมกับ Zumi';

  @override
  String get privacyPolicy => 'นโยบายความเป็นส่วนตัว';

  @override
  String get howZumiHandlesYourVideosAndData =>
      'วิธีที่ Zumi จัดการวิดีโอและข้อมูลของคุณ';

  @override
  String get termsOfService => 'ข้อกำหนดในการให้บริการ';

  @override
  String get theTermsThatApplyToZumiAndItsPurchases =>
      'ข้อกำหนดที่ใช้กับ Zumi และการซื้อของมัน';

  @override
  String get dataSafety => 'ความปลอดภัยของข้อมูล';

  @override
  String get summaryOfTheDataZumiCollectsAndWhy =>
      'สรุปข้อมูลที่ Zumi รวบรวมและเหตุผล';

  @override
  String get permissions => 'สิทธิ์';

  @override
  String get runtimePermissionsZumiRequestsAndWhyEachIsNeeded =>
      'สิทธิ์ในเวลารันไทม์ที่ Zumi ขอและเหตุผลที่ต้องใช้แต่ละอย่าง';

  @override
  String get faq => 'คำถามที่พบบ่อย';

  @override
  String get answersToCommonQuestionsAboutCompressionAndBilling =>
      'คำตอบสำหรับคำถามทั่วไปเกี่ยวกับการบีบอัดและการเรียกเก็บเงิน';

  @override
  String get support => 'สนับสนุน';

  @override
  String get getHelpWithYourAccountOrAPurchase =>
      'รับความช่วยเหลือเกี่ยวกับบัญชีหรือการซื้อของคุณ';

  @override
  String get sendFeedback => 'ส่งความคิดเห็น';

  @override
  String get reportAProblemOrSuggestAnImprovement =>
      'รายงานปัญหาหรือเสนอแนะการปรับปรุง';

  @override
  String get plans => 'แผน';

  @override
  String get comparePlansAndSeeWhatEachOneUnlocks =>
      'เปรียบเทียบแผนและดูสิ่งที่แต่ละแผนปลดล็อก';

  @override
  String get planDetails => 'รายละเอียดแผน';

  @override
  String get benefitsLimitsAndPricingForThisPlan =>
      'สิทธิประโยชน์ ขีดจำกัด และราคาของแผนนี้';

  @override
  String get paymentMethods => 'วิธีการชำระเงิน';

  @override
  String get supportedWaysToPayIncludingStoreBilling =>
      'วิธีการชำระเงินที่รองรับ รวมถึงการเรียกเก็บเงินจากร้านค้า';

  @override
  String get restorePurchases => 'กู้คืนการซื้อ';

  @override
  String get reApplyAPurchaseMadeOnAnotherDevice =>
      'สมัครซื้อสินค้าที่ซื้อบนอุปกรณ์อื่นอีกครั้ง';

  @override
  String get profile => 'โปรไฟล์';

  @override
  String get yourIdentityPlanStatusAndAccountPreferences =>
      'ข้อมูลประจำตัวของคุณ สถานะแผน และการตั้งค่าบัญชี';

  @override
  String get deleteAccount => 'ลบบัญชี';

  @override
  String get permanentlyRemoveYourAccountAndItsServerSideData =>
      'ลบบัญชีของคุณและข้อมูลบนเซิร์ฟเวอร์อย่างถาวร';

  @override
  String get rateZumi => 'ให้คะแนน Zumi';

  @override
  String get tellOthersHowZumiWorkedForYouOnTheStore =>
      'บอกผู้อื่นว่า Zumi ทำงานอย่างไรสำหรับคุณในร้านค้า';

  @override
  String get shareZumi => 'แชร์ Zumi';

  @override
  String get recommendZumiToAFriend => 'แนะนำ Zumi ให้เพื่อน';

  @override
  String get settingsGroupAppearance => 'ลักษณะและภาษา';

  @override
  String get settingsGroupCompression => 'การบีบอัด';

  @override
  String get settingsGroupAi => 'AI บนอุปกรณ์';

  @override
  String get settingsGroupPrivacy => 'การแจ้งเตือนและความเป็นส่วนตัว';

  @override
  String get settingsGroupPlans => 'แผนและการซื้อ';

  @override
  String get settingsGroupAbout => 'เกี่ยวกับ';

  @override
  String get settingsGroupLegal => 'กฎหมาย';

  @override
  String get settingsGroupHelp => 'ความช่วยเหลือและข้อเสนอแนะ';

  @override
  String get settingsGroupAccount => 'บัญชี';

  @override
  String get settingsAppearanceSubtitle => 'ธีมและภาษาของแอป';

  @override
  String get settingsLanguageSubtitle => 'ภาษาและทิศทางของแอป';

  @override
  String get settingsCompressionSubtitle => 'คุณภาพและรูปแบบเริ่มต้น';

  @override
  String get settingsStorageSubtitle => 'การใช้งานแคชและพื้นที่จัดเก็บ';

  @override
  String get aiSettings => 'การตั้งค่า AI';

  @override
  String get zumiAssistant => 'ผู้ช่วย Zumi';

  @override
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere =>
      'ผู้ช่วยส่วนตัวสำหรับวิดีโอของคุณกำลังจะมาเร็ว ๆ นี้ คุณจะสามารถถามเกี่ยวกับการบีบอัด การจัดระเบียบ และวิดีโอที่บันทึกไว้ที่นี่';

  @override
  String get settingsAiSubtitle => 'โมเดลท้องถิ่นและเครื่องมืออัจฉริยะ';

  @override
  String get exploreLocalModelsAndFutureAiToolsTheseOptionsAreNotActiveYet =>
      'สำรวจโมเดลท้องถิ่นและเครื่องมือ AI ในอนาคต ตัวเลือกเหล่านี้ยังไม่เปิดใช้งาน';

  @override
  String get localModels => 'โมเดลท้องถิ่น';

  @override
  String get aiModelsSubtitle => 'เรียกดูและดาวน์โหลดโมเดลที่รองรับ';

  @override
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere =>
      'เลือกโมเดลที่รองรับ ดาวน์โหลดไปยังอุปกรณ์นี้ และจัดการโมเดลที่ติดตั้งที่นี่';

  @override
  String get importAModel => 'นำเข้าโมเดล';

  @override
  String get aiImportSubtitle => 'ใช้โมเดลที่เข้ากันได้จากไฟล์ของคุณ';

  @override
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt =>
      'เลือกไฟล์โมเดลท้องถิ่นที่เข้ากันได้และตรวจสอบข้อกำหนดก่อนใช้งาน';

  @override
  String get smartFeatures => 'คุณสมบัติอัจฉริยะ';

  @override
  String get aiFeaturesSubtitle => 'การบีบอัด การจัดระเบียบ และการค้นหา';

  @override
  String
  get chooseWhichLocalAiSuggestionsToUseForVideoCompressionOrganizationNamingAndSearch =>
      'เลือกคำแนะนำ AI ท้องถิ่นที่ต้องการใช้สำหรับการบีบอัดวิดีโอ การจัดระเบียบ การตั้งชื่อ และการค้นหา';

  @override
  String get modelPerformance => 'ประสิทธิภาพของโมเดล';

  @override
  String get aiRuntimeSubtitle => 'การตั้งค่าการประมวลผลและทรัพยากร';

  @override
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels =>
      'ควบคุมแบ็กเอนด์การประมวลผลและขีดจำกัดทรัพยากรสำหรับโมเดลที่รองรับ';

  @override
  String get conversationSettings => 'การตั้งค่าการสนทนา';

  @override
  String get aiChatSettingsSubtitle =>
      'การสตรีม การคิด และความยาวของการตอบสนอง';

  @override
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits =>
      'กำหนดค่าการตอบสนองของผู้ช่วย รวมถึงการสตรีม โหมดการคิด การสุ่มตัวอย่าง และข้อจำกัดการตอบสนอง';

  @override
  String get imagesAndAudio => 'ภาพและเสียง';

  @override
  String get aiMediaSubtitle => 'ควบคุมอินพุตมัลติโมดอล';

  @override
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos =>
      'เลือกว่ารุ่นที่เข้ากันได้สามารถวิเคราะห์ภาพและเสียงที่เลือกจากวิดีโอของคุณได้หรือไม่';

  @override
  String get semanticSearch => 'การค้นหาเชิงความหมาย';

  @override
  String get aiSearchSubtitle => 'การฝังและการจัดทำดัชนีในพื้นที่';

  @override
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning =>
      'จัดการโมเดลฝังในเครื่องและดัชนีการค้นหาเพื่อค้นหาวิดีโอและช่วงเวลาโดยความหมาย';

  @override
  String get toolsAndStructuredOutput => 'เครื่องมือและผลลัพธ์ที่มีโครงสร้าง';

  @override
  String get aiToolsSubtitle => 'การดำเนินการ โครงร่าง และการยืนยัน';

  @override
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation =>
      'จัดการการดำเนินการผู้ช่วยที่รองรับและการตอบสนองแบบมีโครงสร้าง การดำเนินการที่ส่งผลต่อไฟล์จะต้องได้รับการยืนยันจากคุณ';

  @override
  String get aiGroupModels => 'โมเดล';

  @override
  String get aiGroupExperience => 'ประสบการณ์ผู้ช่วย';

  @override
  String get aiGroupCapabilities => 'ความสามารถอัจฉริยะ';

  @override
  String get aiGroupPerformance => 'ประสิทธิภาพ';

  @override
  String get compressionHistorySubtitle => 'ประวิดีโอที่บีบอัดของคุณ';

  @override
  String get settingsNotificationsSubtitle =>
      'การแจ้งเตือนการทำงานเสร็จสิ้นและอัปเดต';

  @override
  String get settingsPrivacySubtitle => 'ข้อมูลของคุณอยู่ในเครื่อง';

  @override
  String get plansSubtitle => 'เปรียบเทียบแผนและอัปเกรด';

  @override
  String get plansMethodsSubtitle => 'วิธีการชำระเงินและการเรียกเก็บเงิน';

  @override
  String get plansRestoreSubtitle => 'กู้คืนการซื้อก่อนหน้าของคุณ';

  @override
  String get aboutAppSubtitle => 'รายละเอียดเวอร์ชันและบิลด์';

  @override
  String get aboutDeveloperSubtitle => 'นักพัฒนาผู้สร้าง Zumi';

  @override
  String get aboutLicensesSubtitle => 'ใบอนุญาตแพ็กเกจโอเพ่นซอร์ส';

  @override
  String get legalPrivacySubtitle => 'วิธีการจัดการข้อมูล';

  @override
  String get legalTermsSubtitle => 'กฎสำหรับการใช้ Zumi';

  @override
  String get legalDataSafetySubtitle => 'ข้อมูลที่เรารวบรวม';

  @override
  String get legalPermissionsSubtitle => 'ทำไมเราจึงต้องการสิทธิ์';

  @override
  String get helpFaqSubtitle => 'คำตอบสำหรับคำถามที่พบบ่อย';

  @override
  String get helpSupportSubtitle => 'ติดต่อผู้พัฒนาโดยตรง';

  @override
  String get helpFeedbackSubtitle => 'ส่งความคิดเห็นของคุณให้เรา';

  @override
  String get compressionPickVideo => 'เลือกวิดีโอ';

  @override
  String get compressionTargetMb => 'ขนาดเป้าหมาย (MB)';

  @override
  String get compressionStart => 'เริ่มการบีบอัด';

  @override
  String get compressionPause => 'หยุดชั่วคราว';

  @override
  String get compressionResume => 'ดำเนินการต่อ';

  @override
  String get compressionViewResult => 'ดูผลลัพธ์';

  @override
  String get compressionSaveGallery => 'บันทึกไปที่แกลเลอรี';

  @override
  String get compressionShare => 'แชร์วิดีโอ';

  @override
  String get compressionOriginalSize => 'ขนาดต้นฉบับ';

  @override
  String get compressionOutputSize => 'ขนาดที่ส่งออก';

  @override
  String get compressionEmptyHistory => 'ยังไม่มีวิดีโอที่บีบอัด';

  @override
  String get compressionSavedGallery => 'บันทึกไปที่แกลเลอรีแล้ว';

  @override
  String get compressionInvalidTarget => 'กรอกขนาดเป้าหมายที่มากกว่าศูนย์';

  @override
  String get compressionCancelled => 'การบีบอัดถูกยกเลิก';

  @override
  String get compressionTargetExceeded =>
      'วิดีโอนี้ไม่สามารถถึงขนาดที่เลือก ลองขนาดเป้าหมายที่ใหญ่ขึ้น';

  @override
  String get compressionTargetInfeasible =>
      'ขนาดที่เลือกเล็กเกินไปสำหรับวิดีโอนี้ เลือกขนาดที่ใหญ่ขึ้น';

  @override
  String get compressionPreviewBefore => 'ตัวอย่างต้นฉบับ';

  @override
  String get compressionPreviewAfter => 'ตัวอย่างที่บีบอัดแล้ว';

  @override
  String get compressionPreset => 'ค่ากำหนดเป้าหมาย';

  @override
  String get compressionCustom => 'ขนาดกำหนดเอง';

  @override
  String get compressionPreviewUnavailable => 'ไม่สามารถดูตัวอย่างได้';

  @override
  String get compressionAdvanced => 'การควบคุมขั้นสูง';

  @override
  String get compressionAutomatic => 'อัตโนมัติ';

  @override
  String get compressionResolutionLimit => 'ความละเอียดสูงสุด';

  @override
  String get compressionSourceResolution => 'ความละเอียดต้นฉบับ';

  @override
  String get compressionFrameRateLimit => 'อัตราเฟรมสูงสุด';

  @override
  String get compressionAudioQuality => 'อัตราบิตเสียง';

  @override
  String get compressionRemoveAudio => 'ลบเสียง';

  @override
  String get compressionVideoBitrateLimit => 'เพดานอัตราบิตวิดีโอ (kbps)';

  @override
  String get compressionHdrPolicy => 'การจัดการ HDR';

  @override
  String get compressionHdrConvert => 'แปลงเป็น SDR';

  @override
  String get compressionHdrPreserve => 'เก็บ HDR เมื่อรองรับ';

  @override
  String get compressionPlanPreview => 'ก่อนที่คุณจะเริ่ม';

  @override
  String get compressionPlanLoading => 'กำลังคำนวณแผนการบีบอัด…';

  @override
  String get compressionPlanResolution => 'ความละเอียดที่วางแผนไว้';

  @override
  String get compressionPlanVideoBitrate => 'อัตราบิตวิดีโอที่วางแผนไว้';

  @override
  String get compressionPlanAudioBitrate => 'อัตราบิตเสียงที่วางแผนไว้';

  @override
  String get compressionAudioConversionNote =>
      'การเข้ารหัสซ้ำจะแปลงเสียงเป็น AAC สเตอริโอ Dolby Atmos และ DTS เสียงแบบสเปเชียลจะไม่ถูกเก็บรักษาไว้';

  @override
  String get compressionPlanTooSmall =>
      'เป้าหมายนี้มีขนาดเล็กเกินไปสำหรับวิดีโอที่ใช้งานได้ เพิ่มขนาดหรือปรับขีดจำกัดอื่น ๆ ให้ต่ำลง';

  @override
  String get compressionPlanLowQuality =>
      'เป้าหมายที่เลือกอาจลดคุณภาพของวิดีโอ';

  @override
  String get compressionPlanAlreadyWithinLimit =>
      'ต้นฉบับอยู่ภายในขีดจำกัดขนาดแล้ว';

  @override
  String get compressionInvalidBitrate =>
      'กรอกอัตราบิตอย่างน้อย 150 kbps หรือเว้นว่างเพื่อปรับอัตโนมัติ';

  @override
  String get compressionInvalidResolution =>
      'กรอกความละเอียดแบบคู่ตั้งแต่ 240 ถึง 16384 หรือเว้นว่างเพื่อปรับอัตโนมัติ';

  @override
  String get compressionSeek => 'ตำแหน่งวิดีโอ';

  @override
  String get compressionInterrupted =>
      'การบีบอัดก่อนหน้านี้ถูกขัดจังหวะ ไฟล์ชั่วคราวของมันถูกลบแล้ว; คุณสามารถเลือกวิดีโอและลองอีกครั้ง';

  @override
  String get compressionDismiss => 'ปิด';

  @override
  String get compressionClearHistory => 'ล้างประวัติ';

  @override
  String get compressionClearHistoryConfirm =>
      'ลบประวัติทั้งหมดหรือไม่? วิดีโอที่บันทึกไว้จะยังคงอยู่บนอุปกรณ์ของคุณ';

  @override
  String get compressionAttempts => 'ความพยายาม';

  @override
  String get compressionTargetSize => 'ขนาดเป้าหมาย';

  @override
  String get compressionOutputResolution => 'ความละเอียดเอาต์พุต';

  @override
  String get compressionInvalidVideo =>
      'ไม่สามารถอ่านวิดีโอนี้ได้ กรุณาเลือกไฟล์อื่น';

  @override
  String get compressionInvalidOutput =>
      'วิดีโอที่เข้ารหัสล้มเหลวในการตรวจสอบ วิดีโอต้นฉบับของคุณไม่ได้ถูกเปลี่ยน';

  @override
  String get compressionEncoderUnsupported =>
      'อุปกรณ์นี้ไม่สามารถเข้ารหัสความละเอียดหรืออัตราเฟรมที่เลือกได้ ลดการตั้งค่านั้นแล้วลองอีกครั้ง';

  @override
  String get compressionAudioDecoderUnsupported =>
      'อุปกรณ์นี้ไม่สามารถถอดรหัสรูปแบบเสียงนี้สำหรับการบีบอัด ลบเสียงออกหรือใช้แหล่งที่รองรับ';

  @override
  String get compressionVideoDecoderUnsupported =>
      'อุปกรณ์นี้ไม่สามารถถอดรหัสรูปแบบวิดีโอนี้หรือโปรไฟล์สำหรับการบีบอัดได้ กรุณาเลือกแหล่งข้อมูลหรืออุปกรณ์อื่น';

  @override
  String get compressionMp4NotStreamable =>
      'ไฟล์ MP4 ที่ส่งออกยังไม่พร้อมสำหรับการสตรีม ลองใช้วิดีโอหรืออุปกรณ์อื่น';

  @override
  String get compressionNoSpace =>
      'พื้นที่เก็บข้อมูลว่างไม่เพียงพอสำหรับการบีบอัดวิดีโอนี้';

  @override
  String get compressionHdrUnsupported =>
      'อุปกรณ์นี้ไม่สามารถประมวลผลโหมด HDR ที่เลือกได้ ลองแปลงเป็น SDR';

  @override
  String get compressionGeneralFailure =>
      'ไม่สามารถทำการบีบอัดเสร็จสมบูรณ์ได้ ลองใช้การตั้งค่าหรือวิดีโออื่น';

  @override
  String get aboutIdentitySection => 'ตัวตนของแอป';

  @override
  String get aboutAppName => 'ชื่อแอป';

  @override
  String get aboutPackageName => 'ชื่อแพ็กเกจ';

  @override
  String get aboutVersion => 'เวอร์ชัน';

  @override
  String get aboutBuildNumber => 'หมายเลขบิลด์';

  @override
  String get aboutEnvironmentSection => 'อุปกรณ์และบิลด์';

  @override
  String get aboutOperatingSystem => 'ระบบปฏิบัติการ';

  @override
  String get aboutOsVersion => 'เวอร์ชัน OS';

  @override
  String get aboutBuildMode => 'โหมดบิลด์';

  @override
  String get aboutDebug => 'ดีบัก';

  @override
  String get aboutRelease => 'ปล่อย';

  @override
  String get aboutToolchainSection => 'สร้างด้วย';

  @override
  String get aboutInstallationSection => 'การติดตั้ง';

  @override
  String get aboutInstaller => 'ติดตั้งจาก';

  @override
  String get aboutInstalledOn => 'ติดตั้งเมื่อ';

  @override
  String get aboutUpdatedOn => 'ปรับปรุงเมื่อ';

  @override
  String get aboutUnavailable => 'ไม่สามารถใช้งานได้';

  @override
  String get aboutProjectSection => 'โครงการและการสนับสนุน';

  @override
  String get aboutRepository => 'คลังเก็บ GitHub';

  @override
  String get aboutRepositorySubtitle => 'ดูซอร์สโค้ดของ Zumi';

  @override
  String get aboutReadme => 'อ่าน README';

  @override
  String get aboutReadmeSubtitle => 'เรียนรู้เกี่ยวกับ Zumi บน GitHub';

  @override
  String get aboutIssues => 'รายงานปัญหา';

  @override
  String get aboutIssuesSubtitle => 'ดูและสร้างปัญหาใน GitHub';

  @override
  String get aboutLatestRelease => 'รุ่นล่าสุด';

  @override
  String get aboutLatestReleaseSubtitle => 'ดูรุ่นและดาวน์โหลด';

  @override
  String get aboutDonate => 'สนับสนุน Zumi';

  @override
  String get aboutDonateSubtitle => 'เปิดหน้าบริจาคอย่างเป็นทางการ';

  @override
  String get aboutLinkError => 'ไม่สามารถเปิดลิงก์ได้ โปรดลองอีกครั้ง';

  @override
  String get aboutDeveloperSection => 'นักพัฒนา';

  @override
  String get aboutDeveloperName => 'Mostafa Sensei';

  @override
  String get aboutDeveloperProfile => 'โปรไฟล์ GitHub';

  @override
  String get aboutDeveloperProfileSubtitle => 'ดูโครงการและรายละเอียดการติดต่อ';

  @override
  String get maintenanceInProgress => 'อยู่ระหว่างการบำรุงรักษา';

  @override
  String get maintenanceMessage =>
      'Zumi ไม่สามารถใช้งานได้ชั่วคราว โปรดลองอีกครั้งภายหลัง';

  @override
  String get comingSoon => 'เร็วๆ นี้';

  @override
  String get languageName => 'ไทย';

  @override
  String get countryCode => 'TH';

  @override
  String countryName(String countryCode) {
    String _temp0 = intl.Intl.selectLogic(countryCode, {
      'AE': 'สหรัฐอาหรับเอมิเรตส์',
      'AT': 'ออสเตรีย',
      'AU': 'ออสเตรเลีย',
      'BE': 'เบลเยียม',
      'BH': 'บาห์เรน',
      'BR': 'บราซิล',
      'CA': 'แคนาดา',
      'CH': 'สวิตเซอร์แลนด์',
      'CN': 'จีน',
      'DE': 'เยอรมนี',
      'DJ': 'จิบูตี',
      'DZ': 'แอลจีเรีย',
      'EG': 'อียิปต์',
      'ES': 'สเปน',
      'FR': 'ฝรั่งเศส',
      'GB': 'สหราชอาณาจักร',
      'HK': 'เขตปกครองพิเศษฮ่องกงแห่งสาธารณรัฐประชาชนจีน',
      'ID': 'อินโดนีเซีย',
      'IQ': 'อิรัก',
      'IT': 'อิตาลี',
      'JO': 'จอร์แดน',
      'JP': 'ญี่ปุ่น',
      'KM': 'คอโมโรส',
      'KR': 'เกาหลีใต้',
      'KW': 'คูเวต',
      'LB': 'เลบานอน',
      'LY': 'ลิเบีย',
      'MA': 'โมร็อกโก',
      'MR': 'มอริเตเนีย',
      'MX': 'เม็กซิโก',
      'NL': 'เนเธอร์แลนด์',
      'OM': 'โอมาน',
      'PL': 'โปแลนด์',
      'PS': 'ดินแดนปาเลสไตน์',
      'PT': 'โปรตุเกส',
      'QA': 'กาตาร์',
      'RU': 'รัสเซีย',
      'SA': 'ซาอุดีอาระเบีย',
      'SD': 'ซูดาน',
      'SE': 'สวีเดน',
      'SG': 'สิงคโปร์',
      'SO': 'โซมาเลีย',
      'SY': 'ซีเรีย',
      'TH': 'ไทย',
      'TN': 'ตูนิเซีย',
      'TR': 'ตุรกี',
      'TW': 'ไต้หวัน',
      'US': 'สหรัฐอเมริกา',
      'VN': 'เวียดนาม',
      'YE': 'เยเมน',
      'other': 'ประเทศ',
    });
    return '$_temp0';
  }
}

/// The translations for Thai, as used in Thailand (`th_TH`).
class AppLocalizationsThTh extends AppLocalizationsTh {
  AppLocalizationsThTh() : super('th_TH');

  @override
  String get zumi => 'Zumi';

  @override
  String get downloadFile => 'ดาวน์โหลดไฟล์';

  @override
  String fileOpenedInBrowser(String fileName) {
    return 'ไฟล์ถูกเปิดในเบราว์เซอร์: $fileName';
  }

  @override
  String fileSavedToDcim(String fileName) {
    return 'ไฟล์ถูกบันทึกในแกลเลอรี: $fileName';
  }

  @override
  String fileSavedToDocuments(String fileName) {
    return 'ไฟล์ถูกบันทึกในเอกสาร: $fileName';
  }

  @override
  String get fileAlreadySaved => 'ไฟล์ถูกบันทึกแล้ว';

  @override
  String get error => 'ข้อผิดพลาด';

  @override
  String get info => 'ข้อมูล';

  @override
  String get success => 'สำเร็จ';

  @override
  String get warning => 'คำเตือน';

  @override
  String get paid => 'ชำระเงินแล้ว';

  @override
  String get unpaid => 'ยังไม่ได้ชำระ';

  @override
  String get partial => 'บางส่วน';

  @override
  String get error_address_line_cant_be_empty => 'บรรทัดที่อยู่ต้องไม่ว่าง';

  @override
  String get error_address_line_too_long => 'บรรทัดที่อยู่นานเกินไป';

  @override
  String get error_address_invalid_special_characters =>
      'ไม่อนุญาตให้ใช้ตัวอักษรพิเศษ';

  @override
  String get error_address_emoji_not_allowed =>
      'ไม่อนุญาตให้ใช้สัญลักษณ์อีโมจิ';

  @override
  String get error_city_cant_be_empty => 'เมืองต้องไม่ว่าง';

  @override
  String get error_city_too_long => 'ชื่อเมืองยาวเกินไป';

  @override
  String get error_city_invalid_special_characters =>
      'เมืองมีตัวอักษรพิเศษที่ไม่ถูกต้อง';

  @override
  String get error_address_label_cant_be_empty => 'ป้ายที่อยู่ต้องไม่ว่าง';

  @override
  String get error_address_label_too_long => 'ป้ายที่อยู่นานเกินไป';

  @override
  String get error_email_cant_be_empty => 'อีเมลต้องไม่ว่าง';

  @override
  String get error_email_not_invalid_format => 'รูปแบบอีเมลไม่ถูกต้อง';

  @override
  String get error_email_contains_invalid_characters =>
      'อีเมลมีอักขระที่ไม่ถูกต้อง';

  @override
  String get error_email_must_contain_at_symbol => 'อีเมลต้องมี @';

  @override
  String get error_email_must_be_in_lowercase => 'อีเมลต้องเป็นตัวพิมพ์เล็ก';

  @override
  String get error_arabic_not_allowed => 'ไม่อนุญาตให้ใช้ตัวอักษรอาหรับ';

  @override
  String get error_email_emoji_not_allowed =>
      'ไม่อนุญาตให้ใช้สัญลักษณ์อีโมจิในอีเมล';

  @override
  String get error_phone_number_cant_be_empty =>
      'หมายเลขโทรศัพท์ไม่สามารถเว้นว่างได้';

  @override
  String get error_phone_number_invalid => 'หมายเลขโทรศัพท์ไม่ถูกต้อง';

  @override
  String get error_phone_number_min_length =>
      'หมายเลขโทรศัพท์ต้องมีอย่างน้อย 11 หลัก';

  @override
  String get error_name_cant_be_empty => 'ชื่อไม่สามารถเว้นว่างได้';

  @override
  String get error_name_invalid => 'ชื่อไม่ถูกต้อง';

  @override
  String get error_name_too_short_at_least_3_characters =>
      'ชื่อต้องมีอย่างน้อย 3 ตัวอักษร';

  @override
  String get error_name_too_long_maximum_20_characters =>
      'ชื่อไม่สามารถเกิน 20 ตัวอักษร';

  @override
  String get error_name_invalid_special_characters =>
      'ชื่อมีอักขระพิเศษที่ไม่ถูกต้อง';

  @override
  String get error_name_emoji_not_allowed =>
      'ไม่อนุญาตให้ใช้สัญลักษณ์อีโมจิในชื่อ';

  @override
  String get error_password_cant_be_empty => 'รหัสผ่านไม่สามารถเว้นว่างได้';

  @override
  String
  get error_password_must_contain_uppercase_lowercase_number_and_special_character =>
      'รหัสผ่านต้องประกอบด้วยอักษรตัวใหญ่ ตัวเล็ก ตัวเลข และอักขระพิเศษ';

  @override
  String get error_password_must_be_at_least_8_characters_long =>
      'รหัสผ่านต้องมีอย่างน้อย 8 ตัวอักษร';

  @override
  String get noInternetConnection => 'ไม่มีการเชื่อมต่ออินเทอร์เน็ต';

  @override
  String get internetConnectionRestored => 'การเชื่อมต่ออินเทอร์เน็ตกลับมาแล้ว';

  @override
  String get retry => 'ลองอีกครั้ง';

  @override
  String get cancel => 'ยกเลิก';

  @override
  String get confirm => 'ยืนยัน';

  @override
  String get pleaseWait => 'กรุณารอสักครู่...';

  @override
  String get ok => 'ตกลง';

  @override
  String get compressVideosPrivatelyOnYourDevice =>
      'บีบอัดวิดีโออย่างเป็นส่วนตัวบนอุปกรณ์ของคุณ';

  @override
  String get welcomeToZumi => 'ยินดีต้อนรับสู่ Zumi';

  @override
  String get learnHowZumiCompressesYourVideosWithoutEverLeavingYourPhone =>
      'เรียนรู้ว่า Zumi บีบอัดวิดีโอของคุณอย่างไรโดยไม่ต้องออกจากโทรศัพท์';

  @override
  String get signIn => 'ลงชื่อเข้าใช้';

  @override
  String get signInToSyncYourPlanAndKeepYourPurchasesAvailableOnEveryDevice =>
      'ลงชื่อเข้าใช้เพื่อซิงค์แผนของคุณและเก็บการซื้อของคุณให้สามารถใช้งานได้บนทุกอุปกรณ์';

  @override
  String get chooseAVideo => 'เลือกวิดีโอ';

  @override
  String get pickAVideoFromYourGalleryToStartCompressing =>
      'เลือกรายการวิดีโอจากคลังของคุณเพื่อเริ่มบีบอัด';

  @override
  String get compressionSetup => 'การตั้งค่าการบีบอัด';

  @override
  String get chooseResolutionBitrateAndOutputFormatBeforeYouStart =>
      'เลือกความละเอียด อัตราบิต และรูปแบบเอาต์พุตก่อนเริ่ม';

  @override
  String get compressing => 'กำลังบีบอัด';

  @override
  String get followTheLiveProgressOfYourCompressionJob =>
      'ติดตามความคืบหน้าของงานบีบอัดแบบเรียลไทม์';

  @override
  String get compressionResult => 'ผลลัพธ์การบีบอัด';

  @override
  String get compareTheBeforeAndAfterSizeThenSaveOrShareTheResult =>
      'เปรียบเทียบขนาดก่อนและหลัง จากนั้นบันทึกหรือแชร์ผลลัพธ์';

  @override
  String get compressionHistory => 'ประวัติการบีบอัด';

  @override
  String get reviewTheVideosYouHaveCompressedOnThisDevice =>
      'ตรวจสอบวิดีโอที่คุณได้บีบอัดบนอุปกรณ์นี้';

  @override
  String get settings => 'การตั้งค่า';

  @override
  String get appearance => 'ลักษณะ';

  @override
  String get themeColorSchemeAndMotionPreferences =>
      'ธีม โทนสี และรูปแบบการเคลื่อนไหว';

  @override
  String get language => 'ภาษา';

  @override
  String get appLanguageAndTextDirection => 'ภาษาของแอปและทิศทางข้อความ';

  @override
  String get compressionDefaults => 'ค่าพื้นฐานการบีบอัด';

  @override
  String get defaultResolutionBitrateAndOutputFormat =>
      'ความละเอียด อัตราบิต และรูปแบบเอาต์พุตเริ่มต้น';

  @override
  String get storageCleanup => 'พื้นที่เก็บข้อมูล & การทำความสะอาด';

  @override
  String get storageUsageCacheSizeAndTemporaryFileCleanup =>
      'การใช้งานพื้นที่จัดเก็บ ขนาดแคช และการล้างไฟล์ชั่วคราว';

  @override
  String get notifications => 'การแจ้งเตือน';

  @override
  String get jobCompletionAndProductUpdateNotifications =>
      'การแจ้งเตือนเมื่อทำงานเสร็จและอัปเดตผลิตภัณฑ์';

  @override
  String get privacy => 'ความเป็นส่วนตัว';

  @override
  String get onDeviceProcessingLocalLogsAndOptionalCrashReports =>
      'การประมวลผลบนอุปกรณ์ บันทึกภายใน และรายงานข้อขัดข้อง (ไม่บังคับ)';

  @override
  String get aboutZumi => 'เกี่ยวกับ Zumi';

  @override
  String get versionBuildNumberAndApplicationDetails =>
      'เวอร์ชัน หมายเลขบิลด์ และรายละเอียดแอปพลิเคชัน';

  @override
  String get aboutTheDeveloper => 'เกี่ยวกับผู้พัฒนา';

  @override
  String get theDeveloperAndToolsBehindZumi =>
      'ผู้พัฒนาและเครื่องมือเบื้องหลัง Zumi';

  @override
  String get openSourceLicenses => 'ใบอนุญาตโอเพนซอร์ส';

  @override
  String get openSourcePackagesBundledWithZumi =>
      'แพ็กเกจโอเพนซอร์สที่มาพร้อมกับ Zumi';

  @override
  String get privacyPolicy => 'นโยบายความเป็นส่วนตัว';

  @override
  String get howZumiHandlesYourVideosAndData =>
      'วิธีที่ Zumi จัดการวิดีโอและข้อมูลของคุณ';

  @override
  String get termsOfService => 'ข้อกำหนดในการให้บริการ';

  @override
  String get theTermsThatApplyToZumiAndItsPurchases =>
      'ข้อกำหนดที่ใช้กับ Zumi และการซื้อของมัน';

  @override
  String get dataSafety => 'ความปลอดภัยของข้อมูล';

  @override
  String get summaryOfTheDataZumiCollectsAndWhy =>
      'สรุปข้อมูลที่ Zumi รวบรวมและเหตุผล';

  @override
  String get permissions => 'สิทธิ์';

  @override
  String get runtimePermissionsZumiRequestsAndWhyEachIsNeeded =>
      'สิทธิ์ในเวลารันไทม์ที่ Zumi ขอและเหตุผลที่ต้องใช้แต่ละอย่าง';

  @override
  String get faq => 'คำถามที่พบบ่อย';

  @override
  String get answersToCommonQuestionsAboutCompressionAndBilling =>
      'คำตอบสำหรับคำถามทั่วไปเกี่ยวกับการบีบอัดและการเรียกเก็บเงิน';

  @override
  String get support => 'สนับสนุน';

  @override
  String get getHelpWithYourAccountOrAPurchase =>
      'รับความช่วยเหลือเกี่ยวกับบัญชีหรือการซื้อของคุณ';

  @override
  String get sendFeedback => 'ส่งความคิดเห็น';

  @override
  String get reportAProblemOrSuggestAnImprovement =>
      'รายงานปัญหาหรือเสนอแนะการปรับปรุง';

  @override
  String get plans => 'แผน';

  @override
  String get comparePlansAndSeeWhatEachOneUnlocks =>
      'เปรียบเทียบแผนและดูสิ่งที่แต่ละแผนปลดล็อก';

  @override
  String get planDetails => 'รายละเอียดแผน';

  @override
  String get benefitsLimitsAndPricingForThisPlan =>
      'สิทธิประโยชน์ ขีดจำกัด และราคาของแผนนี้';

  @override
  String get paymentMethods => 'วิธีการชำระเงิน';

  @override
  String get supportedWaysToPayIncludingStoreBilling =>
      'วิธีการชำระเงินที่รองรับ รวมถึงการเรียกเก็บเงินจากร้านค้า';

  @override
  String get restorePurchases => 'กู้คืนการซื้อ';

  @override
  String get reApplyAPurchaseMadeOnAnotherDevice =>
      'สมัครซื้อสินค้าที่ซื้อบนอุปกรณ์อื่นอีกครั้ง';

  @override
  String get profile => 'โปรไฟล์';

  @override
  String get yourIdentityPlanStatusAndAccountPreferences =>
      'ข้อมูลประจำตัวของคุณ สถานะแผน และการตั้งค่าบัญชี';

  @override
  String get deleteAccount => 'ลบบัญชี';

  @override
  String get permanentlyRemoveYourAccountAndItsServerSideData =>
      'ลบบัญชีของคุณและข้อมูลบนเซิร์ฟเวอร์อย่างถาวร';

  @override
  String get rateZumi => 'ให้คะแนน Zumi';

  @override
  String get tellOthersHowZumiWorkedForYouOnTheStore =>
      'บอกผู้อื่นว่า Zumi ทำงานอย่างไรสำหรับคุณในร้านค้า';

  @override
  String get shareZumi => 'แชร์ Zumi';

  @override
  String get recommendZumiToAFriend => 'แนะนำ Zumi ให้เพื่อน';

  @override
  String get settingsGroupAppearance => 'ลักษณะและภาษา';

  @override
  String get settingsGroupCompression => 'การบีบอัด';

  @override
  String get settingsGroupAi => 'AI บนอุปกรณ์';

  @override
  String get settingsGroupPrivacy => 'การแจ้งเตือนและความเป็นส่วนตัว';

  @override
  String get settingsGroupPlans => 'แผนและการซื้อ';

  @override
  String get settingsGroupAbout => 'เกี่ยวกับ';

  @override
  String get settingsGroupLegal => 'กฎหมาย';

  @override
  String get settingsGroupHelp => 'ความช่วยเหลือและข้อเสนอแนะ';

  @override
  String get settingsGroupAccount => 'บัญชี';

  @override
  String get settingsAppearanceSubtitle => 'ธีมและภาษาของแอป';

  @override
  String get settingsLanguageSubtitle => 'ภาษาและทิศทางของแอป';

  @override
  String get settingsCompressionSubtitle => 'คุณภาพและรูปแบบเริ่มต้น';

  @override
  String get settingsStorageSubtitle => 'การใช้งานแคชและพื้นที่จัดเก็บ';

  @override
  String get aiSettings => 'การตั้งค่า AI';

  @override
  String get zumiAssistant => 'ผู้ช่วย Zumi';

  @override
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere =>
      'ผู้ช่วยส่วนตัวสำหรับวิดีโอของคุณกำลังจะมาเร็ว ๆ นี้ คุณจะสามารถถามเกี่ยวกับการบีบอัด การจัดระเบียบ และวิดีโอที่บันทึกไว้ที่นี่';

  @override
  String get settingsAiSubtitle => 'โมเดลท้องถิ่นและเครื่องมืออัจฉริยะ';

  @override
  String get exploreLocalModelsAndFutureAiToolsTheseOptionsAreNotActiveYet =>
      'สำรวจโมเดลท้องถิ่นและเครื่องมือ AI ในอนาคต ตัวเลือกเหล่านี้ยังไม่เปิดใช้งาน';

  @override
  String get localModels => 'โมเดลท้องถิ่น';

  @override
  String get aiModelsSubtitle => 'เรียกดูและดาวน์โหลดโมเดลที่รองรับ';

  @override
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere =>
      'เลือกโมเดลที่รองรับ ดาวน์โหลดไปยังอุปกรณ์นี้ และจัดการโมเดลที่ติดตั้งที่นี่';

  @override
  String get importAModel => 'นำเข้าโมเดล';

  @override
  String get aiImportSubtitle => 'ใช้โมเดลที่เข้ากันได้จากไฟล์ของคุณ';

  @override
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt =>
      'เลือกไฟล์โมเดลท้องถิ่นที่เข้ากันได้และตรวจสอบข้อกำหนดก่อนใช้งาน';

  @override
  String get smartFeatures => 'คุณสมบัติอัจฉริยะ';

  @override
  String get aiFeaturesSubtitle => 'การบีบอัด การจัดระเบียบ และการค้นหา';

  @override
  String
  get chooseWhichLocalAiSuggestionsToUseForVideoCompressionOrganizationNamingAndSearch =>
      'เลือกคำแนะนำ AI ท้องถิ่นที่ต้องการใช้สำหรับการบีบอัดวิดีโอ การจัดระเบียบ การตั้งชื่อ และการค้นหา';

  @override
  String get modelPerformance => 'ประสิทธิภาพของโมเดล';

  @override
  String get aiRuntimeSubtitle => 'การตั้งค่าการประมวลผลและทรัพยากร';

  @override
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels =>
      'ควบคุมแบ็กเอนด์การประมวลผลและขีดจำกัดทรัพยากรสำหรับโมเดลที่รองรับ';

  @override
  String get conversationSettings => 'การตั้งค่าการสนทนา';

  @override
  String get aiChatSettingsSubtitle =>
      'การสตรีม การคิด และความยาวของการตอบสนอง';

  @override
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits =>
      'กำหนดค่าการตอบสนองของผู้ช่วย รวมถึงการสตรีม โหมดการคิด การสุ่มตัวอย่าง และข้อจำกัดการตอบสนอง';

  @override
  String get imagesAndAudio => 'ภาพและเสียง';

  @override
  String get aiMediaSubtitle => 'ควบคุมอินพุตมัลติโมดอล';

  @override
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos =>
      'เลือกว่ารุ่นที่เข้ากันได้สามารถวิเคราะห์ภาพและเสียงที่เลือกจากวิดีโอของคุณได้หรือไม่';

  @override
  String get semanticSearch => 'การค้นหาเชิงความหมาย';

  @override
  String get aiSearchSubtitle => 'การฝังและการจัดทำดัชนีในพื้นที่';

  @override
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning =>
      'จัดการโมเดลฝังในเครื่องและดัชนีการค้นหาเพื่อค้นหาวิดีโอและช่วงเวลาโดยความหมาย';

  @override
  String get toolsAndStructuredOutput => 'เครื่องมือและผลลัพธ์ที่มีโครงสร้าง';

  @override
  String get aiToolsSubtitle => 'การดำเนินการ โครงร่าง และการยืนยัน';

  @override
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation =>
      'จัดการการดำเนินการผู้ช่วยที่รองรับและการตอบสนองแบบมีโครงสร้าง การดำเนินการที่ส่งผลต่อไฟล์จะต้องได้รับการยืนยันจากคุณ';

  @override
  String get aiGroupModels => 'โมเดล';

  @override
  String get aiGroupExperience => 'ประสบการณ์ผู้ช่วย';

  @override
  String get aiGroupCapabilities => 'ความสามารถอัจฉริยะ';

  @override
  String get aiGroupPerformance => 'ประสิทธิภาพ';

  @override
  String get compressionHistorySubtitle => 'ประวิดีโอที่บีบอัดของคุณ';

  @override
  String get settingsNotificationsSubtitle =>
      'การแจ้งเตือนการทำงานเสร็จสิ้นและอัปเดต';

  @override
  String get settingsPrivacySubtitle => 'ข้อมูลของคุณอยู่ในเครื่อง';

  @override
  String get plansSubtitle => 'เปรียบเทียบแผนและอัปเกรด';

  @override
  String get plansMethodsSubtitle => 'วิธีการชำระเงินและการเรียกเก็บเงิน';

  @override
  String get plansRestoreSubtitle => 'กู้คืนการซื้อก่อนหน้าของคุณ';

  @override
  String get aboutAppSubtitle => 'รายละเอียดเวอร์ชันและบิลด์';

  @override
  String get aboutDeveloperSubtitle => 'นักพัฒนาผู้สร้าง Zumi';

  @override
  String get aboutLicensesSubtitle => 'ใบอนุญาตแพ็กเกจโอเพ่นซอร์ส';

  @override
  String get legalPrivacySubtitle => 'วิธีการจัดการข้อมูล';

  @override
  String get legalTermsSubtitle => 'กฎสำหรับการใช้ Zumi';

  @override
  String get legalDataSafetySubtitle => 'ข้อมูลที่เรารวบรวม';

  @override
  String get legalPermissionsSubtitle => 'ทำไมเราจึงต้องการสิทธิ์';

  @override
  String get helpFaqSubtitle => 'คำตอบสำหรับคำถามที่พบบ่อย';

  @override
  String get helpSupportSubtitle => 'ติดต่อผู้พัฒนาโดยตรง';

  @override
  String get helpFeedbackSubtitle => 'ส่งความคิดเห็นของคุณให้เรา';

  @override
  String get compressionPickVideo => 'เลือกวิดีโอ';

  @override
  String get compressionTargetMb => 'ขนาดเป้าหมาย (MB)';

  @override
  String get compressionStart => 'เริ่มการบีบอัด';

  @override
  String get compressionPause => 'หยุดชั่วคราว';

  @override
  String get compressionResume => 'ดำเนินการต่อ';

  @override
  String get compressionViewResult => 'ดูผลลัพธ์';

  @override
  String get compressionSaveGallery => 'บันทึกไปที่แกลเลอรี';

  @override
  String get compressionShare => 'แชร์วิดีโอ';

  @override
  String get compressionOriginalSize => 'ขนาดต้นฉบับ';

  @override
  String get compressionOutputSize => 'ขนาดที่ส่งออก';

  @override
  String get compressionEmptyHistory => 'ยังไม่มีวิดีโอที่บีบอัด';

  @override
  String get compressionSavedGallery => 'บันทึกไปที่แกลเลอรีแล้ว';

  @override
  String get compressionInvalidTarget => 'กรอกขนาดเป้าหมายที่มากกว่าศูนย์';

  @override
  String get compressionCancelled => 'การบีบอัดถูกยกเลิก';

  @override
  String get compressionTargetExceeded =>
      'วิดีโอนี้ไม่สามารถถึงขนาดที่เลือก ลองขนาดเป้าหมายที่ใหญ่ขึ้น';

  @override
  String get compressionTargetInfeasible =>
      'ขนาดที่เลือกเล็กเกินไปสำหรับวิดีโอนี้ เลือกขนาดที่ใหญ่ขึ้น';

  @override
  String get compressionPreviewBefore => 'ตัวอย่างต้นฉบับ';

  @override
  String get compressionPreviewAfter => 'ตัวอย่างที่บีบอัดแล้ว';

  @override
  String get compressionPreset => 'ค่ากำหนดเป้าหมาย';

  @override
  String get compressionCustom => 'ขนาดกำหนดเอง';

  @override
  String get compressionPreviewUnavailable => 'ไม่สามารถดูตัวอย่างได้';

  @override
  String get compressionAdvanced => 'การควบคุมขั้นสูง';

  @override
  String get compressionAutomatic => 'อัตโนมัติ';

  @override
  String get compressionResolutionLimit => 'ความละเอียดสูงสุด';

  @override
  String get compressionSourceResolution => 'ความละเอียดต้นฉบับ';

  @override
  String get compressionFrameRateLimit => 'อัตราเฟรมสูงสุด';

  @override
  String get compressionAudioQuality => 'อัตราบิตเสียง';

  @override
  String get compressionRemoveAudio => 'ลบเสียง';

  @override
  String get compressionVideoBitrateLimit => 'เพดานอัตราบิตวิดีโอ (kbps)';

  @override
  String get compressionHdrPolicy => 'การจัดการ HDR';

  @override
  String get compressionHdrConvert => 'แปลงเป็น SDR';

  @override
  String get compressionHdrPreserve => 'เก็บ HDR เมื่อรองรับ';

  @override
  String get compressionPlanPreview => 'ก่อนที่คุณจะเริ่ม';

  @override
  String get compressionPlanLoading => 'กำลังคำนวณแผนการบีบอัด…';

  @override
  String get compressionPlanResolution => 'ความละเอียดที่วางแผนไว้';

  @override
  String get compressionPlanVideoBitrate => 'อัตราบิตวิดีโอที่วางแผนไว้';

  @override
  String get compressionPlanAudioBitrate => 'อัตราบิตเสียงที่วางแผนไว้';

  @override
  String get compressionAudioConversionNote =>
      'การเข้ารหัสซ้ำจะแปลงเสียงเป็น AAC สเตอริโอ Dolby Atmos และ DTS เสียงแบบสเปเชียลจะไม่ถูกเก็บรักษาไว้';

  @override
  String get compressionPlanTooSmall =>
      'เป้าหมายนี้มีขนาดเล็กเกินไปสำหรับวิดีโอที่ใช้งานได้ เพิ่มขนาดหรือปรับขีดจำกัดอื่น ๆ ให้ต่ำลง';

  @override
  String get compressionPlanLowQuality =>
      'เป้าหมายที่เลือกอาจลดคุณภาพของวิดีโอ';

  @override
  String get compressionPlanAlreadyWithinLimit =>
      'ต้นฉบับอยู่ภายในขีดจำกัดขนาดแล้ว';

  @override
  String get compressionInvalidBitrate =>
      'กรอกอัตราบิตอย่างน้อย 150 kbps หรือเว้นว่างเพื่อปรับอัตโนมัติ';

  @override
  String get compressionInvalidResolution =>
      'กรอกความละเอียดแบบคู่ตั้งแต่ 240 ถึง 16384 หรือเว้นว่างเพื่อปรับอัตโนมัติ';

  @override
  String get compressionSeek => 'ตำแหน่งวิดีโอ';

  @override
  String get compressionInterrupted =>
      'การบีบอัดก่อนหน้านี้ถูกขัดจังหวะ ไฟล์ชั่วคราวของมันถูกลบแล้ว; คุณสามารถเลือกวิดีโอและลองอีกครั้ง';

  @override
  String get compressionDismiss => 'ปิด';

  @override
  String get compressionClearHistory => 'ล้างประวัติ';

  @override
  String get compressionClearHistoryConfirm =>
      'ลบประวัติทั้งหมดหรือไม่? วิดีโอที่บันทึกไว้จะยังคงอยู่บนอุปกรณ์ของคุณ';

  @override
  String get compressionAttempts => 'ความพยายาม';

  @override
  String get compressionTargetSize => 'ขนาดเป้าหมาย';

  @override
  String get compressionOutputResolution => 'ความละเอียดเอาต์พุต';

  @override
  String get compressionInvalidVideo =>
      'ไม่สามารถอ่านวิดีโอนี้ได้ กรุณาเลือกไฟล์อื่น';

  @override
  String get compressionInvalidOutput =>
      'วิดีโอที่เข้ารหัสล้มเหลวในการตรวจสอบ วิดีโอต้นฉบับของคุณไม่ได้ถูกเปลี่ยน';

  @override
  String get compressionEncoderUnsupported =>
      'อุปกรณ์นี้ไม่สามารถเข้ารหัสความละเอียดหรืออัตราเฟรมที่เลือกได้ ลดการตั้งค่านั้นแล้วลองอีกครั้ง';

  @override
  String get compressionAudioDecoderUnsupported =>
      'อุปกรณ์นี้ไม่สามารถถอดรหัสรูปแบบเสียงนี้สำหรับการบีบอัด ลบเสียงออกหรือใช้แหล่งที่รองรับ';

  @override
  String get compressionVideoDecoderUnsupported =>
      'อุปกรณ์นี้ไม่สามารถถอดรหัสรูปแบบวิดีโอนี้หรือโปรไฟล์สำหรับการบีบอัดได้ กรุณาเลือกแหล่งข้อมูลหรืออุปกรณ์อื่น';

  @override
  String get compressionMp4NotStreamable =>
      'ไฟล์ MP4 ที่ส่งออกยังไม่พร้อมสำหรับการสตรีม ลองใช้วิดีโอหรืออุปกรณ์อื่น';

  @override
  String get compressionNoSpace =>
      'พื้นที่เก็บข้อมูลว่างไม่เพียงพอสำหรับการบีบอัดวิดีโอนี้';

  @override
  String get compressionHdrUnsupported =>
      'อุปกรณ์นี้ไม่สามารถประมวลผลโหมด HDR ที่เลือกได้ ลองแปลงเป็น SDR';

  @override
  String get compressionGeneralFailure =>
      'ไม่สามารถทำการบีบอัดเสร็จสมบูรณ์ได้ ลองใช้การตั้งค่าหรือวิดีโออื่น';

  @override
  String get aboutIdentitySection => 'ตัวตนของแอป';

  @override
  String get aboutAppName => 'ชื่อแอป';

  @override
  String get aboutPackageName => 'ชื่อแพ็กเกจ';

  @override
  String get aboutVersion => 'เวอร์ชัน';

  @override
  String get aboutBuildNumber => 'หมายเลขบิลด์';

  @override
  String get aboutEnvironmentSection => 'อุปกรณ์และบิลด์';

  @override
  String get aboutOperatingSystem => 'ระบบปฏิบัติการ';

  @override
  String get aboutOsVersion => 'เวอร์ชัน OS';

  @override
  String get aboutBuildMode => 'โหมดบิลด์';

  @override
  String get aboutDebug => 'ดีบัก';

  @override
  String get aboutRelease => 'ปล่อย';

  @override
  String get aboutToolchainSection => 'สร้างด้วย';

  @override
  String get aboutInstallationSection => 'การติดตั้ง';

  @override
  String get aboutInstaller => 'ติดตั้งจาก';

  @override
  String get aboutInstalledOn => 'ติดตั้งเมื่อ';

  @override
  String get aboutUpdatedOn => 'ปรับปรุงเมื่อ';

  @override
  String get aboutUnavailable => 'ไม่สามารถใช้งานได้';

  @override
  String get aboutProjectSection => 'โครงการและการสนับสนุน';

  @override
  String get aboutRepository => 'คลังเก็บ GitHub';

  @override
  String get aboutRepositorySubtitle => 'ดูซอร์สโค้ดของ Zumi';

  @override
  String get aboutReadme => 'อ่าน README';

  @override
  String get aboutReadmeSubtitle => 'เรียนรู้เกี่ยวกับ Zumi บน GitHub';

  @override
  String get aboutIssues => 'รายงานปัญหา';

  @override
  String get aboutIssuesSubtitle => 'ดูและสร้างปัญหาใน GitHub';

  @override
  String get aboutLatestRelease => 'รุ่นล่าสุด';

  @override
  String get aboutLatestReleaseSubtitle => 'ดูรุ่นและดาวน์โหลด';

  @override
  String get aboutDonate => 'สนับสนุน Zumi';

  @override
  String get aboutDonateSubtitle => 'เปิดหน้าบริจาคอย่างเป็นทางการ';

  @override
  String get aboutLinkError => 'ไม่สามารถเปิดลิงก์ได้ โปรดลองอีกครั้ง';

  @override
  String get aboutDeveloperSection => 'นักพัฒนา';

  @override
  String get aboutDeveloperName => 'Mostafa Sensei';

  @override
  String get aboutDeveloperProfile => 'โปรไฟล์ GitHub';

  @override
  String get aboutDeveloperProfileSubtitle => 'ดูโครงการและรายละเอียดการติดต่อ';

  @override
  String get maintenanceInProgress => 'อยู่ระหว่างการบำรุงรักษา';

  @override
  String get maintenanceMessage =>
      'Zumi ไม่สามารถใช้งานได้ชั่วคราว โปรดลองอีกครั้งภายหลัง';

  @override
  String get comingSoon => 'เร็วๆ นี้';

  @override
  String get languageName => 'ไทย';

  @override
  String get countryCode => 'TH';

  @override
  String countryName(String countryCode) {
    String _temp0 = intl.Intl.selectLogic(countryCode, {
      'AE': 'สหรัฐอาหรับเอมิเรตส์',
      'AT': 'ออสเตรีย',
      'AU': 'ออสเตรเลีย',
      'BE': 'เบลเยียม',
      'BH': 'บาห์เรน',
      'BR': 'บราซิล',
      'CA': 'แคนาดา',
      'CH': 'สวิตเซอร์แลนด์',
      'CN': 'จีน',
      'DE': 'เยอรมนี',
      'DJ': 'จิบูตี',
      'DZ': 'แอลจีเรีย',
      'EG': 'อียิปต์',
      'ES': 'สเปน',
      'FR': 'ฝรั่งเศส',
      'GB': 'สหราชอาณาจักร',
      'HK': 'เขตปกครองพิเศษฮ่องกงแห่งสาธารณรัฐประชาชนจีน',
      'ID': 'อินโดนีเซีย',
      'IQ': 'อิรัก',
      'IT': 'อิตาลี',
      'JO': 'จอร์แดน',
      'JP': 'ญี่ปุ่น',
      'KM': 'คอโมโรส',
      'KR': 'เกาหลีใต้',
      'KW': 'คูเวต',
      'LB': 'เลบานอน',
      'LY': 'ลิเบีย',
      'MA': 'โมร็อกโก',
      'MR': 'มอริเตเนีย',
      'MX': 'เม็กซิโก',
      'NL': 'เนเธอร์แลนด์',
      'OM': 'โอมาน',
      'PL': 'โปแลนด์',
      'PS': 'ดินแดนปาเลสไตน์',
      'PT': 'โปรตุเกส',
      'QA': 'กาตาร์',
      'RU': 'รัสเซีย',
      'SA': 'ซาอุดีอาระเบีย',
      'SD': 'ซูดาน',
      'SE': 'สวีเดน',
      'SG': 'สิงคโปร์',
      'SO': 'โซมาเลีย',
      'SY': 'ซีเรีย',
      'TH': 'ไทย',
      'TN': 'ตูนิเซีย',
      'TR': 'ตุรกี',
      'TW': 'ไต้หวัน',
      'US': 'สหรัฐอเมริกา',
      'VN': 'เวียดนาม',
      'YE': 'เยเมน',
      'other': 'ประเทศ',
    });
    return '$_temp0';
  }
}
