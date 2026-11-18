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
  String get confirm => 'تأكيد';

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
  String get pleaseWait => 'جارٍ المعالجة…';

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
  String get cancel => 'إلغاء';

  @override
  String get clean => 'تنظيف';

  @override
  String get openSourceLicenses => 'تراخيص مفتوحة المصدر';

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
  String get billingUnavailable => 'تفاصيل الاشتراك غير متاحة حالياً.';

  @override
  String get purchaseFailed => 'تعذر إكمال عملية الشراء.';

  @override
  String get restoreFailed => 'تعذرت استعادة المشتريات.';

  @override
  String get receiptVerificationFailed => 'تعذر التحقق من إيصال الشراء.';

  @override
  String get ffmpegName => 'FFmpeg';

  @override
  String get storageJobsLoadFailed => 'تعذر تحميل المهام المتوقفة.';

  @override
  String get cleanupInterruptedJobsFailed =>
      'تعذر تنظيف ملفات المهام المتوقفة.';

  @override
  String get ffmpegBuildMetadataUnavailable => 'بيانات بناء FFmpeg غير متاحة.';

  @override
  String get openSourceLicensesLoadFailed =>
      'تعذر تحميل إشعارات تراخيص المصادر المفتوحة.';

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

  @override
  String get losslessVisualQuality => 'جودة بصرية بلا فقدان';

  @override
  String get upTo90PercentSizeReduction => 'تقليل الحجم حتى 90%';

  @override
  String get instantPreview => 'معاينة فورية';

  @override
  String
  get zeroCloudUploadsYourVideosAndPersonalMemoriesNeverLeaveYourDeviceHardware =>
      'بلا رفع للسحابة. فيديوهاتك وذكرياتك الشخصية لا تغادر جهازك أبداً.';

  @override
  String get fullyOffline => 'يعمل دون إنترنت 100%';

  @override
  String get noTracking => 'بلا تتبّع';

  @override
  String get zeroCloudServers => 'صفر خوادم سحابية';

  @override
  String get nativeRustEngineSpeed => 'سرعة محرك Rust الأصلي';

  @override
  String
  get engineeredWithRustAndNativeGpuAccelerationForLightningFastCompressionAndLowBatteryDraw =>
      'مبني بلغة Rust مع تسريع GPU أصلي لضغط فائق السرعة واستهلاك منخفض للبطارية.';

  @override
  String get h264AndHevc => 'H.264 و HEVC';

  @override
  String get av1Support => 'دعم AV1';

  @override
  String get batchQueuing => 'معالجة دُفعات';

  @override
  String get continueLabel => 'متابعة';

  @override
  String
  get foundInterruptedCompressionJobsYouCanResumeThemWithTheSameSettingsOrDeleteThem =>
      'وجدت مهام ضغط متوقفة. يمكنك استئنافها بنفس الإعدادات أو حذفها.';

  @override
  String get originalFileIsMissingDeleteTheJobToCleanUpTemporaryFiles =>
      'الملف الأصلي غير موجود · احذف المهمة لتنظيف المؤقتات';

  @override
  String get deleteInterruptedJob => 'حذف المهمة المتوقفة';

  @override
  String get whatsappAlgorithmBadge => 'سقف 16MB · 720p';

  @override
  String get whatsappPresetDescription =>
      'مضبوط على حدود واتساب الصارمة لتفادي فشل الإرسال.';

  @override
  String get whatsappHdAlgorithmBadge => '1080p HD';

  @override
  String get whatsappHdPresetDescription =>
      'أقصى وضوح يسمح به واتساب في وضع الوسائط عالية الدقة.';

  @override
  String get instagramReelsAlgorithmBadge => 'سقف 5 Mbps · 1080p';

  @override
  String get instagramReelsPresetDescription =>
      'مقيد بسقف 5 Mbps لحماية الفيديو من ضغط خوارزمية إنستجرام القاسي.';

  @override
  String get tikTokAlgorithmBadge => '60fps · سقف 6 Mbps';

  @override
  String get tikTokPresetDescription =>
      'توازن مثالي بين جودة الحركة وسرعة المعالجة على تيك توك.';

  @override
  String get discordAlgorithmBadge => 'سقف 10MB';

  @override
  String get discordPresetDescription =>
      'لتفادي رسالة Your files are too powerful وضمان الرفع الفوري.';

  @override
  String get xAlgorithmBadge => 'Faststart إجباري';

  @override
  String get xPresetDescription =>
      'ترتيب moov في أول الملف لضمان التشغيل الفوري في الـ Feed.';

  @override
  String get facebookAlgorithmBadge => 'VBR محكوم · 1080p';

  @override
  String get facebookPresetDescription =>
      'معدل بت محكوم لحماية حدة الصورة في الـ Feed و Reels.';

  @override
  String get youTubeShortsAlgorithmBadge => 'بتريت عالٍ · 1080p';

  @override
  String get youTubeShortsPresetDescription =>
      'تجهيز سريع للرفع مع الاحتفاظ بأعلى تفاصيل وجودة ممكنة.';

  @override
  String get emailAlgorithmBadge => 'سقف 25MB حقيقي';

  @override
  String get emailPresetDescription =>
      'حل جذري لمشكلة تجاوز سقف مرفقات البريد الإلكتروني.';

  @override
  String get anySize => 'أي حجم';

  @override
  String get manualControl => 'تحكم يدوي';

  @override
  String get zumiIsStudyingThePlatformAlgorithmAndCalculatingTheBudget =>
      '🐾 Zumi يقوم بدراسة خوارزمية المنصة وحساب الميزانية...';

  @override
  String get customControlMode => 'وضع التحكم المخصص';

  @override
  String
  get youSetTheTargetSizeManuallyTheEngineWillApplyTheHighestPossibleQualityWithinThatCap =>
      'أنت تحدد حجم الهدف يدوياً. سيطبق المحرك أقصى دقة وجودة ممكنة داخل هذا السقف.';

  @override
  String zumiIsPuzzledAnImpossibleTargetForTheNameCap(String name) {
    return 'Zumi في حيرة (هدف غير ممكن لسقف $name)';
  }

  @override
  String
  theVideoIsTooLongToFitWithinTheSizeCapWithoutSevereDistortionWeSuggestTrimmingTheVideoOrChoosingAnotherPlatformWithAHigherCap(
    String size,
  ) {
    return 'مدة الفيديو طويلة جداً بحيث لا يمكن استيعابها في سقف $size دون تشويه تام للصورة. ننصح بقص الفيديو أو اختيار منصة أخرى بسقف أعلى.';
  }

  @override
  String get zumiAlertProtectingQualityFromDistortion =>
      'تنبيه Zumi: حماية الجودة من التشوّه';

  @override
  String
  theNameBudgetIsTightForThisDurationSoWeLoweredTheResolutionToWidthHeightToPreventPixelScatterAndEnsureSmoothPlayback(
    String name,
    int width,
    int height,
  ) {
    return 'حجم ميزانية $name ضيق بالنسبة للمدة، لذا خفّضنا الدقة إلى $width×$height لمنع تشتت البكسلات ولضمان سلاسة العرض.';
  }

  @override
  String adjustingTheCapForName(String name) {
    return 'تعديل السقف لـ $name';
  }

  @override
  String
  theBaseCapIsVeryTightSoTheTargetWasAutomaticallyRaisedToTargetMbMbToProduceAClearAcceptableVideo(
    String targetMb,
  ) {
    return 'السقف الأساسي ضيق جداً، فتم رفع الهدف تلقائياً إلى $targetMb MB لتحقيق فيديو واضح ومقبول.';
  }

  @override
  String tunedForTheNameAlgorithm(String name) {
    return 'مضبوط لخوارزمية $name';
  }

  @override
  String get exactMatch => 'تطابق تام';

  @override
  String get targetPlatformOrSize => 'المنصة المستهدفة أو الحجم';

  @override
  String
  get setAutomaticallyForThePlatformChangingTheNumberSwitchesToCustomMode =>
      'تم الضبط تلقائياً للمنصة (تغيير الرقم يحول للوضع المخصص)';

  @override
  String get termsOfServiceFullText =>
      '1. قبول الشروط\nبتحميلك أو وصولك إلى Zumi (\"التطبيق\") أو استخدامه، فإنك توافق على الالتزام بشروط الخدمة هذه. وإذا كنت لا توافق على أي جزء من هذه الشروط، فيجب عليك التوقف عن استخدام التطبيق.\n\n2. ترخيص شخصي\nنمنحك ترخيصاً شخصياً وقابلاً للإلغاء وغير حصري وغير قابل للتحويل لاستخدام Zumi بشكل صارم في مهام ضغط الوسائط الإبداعية الشخصية أو غير التجارية أو الداخلية على الأجهزة المتوافقة.\n\n3. التنفيذ على الجهاز وملكية المحتوى\nينفّذ Zumi خطوط ضغط الوسائط حصرياً على عتاد جهازك باستخدام مُرمِّزات محلية. وتحتفظ بنسبة 100% من جميع حقوق الملكية الفكرية وحقوق النشر في ملفات الفيديو والوسائط الخاصة بك. ولا يقوم Zumi أبداً برفع أو استضافة أو نسخ أو المطالبة بملكية أي فيديوهات تختارها أو تعالجها. وأنت وحدك المسؤول عن ضمان حصولك على جميع الأذونات والتراخيص اللازمة لأي وسائط تضغطها.\n\n4. الاشتراكات داخل التطبيق والفوترة\nقد تُقدَّم الميزات المميزة الاختيارية (مثل Zumi Pro) كاشتراكات متكررة أو عمليات شراء لمرة واحدة. تتم جميع عمليات الفوترة والتجديد والإلغاء وتحصيل الضرائب حصرياً عبر متجر المنصة الرسمي (Google Play أو Apple App Store). تتجدد الاشتراكات تلقائياً ما لم يتم إلغاؤها قبل 24 ساعة على الأقل من انتهاء دورة الفوترة النشطة.\n\n5. إخلاء المسؤولية عن الضمانات\nيُقدَّم التطبيق \"كما هو\" و\"حسب توافره\"، دون أي ضمان من أي نوع، صريحاً أو ضمنياً. ورغم أننا نجري اختبارات صارمة ونستخدم مُرمِّزات متوافقة مع المعايير، فإننا لا نضمن أن يحقق ضغط الوسائط نسب تقليل محددة للملف دون تغييرات بصرية لكل مُرمِّز مصدري.\n';

  @override
  String get termsCopiedToClipboard => 'تم نسخ الشروط إلى الحافظة';

  @override
  String get termsAcceptanceLicenseTitle => '1. القبول والترخيص';

  @override
  String get termsAcceptanceLicenseBody =>
      'باستخدامك Zumi، فإنك توافق على هذه الشروط. نمنحك ترخيصاً شخصياً وغير حصري وغير قابل للتحويل لضغط الوسائط محلياً على أجهزتك.';

  @override
  String get termsContentOwnershipTitle => '2. ملكية المحتوى 100%';

  @override
  String get termsContentOwnershipBody =>
      'تحتفظ بجميع حقوق النشر والملكية لفيديوهاتك. لا يقوم Zumi بنقل أو تخزين أو المطالبة بأي حقوق في ملفات الوسائط الخاصة بك.';

  @override
  String get termsLocalOnDeviceProcessingTitle =>
      '3. المعالجة المحلية على الجهاز';

  @override
  String get termsLocalOnDeviceProcessingBody =>
      'تعمل جميع خطوط الضغط بالكامل على عتاد جهازك دون الاعتماد على خوادم خارجية أو معالجة وسائط عن بُعد.';

  @override
  String get termsSubscriptionsAndBillingTitle => '4. الاشتراكات والفوترة';

  @override
  String get termsSubscriptionsAndBillingBody =>
      'تُدار عمليات الشراء والاشتراكات بأمان عبر فوترة Google Play وApple App Store الرسمية. ويمكن الإلغاء في أي وقت من حساب المتجر الخاص بك.';

  @override
  String get termsDisclaimersAndFairUseTitle =>
      '5. إخلاء المسؤولية والاستخدام العادل';

  @override
  String get termsDisclaimersAndFairUseBody =>
      'يُقدَّم البرنامج \"كما هو\". وأنت مسؤول عن ضمان امتلاكك الحقوق المناسبة لمحتوى الفيديو الذي تعالجه.';

  @override
  String get version12November2026 => 'الإصدار 1.2 • نوفمبر 2026';

  @override
  String get videosAndPhotos => 'الفيديوهات والصور';

  @override
  String
  get processedExclusivelyOnDeviceMediaFilesAreNeverTransmittedToExternalServersOrThirdPartyPlatforms =>
      'تُعالَج حصرياً على الجهاز. لا تُنقل ملفات الوسائط أبداً إلى خوادم خارجية أو منصات طرف ثالث.';

  @override
  String get financialInfoAndPayment => 'المعلومات المالية والدفع';

  @override
  String
  get allPaymentDetailsAreHandledDirectlyByGooglePlayStoreOrAppleAppStoreZumiNeverAccessesCardDetails =>
      'يتولى Google Play Store أو Apple App Store التعامل مع جميع تفاصيل الدفع مباشرة. ولا يطّلع Zumi أبداً على بيانات البطاقة.';

  @override
  String get appPerformanceAndCrashLogs => 'أداء التطبيق وسجلات الأعطال';

  @override
  String
  get optionalNonIdentifiableCrashLogsAndStackTracesUsedSolelyForDiagnosingBugsAndOptimizingStability =>
      'سجلات أعطال اختيارية غير قابلة للتعرّف وتتبّعات مكدّس تُستخدم فقط لتشخيص الأخطاء وتحسين الاستقرار.';

  @override
  String get deviceOrOtherIdentifiers => 'الجهاز أو معرّفات أخرى';

  @override
  String
  get noAdvertisingIdsImeiNumbersMacAddressesOrPersistentHardwareIdentifiersAreGathered =>
      'لا يتم جمع أي معرّفات إعلانية أو أرقام IMEI أو عناوين MAC أو معرّفات عتاد دائمة.';

  @override
  String get storeSafetySummary => 'ملخص السلامة في المتجر';

  @override
  String get noDataSharedWithThirdParties =>
      'لا تتم مشاركة أي بيانات مع أطراف ثالثة';

  @override
  String get noUserDataCollectedForAdvertising =>
      'لا يتم جمع بيانات المستخدم للإعلانات';

  @override
  String get dataEncryptedInTransitStorePurchases =>
      'البيانات مشفّرة أثناء النقل (مشتريات المتجر)';

  @override
  String get youCanRequestDataDeletionAtAnyTime =>
      'يمكنك طلب حذف البيانات في أي وقت';

  @override
  String get dataCollectionBreakdown => 'تفصيل جمع البيانات';

  @override
  String get optionalOnly => 'اختياري فقط';

  @override
  String get notCollected => 'غير مُجمَّع';

  @override
  String get zeroCloudUploads => 'صفر رفع سحابي';

  @override
  String get videosNeverLeaveLocalMemoryOrStorageDuringProcessing =>
      'لا تغادر الفيديوهات الذاكرة أو التخزين المحلي أثناء المعالجة.';

  @override
  String get noAdvertisingIds => 'بلا معرّفات إعلانية';

  @override
  String get noAdSdksUserFingerprintingOrCommercialTrackingCookies =>
      'لا مجموعات تطوير إعلانية ولا بصمات مستخدم ولا ملفات تتبّع تجارية.';

  @override
  String get oneHundredPercentUserGoverned => 'تحكّم كامل للمستخدم';

  @override
  String get allCacheAndHistoryCanBePurgedWithASingleTapInSettings =>
      'يمكن مسح كل الذاكرة المؤقتة والسجل بلمسة واحدة من الإعدادات.';

  @override
  String get lastUpdatedNovember2026 => 'آخر تحديث: نوفمبر 2026';

  @override
  String get detailedPrivacyPolicies => 'سياسات الخصوصية التفصيلية';

  @override
  String get videoProcessingCommitmentTitle => '1. التزام معالجة الفيديو';

  @override
  String get videoProcessingCommitmentBody =>
      'بُني Zumi على ضمان معماري أساسي: تتم ترميز فيديوهاتك ومقاطعك ومسارات الصوت حصرياً على عتاد جهازك باستخدام مُرمِّزات أصلية محلية. ولا يتم بث وسائطك أو تخزينها أو معالجتها على بنية سحابية خارجية في أي مرحلة.';

  @override
  String get informationWeNeverCollectTitle => '2. معلومات لا نجمعها أبداً';

  @override
  String get informationWeNeverCollectBody =>
      'لا نجمع الأسماء أو عناوين البريد الإلكتروني (إلا إذا تواصلت مع الدعم الفني بشكل صريح)، ولا أرقام الهواتف أو جهات الاتصال أو مواقع الجهاز أو المعرّفات الحيوية أو المحتوى البصري لمكتبة الوسائط الخاصة بك.';

  @override
  String get optionalDiagnosticsTitle => '3. التشخيصات الاختيارية';

  @override
  String get optionalDiagnosticsBody =>
      'يمكنك اختيارياً تفعيل الإبلاغ المجهول عن الأعطال لمساعدتنا في تحديد الأخطاء وإصلاحها. وتحتوي هذه التقارير على إصدارات نظام التشغيل غير المعرِّفة، وطرازات الأجهزة، وتتبّعات مكدّس الاستثناءات فقط، ولا تحتوي أبداً على محتوى الوسائط.';

  @override
  String get thirdPartyStorePaymentsTitle =>
      '4. مدفوعات المتاجر التابعة لجهات خارجية';

  @override
  String get thirdPartyStorePaymentsBody =>
      'تُنفَّذ عمليات الاشتراك والشراء داخل التطبيق مباشرة عبر Apple App Store أو Google Play Store الرسمي. ولا يقوم Zumi بمعالجة أو الاحتفاظ بمعلومات بطاقتك الائتمانية أو الفوترة المالية.';

  @override
  String get dataDeletionAndStorageHygieneTitle =>
      '5. حذف البيانات ونظافة التخزين';

  @override
  String get dataDeletionAndStorageHygieneBody =>
      'توجد جميع سجلات تاريخ الضغط وملفات المعاينة المؤقتة بشكل صارم داخل أدلة التطبيق المعزولة. ويمكنك محو كل السجل والإطارات المخزّنة مؤقتاً في أي وقت مباشرة من إعدادات التخزين.';

  @override
  String get copyTerms => 'نسخ الشروط';

  @override
  String get compressionIntelligence => 'ذكاء الضغط';

  @override
  String get smartBitrateRecommender => 'اقتراح معدل البت الذكي';

  @override
  String get bitrateRecommenderDescription => 'يوزّع معدل البت حسب الحركة';

  @override
  String get bitrateRecommender => 'اقتراح معدل البت';

  @override
  String get sceneAwareKeyframePlacement =>
      'تحديد الإطارات المفتاحية حسب المشهد';

  @override
  String get sceneKeyframeDescription => 'يحدد الإطارات عند تغيّر المشهد';

  @override
  String get sceneKeyframes => 'إطارات المشهد';

  @override
  String get cameraSensorDenoising => 'تقليل تشويش مستشعر الكاميرا';

  @override
  String get noiseReductionDescription => 'يقلل تشويش الصور بالإضاءة المنخفضة';

  @override
  String get noiseReduction => 'تقليل التشويش';

  @override
  String get silentAudioTrimming => 'قص المقاطع الصوتية الصامتة';

  @override
  String get silentAudioDescription => 'يتجاوز المقاطع الصوتية الصامتة';

  @override
  String get silentTrim => 'قص الصمت';

  @override
  String get subjectFacePriority => 'إعطاء الأولوية للأشخاص والوجوه';

  @override
  String get facePriorityDescription => 'يحسن الجودة حول الوجوه';

  @override
  String get facePriority => 'أولوية الوجوه';

  @override
  String get hardwareAcceleration => 'تسريع الأجهزة';

  @override
  String get computeBackend => 'واجهة المعالجة';

  @override
  String get backendAuto => 'تلقائي (محرك عصبي / معالج رسومي)';

  @override
  String get backendVulkan => 'Vulkan / معالجة رسومية';

  @override
  String get backendCpu => 'معالجة متعددة الخيوط عبر المعالج';

  @override
  String cpuThreadAllocation(int count) {
    return 'تخصيص خيوط المعالج: $count خيط';
  }

  @override
  String cpuThreadLabel(int count) {
    return '$count خيوط';
  }

  @override
  String get memoryBudgetCap => 'حد الذاكرة المسموح';

  @override
  String get batterySaverMode => 'وضع توفير البطارية';

  @override
  String get batterySaverDescription => 'يقلل المعالجة لتوفير البطارية';

  @override
  String get benchmarking => 'جارٍ الاختبار…';

  @override
  String get benchmarkEngineNow => 'اختبر أداء المحرك الآن';

  @override
  String get benchmarkResult =>
      'نتيجة الاختبار: ٤٬٨٢٠ رمزًا/ثانية • أداء الجهاز مثالي';

  @override
  String get interactionStyle => 'أسلوب التفاعل';

  @override
  String get streamTextOutput => 'عرض النص تدريجيًا';

  @override
  String get streamTextDescription => 'يعرض الرد أثناء إنشائه';

  @override
  String get showReasoningThinking => 'إظهار التفكير';

  @override
  String get showReasoningDescription => 'يعرض التفكير داخل فقاعات المحادثة';

  @override
  String get generationSampling => 'إعدادات توليد الرد';

  @override
  String creativityTemperature(String value) {
    return 'الإبداع ودرجة الحرارة: $value';
  }

  @override
  String get maxGenerationTokens => 'الحد الأقصى لرموز الرد';

  @override
  String tokensCount(int count) {
    return '$count رمز';
  }

  @override
  String get visualSampling => 'تحليل الصورة';

  @override
  String get analyzeVideoThumbnails => 'تحليل الصور المصغرة للفيديو';

  @override
  String get analyzeThumbnailsDescription => 'يحدد المشاهد والحركة والإضاءة';

  @override
  String get keyframeSamplingDensity => 'كثافة أخذ الإطارات';

  @override
  String framePerSecond(int count) {
    return '$count إطار/ثانية';
  }

  @override
  String framesPerSecond(int count) {
    return '$count إطارات/ثانية';
  }

  @override
  String get audioTranscription => 'تحويل الصوت إلى نص';

  @override
  String get speechToText => 'تحويل الكلام إلى نص';

  @override
  String get speechToTextDescription => 'ينشئ ترجمة نصية من الصوت';

  @override
  String get spokenLanguageAutoDetect => 'اكتشاف لغة الكلام تلقائيًا';

  @override
  String get spokenLanguageDescription => 'يكتشف لغة الكلام تلقائيًا';

  @override
  String get semanticIndexRebuilt =>
      'أُعيد بناء فهرس البحث الدلالي (فُهرس ١٤٢ فيديو)';

  @override
  String get vectorDatabaseStatus => 'حالة قاعدة البيانات المتجهية';

  @override
  String videosIndexed(int count) {
    return 'تمت فهرسة $count فيديو';
  }

  @override
  String get embeddingStorage =>
      'أبعاد التمثيل: ٣٨٤ • المساحة المستخدمة: ١٢٫٤ م.ب';

  @override
  String get rebuilding => 'جارٍ إعادة البناء…';

  @override
  String get rebuildIndex => 'إعادة بناء الفهرس';

  @override
  String get indexingPreferences => 'تفضيلات الفهرسة';

  @override
  String get enableSemanticSearch => 'تفعيل البحث الدلالي';

  @override
  String get semanticSearchDescription => 'يعثر على الفيديو بعبارات وصفية';

  @override
  String get indexOnlyWhenCharging => 'الفهرسة أثناء الشحن فقط';

  @override
  String get indexChargingDescription => 'يفهرس الفيديو أثناء الشحن فقط';

  @override
  String get assistantCapabilities => 'إمكانات المساعد';

  @override
  String get directVideoTrimming => 'قص الفيديو مباشرة';

  @override
  String get directTrimmingDescription => 'يقص الفيديو دون إعادة ترميز';

  @override
  String get videoTrimmer => 'قص الفيديو';

  @override
  String get audioTrackExtraction => 'استخراج المسار الصوتي';

  @override
  String get audioExtractionDescription => 'يصدر الصوت دون ترميز الفيديو';

  @override
  String get audioExtractor => 'استخراج الصوت';

  @override
  String get metadataScrubber => 'إزالة البيانات الوصفية';

  @override
  String get metadataScrubberDescription => 'يزيل البيانات الشخصية من الوسائط';

  @override
  String get metadataScrubberToast => 'إزالة البيانات الوصفية';

  @override
  String get safetyGuardrails => 'الأمان والضوابط';

  @override
  String get requireConfirmation => 'طلب تأكيد التغييرات';

  @override
  String get requireConfirmationDescription => 'يطلب التأكيد قبل تعديل الملفات';

  @override
  String get safetyConfirmation => 'تأكيد الأمان';

  @override
  String get sandboxedScratchpad => 'مساحة عمل مؤقتة معزولة';

  @override
  String get sandboxedScratchpadDescription => 'يعزل التعديلات المؤقتة';

  @override
  String get sandboxedScratchpadToast => 'مساحة العمل المعزولة';

  @override
  String get enabled => 'مفعّل';

  @override
  String get disabled => 'معطّل';

  @override
  String get supportedOnDeviceModels => 'النماذج المدعومة على الجهاز';

  @override
  String get zumiBitrateOptimizer => 'محسّن معدل البت من Zumi (0.2B)';

  @override
  String get localRateControlDescription =>
      'نموذج محلي لضبط معدل البت واختيار جودة المشاهد.';

  @override
  String get mobileNetSceneClassifier => 'مصنّف المشاهد MobileNetV4';

  @override
  String get sceneClassifierDescription =>
      'يكتشف الحركة السريعة وتغييرات الكاميرا لتحديد الإطارات المفتاحية.';

  @override
  String get whisperTinyTranscriber => 'محول الصوت إلى نص Whisper Tiny';

  @override
  String get whisperTranscriberDescription =>
      'تحويل محلي سريع للكلام إلى نص لإنشاء ترجمة الفيديو.';

  @override
  String get llamaMobileAssistant => 'مساعد Llama 3.2 1B للأجهزة المحمولة';

  @override
  String get llamaAssistantDescription =>
      'مساعد للمحادثة والإجابة عن أسئلة الفيديو واقتراح تعديلات.';

  @override
  String get active => 'نشط';

  @override
  String get setActive => 'تفعيل';

  @override
  String get installed => 'مثبّت';

  @override
  String downloadModel(String size) {
    return 'تنزيل ($size)';
  }

  @override
  String modelActivated(String name) {
    return 'تم تفعيل $name';
  }

  @override
  String modelDownloadQueued(String name) {
    return 'تمت إضافة تنزيل $name إلى قائمة الانتظار';
  }

  @override
  String get modelFileSelected => 'تم اختيار ملف النموذج';

  @override
  String get modelImportedVerified =>
      'تم استيراد النموذج والتحقق من صلاحيته للتشغيل المحلي';

  @override
  String get noModelFileSelected => 'لم يتم اختيار ملف نموذج';

  @override
  String get compatibleModelFormats => 'الصيغ المتوافقة: .gguf و.onnx و.tflite';

  @override
  String get browseFiles => 'تصفح الملفات';

  @override
  String get importCompatibilityChecklist => 'قائمة التحقق من توافق الاستيراد';

  @override
  String get formatQuantizationChecklist =>
      'الصيغة والكمّية (GGUF / ONNX / TFLite)';

  @override
  String get memoryCapVerification => 'التحقق من حد الذاكرة (أقل من 2GB RAM)';

  @override
  String get architectureCompatibility =>
      'المعمارية (Llama / MobileNet / Whisper)';

  @override
  String get validatingModel => 'جارٍ التحقق…';

  @override
  String get validateImportModel => 'تحقق واستورد النموذج';

  @override
  String modelStorageUsage(String size, String ram) {
    return '$size • $ram';
  }

  @override
  String get bitrateRecommenderDetails =>
      'يحلل الحركة والتفاصيل البصرية لاقتراح معدل البت المناسب لكل مشهد. ويساعد ذلك في الحفاظ على التفاصيل المهمة في الفيديو.';

  @override
  String get sceneKeyframeDetails =>
      'يكتشف تغيّر المشاهد وانتقالات الكاميرا، ثم يحدد الإطارات المفتاحية في مواضع مناسبة. وهذا يجعل التنقل داخل الفيديو أكثر سلاسة.';

  @override
  String get noiseReductionDetails =>
      'يقلل التشويش في اللقطات منخفضة الإضاءة قبل الضغط. وقد تبدو الصورة أوضح وينتج عنها ملف أصغر.';

  @override
  String get silentAudioDetails =>
      'يكتشف الأجزاء الصامتة في المسار الصوتي ويقصها. وهذا يزيل بيانات صوتية لا تضيف صوتًا مفيدًا.';

  @override
  String get facePriorityDetails =>
      'يكتشف الأشخاص والوجوه في الفيديو. ثم يحافظ الضغط على تفاصيل مرئية أكثر حولهم.';

  @override
  String get batterySaverDetails =>
      'يقلل معالجة النماذج المكثفة عندما تكون البطارية منخفضة. وهذا يساعد على إطالة وقت استخدام الجهاز.';

  @override
  String get streamTextDetails =>
      'يعرض رد المساعد أثناء إنشائه. وبذلك يمكنك البدء في القراءة قبل اكتمال الرد.';

  @override
  String get showReasoningDetails =>
      'يعرض تفاصيل إضافية عن التفكير في ردود المحادثة عندما يدعمها النموذج. وقد يجعل ذلك الردود أطول وأكثر تفصيلًا.';

  @override
  String get analyzeThumbnailsDetails =>
      'يحلل إطارات من الفيديو للتعرف على المشاهد والأنشطة والإضاءة. وهذا يمنح المساعد سياقًا مرئيًا عن الفيديو المحدد.';

  @override
  String get samplingDensityDetails =>
      'اختر عدد الإطارات التي يتم تحليلها كل ثانية. المعدل الأعلى يلتقط تغييرات أكثر ويتطلب معالجة إضافية.';

  @override
  String get speechToTextDetails =>
      'يعالج صوت الفيديو المحدد على الجهاز ويحوّل الكلام إلى نص. ويمكن استخدام النص الناتج للترجمة والبحث.';

  @override
  String get spokenLanguageDetails =>
      'يتعرف على اللغة المستخدمة في الصوت. وتساعد اللغة المكتشفة على اختيار إعدادات مناسبة لتحويل الكلام إلى نص.';

  @override
  String get semanticSearchDetails =>
      'ينشئ فهرس بحث يعتمد على المعنى ويُخزّن على الجهاز. يمكنك استخدام أوصاف مثل «شاطئ وقت الغروب» للعثور على فيديوهات مناسبة.';

  @override
  String get indexChargingDetails =>
      'ينتظر توصيل الجهاز بالطاقة قبل إنشاء بيانات البحث. وهذا يقلل نشاط الفهرسة عند استخدام البطارية.';

  @override
  String get directTrimmingDetails =>
      'يسمح للمساعد بقص مقاطع الفيديو دون إعادة ترميزها. وهذا أسرع ويحافظ على جودة الفيديو الأصلية.';

  @override
  String get audioExtractionDetails =>
      'يسمح للمساعد بتصدير المسار الصوتي من الفيديو كملف مستقل. ولا تتم إعادة ترميز الفيديو نفسه.';

  @override
  String get metadataScrubberDetails =>
      'يزيل البيانات الشخصية مثل معلومات EXIF وموقع GPS من الوسائط. وهذا يساعد على حماية المعلومات قبل مشاركة الملفات.';

  @override
  String get requireConfirmationDetails =>
      'يطلب موافقتك قبل أن يغيّر المساعد الملفات. ويمكنك مراجعة الإجراءات التي تستبدل المحتوى أو تحفظه أو تحذفه.';

  @override
  String get sandboxedScratchpadDetails =>
      'يحتفظ بالتعديلات الوسيطة في موقع مؤقت ومعزول. وتظل الملفات الأصلية دون تغيير أثناء تنفيذ العملية.';
}

/// The translations for Arabic, as used in Egypt (`ar_EG`).
class AppLocalizationsArEg extends AppLocalizationsAr {
  AppLocalizationsArEg() : super('ar_EG');

  @override
  String get retry => 'جرّب تاني';

  @override
  String get compressVideosPrivatelyOnYourDevice =>
      'اضغط فيديوهاتك بخصوصية على موبايلك.';

  @override
  String get chooseAVideo => 'اختار فيديو';

  @override
  String get startCompression => 'ابدأ الضغط';

  @override
  String get pleaseWait => 'استنى شوية...';

  @override
  String get languageName => 'العربية';

  @override
  String get countryCode => 'EG';
}
