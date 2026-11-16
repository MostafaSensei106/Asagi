// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get zumi => 'Zumi';

  @override
  String get downloadFile => 'Dosyayı İndir';

  @override
  String fileOpenedInBrowser(String fileName) {
    return 'Dosya tarayıcıda açıldı: $fileName';
  }

  @override
  String fileSavedToGallery(String fileName) {
    return 'Dosya galeriye kaydedildi: $fileName';
  }

  @override
  String fileSavedToDocuments(String fileName) {
    return 'Dosya belgeler klasörüne kaydedildi: $fileName';
  }

  @override
  String get fileIsAlreadySaved => 'Dosya zaten kaydedilmiş';

  @override
  String get error => 'Hata';

  @override
  String get info => 'Bilgi';

  @override
  String get success => 'Başarı';

  @override
  String get warning => 'Uyarı';

  @override
  String get paid => 'Ücretli';

  @override
  String get unpaid => 'Ücretsiz';

  @override
  String get partial => 'Kısmi';

  @override
  String get addressLineCannotBeEmpty => 'Adres satırı boş olamaz';

  @override
  String get addressLineIsTooLong => 'Adres satırı çok uzun';

  @override
  String get specialCharactersAreNotAllowed =>
      'Özel karakterlere izin verilmiyor';

  @override
  String get emojisAreNotAllowed => 'Emojiye izin verilmiyor';

  @override
  String get cityCannotBeEmpty => 'Şehir boş olamaz';

  @override
  String get cityNameIsTooLong => 'Şehir adı çok uzun';

  @override
  String get cityContainsInvalidSpecialCharacters =>
      'Şehir geçersiz özel karakterler içeriyor';

  @override
  String get addressLabelCannotBeEmpty => 'Adres etiketi boş olamaz';

  @override
  String get addressLabelIsTooLong => 'Adres etiketi çok uzun';

  @override
  String get emailCannotBeEmpty => 'Email boş olamaz';

  @override
  String get invalidEmailFormat => 'Geçersiz email formatı';

  @override
  String get emailContainsInvalidCharacters =>
      'E-posta geçersiz karakterler içeriyor';

  @override
  String get emailMustContain => 'E-posta @ içermelidir';

  @override
  String get emailMustBeInLowercase => 'E-posta küçük harflerle olmalıdır';

  @override
  String get arabicCharactersAreNotAllowed =>
      'Arap karakterlerine izin verilmiyor';

  @override
  String get emojisAreNotAllowedInEmail =>
      'E-postada emoji kullanımına izin verilmiyor';

  @override
  String get phoneNumberCannotBeEmpty => 'Telefon numarası boş olamaz';

  @override
  String get invalidPhoneNumber => 'Geçersiz telefon numarası';

  @override
  String get phoneNumberMustBeAtLeast11Digits =>
      'Telefon numarası en az 11 hane olmalıdır';

  @override
  String get nameCannotBeEmpty => 'İsim boş olamaz';

  @override
  String get invalidName => 'Geçersiz isim';

  @override
  String get nameMustBeAtLeast3Characters => 'İsim en az 3 karakter olmalıdır';

  @override
  String get nameCannotExceed20Characters => 'İsim 20 karakteri geçemez';

  @override
  String get nameContainsInvalidSpecialCharacters =>
      'İsim geçersiz özel karakterler içeriyor';

  @override
  String get emojisAreNotAllowedInName =>
      'İsimde emoji kullanımına izin verilmiyor';

  @override
  String get passwordCannotBeEmpty => 'Şifre boş olamaz';

  @override
  String get passwordMustContainUppercaseLowercaseNumberAndSpecialCharacter =>
      'Şifre büyük harf, küçük harf, rakam ve özel karakter içermelidir';

  @override
  String get passwordMustBeAtLeast8CharactersLong =>
      'Şifre en az 8 karakter uzunluğunda olmalıdır';

  @override
  String get noInternetConnection => 'İnternet bağlantısı yok';

  @override
  String get internetConnectionRestored => 'İnternet bağlantısı geri yüklendi';

  @override
  String get retry => 'Tekrar dene';

  @override
  String get confirm => 'Onayla';

  @override
  String get ok => 'Tamam';

  @override
  String get compressVideosPrivatelyOnYourDevice =>
      'Videolarınızı gizlice, cihazınızda sıkıştırın.';

  @override
  String get welcomeToZumi => 'Zumi\'ye hoş geldiniz';

  @override
  String get learnHowZumiCompressesYourVideosWithoutEverLeavingYourPhone =>
      'Zumi\'nin videolarınızı telefonunuzu hiç terk etmeden nasıl sıkıştırdığını öğrenin.';

  @override
  String get signIn => 'Giriş yap';

  @override
  String get signInToSyncYourPlanAndKeepYourPurchasesAvailableOnEveryDevice =>
      'Planınızı senkronize etmek ve satın aldığınız öğeleri her cihazda kullanılabilir tutmak için giriş yapın.';

  @override
  String get chooseAVideo => 'Bir video seç';

  @override
  String get pickAVideoFromYourGalleryToStartCompressing =>
      'Sıkıştırmaya başlamak için galerinizden bir video seçin.';

  @override
  String get compressionSetup => 'Sıkıştırma ayarları';

  @override
  String get chooseResolutionBitrateAndOutputFormatBeforeYouStart =>
      'Başlamadan önce çözünürlüğü, bit hızını ve çıktı formatını seçin.';

  @override
  String get compressing => 'Sıkıştırılıyor';

  @override
  String get followTheLiveProgressOfYourCompressionJob =>
      'Sıkıştırma işleminizin canlı ilerlemesini takip edin.';

  @override
  String get compressionResult => 'Sıkıştırma sonucu';

  @override
  String get compareTheBeforeAndAfterSizeThenSaveOrShareTheResult =>
      'Önceki ve sonraki boyutu karşılaştırın, ardından sonucu kaydedin veya paylaşın.';

  @override
  String get compressionHistory => 'Sıkıştırma geçmişi';

  @override
  String get reviewTheVideosYouHaveCompressedOnThisDevice =>
      'Bu cihazda sıkıştırdığınız videoları inceleyin.';

  @override
  String get settings => 'Ayarlar';

  @override
  String get appearance => 'Görünüm';

  @override
  String get themeColorSchemeAndMotionPreferences =>
      'Tema, renk şeması ve hareket tercihleri.';

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
  String get language => 'Dil';

  @override
  String get appLanguageAndTextDirection => 'Uygulama dili ve metin yönü.';

  @override
  String get compressionDefaults => 'Sıkıştırma varsayılanları';

  @override
  String get defaultResolutionBitrateAndOutputFormat =>
      'Varsayılan çözünürlük, bit hızı ve çıktı formatı.';

  @override
  String get storageCleanup => 'Depolama ve temizlik';

  @override
  String get storageUsageCacheSizeAndTemporaryFileCleanup =>
      'Depolama kullanımı, önbellek boyutu ve geçici dosya temizliği.';

  @override
  String get notifications => 'Bildirimler';

  @override
  String get jobCompletionAndProductUpdateNotifications =>
      'İş tamamlanma ve ürün güncelleme bildirimleri.';

  @override
  String get privacy => 'Gizlilik';

  @override
  String get onDeviceProcessingLocalLogsAndOptionalCrashReports =>
      'Cihaz üzerinde işleme, yerel kayıtlar ve isteğe bağlı çökme raporları.';

  @override
  String get aboutZumi => 'Zumi Hakkında';

  @override
  String get versionBuildNumberAndApplicationDetails =>
      'Sürüm, yapı numarası ve uygulama detayları.';

  @override
  String get aboutTheDeveloper => 'Geliştirici Hakkında';

  @override
  String get theDeveloperAndToolsBehindZumi =>
      'Zumi\'nin arkasındaki geliştirici ve araçlar.';

  @override
  String get openSourcePackagesBundledWithZumi =>
      'Zumi ile birlikte gelen açık kaynak paketler.';

  @override
  String get privacyPolicy => 'Gizlilik politikası';

  @override
  String get howZumiHandlesYourVideosAndData =>
      'Zumi videolarınızı ve verilerinizi nasıl işliyor.';

  @override
  String get termsOfService => 'Hizmet şartları';

  @override
  String get theTermsThatApplyToZumiAndItsPurchases =>
      'Zumi ve satın alımları için geçerli şartlar.';

  @override
  String get dataSafety => 'Veri güvenliği';

  @override
  String get summaryOfTheDataZumiCollectsAndWhy =>
      'Zumi\'nin topladığı verilerin özeti ve neden toplandığı.  ';

  @override
  String get permissions => 'İzinler  ';

  @override
  String get runtimePermissionsZumiRequestsAndWhyEachIsNeeded =>
      'Zumi\'nin istediği çalışma zamanı izinleri ve her birinin neden gerekli olduğu.  ';

  @override
  String get faq => 'SSS  ';

  @override
  String get answersToCommonQuestionsAboutCompressionAndBilling =>
      'Sık sorulan sorulara sıkıştırma ve faturalama ile ilgili yanıtlar.  ';

  @override
  String get support => 'Destek  ';

  @override
  String get getHelpWithYourAccountOrAPurchase =>
      'Hesabınız veya bir satın alma ile ilgili yardım alın.  ';

  @override
  String get sendFeedback => 'Geri bildirim gönder  ';

  @override
  String get reportAProblemOrSuggestAnImprovement =>
      'Bir sorunu bildirin veya geliştirme önerin.  ';

  @override
  String get plans => 'Planlar  ';

  @override
  String get comparePlansAndSeeWhatEachOneUnlocks =>
      'Planları karşılaştırın ve her birinin neleri açtığını görün.  ';

  @override
  String get planDetails => 'Plan detayları  ';

  @override
  String get benefitsLimitsAndPricingForThisPlan =>
      'Bu planın faydaları, sınırları ve fiyatlandırması.  ';

  @override
  String get paymentMethods => 'Ödeme yöntemleri  ';

  @override
  String get supportedWaysToPayIncludingStoreBilling =>
      'Mağaza faturası dahil olmak üzere desteklenen ödeme yolları.  ';

  @override
  String get restorePurchases => 'Satın alımları geri yükle';

  @override
  String get reApplyAPurchaseMadeOnAnotherDevice =>
      'Başka bir cihazda yapılan bir satın alımı tekrar uygula.';

  @override
  String get profile => 'Profil';

  @override
  String get yourIdentityPlanStatusAndAccountPreferences =>
      'Kimliğiniz, plan durumu ve hesap tercihlerinizi.';

  @override
  String get deleteAccount => 'Hesabı sil';

  @override
  String get permanentlyRemoveYourAccountAndItsServerSideData =>
      'Hesabınızı ve sunucu tarafı verilerini kalıcı olarak kaldırın.';

  @override
  String get rateZumi => 'Zumi\'yi değerlendirin';

  @override
  String get tellOthersHowZumiWorkedForYouOnTheStore =>
      'Zumi\'nin sizde nasıl çalıştığını başkalarına söyleyin.';

  @override
  String get shareZumi => 'Zumi\'yi paylaş';

  @override
  String get recommendZumiToAFriend => 'Zumi\'yi bir arkadaşınıza önerin.';

  @override
  String get appearanceLanguage => 'Görünüm ve dil';

  @override
  String get compression => 'Sıkıştırma';

  @override
  String get onDeviceAI => 'Cihazda AI';

  @override
  String get notificationsPrivacy => 'Bildirimler ve gizlilik';

  @override
  String get plansPurchases => 'Planlar ve satın almalar';

  @override
  String get about => 'Hakkında';

  @override
  String get legal => 'Hukuki';

  @override
  String get helpFeedback => 'Yardım ve geri bildirim';

  @override
  String get account => 'Hesap';

  @override
  String get themeAndAppLanguage => 'Tema ve uygulama dili';

  @override
  String get appLanguageAndDirection => 'Uygulama dili ve yönü';

  @override
  String get defaultQualityAndFormat => 'Varsayılan kalite ve format';

  @override
  String get cacheAndStorageUsage => 'Önbellek ve depolama kullanımı';

  @override
  String get aiSettings => 'AI ayarları';

  @override
  String get zumiAssistant => 'Zumi Asistan';

  @override
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere =>
      'Videolarınız için özel bir asistan çok yakında geliyor. Buradan sıkıştırma, düzenleme ve kaydedilmiş videolar hakkında sorular sorabileceksiniz.';

  @override
  String get localModelsAndSmartTools => 'Yerel modeller ve akıllı araçlar';

  @override
  String get exploreLocalModelsAndFutureAIToolsTheseOptionsAreNotActiveYet =>
      'Yerel modelleri ve gelecekteki AI araçlarını keşfedin. Bu seçenekler henüz aktif değil.';

  @override
  String get localModels => 'Yerel modeller';

  @override
  String get browseAndDownloadSupportedModels =>
      'Desteklenen modelleri göz atın ve indirin';

  @override
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere =>
      'Desteklenen bir modeli seçin, bu cihaza indirin ve yüklü modelleri burada yönetin.';

  @override
  String get importAModel => 'Bir model içe aktar';

  @override
  String get useACompatibleModelFromYourFiles =>
      'Dosyalarınızdan uyumlu bir modeli kullanın';

  @override
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt =>
      'Uyumlu bir yerel model dosyası seçin ve kullanmadan önce gereksinimlerini gözden geçirin. ';

  @override
  String get smartFeatures => 'Akıllı özellikler ';

  @override
  String get compressionOrganizationAndSearch =>
      'Sıkıştırma, organizasyon ve arama ';

  @override
  String
  get chooseWhichLocalAISuggestionsToUseForVideoCompressionOrganizationNamingAndSearch =>
      'Video sıkıştırma, organizasyon, adlandırma ve arama için kullanılacak yerel AI önerilerini seçin. ';

  @override
  String get modelPerformance => 'Model performansı ';

  @override
  String get processingAndResourcePreferences => 'İşleme ve kaynak tercihleri ';

  @override
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels =>
      'Desteklenen modeller için işleme arka planını ve kaynak sınırlarını kontrol edin. ';

  @override
  String get conversationSettings => 'Konuşma ayarları ';

  @override
  String get streamingThinkingAndResponseLength =>
      'Akış, düşünme ve yanıt uzunluğu';

  @override
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits =>
      'Asistanın yanıt verme şeklini yapılandırın; akış, düşünme modu, örnekleme ve yanıt sınırları dahil.  ';

  @override
  String get imagesAndAudio => 'Görseller ve ses  ';

  @override
  String get controlMultimodalInputs => 'Çok modlu girdileri kontrol edin  ';

  @override
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos =>
      'Uyumlu modellerin videolarınızdaki seçili görselleri ve sesleri analiz edip edemeyeceğini seçin.  ';

  @override
  String get semanticSearch => 'Semantik arama  ';

  @override
  String get embeddingsAndLocalIndexing => 'Gömümler ve yerel indeksleme  ';

  @override
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning =>
      'Videoları ve anları anlamına göre bulmak için yerel gömme modelini ve arama indeksini yönetin.  ';

  @override
  String get toolsAndStructuredOutput => 'Araçlar ve yapılandırılmış çıktı  ';

  @override
  String get actionsSchemasAndConfirmations => 'Eylemler, şemalar ve onaylar';

  @override
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation =>
      'Desteklenen asistan eylemlerini ve yapılandırılmış yanıtları yönetin. Dosyaları etkileyen eylemler onayınızı gerektirir.';

  @override
  String get models => 'Modeller';

  @override
  String get assistantExperience => 'Asistan deneyimi';

  @override
  String get smartCapabilities => 'Akıllı yetenekler';

  @override
  String get performance => 'Performans';

  @override
  String get yourCompressedVideoHistory => 'Sıkıştırılmış video geçmişiniz';

  @override
  String get completionAndUpdateAlerts =>
      'Tamamlama ve güncelleme bildirimleri';

  @override
  String get yourDataStaysLocal => 'Verileriniz yerel olarak kalır';

  @override
  String get comparePlansAndUpgrade => 'Planları karşılaştırın ve yükseltin';

  @override
  String get paymentMethodsAndBilling => 'Ödeme yöntemleri ve faturalama';

  @override
  String get restoreYourPreviousPurchase =>
      'Önceki satın alımınızı geri yükleyin';

  @override
  String get versionAndBuildDetails => 'Sürüm ve yapı detayları';

  @override
  String get theDeveloperBehindZumi => 'Zumi\'nin arkasındaki geliştirici';

  @override
  String get openSourcePackageLicenses => 'Açık kaynak paket lisansları';

  @override
  String get howDataIsHandled => 'Verilerin nasıl işlendiği';

  @override
  String get rulesForUsingZumi => 'Zumi\'yi kullanma kuralları';

  @override
  String get whatDataWeCollect => 'Hangi verileri topladığımız';

  @override
  String get whyWeNeedPermissions => 'Neden izinlere ihtiyacımız var';

  @override
  String get answersToCommonQuestions => 'Sıkça sorulan sorulara yanıtlar';

  @override
  String get reachTheDeveloperDirectly => 'Geliştiriciye doğrudan ulaşın';

  @override
  String get sendUsYourFeedback => 'Görüşlerinizi bize gönderin';

  @override
  String get pickVideo => 'Video seçin';

  @override
  String get targetSizeMB => 'Hedef boyut (MB)';

  @override
  String get startCompression => 'Sıkıştırmayı başlat';

  @override
  String get pause => 'Duraklat';

  @override
  String get resume => 'Devam ettir';

  @override
  String get viewResult => 'Sonucu görüntüle';

  @override
  String get saveToGallery => 'Galeriye kaydet';

  @override
  String get shareVideo => 'Videoyu paylaş';

  @override
  String get originalSize => 'Orijinal boyut';

  @override
  String get outputSize => 'Çıkış boyutu';

  @override
  String get noCompressedVideosYet => 'Henüz sıkıştırılmış video yok';

  @override
  String get savedToGallery => 'Galeriye kaydedildi';

  @override
  String get enterATargetSizeGreaterThanZero =>
      'Sıfırdan büyük bir hedef boyut girin';

  @override
  String get compressionCancelled => 'Sıkıştırma iptal edildi';

  @override
  String get thisVideoCouldNotReachTheSelectedSizeTryALargerTargetSize =>
      'Bu video seçilen boyuta ulaşamadı. Daha büyük bir hedef boyut deneyin.';

  @override
  String get theSelectedSizeIsTooSmallForThisVideoChooseALargerSize =>
      'Seçilen boyut bu video için çok küçük. Daha büyük bir boyut seçin.';

  @override
  String get originalPreview => 'Orijinal önizleme';

  @override
  String get compressedPreview => 'Sıkıştırılmış önizleme';

  @override
  String get targetPreset => 'Hedef ön ayar';

  @override
  String get customSize => 'Özel boyut';

  @override
  String get previewUnavailable => 'Önizleme mevcut değil';

  @override
  String get advancedControls => 'Gelişmiş kontroller';

  @override
  String get automatic => 'Otomatik';

  @override
  String get maximumResolution => 'Maksimum çözünürlük';

  @override
  String get originalResolution => 'Orijinal çözünürlük';

  @override
  String get maximumFrameRate => 'Maksimum kare hızı';

  @override
  String get audioBitrate => 'Ses bit hızı';

  @override
  String get removeAudio => 'Sesi kaldır';

  @override
  String get videoBitrateCeilingKbps => 'Video bit hızı tavanı (kbps)';

  @override
  String get hdrHandling => 'HDR işleme';

  @override
  String get convertToSDR => 'SDR\'ye dönüştür';

  @override
  String get keepHDRWhenSupported => 'Destekleniyorsa HDR\'yi koru';

  @override
  String get beforeYouStart => 'Başlamadan önce';

  @override
  String get calculatingCompressionPlan => 'Sıkıştırma planı hesaplanıyor…';

  @override
  String get plannedResolution => 'Planlanan çözünürlük';

  @override
  String get plannedVideoBitrate => 'Planlanan video bit hızı';

  @override
  String get plannedAudioBitrate => 'Planlanan ses bit hızı';

  @override
  String
  get reEncodingConvertsAudioToAACStereoDolbyAtmosAndDTSSpatialAudioWillNotBePreserved =>
      'Yeniden kodlama sesi AAC stereo\'ya dönüştürür. Dolby Atmos ve DTS uzamsal ses korunmayacaktır.';

  @override
  String
  get thisTargetIsTooSmallForAUsableVideoIncreaseTheSizeOrLowerOtherLimits =>
      'Bu hedef kullanılabilir bir video için çok küçük. Boyutu artırın veya diğer sınırlamaları düşürün.';

  @override
  String get theSelectedTargetMayReduceVideoQuality =>
      'Seçilen hedef video kalitesini düşürebilir.';

  @override
  String get theSourceIsAlreadyWithinTheSizeLimit =>
      'Kaynak zaten boyut sınırı içerisinde.';

  @override
  String get enterABitrateOfAtLeast150KbpsOrLeaveBlankForAutomatic =>
      'En az 150 kbps bir bit hızı girin veya otomatik için boş bırakın.';

  @override
  String get enterAnEvenResolutionFrom240To16384OrLeaveBlankForAutomatic =>
      '240 ile 16384 arasında çift sayı çözünürlük girin veya otomatik için boş bırakın.';

  @override
  String get videoPosition => 'Video konumu';

  @override
  String
  get aPreviousCompressionWasInterruptedItsTemporaryFilesWereCleanedUpYouCanSelectTheVideoAndTryAgain =>
      'Önceki sıkıştırma işlemine ara verildi. Geçici dosyalar temizlendi; videoyu seçip tekrar deneyebilirsiniz.';

  @override
  String get dismiss => 'Kapat';

  @override
  String get clearHistory => 'Geçmişi temizle';

  @override
  String get removeAllHistoryEntriesSavedVideosWillRemainOnYourDevice =>
      'Tüm geçmiş kayıtları silinsin mi? Kaydedilen videolar cihazınızda kalacaktır. ';

  @override
  String get attempts => 'Denemeler ';

  @override
  String get targetSize => 'Hedef boyut ';

  @override
  String get outputResolution => 'Çıkış çözünürlüğü ';

  @override
  String get thisVideoCouldNotBeReadChooseAnotherFile =>
      'Bu video okunamadı. Başka bir dosya seçin. ';

  @override
  String get theEncodedVideoFailedVerificationYourOriginalVideoWasNotChanged =>
      'Kodlanmış video doğrulamadan geçemedi. Orijinal videonuz değiştirilmedi. ';

  @override
  String
  get thisDeviceCannotEncodeTheSelectedResolutionOrFrameRateLowerThatSettingAndTryAgain =>
      'Bu cihaz seçilen çözünürlüğü veya kare hızını kodlayamaz. Bu ayarı düşürün ve tekrar deneyin. ';

  @override
  String
  get thisDeviceCannotDecodeThisAudioFormatForCompressionRemoveAudioOrUseASupportedSource =>
      'Bu cihaz sıkıştırma için bu ses formatını çözümleyemez. Sesi kaldırın veya desteklenen bir kaynak kullanın.';

  @override
  String
  get thisDeviceCannotDecodeThisVideoFormatOrProfileForCompressionChooseAnotherSourceOrDevice =>
      'Bu cihaz bu video formatını veya sıkıştırma profilini çözemiyor. Başka bir kaynak veya cihaz seçin.';

  @override
  String get theExportedMP4IsNotReadyForStreamingTryAnotherVideoOrDevice =>
      'Dışa aktarılan MP4 akış için hazır değil. Başka bir video veya cihaz deneyin.';

  @override
  String get thereIsNotEnoughFreeStorageToCompressThisVideo =>
      'Bu videoyu sıkıştırmak için yeterli boş depolama alanı yok.';

  @override
  String get thisDeviceCannotProcessTheSelectedHDRModeTryConvertingToSDR =>
      'Bu cihaz seçilen HDR modunu işleyemiyor. SDR\'ye dönüştürmeyi deneyin.';

  @override
  String get compressionCouldNotBeCompletedTryAnotherSettingOrVideo =>
      'Sıkıştırma tamamlanamadı. Başka bir ayar veya video deneyin.';

  @override
  String get appIdentity => 'Uygulama kimliği';

  @override
  String get appName => 'Uygulama adı';

  @override
  String get packageName => 'Paket adı';

  @override
  String get version => 'Sürüm';

  @override
  String get buildNumber => 'Derleme numarası';

  @override
  String get deviceAndBuild => 'Cihaz ve derleme';

  @override
  String get operatingSystem => 'İşletim sistemi';

  @override
  String get osVersion => 'OS sürümü';

  @override
  String get buildMode => 'Derleme modu';

  @override
  String get debug => 'Hata ayıklama';

  @override
  String get release => 'Yayın';

  @override
  String get builtWith => 'İle inşa edildi';

  @override
  String get installation => 'Kurulum';

  @override
  String get installedFrom => 'Şuradan yüklendi';

  @override
  String get installedOn => 'Şu tarihte yüklendi';

  @override
  String get updatedOn => 'Şu tarihte güncellendi';

  @override
  String get unavailable => 'Kullanılamıyor';

  @override
  String get projectAndSupport => 'Proje ve destek';

  @override
  String get githubRepository => 'GitHub deposu';

  @override
  String get viewZumiSourceCode => 'Zumi kaynak kodunu görüntüle';

  @override
  String get readTheREADME => 'README dosyasını oku';

  @override
  String get learnAboutZumiOnGitHub => 'GitHub\'da Zumi hakkında bilgi edinin';

  @override
  String get reportAnIssue => 'Bir sorun bildirin';

  @override
  String get viewAndCreateGitHubIssues =>
      'GitHub sorunlarını görüntüle ve oluştur';

  @override
  String get latestRelease => 'En son sürüm';

  @override
  String get viewReleasesAndDownloads => 'Sürümleri ve indirmeleri görüntüle';

  @override
  String get supportZumi => 'Zumi\'yi destekleyin';

  @override
  String get openTheOfficialDonationPage => 'Resmî bağış sayfasını aç';

  @override
  String get couldNotOpenTheLinkPleaseTryAgain =>
      'Bağlantı açılamadı. Lütfen tekrar deneyin.';

  @override
  String get developer => 'Geliştirici';

  @override
  String get mostafaSensei => 'Mostafa Sensei';

  @override
  String get githubProfile => 'GitHub profili';

  @override
  String get seeProjectsAndContactDetails =>
      'Projeleri ve iletişim bilgilerini gör';

  @override
  String get maintenanceInProgress => 'Bakım devam ediyor';

  @override
  String get zumiIsTemporarilyUnavailablePleaseTryAgainLater =>
      'Zumi geçici olarak kullanılamıyor. Lütfen daha sonra tekrar deneyin.';

  @override
  String get comingSoon => 'Yakında';

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
  String get pleaseWait => 'Lütfen bekleyin...';

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
  String get cancel => 'İptal';

  @override
  String get clean => 'Clean';

  @override
  String get openSourceLicenses => 'Açık kaynak lisansları';

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
  String get languageName => 'Türkçe';

  @override
  String get countryCode => 'TR';

  @override
  String countryName(String countryCode) {
    String _temp0 = intl.Intl.selectLogic(countryCode, {
      'AE': 'Birleşik Arap Emirlikleri',
      'AT': 'Avusturya',
      'AU': 'Avustralya',
      'BE': 'Belçika',
      'BH': 'Bahreyn',
      'BR': 'Brezilya',
      'CA': 'Kanada',
      'CH': 'İsviçre',
      'CN': 'Çin',
      'DE': 'Almanya',
      'DJ': 'Cibuti',
      'DZ': 'Cezayir',
      'EG': 'Mısır',
      'ES': 'İspanya',
      'FR': 'Fransa',
      'GB': 'Birleşik Krallık',
      'HK': 'Çin Hong Kong ÖİB',
      'ID': 'Endonezya',
      'IQ': 'Irak',
      'IT': 'İtalya',
      'JO': 'Ürdün',
      'JP': 'Japonya',
      'KM': 'Komorlar',
      'KR': 'Güney Kore',
      'KW': 'Kuveyt',
      'LB': 'Lübnan',
      'LY': 'Libya',
      'MA': 'Fas',
      'MR': 'Moritanya',
      'MX': 'Meksika',
      'NL': 'Hollanda',
      'OM': 'Umman',
      'PL': 'Polonya',
      'PS': 'Filistin Bölgeleri',
      'PT': 'Portekiz',
      'QA': 'Katar',
      'RU': 'Rusya',
      'SA': 'Suudi Arabistan',
      'SD': 'Sudan',
      'SE': 'İsveç',
      'SG': 'Singapur',
      'SO': 'Somali',
      'SY': 'Suriye',
      'TH': 'Tayland',
      'TN': 'Tunus',
      'TR': 'Türkiye',
      'TW': 'Tayvan',
      'US': 'Amerika Birleşik Devletleri',
      'VN': 'Vietnam',
      'YE': 'Yemen',
      'other': 'Ülke',
    });
    return '$_temp0';
  }
}

