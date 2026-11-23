// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Thai (`th`).
class AppLocalizationsTh extends AppLocalizations {
  AppLocalizationsTh([String locale = 'th']) : super(locale);

  @override
  String get asagi => 'Asagi';

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
  String get confirm => 'ยืนยัน';

  @override
  String get ok => 'ตกลง';

  @override
  String get compressVideosPrivatelyOnYourDevice =>
      'บีบอัดวิดีโออย่างเป็นส่วนตัวบนอุปกรณ์ของคุณ';

  @override
  String get welcomeToAsagi => 'ยินดีต้อนรับสู่ Asagi';

  @override
  String get learnHowAsagiCompressesYourVideosWithoutEverLeavingYourPhone =>
      'เรียนรู้ว่า Asagi บีบอัดวิดีโอของคุณอย่างไรโดยไม่ต้องออกจากโทรศัพท์';

  @override
  String get signIn => 'ลงชื่อเข้าใช้';

  @override
  String get signInToSyncYourPlanAndKeepYourPurchasesAvailableOnEveryDevice =>
      'ลงชื่อเข้าใช้เพื่อซิงค์แผนของคุณและเก็บการซื้อของคุณให้สามารถใช้งานได้บนทุกอุปกรณ์';

  @override
  String get chooseAVideo => 'เลือกวิดีโอ';

  @override
  String get preparingSelectedVideo => 'Getting your video ready';

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
  String get colorScheme => 'Color scheme';

  @override
  String get automaticColorScheme => 'Auto';

  @override
  String get sharperTextAndSurfaces => 'Pure black and white surfaces ';

  @override
  String get asagiEngine => 'Asagi Engine';

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
  String get aboutAsagi => 'เกี่ยวกับ Asagi';

  @override
  String get versionBuildNumberAndApplicationDetails =>
      'เวอร์ชัน หมายเลขบิลด์ และรายละเอียดแอปพลิเคชัน';

  @override
  String get aboutTheDeveloper => 'เกี่ยวกับผู้พัฒนา';

  @override
  String get theDeveloperAndToolsBehindAsagi =>
      'ผู้พัฒนาและเครื่องมือเบื้องหลัง Asagi';

  @override
  String get openSourcePackagesBundledWithAsagi =>
      'แพ็กเกจโอเพนซอร์สที่มาพร้อมกับ Asagi';

  @override
  String get privacyPolicy => 'นโยบายความเป็นส่วนตัว';

  @override
  String get howAsagiHandlesYourVideosAndData =>
      'วิธีที่ Asagi จัดการวิดีโอและข้อมูลของคุณ';

  @override
  String get termsOfService => 'ข้อกำหนดในการให้บริการ';

  @override
  String get theTermsThatApplyToAsagiAndItsPurchases =>
      'ข้อกำหนดที่ใช้กับ Asagi และการซื้อของมัน';

  @override
  String get dataSafety => 'ความปลอดภัยของข้อมูล';

  @override
  String get summaryOfTheDataAsagiCollectsAndWhy =>
      'สรุปข้อมูลที่ Asagi รวบรวมและเหตุผล';

  @override
  String get permissions => 'สิทธิ์';

  @override
  String get runtimePermissionsAsagiRequestsAndWhyEachIsNeeded =>
      'สิทธิ์ในเวลารันไทม์ที่ Asagi ขอและเหตุผลที่ต้องใช้แต่ละอย่าง';

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
  String get rateAsagi => 'ให้คะแนน Asagi';

  @override
  String get tellOthersHowAsagiWorkedForYouOnTheStore =>
      'บอกผู้อื่นว่า Asagi ทำงานอย่างไรสำหรับคุณในร้านค้า';

  @override
  String get shareAsagi => 'แชร์ Asagi';

  @override
  String get recommendAsagiToAFriend => 'แนะนำ Asagi ให้เพื่อน';

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
  String get asagiAssistant => 'ผู้ช่วย Asagi';

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
  String get theDeveloperBehindAsagi => 'นักพัฒนาผู้สร้าง Asagi';

  @override
  String get openSourcePackageLicenses => 'ใบอนุญาตแพ็กเกจโอเพ่นซอร์ส';

  @override
  String get howDataIsHandled => 'วิธีการจัดการข้อมูล';

  @override
  String get rulesForUsingAsagi => 'กฎสำหรับการใช้ Asagi';

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
  String get viewAsagiSourceCode => 'ดูซอร์สโค้ดของ Asagi';

