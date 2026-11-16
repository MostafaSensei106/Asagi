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
  String fileSavedToGallery(String fileName) {
    return 'ไฟล์ถูกบันทึกในแกลเลอรี: $fileName';
  }

  @override
  String fileSavedToDocuments(String fileName) {
    return 'ไฟล์ถูกบันทึกในเอกสาร: $fileName';
  }

  @override
  String get fileIsAlreadySaved => 'ไฟล์ถูกบันทึกแล้ว';

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
  String get addressLineCannotBeEmpty => 'บรรทัดที่อยู่ต้องไม่ว่าง';

  @override
  String get addressLineIsTooLong => 'บรรทัดที่อยู่นานเกินไป';

  @override
  String get specialCharactersAreNotAllowed => 'ไม่อนุญาตให้ใช้ตัวอักษรพิเศษ';

  @override
  String get emojisAreNotAllowed => 'ไม่อนุญาตให้ใช้สัญลักษณ์อีโมจิ';

  @override
  String get cityCannotBeEmpty => 'เมืองต้องไม่ว่าง';

  @override
  String get cityNameIsTooLong => 'ชื่อเมืองยาวเกินไป';

  @override
  String get cityContainsInvalidSpecialCharacters =>
      'เมืองมีตัวอักษรพิเศษที่ไม่ถูกต้อง';

  @override
  String get addressLabelCannotBeEmpty => 'ป้ายที่อยู่ต้องไม่ว่าง';

  @override
  String get addressLabelIsTooLong => 'ป้ายที่อยู่นานเกินไป';

  @override
  String get emailCannotBeEmpty => 'อีเมลต้องไม่ว่าง';

  @override
  String get invalidEmailFormat => 'รูปแบบอีเมลไม่ถูกต้อง';

  @override
  String get emailContainsInvalidCharacters => 'อีเมลมีอักขระที่ไม่ถูกต้อง';

  @override
  String get emailMustContain => 'อีเมลต้องมี @';

  @override
  String get emailMustBeInLowercase => 'อีเมลต้องเป็นตัวพิมพ์เล็ก';

  @override
  String get arabicCharactersAreNotAllowed => 'ไม่อนุญาตให้ใช้ตัวอักษรอาหรับ';

  @override
  String get emojisAreNotAllowedInEmail =>
      'ไม่อนุญาตให้ใช้สัญลักษณ์อีโมจิในอีเมล';

  @override
  String get phoneNumberCannotBeEmpty => 'หมายเลขโทรศัพท์ไม่สามารถเว้นว่างได้';

  @override
  String get invalidPhoneNumber => 'หมายเลขโทรศัพท์ไม่ถูกต้อง';

  @override
  String get phoneNumberMustBeAtLeast11Digits =>
      'หมายเลขโทรศัพท์ต้องมีอย่างน้อย 11 หลัก';

  @override
  String get nameCannotBeEmpty => 'ชื่อไม่สามารถเว้นว่างได้';

  @override
  String get invalidName => 'ชื่อไม่ถูกต้อง';

  @override
  String get nameMustBeAtLeast3Characters => 'ชื่อต้องมีอย่างน้อย 3 ตัวอักษร';

  @override
  String get nameCannotExceed20Characters => 'ชื่อไม่สามารถเกิน 20 ตัวอักษร';

  @override
  String get nameContainsInvalidSpecialCharacters =>
      'ชื่อมีอักขระพิเศษที่ไม่ถูกต้อง';

  @override
  String get emojisAreNotAllowedInName =>
      'ไม่อนุญาตให้ใช้สัญลักษณ์อีโมจิในชื่อ';

  @override
  String get passwordCannotBeEmpty => 'รหัสผ่านไม่สามารถเว้นว่างได้';

  @override
  String get passwordMustContainUppercaseLowercaseNumberAndSpecialCharacter =>
      'รหัสผ่านต้องประกอบด้วยอักษรตัวใหญ่ ตัวเล็ก ตัวเลข และอักขระพิเศษ';

  @override
  String get passwordMustBeAtLeast8CharactersLong =>
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
  String get appearanceLanguage => 'ลักษณะและภาษา';

  @override
  String get compression => 'การบีบอัด';

  @override
  String get onDeviceAI => 'AI บนอุปกรณ์';

  @override
  String get notificationsPrivacy => 'การแจ้งเตือนและความเป็นส่วนตัว';

  @override
  String get plansPurchases => 'แผนและการซื้อ';

  @override
  String get about => 'เกี่ยวกับ';

  @override
  String get legal => 'กฎหมาย';

  @override
  String get helpFeedback => 'ความช่วยเหลือและข้อเสนอแนะ';

  @override
  String get account => 'บัญชี';

  @override
  String get themeAndAppLanguage => 'ธีมและภาษาของแอป';

  @override
  String get appLanguageAndDirection => 'ภาษาและทิศทางของแอป';

  @override
  String get defaultQualityAndFormat => 'คุณภาพและรูปแบบเริ่มต้น';

  @override
  String get cacheAndStorageUsage => 'การใช้งานแคชและพื้นที่จัดเก็บ';

  @override
  String get aiSettings => 'การตั้งค่า AI';

  @override
  String get zumiAssistant => 'ผู้ช่วย Zumi';

  @override
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere =>
      'ผู้ช่วยส่วนตัวสำหรับวิดีโอของคุณกำลังจะมาเร็ว ๆ นี้ คุณจะสามารถถามเกี่ยวกับการบีบอัด การจัดระเบียบ และวิดีโอที่บันทึกไว้ที่นี่';

  @override
  String get localModelsAndSmartTools => 'โมเดลท้องถิ่นและเครื่องมืออัจฉริยะ';

  @override
  String get exploreLocalModelsAndFutureAIToolsTheseOptionsAreNotActiveYet =>
      'สำรวจโมเดลท้องถิ่นและเครื่องมือ AI ในอนาคต ตัวเลือกเหล่านี้ยังไม่เปิดใช้งาน';

  @override
  String get localModels => 'โมเดลท้องถิ่น';

  @override
  String get browseAndDownloadSupportedModels =>
      'เรียกดูและดาวน์โหลดโมเดลที่รองรับ';

  @override
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere =>
      'เลือกโมเดลที่รองรับ ดาวน์โหลดไปยังอุปกรณ์นี้ และจัดการโมเดลที่ติดตั้งที่นี่';

  @override
  String get importAModel => 'นำเข้าโมเดล';

  @override
  String get useACompatibleModelFromYourFiles =>
      'ใช้โมเดลที่เข้ากันได้จากไฟล์ของคุณ';

  @override
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt =>
      'เลือกไฟล์โมเดลท้องถิ่นที่เข้ากันได้และตรวจสอบข้อกำหนดก่อนใช้งาน';

  @override
  String get smartFeatures => 'คุณสมบัติอัจฉริยะ';

  @override
  String get compressionOrganizationAndSearch =>
      'การบีบอัด การจัดระเบียบ และการค้นหา';

  @override
  String
  get chooseWhichLocalAISuggestionsToUseForVideoCompressionOrganizationNamingAndSearch =>
      'เลือกคำแนะนำ AI ท้องถิ่นที่ต้องการใช้สำหรับการบีบอัดวิดีโอ การจัดระเบียบ การตั้งชื่อ และการค้นหา';

  @override
  String get modelPerformance => 'ประสิทธิภาพของโมเดล';

  @override
  String get processingAndResourcePreferences =>
      'การตั้งค่าการประมวลผลและทรัพยากร';

  @override
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels =>
      'ควบคุมแบ็กเอนด์การประมวลผลและขีดจำกัดทรัพยากรสำหรับโมเดลที่รองรับ';

  @override
  String get conversationSettings => 'การตั้งค่าการสนทนา';

  @override
  String get streamingThinkingAndResponseLength =>
      'การสตรีม การคิด และความยาวของการตอบสนอง';

  @override
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits =>
      'กำหนดค่าการตอบสนองของผู้ช่วย รวมถึงการสตรีม โหมดการคิด การสุ่มตัวอย่าง และข้อจำกัดการตอบสนอง';

  @override
  String get imagesAndAudio => 'ภาพและเสียง';

  @override
  String get controlMultimodalInputs => 'ควบคุมอินพุตมัลติโมดอล';

  @override
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos =>
      'เลือกว่ารุ่นที่เข้ากันได้สามารถวิเคราะห์ภาพและเสียงที่เลือกจากวิดีโอของคุณได้หรือไม่';

  @override
  String get semanticSearch => 'การค้นหาเชิงความหมาย';

  @override
  String get embeddingsAndLocalIndexing => 'การฝังและการจัดทำดัชนีในพื้นที่';

  @override
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning =>
      'จัดการโมเดลฝังในเครื่องและดัชนีการค้นหาเพื่อค้นหาวิดีโอและช่วงเวลาโดยความหมาย';

  @override
  String get toolsAndStructuredOutput => 'เครื่องมือและผลลัพธ์ที่มีโครงสร้าง';

  @override
  String get actionsSchemasAndConfirmations =>
      'การดำเนินการ โครงร่าง และการยืนยัน';

  @override
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation =>
      'จัดการการดำเนินการผู้ช่วยที่รองรับและการตอบสนองแบบมีโครงสร้าง การดำเนินการที่ส่งผลต่อไฟล์จะต้องได้รับการยืนยันจากคุณ';

  @override
  String get models => 'โมเดล';

  @override
  String get assistantExperience => 'ประสบการณ์ผู้ช่วย';

  @override
  String get smartCapabilities => 'ความสามารถอัจฉริยะ';

  @override
  String get performance => 'ประสิทธิภาพ';

  @override
  String get yourCompressedVideoHistory => 'ประวิดีโอที่บีบอัดของคุณ';

  @override
  String get completionAndUpdateAlerts =>
      'การแจ้งเตือนการทำงานเสร็จสิ้นและอัปเดต';

  @override
  String get yourDataStaysLocal => 'ข้อมูลของคุณอยู่ในเครื่อง';

  @override
  String get comparePlansAndUpgrade => 'เปรียบเทียบแผนและอัปเกรด';

  @override
  String get paymentMethodsAndBilling => 'วิธีการชำระเงินและการเรียกเก็บเงิน';

  @override
  String get restoreYourPreviousPurchase => 'กู้คืนการซื้อก่อนหน้าของคุณ';

  @override
  String get versionAndBuildDetails => 'รายละเอียดเวอร์ชันและบิลด์';

  @override
  String get theDeveloperBehindZumi => 'นักพัฒนาผู้สร้าง Zumi';

  @override
  String get openSourcePackageLicenses => 'ใบอนุญาตแพ็กเกจโอเพ่นซอร์ส';

  @override
  String get howDataIsHandled => 'วิธีการจัดการข้อมูล';

  @override
  String get rulesForUsingZumi => 'กฎสำหรับการใช้ Zumi';

  @override
  String get whatDataWeCollect => 'ข้อมูลที่เรารวบรวม';

  @override
  String get whyWeNeedPermissions => 'ทำไมเราจึงต้องการสิทธิ์';

  @override
  String get answersToCommonQuestions => 'คำตอบสำหรับคำถามที่พบบ่อย';

  @override
  String get reachTheDeveloperDirectly => 'ติดต่อผู้พัฒนาโดยตรง';

  @override
  String get sendUsYourFeedback => 'ส่งความคิดเห็นของคุณให้เรา';

  @override
  String get pickVideo => 'เลือกวิดีโอ';

  @override
  String get targetSizeMB => 'ขนาดเป้าหมาย (MB)';

  @override
  String get startCompression => 'เริ่มการบีบอัด';

  @override
  String get pause => 'หยุดชั่วคราว';

  @override
  String get resume => 'ดำเนินการต่อ';

  @override
  String get viewResult => 'ดูผลลัพธ์';

  @override
  String get saveToGallery => 'บันทึกไปที่แกลเลอรี';

  @override
  String get shareVideo => 'แชร์วิดีโอ';

  @override
  String get originalSize => 'ขนาดต้นฉบับ';

  @override
  String get outputSize => 'ขนาดที่ส่งออก';

  @override
  String get noCompressedVideosYet => 'ยังไม่มีวิดีโอที่บีบอัด';

  @override
  String get savedToGallery => 'บันทึกไปที่แกลเลอรีแล้ว';

  @override
  String get enterATargetSizeGreaterThanZero =>
      'กรอกขนาดเป้าหมายที่มากกว่าศูนย์';

  @override
  String get compressionCancelled => 'การบีบอัดถูกยกเลิก';

  @override
  String get thisVideoCouldNotReachTheSelectedSizeTryALargerTargetSize =>
      'วิดีโอนี้ไม่สามารถถึงขนาดที่เลือก ลองขนาดเป้าหมายที่ใหญ่ขึ้น';

  @override
  String get theSelectedSizeIsTooSmallForThisVideoChooseALargerSize =>
      'ขนาดที่เลือกเล็กเกินไปสำหรับวิดีโอนี้ เลือกขนาดที่ใหญ่ขึ้น';

  @override
  String get originalPreview => 'ตัวอย่างต้นฉบับ';

  @override
  String get compressedPreview => 'ตัวอย่างที่บีบอัดแล้ว';

  @override
  String get targetPreset => 'ค่ากำหนดเป้าหมาย';

  @override
  String get customSize => 'ขนาดกำหนดเอง';

  @override
  String get previewUnavailable => 'ไม่สามารถดูตัวอย่างได้';

  @override
  String get advancedControls => 'การควบคุมขั้นสูง';

  @override
  String get automatic => 'อัตโนมัติ';

  @override
  String get maximumResolution => 'ความละเอียดสูงสุด';

  @override
  String get originalResolution => 'ความละเอียดต้นฉบับ';

  @override
  String get maximumFrameRate => 'อัตราเฟรมสูงสุด';

  @override
  String get audioBitrate => 'อัตราบิตเสียง';

  @override
  String get removeAudio => 'ลบเสียง';

  @override
  String get videoBitrateCeilingKbps => 'เพดานอัตราบิตวิดีโอ (kbps)';

  @override
  String get hdrHandling => 'การจัดการ HDR';

  @override
  String get convertToSDR => 'แปลงเป็น SDR';

  @override
  String get keepHDRWhenSupported => 'เก็บ HDR เมื่อรองรับ';

  @override
  String get beforeYouStart => 'ก่อนที่คุณจะเริ่ม';

  @override
  String get calculatingCompressionPlan => 'กำลังคำนวณแผนการบีบอัด…';

  @override
  String get plannedResolution => 'ความละเอียดที่วางแผนไว้';

  @override
  String get plannedVideoBitrate => 'อัตราบิตวิดีโอที่วางแผนไว้';

  @override
  String get plannedAudioBitrate => 'อัตราบิตเสียงที่วางแผนไว้';

  @override
  String
  get reEncodingConvertsAudioToAACStereoDolbyAtmosAndDTSSpatialAudioWillNotBePreserved =>
      'การเข้ารหัสซ้ำจะแปลงเสียงเป็น AAC สเตอริโอ Dolby Atmos และ DTS เสียงแบบสเปเชียลจะไม่ถูกเก็บรักษาไว้';

  @override
  String
  get thisTargetIsTooSmallForAUsableVideoIncreaseTheSizeOrLowerOtherLimits =>
      'เป้าหมายนี้มีขนาดเล็กเกินไปสำหรับวิดีโอที่ใช้งานได้ เพิ่มขนาดหรือปรับขีดจำกัดอื่น ๆ ให้ต่ำลง';

  @override
  String get theSelectedTargetMayReduceVideoQuality =>
      'เป้าหมายที่เลือกอาจลดคุณภาพของวิดีโอ';

  @override
  String get theSourceIsAlreadyWithinTheSizeLimit =>
      'ต้นฉบับอยู่ภายในขีดจำกัดขนาดแล้ว';

  @override
  String get enterABitrateOfAtLeast150KbpsOrLeaveBlankForAutomatic =>
      'กรอกอัตราบิตอย่างน้อย 150 kbps หรือเว้นว่างเพื่อปรับอัตโนมัติ';

  @override
  String get enterAnEvenResolutionFrom240To16384OrLeaveBlankForAutomatic =>
      'กรอกความละเอียดแบบคู่ตั้งแต่ 240 ถึง 16384 หรือเว้นว่างเพื่อปรับอัตโนมัติ';

  @override
  String get videoPosition => 'ตำแหน่งวิดีโอ';

  @override
  String
  get aPreviousCompressionWasInterruptedItsTemporaryFilesWereCleanedUpYouCanSelectTheVideoAndTryAgain =>
      'การบีบอัดก่อนหน้านี้ถูกขัดจังหวะ ไฟล์ชั่วคราวของมันถูกลบแล้ว; คุณสามารถเลือกวิดีโอและลองอีกครั้ง';

  @override
  String get dismiss => 'ปิด';

  @override
  String get clearHistory => 'ล้างประวัติ';

  @override
  String get removeAllHistoryEntriesSavedVideosWillRemainOnYourDevice =>
      'ลบประวัติทั้งหมดหรือไม่? วิดีโอที่บันทึกไว้จะยังคงอยู่บนอุปกรณ์ของคุณ';

  @override
  String get attempts => 'ความพยายาม';

  @override
  String get targetSize => 'ขนาดเป้าหมาย';

  @override
  String get outputResolution => 'ความละเอียดเอาต์พุต';

  @override
  String get thisVideoCouldNotBeReadChooseAnotherFile =>
      'ไม่สามารถอ่านวิดีโอนี้ได้ กรุณาเลือกไฟล์อื่น';

  @override
  String get theEncodedVideoFailedVerificationYourOriginalVideoWasNotChanged =>
      'วิดีโอที่เข้ารหัสล้มเหลวในการตรวจสอบ วิดีโอต้นฉบับของคุณไม่ได้ถูกเปลี่ยน';

  @override
  String
  get thisDeviceCannotEncodeTheSelectedResolutionOrFrameRateLowerThatSettingAndTryAgain =>
      'อุปกรณ์นี้ไม่สามารถเข้ารหัสความละเอียดหรืออัตราเฟรมที่เลือกได้ ลดการตั้งค่านั้นแล้วลองอีกครั้ง';

  @override
  String
  get thisDeviceCannotDecodeThisAudioFormatForCompressionRemoveAudioOrUseASupportedSource =>
      'อุปกรณ์นี้ไม่สามารถถอดรหัสรูปแบบเสียงนี้สำหรับการบีบอัด ลบเสียงออกหรือใช้แหล่งที่รองรับ';

  @override
  String
  get thisDeviceCannotDecodeThisVideoFormatOrProfileForCompressionChooseAnotherSourceOrDevice =>
      'อุปกรณ์นี้ไม่สามารถถอดรหัสรูปแบบวิดีโอนี้หรือโปรไฟล์สำหรับการบีบอัดได้ กรุณาเลือกแหล่งข้อมูลหรืออุปกรณ์อื่น';

  @override
  String get theExportedMP4IsNotReadyForStreamingTryAnotherVideoOrDevice =>
      'ไฟล์ MP4 ที่ส่งออกยังไม่พร้อมสำหรับการสตรีม ลองใช้วิดีโอหรืออุปกรณ์อื่น';

  @override
  String get thereIsNotEnoughFreeStorageToCompressThisVideo =>
      'พื้นที่เก็บข้อมูลว่างไม่เพียงพอสำหรับการบีบอัดวิดีโอนี้';

  @override
  String get thisDeviceCannotProcessTheSelectedHDRModeTryConvertingToSDR =>
      'อุปกรณ์นี้ไม่สามารถประมวลผลโหมด HDR ที่เลือกได้ ลองแปลงเป็น SDR';

  @override
  String get compressionCouldNotBeCompletedTryAnotherSettingOrVideo =>
      'ไม่สามารถทำการบีบอัดเสร็จสมบูรณ์ได้ ลองใช้การตั้งค่าหรือวิดีโออื่น';

  @override
  String get appIdentity => 'ตัวตนของแอป';

  @override
  String get appName => 'ชื่อแอป';

  @override
  String get packageName => 'ชื่อแพ็กเกจ';

  @override
  String get version => 'เวอร์ชัน';

  @override
  String get buildNumber => 'หมายเลขบิลด์';

  @override
  String get deviceAndBuild => 'อุปกรณ์และบิลด์';

  @override
  String get operatingSystem => 'ระบบปฏิบัติการ';

  @override
  String get osVersion => 'เวอร์ชัน OS';

  @override
  String get buildMode => 'โหมดบิลด์';

  @override
  String get debug => 'ดีบัก';

  @override
  String get release => 'ปล่อย';

  @override
  String get builtWith => 'สร้างด้วย';

  @override
  String get installation => 'การติดตั้ง';

  @override
  String get installedFrom => 'ติดตั้งจาก';

  @override
  String get installedOn => 'ติดตั้งเมื่อ';

  @override
  String get updatedOn => 'ปรับปรุงเมื่อ';

  @override
  String get unavailable => 'ไม่สามารถใช้งานได้';

  @override
  String get projectAndSupport => 'โครงการและการสนับสนุน';

  @override
  String get githubRepository => 'คลังเก็บ GitHub';

  @override
  String get viewZumiSourceCode => 'ดูซอร์สโค้ดของ Zumi';

  @override
  String get readTheREADME => 'อ่าน README';

  @override
  String get learnAboutZumiOnGitHub => 'เรียนรู้เกี่ยวกับ Zumi บน GitHub';

  @override
  String get reportAnIssue => 'รายงานปัญหา';

  @override
  String get viewAndCreateGitHubIssues => 'ดูและสร้างปัญหาใน GitHub';

  @override
  String get latestRelease => 'รุ่นล่าสุด';

  @override
  String get viewReleasesAndDownloads => 'ดูรุ่นและดาวน์โหลด';

  @override
  String get supportZumi => 'สนับสนุน Zumi';

  @override
  String get openTheOfficialDonationPage => 'เปิดหน้าบริจาคอย่างเป็นทางการ';

  @override
  String get couldNotOpenTheLinkPleaseTryAgain =>
      'ไม่สามารถเปิดลิงก์ได้ โปรดลองอีกครั้ง';

  @override
  String get developer => 'นักพัฒนา';

  @override
  String get mostafaSensei => 'Mostafa Sensei';

  @override
  String get githubProfile => 'โปรไฟล์ GitHub';

  @override
  String get seeProjectsAndContactDetails => 'ดูโครงการและรายละเอียดการติดต่อ';

  @override
  String get maintenanceInProgress => 'อยู่ระหว่างการบำรุงรักษา';

  @override
  String get zumiIsTemporarilyUnavailablePleaseTryAgainLater =>
      'Zumi ไม่สามารถใช้งานได้ชั่วคราว โปรดลองอีกครั้งภายหลัง';

  @override
  String get comingSoon => 'เร็วๆ นี้';

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
  String get cleanupInterruptedJobsFailed =>
      'The interrupted files could not be cleaned.';

  @override
  String get ffmpegBuildMetadataUnavailable =>
      'FFmpeg build metadata is unavailable.';

  @override
  String get openSourceLicensesLoadFailed =>
      'Open source license notices could not be loaded.';

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
  String fileSavedToGallery(String fileName) {
    return 'ไฟล์ถูกบันทึกในแกลเลอรี: $fileName';
  }

  @override
  String fileSavedToDocuments(String fileName) {
    return 'ไฟล์ถูกบันทึกในเอกสาร: $fileName';
  }

  @override
  String get fileIsAlreadySaved => 'ไฟล์ถูกบันทึกแล้ว';

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
  String get addressLineCannotBeEmpty => 'บรรทัดที่อยู่ต้องไม่ว่าง';

  @override
  String get addressLineIsTooLong => 'บรรทัดที่อยู่นานเกินไป';

  @override
  String get specialCharactersAreNotAllowed => 'ไม่อนุญาตให้ใช้ตัวอักษรพิเศษ';

  @override
  String get emojisAreNotAllowed => 'ไม่อนุญาตให้ใช้สัญลักษณ์อีโมจิ';

  @override
  String get cityCannotBeEmpty => 'เมืองต้องไม่ว่าง';

  @override
  String get cityNameIsTooLong => 'ชื่อเมืองยาวเกินไป';

  @override
  String get cityContainsInvalidSpecialCharacters =>
      'เมืองมีตัวอักษรพิเศษที่ไม่ถูกต้อง';

  @override
  String get addressLabelCannotBeEmpty => 'ป้ายที่อยู่ต้องไม่ว่าง';

  @override
  String get addressLabelIsTooLong => 'ป้ายที่อยู่นานเกินไป';

  @override
  String get emailCannotBeEmpty => 'อีเมลต้องไม่ว่าง';

  @override
  String get invalidEmailFormat => 'รูปแบบอีเมลไม่ถูกต้อง';

  @override
  String get emailContainsInvalidCharacters => 'อีเมลมีอักขระที่ไม่ถูกต้อง';

  @override
  String get emailMustContain => 'อีเมลต้องมี @';

  @override
  String get emailMustBeInLowercase => 'อีเมลต้องเป็นตัวพิมพ์เล็ก';

  @override
  String get arabicCharactersAreNotAllowed => 'ไม่อนุญาตให้ใช้ตัวอักษรอาหรับ';

  @override
  String get emojisAreNotAllowedInEmail =>
      'ไม่อนุญาตให้ใช้สัญลักษณ์อีโมจิในอีเมล';

  @override
  String get phoneNumberCannotBeEmpty => 'หมายเลขโทรศัพท์ไม่สามารถเว้นว่างได้';

  @override
  String get invalidPhoneNumber => 'หมายเลขโทรศัพท์ไม่ถูกต้อง';

  @override
  String get phoneNumberMustBeAtLeast11Digits =>
      'หมายเลขโทรศัพท์ต้องมีอย่างน้อย 11 หลัก';

  @override
  String get nameCannotBeEmpty => 'ชื่อไม่สามารถเว้นว่างได้';

  @override
  String get invalidName => 'ชื่อไม่ถูกต้อง';

  @override
  String get nameMustBeAtLeast3Characters => 'ชื่อต้องมีอย่างน้อย 3 ตัวอักษร';

  @override
  String get nameCannotExceed20Characters => 'ชื่อไม่สามารถเกิน 20 ตัวอักษร';

  @override
  String get nameContainsInvalidSpecialCharacters =>
      'ชื่อมีอักขระพิเศษที่ไม่ถูกต้อง';

  @override
  String get emojisAreNotAllowedInName =>
      'ไม่อนุญาตให้ใช้สัญลักษณ์อีโมจิในชื่อ';

  @override
  String get passwordCannotBeEmpty => 'รหัสผ่านไม่สามารถเว้นว่างได้';

  @override
  String get passwordMustContainUppercaseLowercaseNumberAndSpecialCharacter =>
      'รหัสผ่านต้องประกอบด้วยอักษรตัวใหญ่ ตัวเล็ก ตัวเลข และอักขระพิเศษ';

  @override
  String get passwordMustBeAtLeast8CharactersLong =>
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
  String get appearanceLanguage => 'ลักษณะและภาษา';

  @override
  String get compression => 'การบีบอัด';

  @override
  String get onDeviceAI => 'AI บนอุปกรณ์';

  @override
  String get notificationsPrivacy => 'การแจ้งเตือนและความเป็นส่วนตัว';

  @override
  String get plansPurchases => 'แผนและการซื้อ';

  @override
  String get about => 'เกี่ยวกับ';

  @override
  String get legal => 'กฎหมาย';

  @override
  String get helpFeedback => 'ความช่วยเหลือและข้อเสนอแนะ';

  @override
  String get account => 'บัญชี';

  @override
  String get themeAndAppLanguage => 'ธีมและภาษาของแอป';

  @override
  String get appLanguageAndDirection => 'ภาษาและทิศทางของแอป';

  @override
  String get defaultQualityAndFormat => 'คุณภาพและรูปแบบเริ่มต้น';

  @override
  String get cacheAndStorageUsage => 'การใช้งานแคชและพื้นที่จัดเก็บ';

  @override
  String get aiSettings => 'การตั้งค่า AI';

  @override
  String get zumiAssistant => 'ผู้ช่วย Zumi';

  @override
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere =>
      'ผู้ช่วยส่วนตัวสำหรับวิดีโอของคุณกำลังจะมาเร็ว ๆ นี้ คุณจะสามารถถามเกี่ยวกับการบีบอัด การจัดระเบียบ และวิดีโอที่บันทึกไว้ที่นี่';

  @override
  String get localModelsAndSmartTools => 'โมเดลท้องถิ่นและเครื่องมืออัจฉริยะ';

  @override
  String get exploreLocalModelsAndFutureAIToolsTheseOptionsAreNotActiveYet =>
      'สำรวจโมเดลท้องถิ่นและเครื่องมือ AI ในอนาคต ตัวเลือกเหล่านี้ยังไม่เปิดใช้งาน';

  @override
  String get localModels => 'โมเดลท้องถิ่น';

  @override
  String get browseAndDownloadSupportedModels =>
      'เรียกดูและดาวน์โหลดโมเดลที่รองรับ';

  @override
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere =>
      'เลือกโมเดลที่รองรับ ดาวน์โหลดไปยังอุปกรณ์นี้ และจัดการโมเดลที่ติดตั้งที่นี่';

  @override
  String get importAModel => 'นำเข้าโมเดล';

  @override
  String get useACompatibleModelFromYourFiles =>
      'ใช้โมเดลที่เข้ากันได้จากไฟล์ของคุณ';

  @override
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt =>
      'เลือกไฟล์โมเดลท้องถิ่นที่เข้ากันได้และตรวจสอบข้อกำหนดก่อนใช้งาน';

  @override
  String get smartFeatures => 'คุณสมบัติอัจฉริยะ';

  @override
  String get compressionOrganizationAndSearch =>
      'การบีบอัด การจัดระเบียบ และการค้นหา';

  @override
  String
  get chooseWhichLocalAISuggestionsToUseForVideoCompressionOrganizationNamingAndSearch =>
      'เลือกคำแนะนำ AI ท้องถิ่นที่ต้องการใช้สำหรับการบีบอัดวิดีโอ การจัดระเบียบ การตั้งชื่อ และการค้นหา';

  @override
  String get modelPerformance => 'ประสิทธิภาพของโมเดล';

  @override
  String get processingAndResourcePreferences =>
      'การตั้งค่าการประมวลผลและทรัพยากร';

  @override
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels =>
      'ควบคุมแบ็กเอนด์การประมวลผลและขีดจำกัดทรัพยากรสำหรับโมเดลที่รองรับ';

  @override
  String get conversationSettings => 'การตั้งค่าการสนทนา';

  @override
  String get streamingThinkingAndResponseLength =>
      'การสตรีม การคิด และความยาวของการตอบสนอง';

  @override
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits =>
      'กำหนดค่าการตอบสนองของผู้ช่วย รวมถึงการสตรีม โหมดการคิด การสุ่มตัวอย่าง และข้อจำกัดการตอบสนอง';

  @override
  String get imagesAndAudio => 'ภาพและเสียง';

  @override
  String get controlMultimodalInputs => 'ควบคุมอินพุตมัลติโมดอล';

  @override
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos =>
      'เลือกว่ารุ่นที่เข้ากันได้สามารถวิเคราะห์ภาพและเสียงที่เลือกจากวิดีโอของคุณได้หรือไม่';

  @override
  String get semanticSearch => 'การค้นหาเชิงความหมาย';

  @override
  String get embeddingsAndLocalIndexing => 'การฝังและการจัดทำดัชนีในพื้นที่';

  @override
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning =>
      'จัดการโมเดลฝังในเครื่องและดัชนีการค้นหาเพื่อค้นหาวิดีโอและช่วงเวลาโดยความหมาย';

  @override
  String get toolsAndStructuredOutput => 'เครื่องมือและผลลัพธ์ที่มีโครงสร้าง';

  @override
  String get actionsSchemasAndConfirmations =>
      'การดำเนินการ โครงร่าง และการยืนยัน';

  @override
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation =>
      'จัดการการดำเนินการผู้ช่วยที่รองรับและการตอบสนองแบบมีโครงสร้าง การดำเนินการที่ส่งผลต่อไฟล์จะต้องได้รับการยืนยันจากคุณ';

  @override
  String get models => 'โมเดล';

  @override
  String get assistantExperience => 'ประสบการณ์ผู้ช่วย';

  @override
  String get smartCapabilities => 'ความสามารถอัจฉริยะ';

  @override
  String get performance => 'ประสิทธิภาพ';

  @override
  String get yourCompressedVideoHistory => 'ประวิดีโอที่บีบอัดของคุณ';

  @override
  String get completionAndUpdateAlerts =>
      'การแจ้งเตือนการทำงานเสร็จสิ้นและอัปเดต';

  @override
  String get yourDataStaysLocal => 'ข้อมูลของคุณอยู่ในเครื่อง';

  @override
  String get comparePlansAndUpgrade => 'เปรียบเทียบแผนและอัปเกรด';

  @override
  String get paymentMethodsAndBilling => 'วิธีการชำระเงินและการเรียกเก็บเงิน';

  @override
  String get restoreYourPreviousPurchase => 'กู้คืนการซื้อก่อนหน้าของคุณ';

  @override
  String get versionAndBuildDetails => 'รายละเอียดเวอร์ชันและบิลด์';

  @override
  String get theDeveloperBehindZumi => 'นักพัฒนาผู้สร้าง Zumi';

  @override
  String get openSourcePackageLicenses => 'ใบอนุญาตแพ็กเกจโอเพ่นซอร์ส';

  @override
  String get howDataIsHandled => 'วิธีการจัดการข้อมูล';

  @override
  String get rulesForUsingZumi => 'กฎสำหรับการใช้ Zumi';

  @override
  String get whatDataWeCollect => 'ข้อมูลที่เรารวบรวม';

  @override
  String get whyWeNeedPermissions => 'ทำไมเราจึงต้องการสิทธิ์';

  @override
  String get answersToCommonQuestions => 'คำตอบสำหรับคำถามที่พบบ่อย';

  @override
  String get reachTheDeveloperDirectly => 'ติดต่อผู้พัฒนาโดยตรง';

  @override
  String get sendUsYourFeedback => 'ส่งความคิดเห็นของคุณให้เรา';

  @override
  String get pickVideo => 'เลือกวิดีโอ';

  @override
  String get targetSizeMB => 'ขนาดเป้าหมาย (MB)';

  @override
  String get startCompression => 'เริ่มการบีบอัด';

  @override
  String get pause => 'หยุดชั่วคราว';

  @override
  String get resume => 'ดำเนินการต่อ';

  @override
  String get viewResult => 'ดูผลลัพธ์';

  @override
  String get saveToGallery => 'บันทึกไปที่แกลเลอรี';

  @override
  String get shareVideo => 'แชร์วิดีโอ';

  @override
  String get originalSize => 'ขนาดต้นฉบับ';

  @override
  String get outputSize => 'ขนาดที่ส่งออก';

  @override
  String get noCompressedVideosYet => 'ยังไม่มีวิดีโอที่บีบอัด';

  @override
  String get savedToGallery => 'บันทึกไปที่แกลเลอรีแล้ว';

  @override
  String get enterATargetSizeGreaterThanZero =>
      'กรอกขนาดเป้าหมายที่มากกว่าศูนย์';

  @override
  String get compressionCancelled => 'การบีบอัดถูกยกเลิก';

  @override
  String get thisVideoCouldNotReachTheSelectedSizeTryALargerTargetSize =>
      'วิดีโอนี้ไม่สามารถถึงขนาดที่เลือก ลองขนาดเป้าหมายที่ใหญ่ขึ้น';

  @override
  String get theSelectedSizeIsTooSmallForThisVideoChooseALargerSize =>
      'ขนาดที่เลือกเล็กเกินไปสำหรับวิดีโอนี้ เลือกขนาดที่ใหญ่ขึ้น';

  @override
  String get originalPreview => 'ตัวอย่างต้นฉบับ';

  @override
  String get compressedPreview => 'ตัวอย่างที่บีบอัดแล้ว';

  @override
  String get targetPreset => 'ค่ากำหนดเป้าหมาย';

  @override
  String get customSize => 'ขนาดกำหนดเอง';

  @override
  String get previewUnavailable => 'ไม่สามารถดูตัวอย่างได้';

  @override
  String get advancedControls => 'การควบคุมขั้นสูง';

  @override
  String get automatic => 'อัตโนมัติ';

  @override
  String get maximumResolution => 'ความละเอียดสูงสุด';

  @override
  String get originalResolution => 'ความละเอียดต้นฉบับ';

  @override
  String get maximumFrameRate => 'อัตราเฟรมสูงสุด';

  @override
  String get audioBitrate => 'อัตราบิตเสียง';

  @override
  String get removeAudio => 'ลบเสียง';

  @override
  String get videoBitrateCeilingKbps => 'เพดานอัตราบิตวิดีโอ (kbps)';

  @override
  String get hdrHandling => 'การจัดการ HDR';

  @override
  String get convertToSDR => 'แปลงเป็น SDR';

  @override
  String get keepHDRWhenSupported => 'เก็บ HDR เมื่อรองรับ';

  @override
  String get beforeYouStart => 'ก่อนที่คุณจะเริ่ม';

  @override
  String get calculatingCompressionPlan => 'กำลังคำนวณแผนการบีบอัด…';

  @override
  String get plannedResolution => 'ความละเอียดที่วางแผนไว้';

  @override
  String get plannedVideoBitrate => 'อัตราบิตวิดีโอที่วางแผนไว้';

  @override
  String get plannedAudioBitrate => 'อัตราบิตเสียงที่วางแผนไว้';

  @override
  String
  get reEncodingConvertsAudioToAACStereoDolbyAtmosAndDTSSpatialAudioWillNotBePreserved =>
      'การเข้ารหัสซ้ำจะแปลงเสียงเป็น AAC สเตอริโอ Dolby Atmos และ DTS เสียงแบบสเปเชียลจะไม่ถูกเก็บรักษาไว้';

  @override
  String
  get thisTargetIsTooSmallForAUsableVideoIncreaseTheSizeOrLowerOtherLimits =>
      'เป้าหมายนี้มีขนาดเล็กเกินไปสำหรับวิดีโอที่ใช้งานได้ เพิ่มขนาดหรือปรับขีดจำกัดอื่น ๆ ให้ต่ำลง';

  @override
  String get theSelectedTargetMayReduceVideoQuality =>
      'เป้าหมายที่เลือกอาจลดคุณภาพของวิดีโอ';

  @override
  String get theSourceIsAlreadyWithinTheSizeLimit =>
      'ต้นฉบับอยู่ภายในขีดจำกัดขนาดแล้ว';

  @override
  String get enterABitrateOfAtLeast150KbpsOrLeaveBlankForAutomatic =>
      'กรอกอัตราบิตอย่างน้อย 150 kbps หรือเว้นว่างเพื่อปรับอัตโนมัติ';

  @override
  String get enterAnEvenResolutionFrom240To16384OrLeaveBlankForAutomatic =>
      'กรอกความละเอียดแบบคู่ตั้งแต่ 240 ถึง 16384 หรือเว้นว่างเพื่อปรับอัตโนมัติ';

  @override
  String get videoPosition => 'ตำแหน่งวิดีโอ';

  @override
  String
  get aPreviousCompressionWasInterruptedItsTemporaryFilesWereCleanedUpYouCanSelectTheVideoAndTryAgain =>
      'การบีบอัดก่อนหน้านี้ถูกขัดจังหวะ ไฟล์ชั่วคราวของมันถูกลบแล้ว; คุณสามารถเลือกวิดีโอและลองอีกครั้ง';

  @override
  String get dismiss => 'ปิด';

  @override
  String get clearHistory => 'ล้างประวัติ';

  @override
  String get removeAllHistoryEntriesSavedVideosWillRemainOnYourDevice =>
      'ลบประวัติทั้งหมดหรือไม่? วิดีโอที่บันทึกไว้จะยังคงอยู่บนอุปกรณ์ของคุณ';

  @override
  String get attempts => 'ความพยายาม';

  @override
  String get targetSize => 'ขนาดเป้าหมาย';

  @override
  String get outputResolution => 'ความละเอียดเอาต์พุต';

  @override
  String get thisVideoCouldNotBeReadChooseAnotherFile =>
      'ไม่สามารถอ่านวิดีโอนี้ได้ กรุณาเลือกไฟล์อื่น';

  @override
  String get theEncodedVideoFailedVerificationYourOriginalVideoWasNotChanged =>
      'วิดีโอที่เข้ารหัสล้มเหลวในการตรวจสอบ วิดีโอต้นฉบับของคุณไม่ได้ถูกเปลี่ยน';

  @override
  String
  get thisDeviceCannotEncodeTheSelectedResolutionOrFrameRateLowerThatSettingAndTryAgain =>
      'อุปกรณ์นี้ไม่สามารถเข้ารหัสความละเอียดหรืออัตราเฟรมที่เลือกได้ ลดการตั้งค่านั้นแล้วลองอีกครั้ง';

  @override
  String
  get thisDeviceCannotDecodeThisAudioFormatForCompressionRemoveAudioOrUseASupportedSource =>
      'อุปกรณ์นี้ไม่สามารถถอดรหัสรูปแบบเสียงนี้สำหรับการบีบอัด ลบเสียงออกหรือใช้แหล่งที่รองรับ';

  @override
  String
  get thisDeviceCannotDecodeThisVideoFormatOrProfileForCompressionChooseAnotherSourceOrDevice =>
      'อุปกรณ์นี้ไม่สามารถถอดรหัสรูปแบบวิดีโอนี้หรือโปรไฟล์สำหรับการบีบอัดได้ กรุณาเลือกแหล่งข้อมูลหรืออุปกรณ์อื่น';

  @override
  String get theExportedMP4IsNotReadyForStreamingTryAnotherVideoOrDevice =>
      'ไฟล์ MP4 ที่ส่งออกยังไม่พร้อมสำหรับการสตรีม ลองใช้วิดีโอหรืออุปกรณ์อื่น';

  @override
  String get thereIsNotEnoughFreeStorageToCompressThisVideo =>
      'พื้นที่เก็บข้อมูลว่างไม่เพียงพอสำหรับการบีบอัดวิดีโอนี้';

  @override
  String get thisDeviceCannotProcessTheSelectedHDRModeTryConvertingToSDR =>
      'อุปกรณ์นี้ไม่สามารถประมวลผลโหมด HDR ที่เลือกได้ ลองแปลงเป็น SDR';

  @override
  String get compressionCouldNotBeCompletedTryAnotherSettingOrVideo =>
      'ไม่สามารถทำการบีบอัดเสร็จสมบูรณ์ได้ ลองใช้การตั้งค่าหรือวิดีโออื่น';

  @override
  String get appIdentity => 'ตัวตนของแอป';

  @override
  String get appName => 'ชื่อแอป';

  @override
  String get packageName => 'ชื่อแพ็กเกจ';

  @override
  String get version => 'เวอร์ชัน';

  @override
  String get buildNumber => 'หมายเลขบิลด์';

  @override
  String get deviceAndBuild => 'อุปกรณ์และบิลด์';

  @override
  String get operatingSystem => 'ระบบปฏิบัติการ';

  @override
  String get osVersion => 'เวอร์ชัน OS';

  @override
  String get buildMode => 'โหมดบิลด์';

  @override
  String get debug => 'ดีบัก';

  @override
  String get release => 'ปล่อย';

  @override
  String get builtWith => 'สร้างด้วย';

  @override
  String get installation => 'การติดตั้ง';

  @override
  String get installedFrom => 'ติดตั้งจาก';

  @override
  String get installedOn => 'ติดตั้งเมื่อ';

  @override
  String get updatedOn => 'ปรับปรุงเมื่อ';

  @override
  String get unavailable => 'ไม่สามารถใช้งานได้';

  @override
  String get projectAndSupport => 'โครงการและการสนับสนุน';

  @override
  String get githubRepository => 'คลังเก็บ GitHub';

  @override
  String get viewZumiSourceCode => 'ดูซอร์สโค้ดของ Zumi';

  @override
  String get readTheREADME => 'อ่าน README';

  @override
  String get learnAboutZumiOnGitHub => 'เรียนรู้เกี่ยวกับ Zumi บน GitHub';

  @override
  String get reportAnIssue => 'รายงานปัญหา';

  @override
  String get viewAndCreateGitHubIssues => 'ดูและสร้างปัญหาใน GitHub';

  @override
  String get latestRelease => 'รุ่นล่าสุด';

  @override
  String get viewReleasesAndDownloads => 'ดูรุ่นและดาวน์โหลด';

  @override
  String get supportZumi => 'สนับสนุน Zumi';

  @override
  String get openTheOfficialDonationPage => 'เปิดหน้าบริจาคอย่างเป็นทางการ';

  @override
  String get couldNotOpenTheLinkPleaseTryAgain =>
      'ไม่สามารถเปิดลิงก์ได้ โปรดลองอีกครั้ง';

  @override
  String get developer => 'นักพัฒนา';

  @override
  String get mostafaSensei => 'Mostafa Sensei';

  @override
  String get githubProfile => 'โปรไฟล์ GitHub';

  @override
  String get seeProjectsAndContactDetails => 'ดูโครงการและรายละเอียดการติดต่อ';

  @override
  String get maintenanceInProgress => 'อยู่ระหว่างการบำรุงรักษา';

  @override
  String get zumiIsTemporarilyUnavailablePleaseTryAgainLater =>
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