/// The translations for Turkish, as used in Turkey (`tr_TR`).
class AppLocalizationsTrTr extends AppLocalizationsTr {
  AppLocalizationsTrTr() : super('tr_TR');

  @override
  String get zumi => 'Zumi';

  @override
  String get downloadFile => 'Dosyayı İndir';

  @override
  String fileOpenedInBrowser(String fileName) {
    return 'Dosya tarayıcıda açıldı: $fileName';
  }

  @override
  String fileSavedToGallery(String fileName) {
    return 'Dosya galeriye kaydedildi: $fileName';
  }

  @override
  String fileSavedToDocuments(String fileName) {
    return 'Dosya belgeler klasörüne kaydedildi: $fileName';
  }

  @override
  String get fileIsAlreadySaved => 'Dosya zaten kaydedilmiş';

  @override
  String get error => 'Hata';

  @override
  String get info => 'Bilgi';

  @override
  String get success => 'Başarı';

  @override
  String get warning => 'Uyarı';

  @override
  String get paid => 'Ücretli';

  @override
  String get unpaid => 'Ücretsiz';

  @override
  String get partial => 'Kısmi';

  @override
  String get addressLineCannotBeEmpty => 'Adres satırı boş olamaz';

  @override
  String get addressLineIsTooLong => 'Adres satırı çok uzun';