  @override
  String get readTheREADME => 'อ่าน README';

  @override
  String get learnAboutAsagiOnGitHub => 'เรียนรู้เกี่ยวกับ Asagi บน GitHub';

  @override
  String get reportAnIssue => 'รายงานปัญหา';

  @override
  String get viewAndCreateGitHubIssues => 'ดูและสร้างปัญหาใน GitHub';

  @override
  String get latestRelease => 'รุ่นล่าสุด';

  @override
  String get viewReleasesAndDownloads => 'ดูรุ่นและดาวน์โหลด';

  @override
  String get supportAsagi => 'สนับสนุน Asagi';

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
  String get asagiIsTemporarilyUnavailablePleaseTryAgainLater =>
      'Asagi ไม่สามารถใช้งานได้ชั่วคราว โปรดลองอีกครั้งภายหลัง';

  @override
  String get comingSoon => 'เร็วๆ นี้';

  @override
  String get asagiProTitle => 'Asagi Pro';

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
      'Custom compression, sharing presets, on-device AI tools, and loyalty savings.';

  @override
  String get pleaseWait => 'กรุณารอสักครู่...';

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
  String get proBenefitsTitle => 'Pro features';

  @override
  String get proCustomCompressionGroup => 'Custom compression';

  @override
  String get proSharingPresetsGroup => 'Exclusive sharing presets';

  @override
  String get proAiGroupTitle => 'On-device AI toolkit';

  @override
  String get proLoyaltyGroup => 'Loyalty savings';

  @override
  String get proCustomSizeBenefit =>
      'Set a precise maximum size for every video export.';

  @override
  String get proResolutionBenefit =>
      'Choose output resolution from 240p to source quality.';

  @override
  String get proFrameRateBenefit => 'Cap exports at 24, 30, 60, or 120 fps.';

  @override
  String get proVideoBitrateBenefit =>
      'Control the maximum video bitrate on Android.';

  @override
  String get proAudioBitrateBenefit =>
      'Choose audio bitrate or remove audio entirely.';

  @override
  String get proDiscordBenefit =>
      'Export videos within Discord size and encoding limits.';

  @override
  String get proYouTubeShortsBenefit =>
      'Prepare vertical videos for YouTube Shorts limits.';

  @override
  String get proAiAssistantBenefit =>
      'Get AI guidance for compression and app features.';

  @override
  String get proAiSceneBenefit =>
      'Understand video scenes with on-device AI analysis.';

  @override
  String get proAiTranscriptionBenefit =>
      'Transcribe speech and find moments by meaning.';

  @override
  String get proLoyaltyBenefit =>
      'Earn monthly loyalty discounts up to thirty percent.';

  @override
  String get proCustomSizeTitle => 'Choose a target file size';

  @override
  String get proCustomSizeDetails =>
      'Set a precise size ceiling for each custom compression.';

  @override
  String get proResolutionTitle => 'Set maximum resolution';

  @override
  String get proResolutionDetails =>
      'Limit output resolution from 240p up to the source size.';

  @override
  String get proFrameRateTitle => 'Control maximum frame rate';

  @override
  String get proFrameRateDetails =>
      'Choose a 24, 30, 60, or 120 fps output cap on Android.';

  @override
  String get proVideoBitrateTitle => 'Set a video bitrate ceiling';

  @override
  String get proVideoBitrateDetails =>
      'Set the maximum video bitrate on Android.';

  @override
  String get proAudioBitrateTitle => 'Choose audio quality';

  @override
  String get proAudioBitrateDetails =>
      'Pick an audio bitrate or remove audio on Android.';

  @override
  String get proDiscordTitle => 'Discord-targeted export';

  @override
  String get proDiscordDetails =>
      'Use a preset tuned to Discord size and encoding limits.';

  @override
  String get proYouTubeShortsTitle => 'YouTube Shorts export';

  @override
  String get proYouTubeShortsDetails =>
      'Use Shorts size, resolution, and frame-rate limits.';

  @override
  String get proAiAssistantTitle => 'AI assistant';

  @override
  String get proAiAssistantDetails =>
      'Get help with video compression and app features.';

  @override
  String get proAiSceneTitle => 'Scene understanding';

  @override
  String get proAiSceneDetails =>
      'Explore video content with on-device AI analysis.';

