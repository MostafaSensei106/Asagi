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
  String fileSavedToDcim(String fileName) {
    return 'Dosya galeriye kaydedildi: $fileName';
  }

  @override
  String fileSavedToDocuments(String fileName) {
    return 'Dosya belgeler klasörüne kaydedildi: $fileName';
  }

  @override
  String get fileAlreadySaved => 'Dosya zaten kaydedilmiş';

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
  String get error_address_line_cant_be_empty => 'Adres satırı boş olamaz';

  @override
  String get error_address_line_too_long => 'Adres satırı çok uzun';

  @override
  String get error_address_invalid_special_characters =>
      'Özel karakterlere izin verilmiyor';

  @override
  String get error_address_emoji_not_allowed => 'Emojiye izin verilmiyor';

  @override
  String get error_city_cant_be_empty => 'Şehir boş olamaz';

  @override
  String get error_city_too_long => 'Şehir adı çok uzun';

  @override
  String get error_city_invalid_special_characters =>
      'Şehir geçersiz özel karakterler içeriyor';

  @override
  String get error_address_label_cant_be_empty => 'Adres etiketi boş olamaz';

  @override
  String get error_address_label_too_long => 'Adres etiketi çok uzun';

  @override
  String get error_email_cant_be_empty => 'Email boş olamaz';

  @override
  String get error_email_not_invalid_format => 'Geçersiz email formatı';

  @override
  String get error_email_contains_invalid_characters =>
      'E-posta geçersiz karakterler içeriyor';

  @override
  String get error_email_must_contain_at_symbol => 'E-posta @ içermelidir';

  @override
  String get error_email_must_be_in_lowercase =>
      'E-posta küçük harflerle olmalıdır';

  @override
  String get error_arabic_not_allowed => 'Arap karakterlerine izin verilmiyor';

  @override
  String get error_email_emoji_not_allowed =>
      'E-postada emoji kullanımına izin verilmiyor';

  @override
  String get error_phone_number_cant_be_empty => 'Telefon numarası boş olamaz';

  @override
  String get error_phone_number_invalid => 'Geçersiz telefon numarası';

  @override
  String get error_phone_number_min_length =>
      'Telefon numarası en az 11 hane olmalıdır';

  @override
  String get error_name_cant_be_empty => 'İsim boş olamaz';

  @override
  String get error_name_invalid => 'Geçersiz isim';

  @override
  String get error_name_too_short_at_least_3_characters =>
      'İsim en az 3 karakter olmalıdır';

  @override
  String get error_name_too_long_maximum_20_characters =>
      'İsim 20 karakteri geçemez';

  @override
  String get error_name_invalid_special_characters =>
      'İsim geçersiz özel karakterler içeriyor';

  @override
  String get error_name_emoji_not_allowed =>
      'İsimde emoji kullanımına izin verilmiyor';

  @override
  String get error_password_cant_be_empty => 'Şifre boş olamaz';

  @override
  String
  get error_password_must_contain_uppercase_lowercase_number_and_special_character =>
      'Şifre büyük harf, küçük harf, rakam ve özel karakter içermelidir';

  @override
  String get error_password_must_be_at_least_8_characters_long =>
      'Şifre en az 8 karakter uzunluğunda olmalıdır';

  @override
  String get noInternetConnection => 'İnternet bağlantısı yok';

  @override
  String get internetConnectionRestored => 'İnternet bağlantısı geri yüklendi';

  @override
  String get retry => 'Tekrar dene';

  @override
  String get cancel => 'İptal';

  @override
  String get confirm => 'Onayla';

  @override
  String get pleaseWait => 'Lütfen bekleyin...';

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
  String get openSourceLicenses => 'Açık kaynak lisansları';

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
  String get settingsGroupAppearance => 'Görünüm ve dil';

  @override
  String get settingsGroupCompression => 'Sıkıştırma';

  @override
  String get settingsGroupAi => 'Cihazda AI';

  @override
  String get settingsGroupPrivacy => 'Bildirimler ve gizlilik';

  @override
  String get settingsGroupPlans => 'Planlar ve satın almalar';

  @override
  String get settingsGroupAbout => 'Hakkında';

  @override
  String get settingsGroupLegal => 'Hukuki';

  @override
  String get settingsGroupHelp => 'Yardım ve geri bildirim';

  @override
  String get settingsGroupAccount => 'Hesap';

  @override
  String get settingsAppearanceSubtitle => 'Tema ve uygulama dili';

  @override
  String get settingsLanguageSubtitle => 'Uygulama dili ve yönü';

  @override
  String get settingsCompressionSubtitle => 'Varsayılan kalite ve format';

  @override
  String get settingsStorageSubtitle => 'Önbellek ve depolama kullanımı';

  @override
  String get aiSettings => 'AI ayarları';

  @override
  String get zumiAssistant => 'Zumi Asistan';

  @override
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere =>
      'Videolarınız için özel bir asistan çok yakında geliyor. Buradan sıkıştırma, düzenleme ve kaydedilmiş videolar hakkında sorular sorabileceksiniz.';

  @override
  String get settingsAiSubtitle => 'Yerel modeller ve akıllı araçlar';

  @override
  String get exploreLocalModelsAndFutureAiToolsTheseOptionsAreNotActiveYet =>
      'Yerel modelleri ve gelecekteki AI araçlarını keşfedin. Bu seçenekler henüz aktif değil.';

  @override
  String get localModels => 'Yerel modeller';

  @override
  String get aiModelsSubtitle => 'Desteklenen modelleri göz atın ve indirin';

  @override
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere =>
      'Desteklenen bir modeli seçin, bu cihaza indirin ve yüklü modelleri burada yönetin.';

  @override
  String get importAModel => 'Bir model içe aktar';

  @override
  String get aiImportSubtitle => 'Dosyalarınızdan uyumlu bir modeli kullanın';

  @override
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt =>
      'Uyumlu bir yerel model dosyası seçin ve kullanmadan önce gereksinimlerini gözden geçirin. ';

  @override
  String get smartFeatures => 'Akıllı özellikler ';

  @override
  String get aiFeaturesSubtitle => 'Sıkıştırma, organizasyon ve arama ';

  @override
  String
  get chooseWhichLocalAiSuggestionsToUseForVideoCompressionOrganizationNamingAndSearch =>
      'Video sıkıştırma, organizasyon, adlandırma ve arama için kullanılacak yerel AI önerilerini seçin. ';

  @override
  String get modelPerformance => 'Model performansı ';

  @override
  String get aiRuntimeSubtitle => 'İşleme ve kaynak tercihleri ';

  @override
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels =>
      'Desteklenen modeller için işleme arka planını ve kaynak sınırlarını kontrol edin. ';

  @override
  String get conversationSettings => 'Konuşma ayarları ';

  @override
  String get aiChatSettingsSubtitle => 'Akış, düşünme ve yanıt uzunluğu';

  @override
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits =>
      'Asistanın yanıt verme şeklini yapılandırın; akış, düşünme modu, örnekleme ve yanıt sınırları dahil.  ';

  @override
  String get imagesAndAudio => 'Görseller ve ses  ';

  @override
  String get aiMediaSubtitle => 'Çok modlu girdileri kontrol edin  ';

  @override
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos =>
      'Uyumlu modellerin videolarınızdaki seçili görselleri ve sesleri analiz edip edemeyeceğini seçin.  ';

  @override
  String get semanticSearch => 'Semantik arama  ';

  @override
  String get aiSearchSubtitle => 'Gömümler ve yerel indeksleme  ';

  @override
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning =>
      'Videoları ve anları anlamına göre bulmak için yerel gömme modelini ve arama indeksini yönetin.  ';

  @override
  String get toolsAndStructuredOutput => 'Araçlar ve yapılandırılmış çıktı  ';

  @override
  String get aiToolsSubtitle => 'Eylemler, şemalar ve onaylar';

  @override
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation =>
      'Desteklenen asistan eylemlerini ve yapılandırılmış yanıtları yönetin. Dosyaları etkileyen eylemler onayınızı gerektirir.';

  @override
  String get aiGroupModels => 'Modeller';

  @override
  String get aiGroupExperience => 'Asistan deneyimi';

  @override
  String get aiGroupCapabilities => 'Akıllı yetenekler';

  @override
  String get aiGroupPerformance => 'Performans';

  @override
  String get compressionHistorySubtitle => 'Sıkıştırılmış video geçmişiniz';

  @override
  String get settingsNotificationsSubtitle =>
      'Tamamlama ve güncelleme bildirimleri';

  @override
  String get settingsPrivacySubtitle => 'Verileriniz yerel olarak kalır';

  @override
  String get plansSubtitle => 'Planları karşılaştırın ve yükseltin';

  @override
  String get plansMethodsSubtitle => 'Ödeme yöntemleri ve faturalama';

  @override
  String get plansRestoreSubtitle => 'Önceki satın alımınızı geri yükleyin';

  @override
  String get aboutAppSubtitle => 'Sürüm ve yapı detayları';

  @override
  String get aboutDeveloperSubtitle => 'Zumi\'nin arkasındaki geliştirici';

  @override
  String get aboutLicensesSubtitle => 'Açık kaynak paket lisansları';

  @override
  String get legalPrivacySubtitle => 'Verilerin nasıl işlendiği';

  @override
  String get legalTermsSubtitle => 'Zumi\'yi kullanma kuralları';

  @override
  String get legalDataSafetySubtitle => 'Hangi verileri topladığımız';

  @override
  String get legalPermissionsSubtitle => 'Neden izinlere ihtiyacımız var';

  @override
  String get helpFaqSubtitle => 'Sıkça sorulan sorulara yanıtlar';

  @override
  String get helpSupportSubtitle => 'Geliştiriciye doğrudan ulaşın';

  @override
  String get helpFeedbackSubtitle => 'Görüşlerinizi bize gönderin';

  @override
  String get compressionPickVideo => 'Video seçin';

  @override
  String get compressionTargetMb => 'Hedef boyut (MB)';

  @override
  String get compressionStart => 'Sıkıştırmayı başlat';

  @override
  String get compressionPause => 'Duraklat';

  @override
  String get compressionResume => 'Devam ettir';

  @override
  String get compressionViewResult => 'Sonucu görüntüle';

  @override
  String get compressionSaveGallery => 'Galeriye kaydet';

  @override
  String get compressionShare => 'Videoyu paylaş';

  @override
  String get compressionOriginalSize => 'Orijinal boyut';

  @override
  String get compressionOutputSize => 'Çıkış boyutu';

  @override
  String get compressionEmptyHistory => 'Henüz sıkıştırılmış video yok';

  @override
  String get compressionSavedGallery => 'Galeriye kaydedildi';

  @override
  String get compressionInvalidTarget => 'Sıfırdan büyük bir hedef boyut girin';

  @override
  String get compressionCancelled => 'Sıkıştırma iptal edildi';

  @override
  String get compressionTargetExceeded =>
      'Bu video seçilen boyuta ulaşamadı. Daha büyük bir hedef boyut deneyin.';

  @override
  String get compressionTargetInfeasible =>
      'Seçilen boyut bu video için çok küçük. Daha büyük bir boyut seçin.';

  @override
  String get compressionPreviewBefore => 'Orijinal önizleme';

  @override
  String get compressionPreviewAfter => 'Sıkıştırılmış önizleme';

  @override
  String get compressionPreset => 'Hedef ön ayar';

  @override
  String get compressionCustom => 'Özel boyut';

  @override
  String get compressionPreviewUnavailable => 'Önizleme mevcut değil';

  @override
  String get compressionAdvanced => 'Gelişmiş kontroller';

  @override
  String get compressionAutomatic => 'Otomatik';

  @override
  String get compressionResolutionLimit => 'Maksimum çözünürlük';

  @override
  String get compressionSourceResolution => 'Orijinal çözünürlük';

  @override
  String get compressionFrameRateLimit => 'Maksimum kare hızı';

  @override
  String get compressionAudioQuality => 'Ses bit hızı';

  @override
  String get compressionRemoveAudio => 'Sesi kaldır';

  @override
  String get compressionVideoBitrateLimit => 'Video bit hızı tavanı (kbps)';

  @override
  String get compressionHdrPolicy => 'HDR işleme';

  @override
  String get compressionHdrConvert => 'SDR\'ye dönüştür';

  @override
  String get compressionHdrPreserve => 'Destekleniyorsa HDR\'yi koru';

  @override
  String get compressionPlanPreview => 'Başlamadan önce';

  @override
  String get compressionPlanLoading => 'Sıkıştırma planı hesaplanıyor…';

  @override
  String get compressionPlanResolution => 'Planlanan çözünürlük';

  @override
  String get compressionPlanVideoBitrate => 'Planlanan video bit hızı';

  @override
  String get compressionPlanAudioBitrate => 'Planlanan ses bit hızı';

  @override
  String get compressionAudioConversionNote =>
      'Yeniden kodlama sesi AAC stereo\'ya dönüştürür. Dolby Atmos ve DTS uzamsal ses korunmayacaktır.';

  @override
  String get compressionPlanTooSmall =>
      'Bu hedef kullanılabilir bir video için çok küçük. Boyutu artırın veya diğer sınırlamaları düşürün.';

  @override
  String get compressionPlanLowQuality =>
      'Seçilen hedef video kalitesini düşürebilir.';

  @override
  String get compressionPlanAlreadyWithinLimit =>
      'Kaynak zaten boyut sınırı içerisinde.';

  @override
  String get compressionInvalidBitrate =>
      'En az 150 kbps bir bit hızı girin veya otomatik için boş bırakın.';

  @override
  String get compressionInvalidResolution =>
      '240 ile 16384 arasında çift sayı çözünürlük girin veya otomatik için boş bırakın.';

  @override
  String get compressionSeek => 'Video konumu';

  @override
  String get compressionInterrupted =>
      'Önceki sıkıştırma işlemine ara verildi. Geçici dosyalar temizlendi; videoyu seçip tekrar deneyebilirsiniz.';

  @override
  String get compressionDismiss => 'Kapat';

  @override
  String get compressionClearHistory => 'Geçmişi temizle';

  @override
  String get compressionClearHistoryConfirm =>
      'Tüm geçmiş kayıtları silinsin mi? Kaydedilen videolar cihazınızda kalacaktır. ';

  @override
  String get compressionAttempts => 'Denemeler ';

  @override
  String get compressionTargetSize => 'Hedef boyut ';

  @override
  String get compressionOutputResolution => 'Çıkış çözünürlüğü ';

  @override
  String get compressionInvalidVideo =>
      'Bu video okunamadı. Başka bir dosya seçin. ';

  @override
  String get compressionInvalidOutput =>
      'Kodlanmış video doğrulamadan geçemedi. Orijinal videonuz değiştirilmedi. ';

  @override
  String get compressionEncoderUnsupported =>
      'Bu cihaz seçilen çözünürlüğü veya kare hızını kodlayamaz. Bu ayarı düşürün ve tekrar deneyin. ';

  @override
  String get compressionAudioDecoderUnsupported =>
      'Bu cihaz sıkıştırma için bu ses formatını çözümleyemez. Sesi kaldırın veya desteklenen bir kaynak kullanın.';

  @override
  String get compressionVideoDecoderUnsupported =>
      'Bu cihaz bu video formatını veya sıkıştırma profilini çözemiyor. Başka bir kaynak veya cihaz seçin.';

  @override
  String get compressionMp4NotStreamable =>
      'Dışa aktarılan MP4 akış için hazır değil. Başka bir video veya cihaz deneyin.';

  @override
  String get compressionNoSpace =>
      'Bu videoyu sıkıştırmak için yeterli boş depolama alanı yok.';

  @override
  String get compressionHdrUnsupported =>
      'Bu cihaz seçilen HDR modunu işleyemiyor. SDR\'ye dönüştürmeyi deneyin.';

  @override
  String get compressionGeneralFailure =>
      'Sıkıştırma tamamlanamadı. Başka bir ayar veya video deneyin.';

  @override
  String get aboutIdentitySection => 'Uygulama kimliği';

  @override
  String get aboutAppName => 'Uygulama adı';

  @override
  String get aboutPackageName => 'Paket adı';

  @override
  String get aboutVersion => 'Sürüm';

  @override
  String get aboutBuildNumber => 'Derleme numarası';

  @override
  String get aboutEnvironmentSection => 'Cihaz ve derleme';

  @override
  String get aboutOperatingSystem => 'İşletim sistemi';

  @override
  String get aboutOsVersion => 'OS sürümü';

  @override
  String get aboutBuildMode => 'Derleme modu';

  @override
  String get aboutDebug => 'Hata ayıklama';

  @override
  String get aboutRelease => 'Yayın';

  @override
  String get aboutToolchainSection => 'İle inşa edildi';

  @override
  String get aboutInstallationSection => 'Kurulum';

  @override
  String get aboutInstaller => 'Şuradan yüklendi';

  @override
  String get aboutInstalledOn => 'Şu tarihte yüklendi';

  @override
  String get aboutUpdatedOn => 'Şu tarihte güncellendi';

  @override
  String get aboutUnavailable => 'Kullanılamıyor';

  @override
  String get aboutProjectSection => 'Proje ve destek';

  @override
  String get aboutRepository => 'GitHub deposu';

  @override
  String get aboutRepositorySubtitle => 'Zumi kaynak kodunu görüntüle';

  @override
  String get aboutReadme => 'README dosyasını oku';

  @override
  String get aboutReadmeSubtitle => 'GitHub\'da Zumi hakkında bilgi edinin';

  @override
  String get aboutIssues => 'Bir sorun bildirin';

  @override
  String get aboutIssuesSubtitle => 'GitHub sorunlarını görüntüle ve oluştur';

  @override
  String get aboutLatestRelease => 'En son sürüm';

  @override
  String get aboutLatestReleaseSubtitle => 'Sürümleri ve indirmeleri görüntüle';

  @override
  String get aboutDonate => 'Zumi\'yi destekleyin';

  @override
  String get aboutDonateSubtitle => 'Resmî bağış sayfasını aç';

  @override
  String get aboutLinkError => 'Bağlantı açılamadı. Lütfen tekrar deneyin.';

  @override
  String get aboutDeveloperSection => 'Geliştirici';

  @override
  String get aboutDeveloperName => 'Mostafa Sensei';

  @override
  String get aboutDeveloperProfile => 'GitHub profili';

  @override
  String get aboutDeveloperProfileSubtitle =>
      'Projeleri ve iletişim bilgilerini gör';

  @override
  String get maintenanceInProgress => 'Bakım devam ediyor';

  @override
  String get maintenanceMessage =>
      'Zumi geçici olarak kullanılamıyor. Lütfen daha sonra tekrar deneyin.';

  @override
  String get comingSoon => 'Yakında';

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
  String fileSavedToDcim(String fileName) {
    return 'Dosya galeriye kaydedildi: $fileName';
  }

  @override
  String fileSavedToDocuments(String fileName) {
    return 'Dosya belgeler klasörüne kaydedildi: $fileName';
  }

  @override
  String get fileAlreadySaved => 'Dosya zaten kaydedilmiş';

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
  String get error_address_line_cant_be_empty => 'Adres satırı boş olamaz';

  @override
  String get error_address_line_too_long => 'Adres satırı çok uzun';

  @override
  String get error_address_invalid_special_characters =>
      'Özel karakterlere izin verilmiyor';

  @override
  String get error_address_emoji_not_allowed => 'Emojiye izin verilmiyor';

  @override
  String get error_city_cant_be_empty => 'Şehir boş olamaz';

  @override
  String get error_city_too_long => 'Şehir adı çok uzun';

  @override
  String get error_city_invalid_special_characters =>
      'Şehir geçersiz özel karakterler içeriyor';

  @override
  String get error_address_label_cant_be_empty => 'Adres etiketi boş olamaz';

  @override
  String get error_address_label_too_long => 'Adres etiketi çok uzun';

  @override
  String get error_email_cant_be_empty => 'Email boş olamaz';

  @override
  String get error_email_not_invalid_format => 'Geçersiz email formatı';

  @override
  String get error_email_contains_invalid_characters =>
      'E-posta geçersiz karakterler içeriyor';

  @override
  String get error_email_must_contain_at_symbol => 'E-posta @ içermelidir';

  @override
  String get error_email_must_be_in_lowercase =>
      'E-posta küçük harflerle olmalıdır';

  @override
  String get error_arabic_not_allowed => 'Arap karakterlerine izin verilmiyor';

  @override
  String get error_email_emoji_not_allowed =>
      'E-postada emoji kullanımına izin verilmiyor';

  @override
  String get error_phone_number_cant_be_empty => 'Telefon numarası boş olamaz';

  @override
  String get error_phone_number_invalid => 'Geçersiz telefon numarası';

  @override
  String get error_phone_number_min_length =>
      'Telefon numarası en az 11 hane olmalıdır';

  @override
  String get error_name_cant_be_empty => 'İsim boş olamaz';

  @override
  String get error_name_invalid => 'Geçersiz isim';

  @override
  String get error_name_too_short_at_least_3_characters =>
      'İsim en az 3 karakter olmalıdır';

  @override
  String get error_name_too_long_maximum_20_characters =>
      'İsim 20 karakteri geçemez';

  @override
  String get error_name_invalid_special_characters =>
      'İsim geçersiz özel karakterler içeriyor';

  @override
  String get error_name_emoji_not_allowed =>
      'İsimde emoji kullanımına izin verilmiyor';

  @override
  String get error_password_cant_be_empty => 'Şifre boş olamaz';

  @override
  String
  get error_password_must_contain_uppercase_lowercase_number_and_special_character =>
      'Şifre büyük harf, küçük harf, rakam ve özel karakter içermelidir';

  @override
  String get error_password_must_be_at_least_8_characters_long =>
      'Şifre en az 8 karakter uzunluğunda olmalıdır';

  @override
  String get noInternetConnection => 'İnternet bağlantısı yok';

  @override
  String get internetConnectionRestored => 'İnternet bağlantısı geri yüklendi';

  @override
  String get retry => 'Tekrar dene';

  @override
  String get cancel => 'İptal';

  @override
  String get confirm => 'Onayla';

  @override
  String get pleaseWait => 'Lütfen bekleyin...';

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
  String get openSourceLicenses => 'Açık kaynak lisansları';

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
  String get settingsGroupAppearance => 'Görünüm ve dil';

  @override
  String get settingsGroupCompression => 'Sıkıştırma';

  @override
  String get settingsGroupAi => 'Cihazda AI';

  @override
  String get settingsGroupPrivacy => 'Bildirimler ve gizlilik';

  @override
  String get settingsGroupPlans => 'Planlar ve satın almalar';

  @override
  String get settingsGroupAbout => 'Hakkında';

  @override
  String get settingsGroupLegal => 'Hukuki';

  @override
  String get settingsGroupHelp => 'Yardım ve geri bildirim';

  @override
  String get settingsGroupAccount => 'Hesap';

  @override
  String get settingsAppearanceSubtitle => 'Tema ve uygulama dili';

  @override
  String get settingsLanguageSubtitle => 'Uygulama dili ve yönü';

  @override
  String get settingsCompressionSubtitle => 'Varsayılan kalite ve format';

  @override
  String get settingsStorageSubtitle => 'Önbellek ve depolama kullanımı';

  @override
  String get aiSettings => 'AI ayarları';

  @override
  String get zumiAssistant => 'Zumi Asistan';

  @override
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere =>
      'Videolarınız için özel bir asistan çok yakında geliyor. Buradan sıkıştırma, düzenleme ve kaydedilmiş videolar hakkında sorular sorabileceksiniz.';

  @override
  String get settingsAiSubtitle => 'Yerel modeller ve akıllı araçlar';

  @override
  String get exploreLocalModelsAndFutureAiToolsTheseOptionsAreNotActiveYet =>
      'Yerel modelleri ve gelecekteki AI araçlarını keşfedin. Bu seçenekler henüz aktif değil.';

  @override
  String get localModels => 'Yerel modeller';

  @override
  String get aiModelsSubtitle => 'Desteklenen modelleri göz atın ve indirin';

  @override
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere =>
      'Desteklenen bir modeli seçin, bu cihaza indirin ve yüklü modelleri burada yönetin.';

  @override
  String get importAModel => 'Bir model içe aktar';

  @override
  String get aiImportSubtitle => 'Dosyalarınızdan uyumlu bir modeli kullanın';

  @override
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt =>
      'Uyumlu bir yerel model dosyası seçin ve kullanmadan önce gereksinimlerini gözden geçirin. ';

  @override
  String get smartFeatures => 'Akıllı özellikler ';

  @override
  String get aiFeaturesSubtitle => 'Sıkıştırma, organizasyon ve arama ';

  @override
  String
  get chooseWhichLocalAiSuggestionsToUseForVideoCompressionOrganizationNamingAndSearch =>
      'Video sıkıştırma, organizasyon, adlandırma ve arama için kullanılacak yerel AI önerilerini seçin. ';

  @override
  String get modelPerformance => 'Model performansı ';

  @override
  String get aiRuntimeSubtitle => 'İşleme ve kaynak tercihleri ';

  @override
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels =>
      'Desteklenen modeller için işleme arka planını ve kaynak sınırlarını kontrol edin. ';

  @override
  String get conversationSettings => 'Konuşma ayarları ';

  @override
  String get aiChatSettingsSubtitle => 'Akış, düşünme ve yanıt uzunluğu';

  @override
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits =>
      'Asistanın yanıt verme şeklini yapılandırın; akış, düşünme modu, örnekleme ve yanıt sınırları dahil.  ';

  @override
  String get imagesAndAudio => 'Görseller ve ses  ';

  @override
  String get aiMediaSubtitle => 'Çok modlu girdileri kontrol edin  ';

  @override
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos =>
      'Uyumlu modellerin videolarınızdaki seçili görselleri ve sesleri analiz edip edemeyeceğini seçin.  ';

  @override
  String get semanticSearch => 'Semantik arama  ';

  @override
  String get aiSearchSubtitle => 'Gömümler ve yerel indeksleme  ';

  @override
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning =>
      'Videoları ve anları anlamına göre bulmak için yerel gömme modelini ve arama indeksini yönetin.  ';

  @override
  String get toolsAndStructuredOutput => 'Araçlar ve yapılandırılmış çıktı  ';

  @override
  String get aiToolsSubtitle => 'Eylemler, şemalar ve onaylar';

  @override
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation =>
      'Desteklenen asistan eylemlerini ve yapılandırılmış yanıtları yönetin. Dosyaları etkileyen eylemler onayınızı gerektirir.';

  @override
  String get aiGroupModels => 'Modeller';

  @override
  String get aiGroupExperience => 'Asistan deneyimi';

  @override
  String get aiGroupCapabilities => 'Akıllı yetenekler';

  @override
  String get aiGroupPerformance => 'Performans';

  @override
  String get compressionHistorySubtitle => 'Sıkıştırılmış video geçmişiniz';

  @override
  String get settingsNotificationsSubtitle =>
      'Tamamlama ve güncelleme bildirimleri';

  @override
  String get settingsPrivacySubtitle => 'Verileriniz yerel olarak kalır';

  @override
  String get plansSubtitle => 'Planları karşılaştırın ve yükseltin';

  @override
  String get plansMethodsSubtitle => 'Ödeme yöntemleri ve faturalama';

  @override
  String get plansRestoreSubtitle => 'Önceki satın alımınızı geri yükleyin';

  @override
  String get aboutAppSubtitle => 'Sürüm ve yapı detayları';

  @override
  String get aboutDeveloperSubtitle => 'Zumi\'nin arkasındaki geliştirici';

  @override
  String get aboutLicensesSubtitle => 'Açık kaynak paket lisansları';

  @override
  String get legalPrivacySubtitle => 'Verilerin nasıl işlendiği';

  @override
  String get legalTermsSubtitle => 'Zumi\'yi kullanma kuralları';

  @override
  String get legalDataSafetySubtitle => 'Hangi verileri topladığımız';

  @override
  String get legalPermissionsSubtitle => 'Neden izinlere ihtiyacımız var';

  @override
  String get helpFaqSubtitle => 'Sıkça sorulan sorulara yanıtlar';

  @override
  String get helpSupportSubtitle => 'Geliştiriciye doğrudan ulaşın';

  @override
  String get helpFeedbackSubtitle => 'Görüşlerinizi bize gönderin';

  @override
  String get compressionPickVideo => 'Video seçin';

  @override
  String get compressionTargetMb => 'Hedef boyut (MB)';

  @override
  String get compressionStart => 'Sıkıştırmayı başlat';

  @override
  String get compressionPause => 'Duraklat';

  @override
  String get compressionResume => 'Devam ettir';

  @override
  String get compressionViewResult => 'Sonucu görüntüle';

  @override
  String get compressionSaveGallery => 'Galeriye kaydet';

  @override
  String get compressionShare => 'Videoyu paylaş';

  @override
  String get compressionOriginalSize => 'Orijinal boyut';

  @override
  String get compressionOutputSize => 'Çıkış boyutu';

  @override
  String get compressionEmptyHistory => 'Henüz sıkıştırılmış video yok';

  @override
  String get compressionSavedGallery => 'Galeriye kaydedildi';

  @override
  String get compressionInvalidTarget => 'Sıfırdan büyük bir hedef boyut girin';

  @override
  String get compressionCancelled => 'Sıkıştırma iptal edildi';

  @override
  String get compressionTargetExceeded =>
      'Bu video seçilen boyuta ulaşamadı. Daha büyük bir hedef boyut deneyin.';

  @override
  String get compressionTargetInfeasible =>
      'Seçilen boyut bu video için çok küçük. Daha büyük bir boyut seçin.';

  @override
  String get compressionPreviewBefore => 'Orijinal önizleme';

  @override
  String get compressionPreviewAfter => 'Sıkıştırılmış önizleme';

  @override
  String get compressionPreset => 'Hedef ön ayar';

  @override
  String get compressionCustom => 'Özel boyut';

  @override
  String get compressionPreviewUnavailable => 'Önizleme mevcut değil';

  @override
  String get compressionAdvanced => 'Gelişmiş kontroller';

  @override
  String get compressionAutomatic => 'Otomatik';

  @override
  String get compressionResolutionLimit => 'Maksimum çözünürlük';

  @override
  String get compressionSourceResolution => 'Orijinal çözünürlük';

  @override
  String get compressionFrameRateLimit => 'Maksimum kare hızı';

  @override
  String get compressionAudioQuality => 'Ses bit hızı';

  @override
  String get compressionRemoveAudio => 'Sesi kaldır';

  @override
  String get compressionVideoBitrateLimit => 'Video bit hızı tavanı (kbps)';

  @override
  String get compressionHdrPolicy => 'HDR işleme';

  @override
  String get compressionHdrConvert => 'SDR\'ye dönüştür';

  @override
  String get compressionHdrPreserve => 'Destekleniyorsa HDR\'yi koru';

  @override
  String get compressionPlanPreview => 'Başlamadan önce';

  @override
  String get compressionPlanLoading => 'Sıkıştırma planı hesaplanıyor…';

  @override
  String get compressionPlanResolution => 'Planlanan çözünürlük';

  @override
  String get compressionPlanVideoBitrate => 'Planlanan video bit hızı';

  @override
  String get compressionPlanAudioBitrate => 'Planlanan ses bit hızı';

  @override
  String get compressionAudioConversionNote =>
      'Yeniden kodlama sesi AAC stereo\'ya dönüştürür. Dolby Atmos ve DTS uzamsal ses korunmayacaktır.';

  @override
  String get compressionPlanTooSmall =>
      'Bu hedef kullanılabilir bir video için çok küçük. Boyutu artırın veya diğer sınırlamaları düşürün.';

  @override
  String get compressionPlanLowQuality =>
      'Seçilen hedef video kalitesini düşürebilir.';

  @override
  String get compressionPlanAlreadyWithinLimit =>
      'Kaynak zaten boyut sınırı içerisinde.';

  @override
  String get compressionInvalidBitrate =>
      'En az 150 kbps bir bit hızı girin veya otomatik için boş bırakın.';

  @override
  String get compressionInvalidResolution =>
      '240 ile 16384 arasında çift sayı çözünürlük girin veya otomatik için boş bırakın.';

  @override
  String get compressionSeek => 'Video konumu';

  @override
  String get compressionInterrupted =>
      'Önceki sıkıştırma işlemine ara verildi. Geçici dosyalar temizlendi; videoyu seçip tekrar deneyebilirsiniz.';

  @override
  String get compressionDismiss => 'Kapat';

  @override
  String get compressionClearHistory => 'Geçmişi temizle';

  @override
  String get compressionClearHistoryConfirm =>
      'Tüm geçmiş kayıtları silinsin mi? Kaydedilen videolar cihazınızda kalacaktır. ';

  @override
  String get compressionAttempts => 'Denemeler ';

  @override
  String get compressionTargetSize => 'Hedef boyut ';

  @override
  String get compressionOutputResolution => 'Çıkış çözünürlüğü ';

  @override
  String get compressionInvalidVideo =>
      'Bu video okunamadı. Başka bir dosya seçin. ';

  @override
  String get compressionInvalidOutput =>
      'Kodlanmış video doğrulamadan geçemedi. Orijinal videonuz değiştirilmedi. ';

  @override
  String get compressionEncoderUnsupported =>
      'Bu cihaz seçilen çözünürlüğü veya kare hızını kodlayamaz. Bu ayarı düşürün ve tekrar deneyin. ';

  @override
  String get compressionAudioDecoderUnsupported =>
      'Bu cihaz sıkıştırma için bu ses formatını çözümleyemez. Sesi kaldırın veya desteklenen bir kaynak kullanın.';

  @override
  String get compressionVideoDecoderUnsupported =>
      'Bu cihaz bu video formatını veya sıkıştırma profilini çözemiyor. Başka bir kaynak veya cihaz seçin.';

  @override
  String get compressionMp4NotStreamable =>
      'Dışa aktarılan MP4 akış için hazır değil. Başka bir video veya cihaz deneyin.';

  @override
  String get compressionNoSpace =>
      'Bu videoyu sıkıştırmak için yeterli boş depolama alanı yok.';

  @override
  String get compressionHdrUnsupported =>
      'Bu cihaz seçilen HDR modunu işleyemiyor. SDR\'ye dönüştürmeyi deneyin.';

  @override
  String get compressionGeneralFailure =>
      'Sıkıştırma tamamlanamadı. Başka bir ayar veya video deneyin.';

  @override
  String get aboutIdentitySection => 'Uygulama kimliği';

  @override
  String get aboutAppName => 'Uygulama adı';

  @override
  String get aboutPackageName => 'Paket adı';

  @override
  String get aboutVersion => 'Sürüm';

  @override
  String get aboutBuildNumber => 'Derleme numarası';

  @override
  String get aboutEnvironmentSection => 'Cihaz ve derleme';

  @override
  String get aboutOperatingSystem => 'İşletim sistemi';

  @override
  String get aboutOsVersion => 'OS sürümü';

  @override
  String get aboutBuildMode => 'Derleme modu';

  @override
  String get aboutDebug => 'Hata ayıklama';

  @override
  String get aboutRelease => 'Yayın';

  @override
  String get aboutToolchainSection => 'İle inşa edildi';

  @override
  String get aboutInstallationSection => 'Kurulum';

  @override
  String get aboutInstaller => 'Şuradan yüklendi';

  @override
  String get aboutInstalledOn => 'Şu tarihte yüklendi';

  @override
  String get aboutUpdatedOn => 'Şu tarihte güncellendi';

  @override
  String get aboutUnavailable => 'Kullanılamıyor';

  @override
  String get aboutProjectSection => 'Proje ve destek';

  @override
  String get aboutRepository => 'GitHub deposu';

  @override
  String get aboutRepositorySubtitle => 'Zumi kaynak kodunu görüntüle';

  @override
  String get aboutReadme => 'README dosyasını oku';

  @override
  String get aboutReadmeSubtitle => 'GitHub\'da Zumi hakkında bilgi edinin';

  @override
  String get aboutIssues => 'Bir sorun bildirin';

  @override
  String get aboutIssuesSubtitle => 'GitHub sorunlarını görüntüle ve oluştur';

  @override
  String get aboutLatestRelease => 'En son sürüm';

  @override
  String get aboutLatestReleaseSubtitle => 'Sürümleri ve indirmeleri görüntüle';

  @override
  String get aboutDonate => 'Zumi\'yi destekleyin';

  @override
  String get aboutDonateSubtitle => 'Resmî bağış sayfasını aç';

  @override
  String get aboutLinkError => 'Bağlantı açılamadı. Lütfen tekrar deneyin.';

  @override
  String get aboutDeveloperSection => 'Geliştirici';

  @override
  String get aboutDeveloperName => 'Mostafa Sensei';

  @override
  String get aboutDeveloperProfile => 'GitHub profili';

  @override
  String get aboutDeveloperProfileSubtitle =>
      'Projeleri ve iletişim bilgilerini gör';

  @override
  String get maintenanceInProgress => 'Bakım devam ediyor';

  @override
  String get maintenanceMessage =>
      'Zumi geçici olarak kullanılamıyor. Lütfen daha sonra tekrar deneyin.';

  @override
  String get comingSoon => 'Yakında';

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