  @override
  String get specialCharactersAreNotAllowed =>
      'Özel karakterlere izin verilmiyor';

  @override
  String get emojisAreNotAllowed => 'Emojiye izin verilmiyor';

  @override
  String get cityCannotBeEmpty => 'Şehir boş olamaz';

  @override
  String get cityNameIsTooLong => 'Şehir adı çok uzun';

  @override
  String get cityContainsInvalidSpecialCharacters =>
      'Şehir geçersiz özel karakterler içeriyor';

  @override
  String get addressLabelCannotBeEmpty => 'Adres etiketi boş olamaz';

  @override
  String get addressLabelIsTooLong => 'Adres etiketi çok uzun';

  @override
  String get emailCannotBeEmpty => 'Email boş olamaz';

  @override
  String get invalidEmailFormat => 'Geçersiz email formatı';

  @override
  String get emailContainsInvalidCharacters =>
      'E-posta geçersiz karakterler içeriyor';

  @override
  String get emailMustContain => 'E-posta @ içermelidir';

  @override
  String get emailMustBeInLowercase => 'E-posta küçük harflerle olmalıdır';

  @override
  String get arabicCharactersAreNotAllowed =>
      'Arap karakterlerine izin verilmiyor';

  @override
  String get emojisAreNotAllowedInEmail =>
      'E-postada emoji kullanımına izin verilmiyor';