  @override
  String get proAiTranscriptionTitle => 'Transcription and search';

  @override
  String get proAiTranscriptionDetails =>
      'Transcribe speech and find moments by meaning.';

  @override
  String get proLoyaltyTitle => 'Monthly loyalty discount';

  @override
  String get proLoyaltyDetails => 'Earn 2% per consecutive month, up to 30%.';

  @override
  String get proPlatformAvailabilityNote =>
      'Advanced resolution, frame-rate, and bitrate controls are available on Android. Export limits depend on device support.';

  @override
  String get proAiAvailabilityNote =>
      'AI features require a compatible on-device model.';

  @override
  String get loyaltySavingsTitle => 'Loyalty savings';

  @override
  String get loyaltyProgressLabel => 'Progress toward your next discount';

  @override
  String get subscriptionSecureBilling =>
      'Secure billing through your app store';

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
  String get asagiProActive => 'Asagi Pro is active';

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
  String get cancel => 'ยกเลิก';

  @override
  String get clean => 'Clean';

  @override
  String get openSourceLicenses => 'ใบอนุญาตโอเพนซอร์ส';

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
  String get nativeRustEngineSpeed => 'Native Rust engine speed';

  @override
  String
  get engineeredWithRustAndNativeGpuAccelerationForLightningFastCompressionAndLowBatteryDraw =>
      'Engineered with Rust and native GPU acceleration for lightning-fast compression and low battery draw.';

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
  String get asagiIsStudyingThePlatformAlgorithmAndCalculatingTheBudget =>
      '🐾 Asagi is studying the platform\'s algorithm and calculating the budget...';

  @override
  String get customControlMode => 'Custom control mode';

  @override
  String
  get youSetTheTargetSizeManuallyTheEngineWillApplyTheHighestPossibleQualityWithinThatCap =>
      'You set the target size manually. The engine will apply the highest possible resolution and quality within that cap.';

  @override
  String asagiIsPuzzledAnImpossibleTargetForTheNameCap(String name) {
    return 'Asagi is puzzled (impossible target for the $name cap)';
  }

  @override
  String
  theVideoIsTooLongToFitWithinTheSizeCapWithoutSevereDistortionWeSuggestTrimmingTheVideoOrChoosingAnotherPlatformWithAHigherCap(
    String size,
  ) {
    return 'The video is too long to fit within the $size cap without severe image distortion. We suggest trimming the video or choosing another platform with a higher cap.';
  }

  @override
  String get asagiAlertProtectingQualityFromDistortion =>
      'Asagi alert: protecting quality from distortion';

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
      '1. Acceptance of Terms\nBy downloading, accessing, or using Asagi (\"the Application\"), you agree to be bound by these Terms of Service. If you disagree with any part of these terms, you must discontinue using the application.\n\n2. Personal License\nWe grant you a personal, revocable, non-exclusive, non-transferable license to use Asagi strictly for your personal, non-commercial, or internal creative media compression workflows on compatible devices.\n\n3. On-Device Execution & Content Ownership\nAsagi executes compression pipelines exclusively on your device hardware using local encoders. You retain 100% of all intellectual property rights and copyrights in and to your video files and media. Asagi never uploads, hosts, replicates, or claims ownership over any videos you select or process. You are solely responsible for ensuring you have all requisite permissions and licenses for any media you compress.\n\n4. In-App Subscriptions & Billing\nOptional premium features (such as Asagi Pro) may be offered as recurring subscriptions or one-time unlock purchases. All billing, renewals, cancellations, and tax collections are processed exclusively through the official platform store (Google Play or Apple App Store). Subscriptions renew automatically unless cancelled at least 24 hours prior to the conclusion of the active billing cycle.\n\n5. Disclaimer of Warranties\nThe Application is provided \"as is\" and \"as available,\" without warranty of any kind, express or implied. While we employ rigorous testing and standard-compliant codecs, we do not guarantee that media compression will achieve specific file reduction percentages without visual changes for every source codec.\n';

  @override
  String get termsCopiedToClipboard => 'Terms copied to clipboard';

  @override
  String get termsAcceptanceLicenseTitle => '1. Acceptance & License';

  @override
  String get termsAcceptanceLicenseBody =>
      'By using Asagi, you agree to these Terms. We grant you a personal, non-exclusive, non-transferable license to compress media locally on your devices.';

  @override
  String get termsContentOwnershipTitle => '2. 100% Content Ownership';

