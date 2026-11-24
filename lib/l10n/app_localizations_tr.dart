// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get asagi => 'Asagi';

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
  String get welcomeToAsagi => 'Asagi\'ye hoş geldiniz';

  @override
  String get learnHowAsagiCompressesYourVideosWithoutEverLeavingYourPhone =>
      'Asagi\'nin videolarınızı telefonunuzu hiç terk etmeden nasıl sıkıştırdığını öğrenin.';

  @override
  String get signIn => 'Giriş yap';

  @override
  String get chooseAVideo => 'Bir video seç';

  @override
  String get preparingSelectedVideo => 'Getting your video ready';

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
  String get aboutAsagi => 'Asagi Hakkında';

  @override
  String get versionBuildNumberAndApplicationDetails =>
      'Sürüm, yapı numarası ve uygulama detayları.';

  @override
  String get aboutTheDeveloper => 'Geliştirici Hakkında';

  @override
  String get theDeveloperAndToolsBehindAsagi =>
      'Asagi\'nin arkasındaki geliştirici ve araçlar.';

  @override
  String get openSourcePackagesBundledWithAsagi =>
      'Asagi ile birlikte gelen açık kaynak paketler.';

  @override
  String get privacyPolicy => 'Gizlilik politikası';

  @override
  String get howAsagiHandlesYourVideosAndData =>
      'Asagi videolarınızı ve verilerinizi nasıl işliyor.';

  @override
  String get termsOfService => 'Hizmet şartları';

  @override
  String get dataSafety => 'Veri güvenliği';

  @override
  String get summaryOfTheDataAsagiCollectsAndWhy =>
      'Asagi\'nin topladığı verilerin özeti ve neden toplandığı.  ';

  @override
  String get permissions => 'İzinler  ';

  @override
  String get runtimePermissionsAsagiRequestsAndWhyEachIsNeeded =>
      'Asagi\'nin istediği çalışma zamanı izinleri ve her birinin neden gerekli olduğu.  ';

  @override
  String get faq => 'SSS  ';

  @override
  String get support => 'Destek  ';

  @override
  String get sendFeedback => 'Geri bildirim gönder  ';

  @override
  String get reportAProblemOrSuggestAnImprovement =>
      'Bir sorunu bildirin veya geliştirme önerin.  ';

  @override
  String get profile => 'Profil';

  @override
  String get deleteAccount => 'Hesabı sil';

  @override
  String get permanentlyRemoveYourAccountAndItsServerSideData =>
      'Hesabınızı ve sunucu tarafı verilerini kalıcı olarak kaldırın.';

  @override
  String get rateAsagi => 'Asagi\'yi değerlendirin';

  @override
  String get tellOthersHowAsagiWorkedForYouOnTheStore =>
      'Asagi\'nin sizde nasıl çalıştığını başkalarına söyleyin.';

  @override
  String get shareAsagi => 'Asagi\'yi paylaş';

  @override
  String get recommendAsagiToAFriend => 'Asagi\'yi bir arkadaşınıza önerin.';

  @override
  String get appearanceLanguage => 'Görünüm ve dil';

  @override
  String get compression => 'Sıkıştırma';

  @override
  String get onDeviceAI => 'Cihazda AI';

  @override
  String get notificationsPrivacy => 'Bildirimler ve gizlilik';

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
  String get asagiAssistant => 'Asagi Asistan';

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
  String get versionAndBuildDetails => 'Sürüm ve yapı detayları';

  @override
  String get theDeveloperBehindAsagi => 'Asagi\'nin arkasındaki geliştirici';

  @override
  String get openSourcePackageLicenses => 'Açık kaynak paket lisansları';

  @override
  String get howDataIsHandled => 'Verilerin nasıl işlendiği';

  @override
  String get rulesForUsingAsagi => 'Asagi\'yi kullanma kuralları';

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
  String get viewAsagiSourceCode => 'Asagi kaynak kodunu görüntüle';

  @override
  String get readTheREADME => 'README dosyasını oku';

  @override
  String get learnAboutAsagiOnGitHub =>
      'GitHub\'dan Asagi hakkında bilgi edinin';

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
  String get supportAsagi => 'Asagi\'yi destekleyin';

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
  String get asagiIsTemporarilyUnavailablePleaseTryAgainLater =>
      'Asagi geçici olarak kullanılamıyor. Lütfen daha sonra tekrar deneyin.';

  @override
  String get comingSoon => 'Yakında';

  @override
  String get loading => 'Loading…';

  @override
  String get pleaseWait => 'Lütfen bekleyin...';

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
      'Asagi is free and open source. Video processing runs on your device. You retain ownership of your content. The app is provided without a guarantee of any particular output size or quality.';

  @override
  String get termsCopiedToClipboard => 'Terms copied to clipboard';

  @override
  String get termsAcceptanceLicenseTitle => '1. Acceptance & License';

  @override
  String get termsAcceptanceLicenseBody =>
      'Asagi is free and open source. All features are available to everyone, and video processing runs locally on your devices.';

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
  String get appSupportDescription => 'Get help using Asagi.';

  @override
  String get appTermsDescription =>
      'Terms for using the free, open source Asagi app.';
}