  @override
  String get phoneNumberCannotBeEmpty => 'Telefon numarası boş olamaz';

  @override
  String get invalidPhoneNumber => 'Geçersiz telefon numarası';

  @override
  String get phoneNumberMustBeAtLeast11Digits =>
      'Telefon numarası en az 11 hane olmalıdır';

  @override
  String get nameCannotBeEmpty => 'İsim boş olamaz';

  @override
  String get invalidName => 'Geçersiz isim';

  @override
  String get nameMustBeAtLeast3Characters => 'İsim en az 3 karakter olmalıdır';

  @override
  String get nameCannotExceed20Characters => 'İsim 20 karakteri geçemez';

  @override
  String get nameContainsInvalidSpecialCharacters =>
      'İsim geçersiz özel karakterler içeriyor';

  @override
  String get emojisAreNotAllowedInName =>
      'İsimde emoji kullanımına izin verilmiyor';

  @override
  String get passwordCannotBeEmpty => 'Şifre boş olamaz';

  @override
  String get passwordMustContainUppercaseLowercaseNumberAndSpecialCharacter =>
      'Şifre büyük harf, küçük harf, rakam ve özel karakter içermelidir';

  @override
  String get passwordMustBeAtLeast8CharactersLong =>
      'Şifre en az 8 karakter uzunluğunda olmalıdır';

