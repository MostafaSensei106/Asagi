// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get zumi => 'Zumi';

  @override
  String get downloadFile => 'تحميل الملف';

  @override
  String fileOpenedInBrowser(String fileName) {
    return 'تم فتح الملف في المتصفح: $fileName';
  }

  @override
  String fileSavedToGallery(String fileName) {
    return 'تم حفظ الملف في المعرض: $fileName';
  }

  @override
  String fileSavedToDocuments(String fileName) {
    return 'تم حفظ الملف في المستندات: $fileName';
  }

  @override
  String get fileIsAlreadySaved => 'الملف محفوظ بالفعل';

  @override
  String get error => 'خطأ';

  @override
  String get info => 'معلومات';

  @override
  String get success => 'نجاح';

  @override
  String get warning => 'تحذير';

  @override
  String get paid => 'مدفوع';

  @override
  String get unpaid => 'غير مدفوع';

  @override
  String get partial => 'مدفوع جزئياً';

  @override
  String get addressLineCannotBeEmpty => 'لا يمكن أن يكون سطر العنوان فارغاً';

  @override
  String get addressLineIsTooLong => 'سطر العنوان طويل جداً';

  @override
  String get specialCharactersAreNotAllowed => 'الرموز الخاصة غير مسموح بها';

  @override
  String get emojisAreNotAllowed => 'الرموز التعبيرية غير مسموح بها';

  @override
  String get cityCannotBeEmpty => 'لا يمكن أن تكون المدينة فارغة';

  @override
  String get cityNameIsTooLong => 'اسم المدينة طويل جداً';

  @override
  String get cityContainsInvalidSpecialCharacters =>
      'تحتوي المدينة على رموز خاصة غير صالحة';

  @override
  String get addressLabelCannotBeEmpty =>
      'لا يمكن أن يكون تصنيف العنوان فارغاً';

  @override
  String get addressLabelIsTooLong => 'تصنيف العنوان طويل جداً';

  @override
  String get emailCannotBeEmpty => 'لا يمكن أن يكون البريد الإلكتروني فارغاً';

  @override
  String get invalidEmailFormat => 'صيغة البريد الإلكتروني غير صالحة';

  @override
  String get emailContainsInvalidCharacters =>
      'البريد الإلكتروني يحتوي على رموز غير صالحة';

  @override
  String get emailMustContain => 'يجب أن يحتوي البريد الإلكتروني على علامة @';

  @override
  String get emailMustBeInLowercase =>
      'يجب أن يكون البريد الإلكتروني بأحرف صغيرة';

  @override
  String get arabicCharactersAreNotAllowed => 'الأحرف العربية غير مسموح بها';

  @override
  String get emojisAreNotAllowedInEmail =>
      'الرموز التعبيرية غير مسموح بها في البريد الإلكتروني';

  @override
  String get phoneNumberCannotBeEmpty => 'لا يمكن أن يكون رقم الهاتف فارغاً';

  @override
  String get invalidPhoneNumber => 'رقم الهاتف غير صالح';

  @override
  String get phoneNumberMustBeAtLeast11Digits =>
      'يجب أن يتكون رقم الهاتف من 11 رقماً على الأقل';

  @override
  String get nameCannotBeEmpty => 'لا يمكن أن يكون الاسم فارغاً';

  @override
  String get invalidName => 'الاسم غير صالح';

  @override
  String get nameMustBeAtLeast3Characters => 'يجب ألا يقل الاسم عن 3 أحرف';

  @override
  String get nameCannotExceed20Characters => 'يجب ألا يزيد الاسم عن 20 حرفاً';

  @override
  String get nameContainsInvalidSpecialCharacters =>
      'يحتوي الاسم على رموز خاصة غير صالحة';

  @override
  String get emojisAreNotAllowedInName =>
      'الرموز التعبيرية غير مسموح بها في الاسم';

  @override
  String get passwordCannotBeEmpty => 'لا يمكن أن تكون كلمة المرور فارغة';

  @override
  String get passwordMustContainUppercaseLowercaseNumberAndSpecialCharacter =>
      'يجب أن تحتوي كلمة المرور على أحرف كبيرة وصغيرة وأرقام ورموز خاصة';

  @override
  String get passwordMustBeAtLeast8CharactersLong =>
      'يجب ألا تقل كلمة المرور عن 8 أحرف';

  @override
  String get noInternetConnection => 'لا يوجد اتصال بالإنترنت';

  @override
  String get internetConnectionRestored => 'تمت استعادة الاتصال بالإنترنت';

  @override
  String get retry => 'إعادة المحاولة';

  @override
  String get cancel => 'إلغاء';

  @override
  String get confirm => 'تأكيد';

  @override
  String get pleaseWait => 'جارٍ المعالجة…';

  @override
  String get ok => 'حسناً';

  @override
  String get compressVideosPrivatelyOnYourDevice =>
      'ضغط الفيديوهات بخصوصية تامة، مباشرة على جهازك.';

  @override
  String get welcomeToZumi => 'مرحباً بك في Zumi';

  @override
  String get learnHowZumiCompressesYourVideosWithoutEverLeavingYourPhone =>
      'تعرف على كيفية قيام Zumi بضغط فيديوهاتك دون أن تغادر هاتفك أبداً.';

  @override
  String get signIn => 'تسجيل الدخول';

  @override
  String get signInToSyncYourPlanAndKeepYourPurchasesAvailableOnEveryDevice =>
      'سجّل الدخول لمزامنة خطتك والحفاظ على مشترياتك على كل أجهزتك.';

  @override
  String get chooseAVideo => 'اختر فيديو';

  @override
  String get pickAVideoFromYourGalleryToStartCompressing =>
      'اختر فيديو من المعرض لبدء الضغط.';

  @override
  String get compressionSetup => 'إعدادات الضغط';

  @override
  String get chooseResolutionBitrateAndOutputFormatBeforeYouStart =>
      'اختر الدقة ومعدل البت والصيغة قبل البدء.';

  @override
  String get compressing => 'جارٍ الضغط';

  @override
  String get followTheLiveProgressOfYourCompressionJob =>
      'تابع التقدم المباشر لعملية ضغط الفيديو.';

  @override
  String get compressionResult => 'نتيجة الضغط';

  @override
  String get compareTheBeforeAndAfterSizeThenSaveOrShareTheResult =>
      'قارن الحجم قبل وبعد، ثم احفظ أو شارك النتيجة.';

  @override
  String get compressionHistory => 'سجل الضغط';

  @override
  String get reviewTheVideosYouHaveCompressedOnThisDevice =>
      'استعرض الفيديوهات التي قمت بضغطها على هذا الجهاز.';

  @override
  String get settings => 'الإعدادات';

  @override
  String get appearance => 'المظهر';

  @override
  String get themeColorSchemeAndMotionPreferences =>
      'السمة والألوان وتفضيلات الحركة.';

  @override
  String get system => 'النظام';

  @override
  String get matchYourDeviceSetting => 'اتبع إعداد الجهاز.';

  @override
  String get light => 'فاتح';

  @override
  String get alwaysUseTheLightTheme => 'استخدم السمة الفاتحة.';

  @override
  String get dark => 'داكن';

  @override
  String get alwaysUseTheDarkTheme => 'استخدم السمة الداكنة.';

  @override
  String get theme => 'السمة';

  @override
  String get themePreview => 'معاينة المظهر';

  @override
  String get surfacesTextAndAccents => 'أسطح ونصوص ولمسات';

  @override
  String get highContrast => 'تباين عالي';

  @override
  String get sharperTextAndSurfaces => 'أسود وأبيض نقي لتباين فائق.';

  @override
  String get zumiEngine => 'محرك Zumi';

  @override
  String get targetSizeOptimizer => 'مُحسِّن الفيديو للحجم المستهدف';

  @override
  String get encodingFormat => 'جارٍ الترميز • H.265 / HEVC';

  @override
  String get compressAction => 'ضغط';

  @override
  String get primaryColor => 'أساسي';

  @override
  String get secondaryColor => 'ثانوي';

  @override
  String get tertiaryColor => 'ثالثي';

  @override
  String get language => 'اللغة';

  @override
  String get appLanguageAndTextDirection => 'لغة التطبيق واتجاه النص.';

  @override
  String get compressionDefaults => 'إعدادات الضغط الافتراضية';

  @override
  String get defaultResolutionBitrateAndOutputFormat =>
      'الدقة الافتراضية ومعدل البت وصيغة الإخراج.';

  @override
  String get storageCleanup => 'التخزين والتنظيف';

  @override
  String get storageUsageCacheSizeAndTemporaryFileCleanup =>
      'مساحة التخزين وحجم الذاكرة المؤقتة وتنظيف الملفات المؤقتة.';

  @override
  String get notifications => 'الإشعارات';

  @override
  String get jobCompletionAndProductUpdateNotifications =>
      'إشعارات اكتمال الضغط وتحديثات المنتج.';

  @override
  String get privacy => 'الخصوصية';

  @override
  String get onDeviceProcessingLocalLogsAndOptionalCrashReports =>
      'المعالجة المحلية، السجلات، وتقارير الأعطال الاختيارية.';

  @override
  String get aboutZumi => 'عن Zumi';

  @override
  String get versionBuildNumberAndApplicationDetails =>
      'رقم الإصدار وتفاصيل التطبيق.';

  @override
  String get aboutTheDeveloper => 'عن المطور';

  @override
  String get theDeveloperAndToolsBehindZumi =>
      'المطور والأدوات المستخدمة في بناء Zumi.';

  @override
  String get openSourceLicenses => 'تراخيص المصادر المفتوحة';

  @override
  String get openSourcePackagesBundledWithZumi =>
      'حزم البرمجيات مفتوحة المصدر المستخدمة في Zumi.';

  @override
  String get privacyPolicy => 'سياسة الخصوصية';

  @override
  String get howZumiHandlesYourVideosAndData =>
      'كيف يتعامل Zumi مع فيديوهاتك وبياناتك.';

  @override
  String get termsOfService => 'شروط الخدمة';

  @override
  String get theTermsThatApplyToZumiAndItsPurchases =>
      'الشروط التي تنطبق على Zumi ومشترياته.';

  @override
  String get dataSafety => 'أمان البيانات';

  @override
  String get summaryOfTheDataZumiCollectsAndWhy =>
      'ملخص البيانات التي يجمعها Zumi ولماذا.';

  @override
  String get permissions => 'الأذونات';

  @override
  String get runtimePermissionsZumiRequestsAndWhyEachIsNeeded =>
      'الأذونات التي يطلبها Zumi وسبب طلب كل منها.';

  @override
  String get faq => 'الأسئلة الشائعة';

  @override
  String get answersToCommonQuestionsAboutCompressionAndBilling =>
      'إجابات عن الأسئلة الشائعة حول الضغط والاشتراكات.';

  @override
  String get support => 'الدعم الفني';

  @override
  String get getHelpWithYourAccountOrAPurchase =>
      'احصل على مساعدة بشأن حسابك أو مشترياتك.';

  @override
  String get sendFeedback => 'إرسال ملاحظات';

  @override
  String get reportAProblemOrSuggestAnImprovement =>
      'أبلغ عن مشكلة أو اقترح تحسينات.';

  @override
  String get plans => 'الخطط والترقيات';

  @override
  String get comparePlansAndSeeWhatEachOneUnlocks =>
      'قارن بين الخطط واكتشف الميزات المتاحة.';

  @override
  String get planDetails => 'تفاصيل الخطة';

  @override
  String get benefitsLimitsAndPricingForThisPlan =>
      'الميزات والحدود والأسعار لهذه الخطة.';

  @override
  String get paymentMethods => 'طرق الشراء والدفع';

  @override
  String get supportedWaysToPayIncludingStoreBilling =>
      'طرق الدفع المعتمدة بما فيها متجر جوجل بلاي وطرق أخرى.';

  @override
  String get restorePurchases => 'استعادة المشتريات';

  @override
  String get reApplyAPurchaseMadeOnAnotherDevice =>
      'استعادة مشتريات سابقة على جهاز آخر.';

  @override
  String get profile => 'الملف الشخصي';

  @override
  String get yourIdentityPlanStatusAndAccountPreferences =>
      'بياناتك، حالة اشتراكك، وتفضيلات الحساب.';

  @override
  String get deleteAccount => 'حذف الحساب';

  @override
  String get permanentlyRemoveYourAccountAndItsServerSideData =>
      'حذف حسابك وبياناتك نهائياً.';

  @override
  String get rateZumi => 'تقييم التطبيق';

  @override
  String get tellOthersHowZumiWorkedForYouOnTheStore =>
      'شارك رأيك في Zumi على المتجر لمساعدتنا.';

  @override
  String get shareZumi => 'مشاركة التطبيق';

  @override
  String get recommendZumiToAFriend => 'رشّح Zumi لأصدقائك وزملائك.';

  @override
  String get appearanceLanguage => 'المظهر و الالوان';

  @override
  String get compression => 'الضغط والتخزين';

  @override
  String get onDeviceAI => 'الذكاء الاصطناعي';

  @override
  String get notificationsPrivacy => 'الإشعارات والخصوصية';

  @override
  String get plansPurchases => 'الخطط والمشتريات';

  @override
  String get about => 'حول التطبيق';

  @override
  String get legal => 'قانوني وسياسات';

  @override
  String get helpFeedback => 'المساعدة والملاحظات';

  @override
  String get account => 'الحساب';

  @override
  String get themeAndAppLanguage => 'المظهر، اللغة، وحجم النص';

  @override
  String get appLanguageAndDirection => 'لغة التطبيق واتجاه النص';

  @override
  String get defaultQualityAndFormat => 'الجودة الافتراضية وصيغة الملف';

  @override
  String get cacheAndStorageUsage => 'الذاكرة والتخزين والمساحة المتاحة';

  @override
  String get aiSettings => 'الذكاء الاصطناعي';

  @override
  String get zumiAssistant => 'مساعد Zumi';

  @override
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere =>
      'مساعد خاص لفيديوهاتك قادم قريبًا. ستتمكن من السؤال عن الضغط والتنظيم والفيديوهات المحفوظة هنا.';

  @override
  String get localModelsAndSmartTools => 'نماذج محلية وأدوات ذكية';

  @override
  String get exploreLocalModelsAndFutureAIToolsTheseOptionsAreNotActiveYet =>
      'تعرّف على النماذج المحلية والأدوات الذكية القادمة. هذه الخيارات غير مفعّلة بعد.';

  @override
  String get localModels => 'النماذج المحلية';

  @override
  String get browseAndDownloadSupportedModels =>
      'تصفح النماذج المدعومة وتنزيلها';

  @override
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere =>
      'اختر نموذجًا مدعومًا، ونزّله على جهازك، وأدر النماذج المثبّتة من هنا.';

  @override
  String get importAModel => 'استيراد نموذج';

  @override
  String get useACompatibleModelFromYourFiles =>
      'استخدم نموذجًا متوافقًا من ملفاتك';

  @override
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt =>
      'اختر ملف نموذج محليًا متوافقًا وراجع متطلباته قبل استخدامه.';

  @override
  String get smartFeatures => 'الميزات الذكية';

  @override
  String get compressionOrganizationAndSearch => 'الضغط والتنظيم والبحث';

  @override
  String
  get chooseWhichLocalAISuggestionsToUseForVideoCompressionOrganizationNamingAndSearch =>
      'اختر اقتراحات الذكاء الاصطناعي المحلية للضغط والتنظيم والتسمية والبحث في الفيديوهات.';

  @override
  String get modelPerformance => 'أداء النموذج';

  @override
  String get processingAndResourcePreferences => 'تفضيلات المعالجة والموارد';

  @override
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels =>
      'تحكم في طريقة المعالجة وحدود الموارد للنماذج المدعومة.';

  @override
  String get conversationSettings => 'إعدادات المحادثة';

  @override
  String get streamingThinkingAndResponseLength =>
      'البث المباشر والتفكير وطول الرد';

  @override
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits =>
      'اضبط طريقة رد المساعد، بما فيها البث المباشر ووضع التفكير وأسلوب التوليد وحدود الرد.';

  @override
  String get imagesAndAudio => 'الصور والصوت';

  @override
  String get controlMultimodalInputs => 'التحكم في المدخلات متعددة الوسائط';

  @override
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos =>
      'حدد ما إذا كان النموذج المتوافق يمكنه تحليل الصور والصوت المختارين من فيديوهاتك.';

  @override
  String get semanticSearch => 'البحث الدلالي';

  @override
  String get embeddingsAndLocalIndexing => 'التمثيلات والفهرسة المحلية';

  @override
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning =>
      'أدر نموذج التمثيلات وفهرس البحث المحلي للعثور على الفيديوهات واللحظات بالمعنى.';

  @override
  String get toolsAndStructuredOutput => 'الأدوات والمخرجات المنظمة';

  @override
  String get actionsSchemasAndConfirmations => 'الإجراءات والقوالب والتأكيد';

  @override
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation =>
      'أدر إجراءات المساعد المدعومة والردود المنظمة. أي إجراء يغيّر الملفات سيتطلب تأكيدك.';

  @override
  String get models => 'النماذج';

  @override
  String get assistantExperience => 'تجربة المساعد';

  @override
  String get smartCapabilities => 'الميزات الذكية';

  @override
  String get performance => 'الأداء';

  @override
  String get yourCompressedVideoHistory => 'سجل كل الفيديوهات المضغوطة';

  @override
  String get completionAndUpdateAlerts => 'تنبيهات الإكمال والتحديثات الجديدة';

  @override
  String get yourDataStaysLocal => 'بياناتك تبقى على جهازك';

  @override
  String get comparePlansAndUpgrade => 'قارن الخطط وارتقِ الآن';

  @override
  String get paymentMethodsAndBilling => 'طرق الدفع وإدارة الفواتير';

  @override
  String get restoreYourPreviousPurchase => 'استعد عملية الشراء السابقة';

  @override
  String get versionAndBuildDetails => 'رقم الإصدار وتفاصيل البناء';

  @override
  String get theDeveloperBehindZumi => 'المطور الذي بنى Zumi';

  @override
  String get openSourcePackageLicenses => 'تراخيص الحزم مفتوحة المصدر';

  @override
  String get howDataIsHandled => 'كيف نتعامل مع بياناتك';

  @override
  String get rulesForUsingZumi => 'قواعد استخدام تطبيق Zumi';

  @override
  String get whatDataWeCollect => 'البيانات التي نجمعها منك';

  @override
  String get whyWeNeedPermissions => 'الأذونات ولماذا نحتاج إليها';

  @override
  String get answersToCommonQuestions => 'إجابات لأكثر الأسئلة شيوعاً';

  @override
  String get reachTheDeveloperDirectly => 'تواصل مع المطور مباشرة';

  @override
  String get sendUsYourFeedback => 'أرسل لنا ملاحظاتك الآن';

  @override
  String get pickVideo => 'اختر فيديو';

  @override
  String get targetSizeMB => 'الحجم المطلوب (ميجابايت)';

  @override
  String get startCompression => 'ابدأ الضغط';

  @override
  String get pause => 'إيقاف مؤقت';

  @override
  String get resume => 'استئناف';

  @override
  String get viewResult => 'عرض النتيجة';

  @override
  String get saveToGallery => 'حفظ في المعرض';

  @override
  String get shareVideo => 'مشاركة الفيديو';

  @override
  String get originalSize => 'الحجم الأصلي';

  @override
  String get outputSize => 'حجم الناتج';

  @override
  String get noCompressedVideosYet => 'لا توجد فيديوهات مضغوطة بعد';

  @override
  String get savedToGallery => 'تم الحفظ في المعرض';

  @override
  String get enterATargetSizeGreaterThanZero => 'أدخل حجماً أكبر من صفر';

  @override
  String get compressionCancelled => 'تم إلغاء الضغط';

  @override
  String get thisVideoCouldNotReachTheSelectedSizeTryALargerTargetSize =>
      'تعذر وصول الفيديو للحجم المحدد. جرّب حجمًا أكبر.';

  @override
  String get theSelectedSizeIsTooSmallForThisVideoChooseALargerSize =>
      'الحجم المحدد صغير جدًا لهذا الفيديو. اختر حجمًا أكبر.';

  @override
  String get originalPreview => 'معاينة الفيديو الأصلي';

  @override
  String get compressedPreview => 'معاينة الفيديو المضغوط';

  @override
  String get targetPreset => 'حجم جاهز';

  @override
  String get customSize => 'حجم مخصص';

  @override
  String get previewUnavailable => 'المعاينة غير متاحة';

  @override
  String get advancedControls => 'إعدادات متقدمة';

  @override
  String get automatic => 'تلقائي';

  @override
  String get maximumResolution => 'أقصى دقة';

  @override
  String get originalResolution => 'الدقة الأصلية';

  @override
  String get maximumFrameRate => 'أقصى معدل إطارات';

  @override
  String get audioBitrate => 'معدل بيانات الصوت';

  @override
  String get removeAudio => 'حذف الصوت';

  @override
  String get videoBitrateCeilingKbps =>
      'الحد الأقصى لمعدل بيانات الفيديو (كيلوبت/ث)';

  @override
  String get hdrHandling => 'معالجة HDR';

  @override
  String get convertToSDR => 'التحويل إلى SDR';

  @override
  String get keepHDRWhenSupported => 'الاحتفاظ بـ HDR عند دعم الجهاز';

  @override
  String get beforeYouStart => 'قبل البدء';

  @override
  String get calculatingCompressionPlan => 'جارٍ حساب خطة الضغط…';

  @override
  String get plannedResolution => 'الدقة المخططة';

  @override
  String get plannedVideoBitrate => 'معدل بيانات الفيديو المخطط';

  @override
  String get plannedAudioBitrate => 'معدل بيانات الصوت المخطط';

  @override
  String
  get reEncodingConvertsAudioToAACStereoDolbyAtmosAndDTSSpatialAudioWillNotBePreserved =>
      'إعادة الترميز تحوّل الصوت إلى AAC ستيريو، ولا تحتفظ بالصوت المكاني Dolby Atmos أو DTS.';

  @override
  String
  get thisTargetIsTooSmallForAUsableVideoIncreaseTheSizeOrLowerOtherLimits =>
      'الحجم صغير جدًا لفيديو صالح. زوّد الحجم أو خفّض الحدود الأخرى.';

  @override
  String get theSelectedTargetMayReduceVideoQuality =>
      'قد يؤدي الحجم المحدد إلى خفض جودة الفيديو.';

  @override
  String get theSourceIsAlreadyWithinTheSizeLimit =>
      'الفيديو الأصلي أصغر بالفعل من الحجم المحدد.';

  @override
  String get enterABitrateOfAtLeast150KbpsOrLeaveBlankForAutomatic =>
      'أدخل 150 كيلوبت/ث على الأقل، أو اتركه فارغًا للاختيار التلقائي';

  @override
  String get enterAnEvenResolutionFrom240To16384OrLeaveBlankForAutomatic =>
      'أدخل دقة زوجية من 240 إلى 16384، أو اتركها فارغة للاختيار التلقائي';

  @override
  String get videoPosition => 'موضع الفيديو';

  @override
  String
  get aPreviousCompressionWasInterruptedItsTemporaryFilesWereCleanedUpYouCanSelectTheVideoAndTryAgain =>
      'انقطعت عملية ضغط سابقة. حُذفت ملفاتها المؤقتة؛ يمكنك اختيار الفيديو وإعادة المحاولة.';

  @override
  String get dismiss => 'إخفاء';

  @override
  String get clearHistory => 'مسح السجل';

  @override
  String get removeAllHistoryEntriesSavedVideosWillRemainOnYourDevice =>
      'هل تريد حذف كل عناصر السجل؟ ستبقى الفيديوهات المحفوظة على جهازك.';

  @override
  String get attempts => 'عدد المحاولات';

  @override
  String get targetSize => 'الحجم المطلوب';

  @override
  String get outputResolution => 'دقة الناتج';

  @override
  String get thisVideoCouldNotBeReadChooseAnotherFile =>
      'تعذرت قراءة هذا الفيديو. اختر ملفًا آخر.';

  @override
  String get theEncodedVideoFailedVerificationYourOriginalVideoWasNotChanged =>
      'فشل التحقق من الفيديو الناتج. لم يتغير الفيديو الأصلي.';

  @override
  String
  get thisDeviceCannotEncodeTheSelectedResolutionOrFrameRateLowerThatSettingAndTryAgain =>
      'الجهاز لا يدعم ترميز الدقة أو معدل الإطارات المحدد. خفّض الإعداد وأعد المحاولة.';

  @override
  String
  get thisDeviceCannotDecodeThisAudioFormatForCompressionRemoveAudioOrUseASupportedSource =>
      'الجهاز لا يستطيع فك صيغة الصوت هذه لضغط الفيديو. احذف الصوت أو استخدم مصدرًا مدعومًا.';

  @override
  String
  get thisDeviceCannotDecodeThisVideoFormatOrProfileForCompressionChooseAnotherSourceOrDevice =>
      'الجهاز لا يستطيع فك صيغة الفيديو أو نسختها لضغطها. اختر ملفًا أو جهازًا آخر.';

  @override
  String get theExportedMP4IsNotReadyForStreamingTryAnotherVideoOrDevice =>
      'ملف MP4 الناتج غير مهيأ للتشغيل أثناء التحميل. جرّب فيديو أو جهازًا آخر.';

  @override
  String get thereIsNotEnoughFreeStorageToCompressThisVideo =>
      'لا توجد مساحة تخزين كافية لضغط هذا الفيديو.';

  @override
  String get thisDeviceCannotProcessTheSelectedHDRModeTryConvertingToSDR =>
      'الجهاز لا يدعم وضع HDR المحدد. جرّب التحويل إلى SDR.';

  @override
  String get compressionCouldNotBeCompletedTryAnotherSettingOrVideo =>
      'تعذر إكمال الضغط. جرّب إعدادًا أو فيديو آخر.';

  @override
  String get appIdentity => 'هوية التطبيق';

  @override
  String get appName => 'اسم التطبيق';

  @override
  String get packageName => 'اسم الحزمة';

  @override
  String get version => 'الإصدار';

  @override
  String get buildNumber => 'رقم البناء';

  @override
  String get deviceAndBuild => 'الجهاز والبناء';

  @override
  String get operatingSystem => 'نظام التشغيل';

  @override
  String get osVersion => 'إصدار النظام';

  @override
  String get buildMode => 'وضع البناء';

  @override
  String get debug => 'تجريبي';

  @override
  String get release => 'إصدار نهائي';

  @override
  String get builtWith => 'بُني باستخدام';

  @override
  String get installation => 'التثبيت';

  @override
  String get installedFrom => 'مصدر التثبيت';

  @override
  String get installedOn => 'تاريخ التثبيت';

  @override
  String get updatedOn => 'تاريخ التحديث';

  @override
  String get unavailable => 'غير متاح';

  @override
  String get projectAndSupport => 'المشروع والدعم';

  @override
  String get githubRepository => 'مستودع GitHub';

  @override
  String get viewZumiSourceCode => 'استعرض كود Zumi';

  @override
  String get readTheREADME => 'اقرأ ملف README';

  @override
  String get learnAboutZumiOnGitHub => 'تعرف على Zumi في GitHub';

  @override
  String get reportAnIssue => 'الإبلاغ عن مشكلة';

  @override
  String get viewAndCreateGitHubIssues => 'عرض مشكلات GitHub وإنشاء بلاغ';

  @override
  String get latestRelease => 'آخر إصدار';

  @override
  String get viewReleasesAndDownloads => 'استعرض الإصدارات والتنزيلات';

  @override
  String get supportZumi => 'ادعم Zumi';

  @override
  String get openTheOfficialDonationPage => 'افتح صفحة التبرعات الرسمية';

  @override
  String get couldNotOpenTheLinkPleaseTryAgain =>
      'تعذر فتح الرابط. حاول مرة أخرى.';

  @override
  String get developer => 'المطوّر';

  @override
  String get mostafaSensei => 'مصطفى سينسي';

  @override
  String get githubProfile => 'حساب GitHub';

  @override
  String get seeProjectsAndContactDetails => 'المشاريع وبيانات التواصل';

  @override
  String get maintenanceInProgress => 'التطبيق قيد الصيانة';

  @override
  String get zumiIsTemporarilyUnavailablePleaseTryAgainLater =>
      'Zumi غير متاح مؤقتًا. حاول مرة أخرى لاحقًا.';

  @override
  String get comingSoon => 'قريباً';

  @override
  String get zumiProTitle => 'Zumi Pro';

  @override
  String subscriptionPerMonth(Object price) {
    return '$price / شهرياً';
  }

  @override
  String get planUnavailable => 'غير متاح';

  @override
  String get loading => 'جارٍ التحميل…';

  @override
  String get subscriptionActive => 'الاشتراك مفعّل';

  @override
  String get proFeaturesDescription =>
      'افتح ضغط Discord Nitro وYouTube Shorts والوضع المخصص.';

  @override
  String get subscribe => 'اشترك';

  @override
  String currentLoyaltyDiscount(Object percent) {
    return 'خصم الولاء الحالي: $percent%';
  }

  @override
  String nextMonthLoyaltyPrice(Object percent, Object price) {
    return 'الشهر القادم: خصم ولاء $percent% — السعر المتوقع $price';
  }

  @override
  String nextMonthLoyaltyDiscount(Object percent) {
    return 'الشهر القادم: خصم ولاء $percent%';
  }

  @override
  String get loyaltyCancellationWarning =>
      'إلغاء الاشتراك يعيد السعر الأساسي ويفقدك الخصم المتراكم. عند الاشتراك مجدداً يبدأ الخصم من 2%.';

  @override
  String get purchaseCancelled => 'تم إلغاء الشراء.';

  @override
  String get purchaseVerified => 'تم التحقق من الشراء.';

  @override
  String get purchasesRestored => 'تمت استعادة المشتريات.';

  @override
  String get noActivePurchaseFound => 'لم يتم العثور على شراء نشط.';

  @override
  String get restorePurchaseDescription =>
      'استعد المشتريات المرتبطة بحساب Google Play هذا.';

  @override
  String get zumiProActive => 'اشتراك Zumi Pro مفعّل';

  @override
  String get checking => 'جارٍ التحقق…';

  @override
  String get interruptedCompressionJobs => 'مهام الضغط المتوقفة';

  @override
  String get interruptedJobsDescription =>
      'يمكنك استئناف هذه المهام من شاشة الضغط. ينظف الإجراء الملفات المؤقتة وملف حالة المهمة.';

  @override
  String get noInterruptedJobs => 'لا توجد مهام متوقفة.';

  @override
  String get cleanInterruptedJobs => 'تنظيف الملفات المتوقفة';

  @override
  String get cleaning => 'جارٍ التنظيف…';

  @override
  String get cleanInterruptedJobsTitle => 'تنظيف المهام المتوقفة؟';

  @override
  String get cleanInterruptedJobsConfirmation =>
      'سيُحذف .inprogress وjob_state.json من المهام المتوقفة فقط.';

  @override
  String get clean => 'تنظيف';

  @override
  String get ffmpegLicenseTitle => 'نص ترخيص FFmpeg LGPL 2.1';

  @override
  String ffmpegLicense(Object license) {
    return 'الترخيص: $license';
  }

  @override
  String ffmpegVersion(Object version) {
    return 'الإصدار: $version';
  }

  @override
  String ffmpegLinkage(Object linkage) {
    return 'نوع الربط: $linkage';
  }

  @override
  String ffmpegBuiltAbis(Object abis) {
    return 'المعماريات المبنية: $abis';
  }

  @override
  String ffmpegSource(Object source) {
    return 'المصدر: $source';
  }

  @override
  String get thirdPartyLicenses => 'حزم Flutter وDart';

  @override
  String get thirdPartyLicensesDescription =>
      'اعرض إشعارات تراخيص الجهات الخارجية.';

  @override
  String get fullFfmpegLicenseFallback =>
      'نص الترخيص الكامل مضمّن في ملف ترخيص LGPL داخل التطبيق.';

  @override
  String get languageName => 'العربية';

  @override
  String get countryCode => 'EG';

  @override
  String countryName(String countryCode) {
    String _temp0 = intl.Intl.selectLogic(countryCode, {
      'AE': 'الإمارات العربية المتحدة',
      'AT': 'النمسا',
      'AU': 'أستراليا',
      'BE': 'بلجيكا',
      'BH': 'البحرين',
      'BR': 'البرازيل',
      'CA': 'كندا',
      'CH': 'سويسرا',
      'CN': 'الصين',
      'DE': 'ألمانيا',
      'DJ': 'جيبوتي',
      'DZ': 'الجزائر',
      'EG': 'مصر',
      'ES': 'إسبانيا',
      'FR': 'فرنسا',
      'GB': 'المملكة المتحدة',
      'HK': 'هونغ كونغ الصينية (منطقة إدارية خاصة)',
      'ID': 'إندونيسيا',
      'IQ': 'العراق',
      'IT': 'إيطاليا',
      'JO': 'الأردن',
      'JP': 'اليابان',
      'KM': 'جزر القمر',
      'KR': 'كوريا الجنوبية',
      'KW': 'الكويت',
      'LB': 'لبنان',
      'LY': 'ليبيا',
      'MA': 'المغرب',
      'MR': 'موريتانيا',
      'MX': 'المكسيك',
      'NL': 'هولندا',
      'OM': 'عُمان',
      'PL': 'بولندا',
      'PS': 'الأراضي الفلسطينية',
      'PT': 'البرتغال',
      'QA': 'قطر',
      'RU': 'روسيا',
      'SA': 'المملكة العربية السعودية',
      'SD': 'السودان',
      'SE': 'السويد',
      'SG': 'سنغافورة',
      'SO': 'الصومال',
      'SY': 'سوريا',
      'TH': 'تايلاند',
      'TN': 'تونس',
      'TR': 'تركيا',
      'TW': 'تايوان',
      'US': 'الولايات المتحدة',
      'VN': 'فيتنام',
      'YE': 'اليمن',
      'other': 'بلد',
    });
    return '$_temp0';
  }
}

/// The translations for Arabic, as used in Egypt (`ar_EG`).
class AppLocalizationsArEg extends AppLocalizationsAr {
  AppLocalizationsArEg() : super('ar_EG');

  @override
  String get retry => 'جرّب تاني';

  @override
  String get pleaseWait => 'استنى شوية...';

  @override
  String get compressVideosPrivatelyOnYourDevice =>
      'اضغط فيديوهاتك بخصوصية على موبايلك.';

  @override
  String get chooseAVideo => 'اختار فيديو';

  @override
  String get startCompression => 'ابدأ الضغط';

  @override
  String get languageName => 'العربية';

  @override
  String get countryCode => 'EG';
}
