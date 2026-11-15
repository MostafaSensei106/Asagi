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
  String fileSavedToDcim(String fileName) {
    return 'تم حفظ الملف في المعرض: $fileName';
  }

  @override
  String fileSavedToDocuments(String fileName) {
    return 'تم حفظ الملف في المستندات: $fileName';
  }

  @override
  String get fileAlreadySaved => 'الملف محفوظ بالفعل';

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
  String get error_address_line_cant_be_empty =>
      'لا يمكن أن يكون سطر العنوان فارغاً';

  @override
  String get error_address_line_too_long => 'سطر العنوان طويل جداً';

  @override
  String get error_address_invalid_special_characters =>
      'الرموز الخاصة غير مسموح بها';

  @override
  String get error_address_emoji_not_allowed =>
      'الرموز التعبيرية غير مسموح بها';

  @override
  String get error_city_cant_be_empty => 'لا يمكن أن تكون المدينة فارغة';

  @override
  String get error_city_too_long => 'اسم المدينة طويل جداً';

  @override
  String get error_city_invalid_special_characters =>
      'تحتوي المدينة على رموز خاصة غير صالحة';

  @override
  String get error_address_label_cant_be_empty =>
      'لا يمكن أن يكون تصنيف العنوان فارغاً';

  @override
  String get error_address_label_too_long => 'تصنيف العنوان طويل جداً';

  @override
  String get error_email_cant_be_empty =>
      'لا يمكن أن يكون البريد الإلكتروني فارغاً';

  @override
  String get error_email_not_invalid_format =>
      'صيغة البريد الإلكتروني غير صالحة';

  @override
  String get error_email_contains_invalid_characters =>
      'البريد الإلكتروني يحتوي على رموز غير صالحة';

  @override
  String get error_email_must_contain_at_symbol =>
      'يجب أن يحتوي البريد الإلكتروني على علامة @';

  @override
  String get error_email_must_be_in_lowercase =>
      'يجب أن يكون البريد الإلكتروني بأحرف صغيرة';

  @override
  String get error_arabic_not_allowed => 'الأحرف العربية غير مسموح بها';

  @override
  String get error_email_emoji_not_allowed =>
      'الرموز التعبيرية غير مسموح بها في البريد الإلكتروني';

  @override
  String get error_phone_number_cant_be_empty =>
      'لا يمكن أن يكون رقم الهاتف فارغاً';

  @override
  String get error_phone_number_invalid => 'رقم الهاتف غير صالح';

  @override
  String get error_phone_number_min_length =>
      'يجب أن يتكون رقم الهاتف من 11 رقماً على الأقل';

  @override
  String get error_name_cant_be_empty => 'لا يمكن أن يكون الاسم فارغاً';

  @override
  String get error_name_invalid => 'الاسم غير صالح';

  @override
  String get error_name_too_short_at_least_3_characters =>
      'يجب ألا يقل الاسم عن 3 أحرف';

  @override
  String get error_name_too_long_maximum_20_characters =>
      'يجب ألا يزيد الاسم عن 20 حرفاً';

  @override
  String get error_name_invalid_special_characters =>
      'يحتوي الاسم على رموز خاصة غير صالحة';

  @override
  String get error_name_emoji_not_allowed =>
      'الرموز التعبيرية غير مسموح بها في الاسم';

  @override
  String get error_password_cant_be_empty =>
      'لا يمكن أن تكون كلمة المرور فارغة';

  @override
  String
  get error_password_must_contain_uppercase_lowercase_number_and_special_character =>
      'يجب أن تحتوي كلمة المرور على أحرف كبيرة وصغيرة وأرقام ورموز خاصة';

  @override
  String get error_password_must_be_at_least_8_characters_long =>
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
  String get pleaseWait => 'يرجى الانتظار...';

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
  String get openSourceLicenses => 'تراخيص مفتوحة المصدر';

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
  String get settingsGroupAppearance => 'المظهر و الالوان';

  @override
  String get settingsGroupCompression => 'الضغط والتخزين';

  @override
  String get settingsGroupAi => 'الذكاء الاصطناعي';

  @override
  String get settingsGroupPrivacy => 'الإشعارات والخصوصية';

  @override
  String get settingsGroupPlans => 'الخطط والمشتريات';

  @override
  String get settingsGroupAbout => 'حول التطبيق';

  @override
  String get settingsGroupLegal => 'قانوني وسياسات';

  @override
  String get settingsGroupHelp => 'المساعدة والملاحظات';

  @override
  String get settingsGroupAccount => 'الحساب';

  @override
  String get settingsAppearanceSubtitle => 'المظهر، اللغة، وحجم النص';

  @override
  String get settingsLanguageSubtitle => 'لغة التطبيق واتجاه النص';

  @override
  String get settingsCompressionSubtitle => 'الجودة الافتراضية وصيغة الملف';

  @override
  String get settingsStorageSubtitle => 'الذاكرة والتخزين والمساحة المتاحة';

  @override
  String get aiSettings => 'الذكاء الاصطناعي';

  @override
  String get zumiAssistant => 'مساعد Zumi';

  @override
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere =>
      'مساعد خاص لفيديوهاتك قادم قريبًا. ستتمكن من السؤال عن الضغط والتنظيم والفيديوهات المحفوظة هنا.';

  @override
  String get settingsAiSubtitle => 'نماذج محلية وأدوات ذكية';

  @override
  String get exploreLocalModelsAndFutureAiToolsTheseOptionsAreNotActiveYet =>
      'تعرّف على النماذج المحلية والأدوات الذكية القادمة. هذه الخيارات غير مفعّلة بعد.';

  @override
  String get localModels => 'النماذج المحلية';

  @override
  String get aiModelsSubtitle => 'تصفح النماذج المدعومة وتنزيلها';

  @override
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere =>
      'اختر نموذجًا مدعومًا، ونزّله على جهازك، وأدر النماذج المثبّتة من هنا.';

  @override
  String get importAModel => 'استيراد نموذج';

  @override
  String get aiImportSubtitle => 'استخدم نموذجًا متوافقًا من ملفاتك';

  @override
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt =>
      'اختر ملف نموذج محليًا متوافقًا وراجع متطلباته قبل استخدامه.';

  @override
  String get smartFeatures => 'الميزات الذكية';

  @override
  String get aiFeaturesSubtitle => 'الضغط والتنظيم والبحث';

  @override
  String
  get chooseWhichLocalAiSuggestionsToUseForVideoCompressionOrganizationNamingAndSearch =>
      'اختر اقتراحات الذكاء الاصطناعي المحلية للضغط والتنظيم والتسمية والبحث في الفيديوهات.';

  @override
  String get modelPerformance => 'أداء النموذج';

  @override
  String get aiRuntimeSubtitle => 'تفضيلات المعالجة والموارد';

  @override
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels =>
      'تحكم في طريقة المعالجة وحدود الموارد للنماذج المدعومة.';

  @override
  String get conversationSettings => 'إعدادات المحادثة';

  @override
  String get aiChatSettingsSubtitle => 'البث المباشر والتفكير وطول الرد';

  @override
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits =>
      'اضبط طريقة رد المساعد، بما فيها البث المباشر ووضع التفكير وأسلوب التوليد وحدود الرد.';

  @override
  String get imagesAndAudio => 'الصور والصوت';

  @override
  String get aiMediaSubtitle => 'التحكم في المدخلات متعددة الوسائط';

  @override
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos =>
      'حدد ما إذا كان النموذج المتوافق يمكنه تحليل الصور والصوت المختارين من فيديوهاتك.';

  @override
  String get semanticSearch => 'البحث الدلالي';

  @override
  String get aiSearchSubtitle => 'التمثيلات والفهرسة المحلية';

  @override
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning =>
      'أدر نموذج التمثيلات وفهرس البحث المحلي للعثور على الفيديوهات واللحظات بالمعنى.';

  @override
  String get toolsAndStructuredOutput => 'الأدوات والمخرجات المنظمة';

  @override
  String get aiToolsSubtitle => 'الإجراءات والقوالب والتأكيد';

  @override
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation =>
      'أدر إجراءات المساعد المدعومة والردود المنظمة. أي إجراء يغيّر الملفات سيتطلب تأكيدك.';

  @override
  String get aiGroupModels => 'النماذج';

  @override
  String get aiGroupExperience => 'تجربة المساعد';

  @override
  String get aiGroupCapabilities => 'الميزات الذكية';

  @override
  String get aiGroupPerformance => 'الأداء';

  @override
  String get compressionHistorySubtitle => 'سجل كل الفيديوهات المضغوطة';

  @override
  String get settingsNotificationsSubtitle =>
      'تنبيهات الإكمال والتحديثات الجديدة';

  @override
  String get settingsPrivacySubtitle => 'بياناتك تبقى على جهازك';

  @override
  String get plansSubtitle => 'قارن الخطط وارتقِ الآن';

  @override
  String get plansMethodsSubtitle => 'طرق الدفع وإدارة الفواتير';

  @override
  String get plansRestoreSubtitle => 'استعد عملية الشراء السابقة';

  @override
  String get aboutAppSubtitle => 'رقم الإصدار وتفاصيل البناء';

  @override
  String get aboutDeveloperSubtitle => 'المطور الذي بنى Zumi';

  @override
  String get aboutLicensesSubtitle => 'تراخيص الحزم مفتوحة المصدر';

  @override
  String get legalPrivacySubtitle => 'كيف نتعامل مع بياناتك';

  @override
  String get legalTermsSubtitle => 'قواعد استخدام تطبيق Zumi';

  @override
  String get legalDataSafetySubtitle => 'البيانات التي نجمعها منك';

  @override
  String get legalPermissionsSubtitle => 'الأذونات ولماذا نحتاج إليها';

  @override
  String get helpFaqSubtitle => 'إجابات لأكثر الأسئلة شيوعاً';

  @override
  String get helpSupportSubtitle => 'تواصل مع المطور مباشرة';

  @override
  String get helpFeedbackSubtitle => 'أرسل لنا ملاحظاتك الآن';

  @override
  String get compressionPickVideo => 'اختر فيديو';

  @override
  String get compressionTargetMb => 'الحجم المطلوب (ميجابايت)';

  @override
  String get compressionStart => 'ابدأ الضغط';

  @override
  String get compressionPause => 'إيقاف مؤقت';

  @override
  String get compressionResume => 'استئناف';

  @override
  String get compressionViewResult => 'عرض النتيجة';

  @override
  String get compressionSaveGallery => 'حفظ في المعرض';

  @override
  String get compressionShare => 'مشاركة الفيديو';

  @override
  String get compressionOriginalSize => 'الحجم الأصلي';

  @override
  String get compressionOutputSize => 'حجم الناتج';

  @override
  String get compressionEmptyHistory => 'لا توجد فيديوهات مضغوطة بعد';

  @override
  String get compressionSavedGallery => 'تم الحفظ في المعرض';

  @override
  String get compressionInvalidTarget => 'أدخل حجماً أكبر من صفر';

  @override
  String get compressionCancelled => 'تم إلغاء الضغط';

  @override
  String get compressionTargetExceeded =>
      'تعذر وصول الفيديو للحجم المحدد. جرّب حجمًا أكبر.';

  @override
  String get compressionTargetInfeasible =>
      'الحجم المحدد صغير جدًا لهذا الفيديو. اختر حجمًا أكبر.';

  @override
  String get compressionPreviewBefore => 'معاينة الفيديو الأصلي';

  @override
  String get compressionPreviewAfter => 'معاينة الفيديو المضغوط';

  @override
  String get compressionPreset => 'حجم جاهز';

  @override
  String get compressionCustom => 'حجم مخصص';

  @override
  String get compressionPreviewUnavailable => 'المعاينة غير متاحة';

  @override
  String get compressionAdvanced => 'إعدادات متقدمة';

  @override
  String get compressionAutomatic => 'تلقائي';

  @override
  String get compressionResolutionLimit => 'أقصى دقة';

  @override
  String get compressionSourceResolution => 'الدقة الأصلية';

  @override
  String get compressionFrameRateLimit => 'أقصى معدل إطارات';

  @override
  String get compressionAudioQuality => 'معدل بيانات الصوت';

  @override
  String get compressionRemoveAudio => 'حذف الصوت';

  @override
  String get compressionVideoBitrateLimit =>
      'الحد الأقصى لمعدل بيانات الفيديو (كيلوبت/ث)';

  @override
  String get compressionHdrPolicy => 'معالجة HDR';

  @override
  String get compressionHdrConvert => 'التحويل إلى SDR';

  @override
  String get compressionHdrPreserve => 'الاحتفاظ بـ HDR عند دعم الجهاز';

  @override
  String get compressionPlanPreview => 'قبل البدء';

  @override
  String get compressionPlanLoading => 'جارٍ حساب خطة الضغط…';

  @override
  String get compressionPlanResolution => 'الدقة المخططة';

  @override
  String get compressionPlanVideoBitrate => 'معدل بيانات الفيديو المخطط';

  @override
  String get compressionPlanAudioBitrate => 'معدل بيانات الصوت المخطط';

  @override
  String get compressionAudioConversionNote =>
      'إعادة الترميز تحوّل الصوت إلى AAC ستيريو، ولا تحتفظ بالصوت المكاني Dolby Atmos أو DTS.';

  @override
  String get compressionPlanTooSmall =>
      'الحجم صغير جدًا لفيديو صالح. زوّد الحجم أو خفّض الحدود الأخرى.';

  @override
  String get compressionPlanLowQuality =>
      'قد يؤدي الحجم المحدد إلى خفض جودة الفيديو.';

  @override
  String get compressionPlanAlreadyWithinLimit =>
      'الفيديو الأصلي أصغر بالفعل من الحجم المحدد.';

  @override
  String get compressionInvalidBitrate =>
      'أدخل 150 كيلوبت/ث على الأقل، أو اتركه فارغًا للاختيار التلقائي';

  @override
  String get compressionInvalidResolution =>
      'أدخل دقة زوجية من 240 إلى 16384، أو اتركها فارغة للاختيار التلقائي';

  @override
  String get compressionSeek => 'موضع الفيديو';

  @override
  String get compressionInterrupted =>
      'انقطعت عملية ضغط سابقة. حُذفت ملفاتها المؤقتة؛ يمكنك اختيار الفيديو وإعادة المحاولة.';

  @override
  String get compressionDismiss => 'إخفاء';

  @override
  String get compressionClearHistory => 'مسح السجل';

  @override
  String get compressionClearHistoryConfirm =>
      'هل تريد حذف كل عناصر السجل؟ ستبقى الفيديوهات المحفوظة على جهازك.';

  @override
  String get compressionAttempts => 'عدد المحاولات';

  @override
  String get compressionTargetSize => 'الحجم المطلوب';

  @override
  String get compressionOutputResolution => 'دقة الناتج';

  @override
  String get compressionInvalidVideo =>
      'تعذرت قراءة هذا الفيديو. اختر ملفًا آخر.';

  @override
  String get compressionInvalidOutput =>
      'فشل التحقق من الفيديو الناتج. لم يتغير الفيديو الأصلي.';

  @override
  String get compressionEncoderUnsupported =>
      'الجهاز لا يدعم ترميز الدقة أو معدل الإطارات المحدد. خفّض الإعداد وأعد المحاولة.';

  @override
  String get compressionAudioDecoderUnsupported =>
      'الجهاز لا يستطيع فك صيغة الصوت هذه لضغط الفيديو. احذف الصوت أو استخدم مصدرًا مدعومًا.';

  @override
  String get compressionVideoDecoderUnsupported =>
      'الجهاز لا يستطيع فك صيغة الفيديو أو نسختها لضغطها. اختر ملفًا أو جهازًا آخر.';

  @override
  String get compressionMp4NotStreamable =>
      'ملف MP4 الناتج غير مهيأ للتشغيل أثناء التحميل. جرّب فيديو أو جهازًا آخر.';

  @override
  String get compressionNoSpace =>
      'لا توجد مساحة تخزين كافية لضغط هذا الفيديو.';

  @override
  String get compressionHdrUnsupported =>
      'الجهاز لا يدعم وضع HDR المحدد. جرّب التحويل إلى SDR.';

  @override
  String get compressionGeneralFailure =>
      'تعذر إكمال الضغط. جرّب إعدادًا أو فيديو آخر.';

  @override
  String get aboutIdentitySection => 'هوية التطبيق';

  @override
  String get aboutAppName => 'اسم التطبيق';

  @override
  String get aboutPackageName => 'اسم الحزمة';

  @override
  String get aboutVersion => 'الإصدار';

  @override
  String get aboutBuildNumber => 'رقم البناء';

  @override
  String get aboutEnvironmentSection => 'الجهاز والبناء';

  @override
  String get aboutOperatingSystem => 'نظام التشغيل';

  @override
  String get aboutOsVersion => 'إصدار النظام';

  @override
  String get aboutBuildMode => 'وضع البناء';

  @override
  String get aboutDebug => 'تجريبي';

  @override
  String get aboutRelease => 'إصدار نهائي';

  @override
  String get aboutToolchainSection => 'بُني باستخدام';

  @override
  String get aboutInstallationSection => 'التثبيت';

  @override
  String get aboutInstaller => 'مصدر التثبيت';

  @override
  String get aboutInstalledOn => 'تاريخ التثبيت';

  @override
  String get aboutUpdatedOn => 'تاريخ التحديث';

  @override
  String get aboutUnavailable => 'غير متاح';

  @override
  String get aboutProjectSection => 'المشروع والدعم';

  @override
  String get aboutRepository => 'مستودع GitHub';

  @override
  String get aboutRepositorySubtitle => 'استعرض كود Zumi';

  @override
  String get aboutReadme => 'اقرأ ملف README';

  @override
  String get aboutReadmeSubtitle => 'تعرف على Zumi في GitHub';

  @override
  String get aboutIssues => 'الإبلاغ عن مشكلة';

  @override
  String get aboutIssuesSubtitle => 'عرض مشكلات GitHub وإنشاء بلاغ';

  @override
  String get aboutLatestRelease => 'آخر إصدار';

  @override
  String get aboutLatestReleaseSubtitle => 'استعرض الإصدارات والتنزيلات';

  @override
  String get aboutDonate => 'ادعم Zumi';

  @override
  String get aboutDonateSubtitle => 'افتح صفحة التبرعات الرسمية';

  @override
  String get aboutLinkError => 'تعذر فتح الرابط. حاول مرة أخرى.';

  @override
  String get aboutDeveloperSection => 'المطوّر';

  @override
  String get aboutDeveloperName => 'مصطفى سينسي';

  @override
  String get aboutDeveloperProfile => 'حساب GitHub';

  @override
  String get aboutDeveloperProfileSubtitle => 'المشاريع وبيانات التواصل';

  @override
  String get maintenanceInProgress => 'التطبيق قيد الصيانة';

  @override
  String get maintenanceMessage =>
      'Zumi غير متاح مؤقتًا. حاول مرة أخرى لاحقًا.';

  @override
  String get comingSoon => 'قريباً';

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
  String get compressionStart => 'ابدأ الضغط';

  @override
  String get languageName => 'العربية';

  @override
  String get countryCode => 'EG';
}