  @override
  String get noInternetConnection => 'İnternet bağlantısı yok';

  @override
  String get internetConnectionRestored => 'İnternet bağlantısı geri yüklendi';

  @override
  String get retry => 'Tekrar dene';

  @override
  String get confirm => 'Onayla';

  @override
  String get ok => 'Tamam';

  @override
  String get compressVideosPrivatelyOnYourDevice =>
      'Videolarınızı gizlice, cihazınızda sıkıştırın.';

  @override
  String get welcomeToZumi => 'Zumi\'ye hoş geldiniz';

  @override
  String get learnHowZumiCompressesYourVideosWithoutEverLeavingYourPhone =>
      'Zumi\'nin videolarınızı telefonunuzu hiç terk etmeden nasıl sıkıştırdığını öğrenin.';

  @override
  String get signIn => 'Giriş yap';

  @override
  String get signInToSyncYourPlanAndKeepYourPurchasesAvailableOnEveryDevice =>
      'Planınızı senkronize etmek ve satın aldığınız öğeleri her cihazda kullanılabilir tutmak için giriş yapın.';

  @override
  String get chooseAVideo => 'Bir video seç';

  @override
  String get pickAVideoFromYourGalleryToStartCompressing =>
      'Sıkıştırmaya başlamak için galerinizden bir video seçin.';

  @override
  String get compressionSetup => 'Sıkıştırma ayarları';

  @override
  String get chooseResolutionBitrateAndOutputFormatBeforeYouStart =>
      'Başlamadan önce çözünürlüğü, bit hızını ve çıktı formatını seçin.';

  @override
  String get compressing => 'Sıkıştırılıyor';

  @override
  String get followTheLiveProgressOfYourCompressionJob =>
      'Sıkıştırma işleminizin canlı ilerlemesini takip edin.';

  @override
  String get compressionResult => 'Sıkıştırma sonucu';

  @override
  String get compareTheBeforeAndAfterSizeThenSaveOrShareTheResult =>
      'Önceki ve sonraki boyutu karşılaştırın, ardından sonucu kaydedin veya paylaşın.';

  @override
  String get compressionHistory => 'Sıkıştırma geçmişi';

  @override
  String get reviewTheVideosYouHaveCompressedOnThisDevice =>
      'Bu cihazda sıkıştırdığınız videoları inceleyin.';

  @override
  String get settings => 'Ayarlar';

  @override
  String get appearance => 'Görünüm';

  @override
  String get themeColorSchemeAndMotionPreferences =>
      'Tema, renk şeması ve hareket tercihleri.';

  @override
  String get language => 'Dil';

  @override
  String get appLanguageAndTextDirection => 'Uygulama dili ve metin yönü.';

  @override
  String get compressionDefaults => 'Sıkıştırma varsayılanları';

  @override
  String get defaultResolutionBitrateAndOutputFormat =>
      'Varsayılan çözünürlük, bit hızı ve çıktı formatı.';

  @override
  String get storageCleanup => 'Depolama ve temizlik';

  @override
  String get storageUsageCacheSizeAndTemporaryFileCleanup =>
      'Depolama kullanımı, önbellek boyutu ve geçici dosya temizliği.';

  @override
  String get notifications => 'Bildirimler';

  @override
  String get jobCompletionAndProductUpdateNotifications =>
      'İş tamamlanma ve ürün güncelleme bildirimleri.';

  @override
  String get privacy => 'Gizlilik';