/// The translations for Turkish, as used in Turkey (`tr_TR`).
class AppLocalizationsTrTr extends AppLocalizationsTr {
  AppLocalizationsTrTr() : super('tr_TR');

  @override
  String get asagi => 'Asagi';

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
  String get welcomeToAsagi => 'Asagi\'ye hoş geldiniz';

  @override
  String get learnHowAsagiCompressesYourVideosWithoutEverLeavingYourPhone =>
      'Asagi\'nin videolarınızı telefonunuzu hiç terk etmeden nasıl sıkıştırdığını öğrenin.';

  @override
  String get signIn => 'Giriş yap';

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
  String get aboutAsagi => 'Asagi Hakkında';

  @override
  String get versionBuildNumberAndApplicationDetails =>
      'Sürüm, yapı numarası ve uygulama detayları.';

  @override
  String get aboutTheDeveloper => 'Geliştirici Hakkında';

  @override
  String get theDeveloperAndToolsBehindAsagi =>
      'Asagi\'nin arkasındaki geliştirici ve araçlar.';

  @override
  String get openSourcePackagesBundledWithAsagi =>
      'Asagi ile birlikte gelen açık kaynak paketler.';

  @override
  String get privacyPolicy => 'Gizlilik politikası';

  @override
  String get howAsagiHandlesYourVideosAndData =>
      'Asagi videolarınızı ve verilerinizi nasıl işliyor.';

  @override
  String get termsOfService => 'Hizmet şartları';

  @override
  String get dataSafety => 'Veri güvenliği';

  @override
  String get summaryOfTheDataAsagiCollectsAndWhy =>
      'Asagi\'nin topladığı verilerin özeti ve neden toplandığı.  ';

  @override
  String get permissions => 'İzinler  ';

  @override
  String get runtimePermissionsAsagiRequestsAndWhyEachIsNeeded =>
      'Asagi\'nin istediği çalışma zamanı izinleri ve her birinin neden gerekli olduğu.  ';

  @override
  String get faq => 'SSS  ';

  @override
  String get support => 'Destek  ';

  @override
  String get sendFeedback => 'Geri bildirim gönder  ';

  @override
  String get reportAProblemOrSuggestAnImprovement =>
      'Bir sorunu bildirin veya geliştirme önerin.  ';

  @override
  String get profile => 'Profil';

  @override
  String get deleteAccount => 'Hesabı sil';

  @override
  String get permanentlyRemoveYourAccountAndItsServerSideData =>
      'Hesabınızı ve sunucu tarafı verilerini kalıcı olarak kaldırın.';

  @override
  String get rateAsagi => 'Asagi\'yi değerlendirin';

  @override
  String get tellOthersHowAsagiWorkedForYouOnTheStore =>
      'Asagi\'nin sizde nasıl çalıştığını başkalarına söyleyin.';

  @override
  String get shareAsagi => 'Asagi\'yi paylaş';

  @override
  String get recommendAsagiToAFriend => 'Asagi\'yi bir arkadaşınıza önerin.';

  @override
  String get appearanceLanguage => 'Görünüm ve dil';

  @override
  String get compression => 'Sıkıştırma';

  @override
  String get onDeviceAI => 'Cihazda AI';

  @override
  String get notificationsPrivacy => 'Bildirimler ve gizlilik';

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
  String get asagiAssistant => 'Asagi Asistan';

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
  String get versionAndBuildDetails => 'Sürüm ve yapı detayları';

  @override
  String get theDeveloperBehindAsagi => 'Asagi\'nin arkasındaki geliştirici';

  @override
  String get openSourcePackageLicenses => 'Açık kaynak paket lisansları';

  @override
  String get howDataIsHandled => 'Verilerin nasıl işlendiği';

  @override
  String get rulesForUsingAsagi => 'Asagi\'yi kullanma kuralları';

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
  String get viewAsagiSourceCode => 'Asagi kaynak kodunu görüntüle';

  @override
  String get readTheREADME => 'README dosyasını oku';

  @override
  String get learnAboutAsagiOnGitHub =>
      'GitHub\'dan Asagi hakkında bilgi edinin';

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
  String get supportAsagi => 'Asagi\'yi destekleyin';

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
  String get asagiIsTemporarilyUnavailablePleaseTryAgainLater =>
      'Asagi geçici olarak kullanılamıyor. Lütfen daha sonra tekrar deneyin.';

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

  @override
  String get termsOfServiceFullText =>
      'Asagi is free and open source. Video processing runs on your device. You retain ownership of your content. The app is provided without a guarantee of any particular output size or quality.';

  @override
  String get termsAcceptanceLicenseBody =>
      'Asagi is free and open source. All features are available to everyone, and video processing runs locally on your devices.';

  @override
  String get compressionHelpDescription =>
      'Answers to common questions about video compression.';

  @override
  String get appSupportDescription => 'Get help using Asagi.';

  @override
  String get appTermsDescription =>
      'Terms for using the free, open source Asagi app.';
}