  @override
  String get termsContentOwnershipBody =>
      'You retain all copyrights and ownership over your videos. Asagi does not transmit, store, or claim any rights to your media files.';

  @override
  String get termsLocalOnDeviceProcessingTitle =>
      '3. Local On-Device Processing';

  @override
  String get termsLocalOnDeviceProcessingBody =>
      'All compression pipelines run completely on your device hardware without external server dependencies or remote media processing.';

  @override
  String get termsSubscriptionsAndBillingTitle => '4. Subscriptions & Billing';

  @override
  String get termsSubscriptionsAndBillingBody =>
      'Purchases and subscriptions are managed securely via official Google Play and Apple App Store billing. Cancellations can be performed anytime in your store account.';

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
  String get financialInfoAndPayment => 'Financial Info & Payment';

  @override
  String
  get allPaymentDetailsAreHandledDirectlyByGooglePlayStoreOrAppleAppStoreAsagiNeverAccessesCardDetails =>
      'All payment details are handled directly by Google Play Store or Apple App Store. Asagi never accesses card details.';

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
  String get dataEncryptedInTransitStorePurchases =>
      'Data encrypted in transit (store purchases)';

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
      'Asagi was built with a fundamental architectural guarantee: your videos, clips, and audio tracks are encoded exclusively on your device hardware using local native codecs. At no point is your media streamed, stored, or processed on external cloud infrastructure.';

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
  String get thirdPartyStorePaymentsTitle => '4. Third-Party Store Payments';

  @override
  String get thirdPartyStorePaymentsBody =>
      'Subscription and in-app purchase operations are executed directly through the official Apple App Store or Google Play Store. Asagi does not process or retain your credit card or financial billing information.';

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
  String get asagiBitrateOptimizer => 'Asagi Bitrate Optimizer (0.2B)';

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
  String get privacyPolicySummary => 'How Asagi handles data';

  @override
  String get dataSafetySummary => 'Collected data and purpose';

  @override
  String get permissionsSummary => 'Why Asagi needs access';

  @override
  String get supportedPaymentOptions => 'Supported Payment Options';

  @override
  String get paymentProtectionTitle => 'Protection & Safety Guarantee';

  @override
  String get storeBillingTitle => 'App Store / Google Play Billing';

  @override
  String get storeBillingSummary => 'Secure store checkout';

  @override
  String get storeBillingDetails =>
      'Purchases are completed securely through your device’s official app store account. Payment is authenticated using the security options configured on your device.';

  @override
  String get creditDebitCardsTitle => 'Credit & Debit Cards';

  @override
  String get creditDebitCardsSummary => 'Cards through your store';

  @override
  String get creditDebitCardsDetails =>
      'Use a card saved to your Google Play or Apple App Store account. The store processes the payment, so Asagi never receives your card number.';

  @override
  String get storeBalanceGiftCardsTitle => 'Store Balance & Gift Cards';

  @override
  String get storeBalanceGiftCardsSummary => 'Redeem store credit';

  @override
  String get storeBalanceGiftCardsDetails =>
      'Use eligible store balance, redeemed gift cards, or promotional credit toward an Asagi subscription. Availability depends on your store and region.';

  @override
  String get digitalWalletsTitle => 'Digital Wallets & Local Methods';

  @override
  String get digitalWalletsSummary => 'Store-supported payment methods';

  @override
  String get digitalWalletsDetails =>
      'Your store may offer Google Pay, Apple Pay, PayPal, or regional payment methods. Available options depend on your account, device, and region.';

  @override
  String get storeProtectedPurchases => 'Store-Protected Purchases';

  @override
  String get storeProtectedPurchasesSummary => 'Billing stays with stores';

  @override
  String get storeProtectedPurchasesDetails =>
      'Asagi never sees or retains your financial billing data. Google Play or Apple App Store authenticates and encrypts every transaction. You can cancel anytime through your store account, without hidden fees.';

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
}

/// The translations for Thai, as used in Thailand (`th_TH`).
class AppLocalizationsThTh extends AppLocalizationsTh {
  AppLocalizationsThTh() : super('th_TH');

  @override
  String get asagi => 'Asagi';

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
  String get confirm => 'ยืนยัน';

  @override
  String get ok => 'ตกลง';

  @override
  String get compressVideosPrivatelyOnYourDevice =>
      'บีบอัดวิดีโออย่างเป็นส่วนตัวบนอุปกรณ์ของคุณ';