  @override
  String get onDeviceProcessingLocalLogsAndOptionalCrashReports =>
      'Cihaz üzerinde işleme, yerel kayıtlar ve isteğe bağlı çökme raporları.';

  @override
  String get aboutZumi => 'Zumi Hakkında';

  @override
  String get versionBuildNumberAndApplicationDetails =>
      'Sürüm, yapı numarası ve uygulama detayları.';

  @override
  String get aboutTheDeveloper => 'Geliştirici Hakkında';

  @override
  String get theDeveloperAndToolsBehindZumi =>
      'Zumi\'nin arkasındaki geliştirici ve araçlar.';

  @override
  String get openSourcePackagesBundledWithZumi =>
      'Zumi ile birlikte gelen açık kaynak paketler.';

  @override
  String get privacyPolicy => 'Gizlilik politikası';

  @override
  String get howZumiHandlesYourVideosAndData =>
      'Zumi videolarınızı ve verilerinizi nasıl işliyor.';

  @override
  String get termsOfService => 'Hizmet şartları';

  @override
  String get theTermsThatApplyToZumiAndItsPurchases =>
      'Zumi ve satın alımları için geçerli şartlar.';

  @override
  String get dataSafety => 'Veri güvenliği';

  @override
  String get summaryOfTheDataZumiCollectsAndWhy =>
      'Zumi\'nin topladığı verilerin özeti ve neden toplandığı.  ';

  @override
  String get permissions => 'İzinler  ';

  @override
  String get runtimePermissionsZumiRequestsAndWhyEachIsNeeded =>
      'Zumi\'nin istediği çalışma zamanı izinleri ve her birinin neden gerekli olduğu.  ';

  @override
  String get faq => 'SSS  ';

  @override
  String get answersToCommonQuestionsAboutCompressionAndBilling =>
      'Sık sorulan sorulara sıkıştırma ve faturalama ile ilgili yanıtlar.  ';

  @override
  String get support => 'Destek  ';

  @override
  String get getHelpWithYourAccountOrAPurchase =>
      'Hesabınız veya bir satın alma ile ilgili yardım alın.  ';

  @override
  String get sendFeedback => 'Geri bildirim gönder  ';

  @override
  String get reportAProblemOrSuggestAnImprovement =>
      'Bir sorunu bildirin veya geliştirme önerin.  ';

  @override
  String get plans => 'Planlar  ';

  @override
  String get comparePlansAndSeeWhatEachOneUnlocks =>
      'Planları karşılaştırın ve her birinin neleri açtığını görün.  ';

  @override
  String get planDetails => 'Plan detayları  ';

  @override
  String get benefitsLimitsAndPricingForThisPlan =>
      'Bu planın faydaları, sınırları ve fiyatlandırması.  ';

  @override
  String get paymentMethods => 'Ödeme yöntemleri  ';

  @override
  String get supportedWaysToPayIncludingStoreBilling =>
      'Mağaza faturası dahil olmak üzere desteklenen ödeme yolları.  ';

  @override
  String get restorePurchases => 'Satın alımları geri yükle';

  @override
  String get reApplyAPurchaseMadeOnAnotherDevice =>
      'Başka bir cihazda yapılan bir satın alımı tekrar uygula.';

  @override
  String get profile => 'Profil';

  @override
  String get yourIdentityPlanStatusAndAccountPreferences =>
      'Kimliğiniz, plan durumu ve hesap tercihlerinizi.';

  @override
  String get deleteAccount => 'Hesabı sil';

  @override
  String get permanentlyRemoveYourAccountAndItsServerSideData =>
      'Hesabınızı ve sunucu tarafı verilerini kalıcı olarak kaldırın.';

  @override
  String get rateZumi => 'Zumi\'yi değerlendirin';

  @override
  String get tellOthersHowZumiWorkedForYouOnTheStore =>
      'Zumi\'nin sizde nasıl çalıştığını başkalarına söyleyin.';

  @override
  String get shareZumi => 'Zumi\'yi paylaş';

  @override
  String get recommendZumiToAFriend => 'Zumi\'yi bir arkadaşınıza önerin.';

  @override
  String get appearanceLanguage => 'Görünüm ve dil';

  @override
  String get compression => 'Sıkıştırma';

  @override
  String get onDeviceAI => 'Cihazda AI';

  @override
  String get notificationsPrivacy => 'Bildirimler ve gizlilik';

  @override
  String get plansPurchases => 'Planlar ve satın almalar';

  @override
  String get about => 'Hakkında';

  @override
  String get legal => 'Hukuki';

  @override
  String get helpFeedback => 'Yardım ve geri bildirim';

  @override
  String get account => 'Hesap';

  @override
  String get themeAndAppLanguage => 'Tema ve uygulama dili';

  @override
  String get appLanguageAndDirection => 'Uygulama dili ve yönü';

  @override
  String get defaultQualityAndFormat => 'Varsayılan kalite ve format';

  @override
  String get cacheAndStorageUsage => 'Önbellek ve depolama kullanımı';

  @override
  String get aiSettings => 'AI ayarları';

  @override
  String get zumiAssistant => 'Zumi Asistan';

  @override
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere =>
      'Videolarınız için özel bir asistan çok yakında geliyor. Buradan sıkıştırma, düzenleme ve kaydedilmiş videolar hakkında sorular sorabileceksiniz.';

  @override
  String get localModelsAndSmartTools => 'Yerel modeller ve akıllı araçlar';

  @override
  String get exploreLocalModelsAndFutureAIToolsTheseOptionsAreNotActiveYet =>
      'Yerel modelleri ve gelecekteki AI araçlarını keşfedin. Bu seçenekler henüz aktif değil.';

  @override
  String get localModels => 'Yerel modeller';

  @override
  String get browseAndDownloadSupportedModels =>
      'Desteklenen modelleri göz atın ve indirin';

  @override
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere =>
      'Desteklenen bir modeli seçin, bu cihaza indirin ve yüklü modelleri burada yönetin.';

  @override
  String get importAModel => 'Bir model içe aktar';

  @override
  String get useACompatibleModelFromYourFiles =>
      'Dosyalarınızdan uyumlu bir modeli kullanın';

  @override
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt =>
      'Uyumlu bir yerel model dosyası seçin ve kullanmadan önce gereksinimlerini gözden geçirin. ';

  @override
  String get smartFeatures => 'Akıllı özellikler ';

  @override
  String get compressionOrganizationAndSearch =>
      'Sıkıştırma, organizasyon ve arama ';

  @override
  String
  get chooseWhichLocalAISuggestionsToUseForVideoCompressionOrganizationNamingAndSearch =>
      'Video sıkıştırma, organizasyon, adlandırma ve arama için kullanılacak yerel AI önerilerini seçin. ';

  @override
  String get modelPerformance => 'Model performansı ';

  @override
  String get processingAndResourcePreferences => 'İşleme ve kaynak tercihleri ';

  @override
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels =>
      'Desteklenen modeller için işleme arka planını ve kaynak sınırlarını kontrol edin. ';

  @override
  String get conversationSettings => 'Konuşma ayarları ';

  @override
  String get streamingThinkingAndResponseLength =>
      'Akış, düşünme ve yanıt uzunluğu';

  @override
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits =>
      'Asistanın yanıt verme şeklini yapılandırın; akış, düşünme modu, örnekleme ve yanıt sınırları dahil.  ';

  @override
  String get imagesAndAudio => 'Görseller ve ses  ';

  @override
  String get controlMultimodalInputs => 'Çok modlu girdileri kontrol edin  ';

  @override
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos =>
      'Uyumlu modellerin videolarınızdaki seçili görselleri ve sesleri analiz edip edemeyeceğini seçin.  ';

  @override
  String get semanticSearch => 'Semantik arama  ';

  @override
  String get embeddingsAndLocalIndexing => 'Gömümler ve yerel indeksleme  ';

  @override
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning =>
      'Videoları ve anları anlamına göre bulmak için yerel gömme modelini ve arama indeksini yönetin.  ';

  @override
  String get toolsAndStructuredOutput => 'Araçlar ve yapılandırılmış çıktı  ';

  @override
  String get actionsSchemasAndConfirmations => 'Eylemler, şemalar ve onaylar';

  @override
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation =>
      'Desteklenen asistan eylemlerini ve yapılandırılmış yanıtları yönetin. Dosyaları etkileyen eylemler onayınızı gerektirir.';

  @override
  String get models => 'Modeller';

  @override
  String get assistantExperience => 'Asistan deneyimi';

  @override
  String get smartCapabilities => 'Akıllı yetenekler';

  @override
  String get performance => 'Performans';

  @override
  String get yourCompressedVideoHistory => 'Sıkıştırılmış video geçmişiniz';

  @override
  String get completionAndUpdateAlerts =>
      'Tamamlama ve güncelleme bildirimleri';

  @override
  String get yourDataStaysLocal => 'Verileriniz yerel olarak kalır';

  @override
  String get comparePlansAndUpgrade => 'Planları karşılaştırın ve yükseltin';

  @override
  String get paymentMethodsAndBilling => 'Ödeme yöntemleri ve faturalama';

  @override
  String get restoreYourPreviousPurchase =>
      'Önceki satın alımınızı geri yükleyin';

  @override
  String get versionAndBuildDetails => 'Sürüm ve yapı detayları';

  @override
  String get theDeveloperBehindZumi => 'Zumi\'nin arkasındaki geliştirici';

  @override
  String get openSourcePackageLicenses => 'Açık kaynak paket lisansları';

  @override
  String get howDataIsHandled => 'Verilerin nasıl işlendiği';

  @override
  String get rulesForUsingZumi => 'Zumi\'yi kullanma kuralları';

  @override
  String get whatDataWeCollect => 'Hangi verileri topladığımız';

  @override
  String get whyWeNeedPermissions => 'Neden izinlere ihtiyacımız var';

  @override
  String get answersToCommonQuestions => 'Sıkça sorulan sorulara yanıtlar';

  @override
  String get reachTheDeveloperDirectly => 'Geliştiriciye doğrudan ulaşın';

  @override
  String get sendUsYourFeedback => 'Görüşlerinizi bize gönderin';

  @override
  String get pickVideo => 'Video seçin';

  @override
  String get targetSizeMB => 'Hedef boyut (MB)';

  @override
  String get startCompression => 'Sıkıştırmayı başlat';

  @override
  String get pause => 'Duraklat';

  @override
  String get resume => 'Devam ettir';

  @override
  String get viewResult => 'Sonucu görüntüle';

  @override
  String get saveToGallery => 'Galeriye kaydet';

  @override
  String get shareVideo => 'Videoyu paylaş';

  @override
  String get originalSize => 'Orijinal boyut';

  @override
  String get outputSize => 'Çıkış boyutu';

  @override
  String get noCompressedVideosYet => 'Henüz sıkıştırılmış video yok';

  @override
  String get savedToGallery => 'Galeriye kaydedildi';

  @override
  String get enterATargetSizeGreaterThanZero =>
      'Sıfırdan büyük bir hedef boyut girin';

  @override
  String get compressionCancelled => 'Sıkıştırma iptal edildi';

  @override
  String get thisVideoCouldNotReachTheSelectedSizeTryALargerTargetSize =>
      'Bu video seçilen boyuta ulaşamadı. Daha büyük bir hedef boyut deneyin.';

  @override
  String get theSelectedSizeIsTooSmallForThisVideoChooseALargerSize =>
      'Seçilen boyut bu video için çok küçük. Daha büyük bir boyut seçin.';

  @override
  String get originalPreview => 'Orijinal önizleme';

  @override
  String get compressedPreview => 'Sıkıştırılmış önizleme';

  @override
  String get targetPreset => 'Hedef ön ayar';

  @override
  String get customSize => 'Özel boyut';

  @override
  String get previewUnavailable => 'Önizleme mevcut değil';

  @override
  String get advancedControls => 'Gelişmiş kontroller';

  @override
  String get automatic => 'Otomatik';

  @override
  String get maximumResolution => 'Maksimum çözünürlük';

  @override
  String get originalResolution => 'Orijinal çözünürlük';

  @override
  String get maximumFrameRate => 'Maksimum kare hızı';

  @override
  String get audioBitrate => 'Ses bit hızı';

  @override
  String get removeAudio => 'Sesi kaldır';

  @override
  String get videoBitrateCeilingKbps => 'Video bit hızı tavanı (kbps)';

  @override
  String get hdrHandling => 'HDR işleme';

  @override
  String get convertToSDR => 'SDR\'ye dönüştür';

  @override
  String get keepHDRWhenSupported => 'Destekleniyorsa HDR\'yi koru';

  @override
  String get beforeYouStart => 'Başlamadan önce';

  @override
  String get calculatingCompressionPlan => 'Sıkıştırma planı hesaplanıyor…';

  @override
  String get plannedResolution => 'Planlanan çözünürlük';

  @override
  String get plannedVideoBitrate => 'Planlanan video bit hızı';

  @override
  String get plannedAudioBitrate => 'Planlanan ses bit hızı';

  @override
  String
  get reEncodingConvertsAudioToAACStereoDolbyAtmosAndDTSSpatialAudioWillNotBePreserved =>
      'Yeniden kodlama sesi AAC stereo\'ya dönüştürür. Dolby Atmos ve DTS uzamsal ses korunmayacaktır.';

  @override
  String
  get thisTargetIsTooSmallForAUsableVideoIncreaseTheSizeOrLowerOtherLimits =>
      'Bu hedef kullanılabilir bir video için çok küçük. Boyutu artırın veya diğer sınırlamaları düşürün.';

  @override
  String get theSelectedTargetMayReduceVideoQuality =>
      'Seçilen hedef video kalitesini düşürebilir.';

  @override
  String get theSourceIsAlreadyWithinTheSizeLimit =>
      'Kaynak zaten boyut sınırı içerisinde.';

  @override
  String get enterABitrateOfAtLeast150KbpsOrLeaveBlankForAutomatic =>
      'En az 150 kbps bir bit hızı girin veya otomatik için boş bırakın.';

  @override
  String get enterAnEvenResolutionFrom240To16384OrLeaveBlankForAutomatic =>
      '240 ile 16384 arasında çift sayı çözünürlük girin veya otomatik için boş bırakın.';

  @override
  String get videoPosition => 'Video konumu';

  @override
  String
  get aPreviousCompressionWasInterruptedItsTemporaryFilesWereCleanedUpYouCanSelectTheVideoAndTryAgain =>
      'Önceki sıkıştırma işlemine ara verildi. Geçici dosyalar temizlendi; videoyu seçip tekrar deneyebilirsiniz.';

  @override
  String get dismiss => 'Kapat';

  @override
  String get clearHistory => 'Geçmişi temizle';