  @override
  String get welcomeToAsagi => 'ยินดีต้อนรับสู่ Asagi';

  @override
  String get learnHowAsagiCompressesYourVideosWithoutEverLeavingYourPhone =>
      'เรียนรู้ว่า Asagi บีบอัดวิดีโอของคุณอย่างไรโดยไม่ต้องออกจากโทรศัพท์';

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
  String get aboutAsagi => 'เกี่ยวกับ Asagi';

  @override
  String get versionBuildNumberAndApplicationDetails =>
      'เวอร์ชัน หมายเลขบิลด์ และรายละเอียดแอปพลิเคชัน';

  @override
  String get aboutTheDeveloper => 'เกี่ยวกับผู้พัฒนา';

  @override
  String get theDeveloperAndToolsBehindAsagi =>
      'ผู้พัฒนาและเครื่องมือเบื้องหลัง Asagi';

  @override
  String get openSourcePackagesBundledWithAsagi =>
      'แพ็กเกจโอเพนซอร์สที่มาพร้อมกับ Asagi';

  @override
  String get privacyPolicy => 'นโยบายความเป็นส่วนตัว';

  @override
  String get howAsagiHandlesYourVideosAndData =>
      'วิธีที่ Asagi จัดการวิดีโอและข้อมูลของคุณ';

  @override
  String get termsOfService => 'ข้อกำหนดในการให้บริการ';

  @override
  String get theTermsThatApplyToAsagiAndItsPurchases =>
      'ข้อกำหนดที่ใช้กับ Asagi และการซื้อของมัน';

  @override
  String get dataSafety => 'ความปลอดภัยของข้อมูล';

  @override
  String get summaryOfTheDataAsagiCollectsAndWhy =>
      'สรุปข้อมูลที่ Asagi รวบรวมและเหตุผล';

  @override
  String get permissions => 'สิทธิ์';

  @override
  String get runtimePermissionsAsagiRequestsAndWhyEachIsNeeded =>
      'สิทธิ์ในเวลารันไทม์ที่ Asagi ขอและเหตุผลที่ต้องใช้แต่ละอย่าง';

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
  String get rateAsagi => 'ให้คะแนน Asagi';

  @override
  String get tellOthersHowAsagiWorkedForYouOnTheStore =>
      'บอกผู้อื่นว่า Asagi ทำงานอย่างไรสำหรับคุณในร้านค้า';

  @override
  String get shareAsagi => 'แชร์ Asagi';

  @override
  String get recommendAsagiToAFriend => 'แนะนำ Asagi ให้เพื่อน';

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
  String get asagiAssistant => 'ผู้ช่วย Asagi';

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
  String get theDeveloperBehindAsagi => 'นักพัฒนาผู้สร้าง Asagi';

  @override
  String get openSourcePackageLicenses => 'ใบอนุญาตแพ็กเกจโอเพ่นซอร์ส';

  @override
  String get howDataIsHandled => 'วิธีการจัดการข้อมูล';

  @override
  String get rulesForUsingAsagi => 'กฎสำหรับการใช้ Asagi';

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
  String get viewAsagiSourceCode => 'ดูซอร์สโค้ดของ Asagi';

  @override
  String get readTheREADME => 'อ่าน README';

  @override
  String get learnAboutAsagiOnGitHub => 'เรียนรู้เกี่ยวกับ Asagi บน GitHub';

  @override
  String get reportAnIssue => 'รายงานปัญหา';

  @override
  String get viewAndCreateGitHubIssues => 'ดูและสร้างปัญหาใน GitHub';

  @override
  String get latestRelease => 'รุ่นล่าสุด';

  @override
  String get viewReleasesAndDownloads => 'ดูรุ่นและดาวน์โหลด';

  @override
  String get supportAsagi => 'สนับสนุน Asagi';

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
  String get asagiIsTemporarilyUnavailablePleaseTryAgainLater =>
      'Asagi ไม่สามารถใช้งานได้ชั่วคราว โปรดลองอีกครั้งภายหลัง';

  @override
  String get comingSoon => 'เร็วๆ นี้';

  @override
  String get pleaseWait => 'กรุณารอสักครู่...';

  @override
  String get cancel => 'ยกเลิก';

  @override
  String get openSourceLicenses => 'ใบอนุญาตโอเพนซอร์ส';

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