  @override
  String get removeAllHistoryEntriesSavedVideosWillRemainOnYourDevice =>
      'Tüm geçmiş kayıtları silinsin mi? Kaydedilen videolar cihazınızda kalacaktır. ';

  @override
  String get attempts => 'Denemeler ';

  @override
  String get targetSize => 'Hedef boyut ';

  @override
  String get outputResolution => 'Çıkış çözünürlüğü ';

  @override
  String get thisVideoCouldNotBeReadChooseAnotherFile =>
      'Bu video okunamadı. Başka bir dosya seçin. ';

  @override
  String get theEncodedVideoFailedVerificationYourOriginalVideoWasNotChanged =>
      'Kodlanmış video doğrulamadan geçemedi. Orijinal videonuz değiştirilmedi. ';

  @override
  String
  get thisDeviceCannotEncodeTheSelectedResolutionOrFrameRateLowerThatSettingAndTryAgain =>
      'Bu cihaz seçilen çözünürlüğü veya kare hızını kodlayamaz. Bu ayarı düşürün ve tekrar deneyin. ';

  @override
  String
  get thisDeviceCannotDecodeThisAudioFormatForCompressionRemoveAudioOrUseASupportedSource =>
      'Bu cihaz sıkıştırma için bu ses formatını çözümleyemez. Sesi kaldırın veya desteklenen bir kaynak kullanın.';

  @override
  String
  get thisDeviceCannotDecodeThisVideoFormatOrProfileForCompressionChooseAnotherSourceOrDevice =>
      'Bu cihaz bu video formatını veya sıkıştırma profilini çözemiyor. Başka bir kaynak veya cihaz seçin.';

  @override
  String get theExportedMP4IsNotReadyForStreamingTryAnotherVideoOrDevice =>
      'Dışa aktarılan MP4 akış için hazır değil. Başka bir video veya cihaz deneyin.';

  @override
  String get thereIsNotEnoughFreeStorageToCompressThisVideo =>
      'Bu videoyu sıkıştırmak için yeterli boş depolama alanı yok.';

  @override
  String get thisDeviceCannotProcessTheSelectedHDRModeTryConvertingToSDR =>
      'Bu cihaz seçilen HDR modunu işleyemiyor. SDR\'ye dönüştürmeyi deneyin.';

  @override
  String get compressionCouldNotBeCompletedTryAnotherSettingOrVideo =>
      'Sıkıştırma tamamlanamadı. Başka bir ayar veya video deneyin.';

  @override
  String get appIdentity => 'Uygulama kimliği';

  @override
  String get appName => 'Uygulama adı';

  @override
  String get packageName => 'Paket adı';

  @override
  String get version => 'Sürüm';

  @override
  String get buildNumber => 'Derleme numarası';

  @override
  String get deviceAndBuild => 'Cihaz ve derleme';

  @override
  String get operatingSystem => 'İşletim sistemi';

  @override
  String get osVersion => 'OS sürümü';

  @override
  String get buildMode => 'Derleme modu';

  @override
  String get debug => 'Hata ayıklama';

  @override
  String get release => 'Yayın';

  @override
  String get builtWith => 'İle inşa edildi';

  @override
  String get installation => 'Kurulum';

  @override
  String get installedFrom => 'Şuradan yüklendi';

  @override
  String get installedOn => 'Şu tarihte yüklendi';

  @override
  String get updatedOn => 'Şu tarihte güncellendi';

  @override
  String get unavailable => 'Kullanılamıyor';

  @override
  String get projectAndSupport => 'Proje ve destek';

  @override
  String get githubRepository => 'GitHub deposu';

  @override
  String get viewZumiSourceCode => 'Zumi kaynak kodunu görüntüle';

  @override
  String get readTheREADME => 'README dosyasını oku';

  @override
  String get learnAboutZumiOnGitHub => 'GitHub\'da Zumi hakkında bilgi edinin';

  @override
  String get reportAnIssue => 'Bir sorun bildirin';

  @override
  String get viewAndCreateGitHubIssues =>
      'GitHub sorunlarını görüntüle ve oluştur';

  @override
  String get latestRelease => 'En son sürüm';

  @override
  String get viewReleasesAndDownloads => 'Sürümleri ve indirmeleri görüntüle';

  @override
  String get supportZumi => 'Zumi\'yi destekleyin';

  @override
  String get openTheOfficialDonationPage => 'Resmî bağış sayfasını aç';

  @override
  String get couldNotOpenTheLinkPleaseTryAgain =>
      'Bağlantı açılamadı. Lütfen tekrar deneyin.';

  @override
  String get developer => 'Geliştirici';

  @override
  String get mostafaSensei => 'Mostafa Sensei';

  @override
  String get githubProfile => 'GitHub profili';

  @override
  String get seeProjectsAndContactDetails =>
      'Projeleri ve iletişim bilgilerini gör';

  @override
  String get maintenanceInProgress => 'Bakım devam ediyor';

  @override
  String get zumiIsTemporarilyUnavailablePleaseTryAgainLater =>
      'Zumi geçici olarak kullanılamıyor. Lütfen daha sonra tekrar deneyin.';

  @override
  String get comingSoon => 'Yakında';

  @override
  String get pleaseWait => 'Lütfen bekleyin...';

  @override
  String get cancel => 'İptal';

  @override
  String get openSourceLicenses => 'Açık kaynak lisansları';

  @override
  String get languageName => 'Türkçe';

  @override
  String get countryCode => 'TR';

  @override
  String countryName(String countryCode) {
    String _temp0 = intl.Intl.selectLogic(countryCode, {
      'AE': 'Birleşik Arap Emirlikleri',
      'AT': 'Avusturya',
      'AU': 'Avustralya',
      'BE': 'Belçika',
      'BH': 'Bahreyn',
      'BR': 'Brezilya',
      'CA': 'Kanada',
      'CH': 'İsviçre',
      'CN': 'Çin',
      'DE': 'Almanya',
      'DJ': 'Cibuti',
      'DZ': 'Cezayir',
      'EG': 'Mısır',
      'ES': 'İspanya',
      'FR': 'Fransa',
      'GB': 'Birleşik Krallık',
      'HK': 'Çin Hong Kong ÖİB',
      'ID': 'Endonezya',
      'IQ': 'Irak',
      'IT': 'İtalya',
      'JO': 'Ürdün',
      'JP': 'Japonya',
      'KM': 'Komorlar',
      'KR': 'Güney Kore',
      'KW': 'Kuveyt',
      'LB': 'Lübnan',
      'LY': 'Libya',
      'MA': 'Fas',
      'MR': 'Moritanya',
      'MX': 'Meksika',
      'NL': 'Hollanda',
      'OM': 'Umman',
      'PL': 'Polonya',
      'PS': 'Filistin Bölgeleri',
      'PT': 'Portekiz',
      'QA': 'Katar',
      'RU': 'Rusya',
      'SA': 'Suudi Arabistan',
      'SD': 'Sudan',
      'SE': 'İsveç',
      'SG': 'Singapur',
      'SO': 'Somali',
      'SY': 'Suriye',
      'TH': 'Tayland',
      'TN': 'Tunus',
      'TR': 'Türkiye',
      'TW': 'Tayvan',
      'US': 'Amerika Birleşik Devletleri',
      'VN': 'Vietnam',
      'YE': 'Yemen',
      'other': 'Ülke',
    });
    return '$_temp0';
  }
}
