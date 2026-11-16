// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get zumi => 'Zumi';

  @override
  String get downloadFile => 'Unduh File';

  @override
  String fileOpenedInBrowser(String fileName) {
    return 'File dibuka di browser: $fileName';
  }

  @override
  String fileSavedToGallery(String fileName) {
    return 'File disimpan ke galeri: $fileName';
  }

  @override
  String fileSavedToDocuments(String fileName) {
    return 'File disimpan ke dokumen: $fileName';
  }

  @override
  String get fileIsAlreadySaved => 'File sudah disimpan';

  @override
  String get error => 'Kesalahan';

  @override
  String get info => 'Info';

  @override
  String get success => 'Sukses';

  @override
  String get warning => 'Peringatan';

  @override
  String get paid => 'Berbayar';

  @override
  String get unpaid => 'Belum Dibayar';

  @override
  String get partial => 'Sebagian';

  @override
  String get addressLineCannotBeEmpty => 'Baris alamat tidak boleh kosong';

  @override
  String get addressLineIsTooLong => 'Baris alamat terlalu panjang';

  @override
  String get specialCharactersAreNotAllowed =>
      'Karakter khusus tidak diperbolehkan';

  @override
  String get emojisAreNotAllowed => 'Emoji tidak diperbolehkan';

  @override
  String get cityCannotBeEmpty => 'Kota tidak boleh kosong';

  @override
  String get cityNameIsTooLong => 'Nama kota terlalu panjang';

  @override
  String get cityContainsInvalidSpecialCharacters =>
      'Kota mengandung karakter khusus yang tidak valid';

  @override
  String get addressLabelCannotBeEmpty => 'Label alamat tidak boleh kosong';

  @override
  String get addressLabelIsTooLong => 'Label alamat terlalu panjang';

  @override
  String get emailCannotBeEmpty => 'Email tidak boleh kosong';

  @override
  String get invalidEmailFormat => 'Format email tidak valid';

  @override
  String get emailContainsInvalidCharacters =>
      'Email mengandung karakter tidak valid';

  @override
  String get emailMustContain => 'Email harus mengandung @';

  @override
  String get emailMustBeInLowercase => 'Email harus dalam huruf kecil';

  @override
  String get arabicCharactersAreNotAllowed =>
      'Karakter Arab tidak diperbolehkan';

  @override
  String get emojisAreNotAllowedInEmail =>
      'Emoji tidak diperbolehkan dalam email';

  @override
  String get phoneNumberCannotBeEmpty => 'Nomor telepon tidak boleh kosong';

  @override
  String get invalidPhoneNumber => 'Nomor telepon tidak valid';

  @override
  String get phoneNumberMustBeAtLeast11Digits =>
      'Nomor telepon harus terdiri dari minimal 11 digit';

  @override
  String get nameCannotBeEmpty => 'Nama tidak boleh kosong';

  @override
  String get invalidName => 'Nama tidak valid';

  @override
  String get nameMustBeAtLeast3Characters =>
      'Nama harus terdiri dari minimal 3 karakter';

  @override
  String get nameCannotExceed20Characters =>
      'Nama tidak boleh melebihi 20 karakter';

  @override
  String get nameContainsInvalidSpecialCharacters =>
      'Nama mengandung karakter khusus yang tidak valid';

  @override
  String get emojisAreNotAllowedInName =>
      'Emoji tidak diperbolehkan dalam nama';

  @override
  String get passwordCannotBeEmpty => 'Kata sandi tidak boleh kosong';

  @override
  String get passwordMustContainUppercaseLowercaseNumberAndSpecialCharacter =>
      'Kata sandi harus mengandung huruf besar, huruf kecil, angka, dan karakter khusus';

  @override
  String get passwordMustBeAtLeast8CharactersLong =>
      'Kata sandi harus minimal 8 karakter';

  @override
  String get noInternetConnection => 'Tidak ada koneksi internet';

  @override
  String get internetConnectionRestored => 'Koneksi internet dipulihkan';

  @override
  String get retry => 'Coba lagi';

  @override
  String get confirm => 'Konfirmasi';

  @override
  String get ok => 'OK';

  @override
  String get compressVideosPrivatelyOnYourDevice =>
      'Kompres video secara privat di perangkat Anda.';

  @override
  String get welcomeToZumi => 'Selamat datang di Zumi';

  @override
  String get learnHowZumiCompressesYourVideosWithoutEverLeavingYourPhone =>
      'Pelajari cara Zumi mengompres video Anda tanpa harus meninggalkan ponsel.';

  @override
  String get signIn => 'Masuk';

  @override
  String get signInToSyncYourPlanAndKeepYourPurchasesAvailableOnEveryDevice =>
      'Masuk untuk menyinkronkan rencana Anda dan menjaga pembelian tetap tersedia di setiap perangkat.';

  @override
  String get chooseAVideo => 'Pilih video';

  @override
  String get pickAVideoFromYourGalleryToStartCompressing =>
      'Pilih video dari galeri Anda untuk mulai mengompres.';

  @override
  String get compressionSetup => 'Pengaturan kompresi';

  @override
  String get chooseResolutionBitrateAndOutputFormatBeforeYouStart =>
      'Pilih resolusi, bitrate, dan format keluaran sebelum Anda mulai.';

  @override
  String get compressing => 'Kompresi';

  @override
  String get followTheLiveProgressOfYourCompressionJob =>
      'Ikuti perkembangan langsung dari pekerjaan kompresi Anda.';

  @override
  String get compressionResult => 'Hasil kompresi';

  @override
  String get compareTheBeforeAndAfterSizeThenSaveOrShareTheResult =>
      'Bandingkan ukuran sebelum dan sesudah, lalu simpan atau bagikan hasilnya.';

  @override
  String get compressionHistory => 'Riwayat kompresi';

  @override
  String get reviewTheVideosYouHaveCompressedOnThisDevice =>
      'Tinjau video yang telah Anda kompres di perangkat ini.';

  @override
  String get settings => 'Pengaturan';

  @override
  String get appearance => 'Tampilan';

  @override
  String get themeColorSchemeAndMotionPreferences =>
      'Tema, skema warna, dan preferensi gerakan.';

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
  String get language => 'Bahasa';

  @override
  String get appLanguageAndTextDirection => 'Bahasa aplikasi dan arah teks.';

  @override
  String get compressionDefaults => 'Default kompresi';

  @override
  String get defaultResolutionBitrateAndOutputFormat =>
      'Resolusi, bitrate, dan format keluaran default.';

  @override
  String get storageCleanup => 'Penyimpanan & pembersihan';

  @override
  String get storageUsageCacheSizeAndTemporaryFileCleanup =>
      'Penggunaan penyimpanan, ukuran cache, dan pembersihan file sementara.';

  @override
  String get notifications => 'Notifikasi';

  @override
  String get jobCompletionAndProductUpdateNotifications =>
      'Notifikasi penyelesaian pekerjaan dan pembaruan produk.';

  @override
  String get privacy => 'Privasi';

  @override
  String get onDeviceProcessingLocalLogsAndOptionalCrashReports =>
      'Pemrosesan di perangkat, log lokal, dan laporan kerusakan opsional.';

  @override
  String get aboutZumi => 'Tentang Zumi';

  @override
  String get versionBuildNumberAndApplicationDetails =>
      'Versi, nomor build, dan detail aplikasi.';

  @override
  String get aboutTheDeveloper => 'Tentang pengembang';

  @override
  String get theDeveloperAndToolsBehindZumi =>
      'Pengembang dan alat di balik Zumi.';

  @override
  String get openSourcePackagesBundledWithZumi =>
      'Paket sumber terbuka yang disertakan dengan Zumi.';

  @override
  String get privacyPolicy => 'Kebijakan privasi';

  @override
  String get howZumiHandlesYourVideosAndData =>
      'Bagaimana Zumi menangani video dan data Anda.';

  @override
  String get termsOfService => 'Ketentuan layanan';

  @override
  String get theTermsThatApplyToZumiAndItsPurchases =>
      'Ketentuan yang berlaku untuk Zumi dan pembeliannya.';

  @override
  String get dataSafety => 'Keamanan data';

  @override
  String get summaryOfTheDataZumiCollectsAndWhy =>
      'Ringkasan data yang dikumpulkan Zumi dan alasannya.';

  @override
  String get permissions => 'Izin';

  @override
  String get runtimePermissionsZumiRequestsAndWhyEachIsNeeded =>
      'Izin runtime yang diminta Zumi dan alasan setiap izin dibutuhkan.';

  @override
  String get faq => 'FAQ';

  @override
  String get answersToCommonQuestionsAboutCompressionAndBilling =>
      'Jawaban atas pertanyaan umum tentang kompresi dan penagihan.';

  @override
  String get support => 'Dukungan';

  @override
  String get getHelpWithYourAccountOrAPurchase =>
      'Dapatkan bantuan untuk akun atau pembelian Anda.';

  @override
  String get sendFeedback => 'Kirim masukan';

  @override
  String get reportAProblemOrSuggestAnImprovement =>
      'Lapor masalah atau sarankan perbaikan.';

  @override
  String get plans => 'Rencana';

  @override
  String get comparePlansAndSeeWhatEachOneUnlocks =>
      'Bandingkan rencana dan lihat apa yang dapat dibuka oleh masing-masing.';

  @override
  String get planDetails => 'Detail rencana';

  @override
  String get benefitsLimitsAndPricingForThisPlan =>
      'Manfaat, batasan, dan harga untuk rencana ini.';

  @override
  String get paymentMethods => 'Metode pembayaran';

  @override
  String get supportedWaysToPayIncludingStoreBilling =>
      'Cara pembayaran yang didukung, termasuk penagihan melalui toko.';

  @override
  String get restorePurchases => 'Pulihkan pembelian';

  @override
  String get reApplyAPurchaseMadeOnAnotherDevice =>
      'Terapkan kembali pembelian yang dilakukan di perangkat lain.';

  @override
  String get profile => 'Profil';

  @override
  String get yourIdentityPlanStatusAndAccountPreferences =>
      'Identitas, status paket, dan preferensi akun Anda.';

  @override
  String get deleteAccount => 'Hapus akun';

  @override
  String get permanentlyRemoveYourAccountAndItsServerSideData =>
      'Hapus akun Anda secara permanen beserta data sisi servernya.';

  @override
  String get rateZumi => 'Beri rating Zumi';

  @override
  String get tellOthersHowZumiWorkedForYouOnTheStore =>
      'Beritahu orang lain bagaimana Zumi bekerja untuk Anda di toko.';

  @override
  String get shareZumi => 'Bagikan Zumi';

  @override
  String get recommendZumiToAFriend => 'Rekomendasikan Zumi kepada teman.';

  @override
  String get appearanceLanguage => 'Tampilan & bahasa';

  @override
  String get compression => 'Kompresi';

  @override
  String get onDeviceAI => 'AI di perangkat';

  @override
  String get notificationsPrivacy => 'Notifikasi & privasi';

  @override
  String get plansPurchases => 'Paket & pembelian';

  @override
  String get about => 'Tentang';

  @override
  String get legal => 'Hukum';

  @override
  String get helpFeedback => 'Bantuan & umpan balik';

  @override
  String get account => 'Akun';

  @override
  String get themeAndAppLanguage => 'Tema dan bahasa aplikasi';

  @override
  String get appLanguageAndDirection => 'Bahasa dan arah aplikasi';

  @override
  String get defaultQualityAndFormat => 'Kualitas dan format default';

  @override
  String get cacheAndStorageUsage => 'Penggunaan cache dan penyimpanan';

  @override
  String get aiSettings => 'Pengaturan AI';

  @override
  String get zumiAssistant => 'Asisten Zumi';

  @override
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere =>
      'Asisten pribadi untuk video Anda akan segera hadir. Anda akan dapat menanyakan tentang kompresi, organisasi, dan video yang disimpan di sini.';

  @override
  String get localModelsAndSmartTools => 'Model lokal dan alat pintar';

  @override
  String get exploreLocalModelsAndFutureAIToolsTheseOptionsAreNotActiveYet =>
      'Jelajahi model lokal dan alat AI di masa depan. Opsi ini belum aktif.';

  @override
  String get localModels => 'Model lokal';

  @override
  String get browseAndDownloadSupportedModels =>
      'Jelajahi dan unduh model yang didukung';

  @override
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere =>
      'Pilih model yang didukung, unduh ke perangkat ini, dan kelola model yang terpasang di sini.';

  @override
  String get importAModel => 'Impor model';

  @override
  String get useACompatibleModelFromYourFiles =>
      'Gunakan model yang kompatibel dari file Anda';

  @override
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt =>
      'Pilih file model lokal yang kompatibel dan tinjau persyaratannya sebelum menggunakannya.';

  @override
  String get smartFeatures => 'Fitur pintar';

  @override
  String get compressionOrganizationAndSearch =>
      'Kompresi, organisasi, dan pencarian';

  @override
  String
  get chooseWhichLocalAISuggestionsToUseForVideoCompressionOrganizationNamingAndSearch =>
      'Pilih saran AI lokal mana yang akan digunakan untuk kompresi video, organisasi, penamaan, dan pencarian.';

  @override
  String get modelPerformance => 'Kinerja model';

  @override
  String get processingAndResourcePreferences =>
      'Preferensi pemrosesan dan sumber daya';

  @override
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels =>
      'Kontrol backend pemrosesan dan batas sumber daya untuk model yang didukung.';

  @override
  String get conversationSettings => 'Pengaturan percakapan';

  @override
  String get streamingThinkingAndResponseLength =>
      'Streaming, berpikir, dan panjang respons';

  @override
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits =>
      'Konfigurasikan bagaimana asisten merespons, termasuk streaming, mode berpikir, sampling, dan batasan respons.';

  @override
  String get imagesAndAudio => 'Gambar dan audio';

  @override
  String get controlMultimodalInputs => 'Kendalikan input multimodal';

  @override
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos =>
      'Pilih apakah model yang kompatibel dapat menganalisis gambar dan audio tertentu dari video Anda.';

  @override
  String get semanticSearch => 'Pencarian semantik';

  @override
  String get embeddingsAndLocalIndexing => 'Embedding dan pengindeksan lokal';

  @override
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning =>
      'Kelola model embedding lokal dan indeks pencarian untuk menemukan video dan momen berdasarkan makna.';

  @override
  String get toolsAndStructuredOutput => 'Alat dan output terstruktur';

  @override
  String get actionsSchemasAndConfirmations =>
      'Tindakan, skema, dan konfirmasi';

  @override
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation =>
      'Kelola tindakan asisten yang didukung dan respons terstruktur. Tindakan yang memengaruhi file akan memerlukan konfirmasi Anda.';

  @override
  String get models => 'Model';

  @override
  String get assistantExperience => 'Pengalaman asisten';

  @override
  String get smartCapabilities => 'Kemampuan cerdas';

  @override
  String get performance => 'Kinerja';

  @override
  String get yourCompressedVideoHistory => 'Riwayat video yang dikompres';

  @override
  String get completionAndUpdateAlerts =>
      'Peringatan penyelesaian dan pembaruan';

  @override
  String get yourDataStaysLocal => 'Data Anda tetap lokal';

  @override
  String get comparePlansAndUpgrade => 'Bandingkan paket dan tingkatkan';

  @override
  String get paymentMethodsAndBilling => 'Metode pembayaran dan tagihan';

  @override
  String get restoreYourPreviousPurchase => 'Pulihkan pembelian sebelumnya';

  @override
  String get versionAndBuildDetails => 'Detail versi dan build';

  @override
  String get theDeveloperBehindZumi => 'Pengembang di balik Zumi';

  @override
  String get openSourcePackageLicenses => 'Lisensi paket sumber terbuka';

  @override
  String get howDataIsHandled => 'Bagaimana data ditangani';

  @override
  String get rulesForUsingZumi => 'Aturan penggunaan Zumi';

  @override
  String get whatDataWeCollect => 'Data apa yang kami kumpulkan';

  @override
  String get whyWeNeedPermissions => 'Mengapa kami membutuhkan izin';

  @override
  String get answersToCommonQuestions => 'Jawaban atas pertanyaan umum';

  @override
  String get reachTheDeveloperDirectly => 'Hubungi pengembang secara langsung';

  @override
  String get sendUsYourFeedback => 'Kirimkan umpan balik Anda';

  @override
  String get pickVideo => 'Pilih video';

  @override
  String get targetSizeMB => 'Ukuran target (MB)';

  @override
  String get startCompression => 'Mulai kompresi';

  @override
  String get pause => 'Jeda';

  @override
  String get resume => 'Lanjutkan';

  @override
  String get viewResult => 'Lihat hasil';

  @override
  String get saveToGallery => 'Simpan ke galeri';

  @override
  String get shareVideo => 'Bagikan video';

  @override
  String get originalSize => 'Ukuran asli';

  @override
  String get outputSize => 'Ukuran output';

  @override
  String get noCompressedVideosYet => 'Belum ada video yang dikompresi';

  @override
  String get savedToGallery => 'Disimpan ke galeri';

  @override
  String get enterATargetSizeGreaterThanZero =>
      'Masukkan ukuran target yang lebih besar dari nol';

  @override
  String get compressionCancelled => 'Kompresi dibatalkan';

  @override
  String get thisVideoCouldNotReachTheSelectedSizeTryALargerTargetSize =>
      'Video ini tidak dapat mencapai ukuran yang dipilih. Coba ukuran target yang lebih besar.';

  @override
  String get theSelectedSizeIsTooSmallForThisVideoChooseALargerSize =>
      'Ukuran yang dipilih terlalu kecil untuk video ini. Pilih ukuran yang lebih besar.';

  @override
  String get originalPreview => 'Pratinjau asli';

  @override
  String get compressedPreview => 'Pratinjau terkompresi';

  @override
  String get targetPreset => 'Preset target';

  @override
  String get customSize => 'Ukuran kustom';

  @override
  String get previewUnavailable => 'Pratinjau tidak tersedia';

  @override
  String get advancedControls => 'Kontrol lanjutan';

  @override
  String get automatic => 'Otomatis';

  @override
  String get maximumResolution => 'Resolusi maksimum';

  @override
  String get originalResolution => 'Resolusi asli';

  @override
  String get maximumFrameRate => 'Kecepatan bingkai maksimum';

  @override
  String get audioBitrate => 'Bitrate audio';

  @override
  String get removeAudio => 'Hapus audio';

  @override
  String get videoBitrateCeilingKbps => 'Batas bitrate video (kbps)';

  @override
  String get hdrHandling => 'Penanganan HDR';

  @override
  String get convertToSDR => 'Konversi ke SDR';

  @override
  String get keepHDRWhenSupported => 'Pertahankan HDR bila didukung';

  @override
  String get beforeYouStart => 'Sebelum Anda memulai';

  @override
  String get calculatingCompressionPlan => 'Menghitung rencana kompresi…';

  @override
  String get plannedResolution => 'Resolusi yang direncanakan';

  @override
  String get plannedVideoBitrate => 'Bitrate video yang direncanakan';

  @override
  String get plannedAudioBitrate => 'Bitrate audio yang direncanakan';

  @override
  String
  get reEncodingConvertsAudioToAACStereoDolbyAtmosAndDTSSpatialAudioWillNotBePreserved =>
      'Pengkodean ulang mengubah audio menjadi AAC stereo. Dolby Atmos dan audio spasial DTS tidak akan dipertahankan.';

  @override
  String
  get thisTargetIsTooSmallForAUsableVideoIncreaseTheSizeOrLowerOtherLimits =>
      'Target ini terlalu kecil untuk video yang dapat digunakan. Perbesar ukurannya atau turunkan batas lainnya.';

  @override
  String get theSelectedTargetMayReduceVideoQuality =>
      'Target yang dipilih dapat mengurangi kualitas video.';

  @override
  String get theSourceIsAlreadyWithinTheSizeLimit =>
      'Sumber sudah berada dalam batas ukuran.';

  @override
  String get enterABitrateOfAtLeast150KbpsOrLeaveBlankForAutomatic =>
      'Masukkan bitrate minimal 150 kbps, atau biarkan kosong untuk otomatis';

  @override
  String get enterAnEvenResolutionFrom240To16384OrLeaveBlankForAutomatic =>
      'Masukkan resolusi genap dari 240 hingga 16384, atau biarkan kosong untuk otomatis';

  @override
  String get videoPosition => 'Posisi video';

  @override
  String
  get aPreviousCompressionWasInterruptedItsTemporaryFilesWereCleanedUpYouCanSelectTheVideoAndTryAgain =>
      'Kompresi sebelumnya terhenti. File sementara telah dibersihkan; Anda dapat memilih video dan mencoba lagi.';

  @override
  String get dismiss => 'Tutup';

  @override
  String get clearHistory => 'Bersihkan riwayat';

  @override
  String get removeAllHistoryEntriesSavedVideosWillRemainOnYourDevice =>
      'Hapus semua riwayat? Video yang disimpan akan tetap ada di perangkat Anda.';

  @override
  String get attempts => 'Percobaan';

  @override
  String get targetSize => 'Ukuran target';

  @override
  String get outputResolution => 'Resolusi keluaran';

  @override
  String get thisVideoCouldNotBeReadChooseAnotherFile =>
      'Video ini tidak dapat dibaca. Pilih file lain.';

  @override
  String get theEncodedVideoFailedVerificationYourOriginalVideoWasNotChanged =>
      'Video yang dikodekan gagal diverifikasi. Video asli Anda tidak berubah.';

  @override
  String
  get thisDeviceCannotEncodeTheSelectedResolutionOrFrameRateLowerThatSettingAndTryAgain =>
      'Perangkat ini tidak dapat mengkodekan resolusi atau laju bingkai yang dipilih. Turunkan pengaturan tersebut dan coba lagi.';

  @override
  String
  get thisDeviceCannotDecodeThisAudioFormatForCompressionRemoveAudioOrUseASupportedSource =>
      'Perangkat ini tidak dapat mendekode format audio ini untuk kompresi. Hapus audio atau gunakan sumber yang didukung.';

  @override
  String
  get thisDeviceCannotDecodeThisVideoFormatOrProfileForCompressionChooseAnotherSourceOrDevice =>
      'Perangkat ini tidak dapat mendekode format video ini atau profil untuk kompresi. Pilih sumber atau perangkat lain.';

  @override
  String get theExportedMP4IsNotReadyForStreamingTryAnotherVideoOrDevice =>
      'MP4 yang diekspor belum siap untuk streaming. Coba video atau perangkat lain.';

  @override
  String get thereIsNotEnoughFreeStorageToCompressThisVideo =>
      'Tidak cukup penyimpanan bebas untuk mengompres video ini.';

  @override
  String get thisDeviceCannotProcessTheSelectedHDRModeTryConvertingToSDR =>
      'Perangkat ini tidak dapat memproses mode HDR yang dipilih. Coba konversi ke SDR.';

  @override
  String get compressionCouldNotBeCompletedTryAnotherSettingOrVideo =>
      'Kompresi tidak dapat diselesaikan. Coba pengaturan atau video lain.';

  @override
  String get appIdentity => 'Identitas aplikasi';

  @override
  String get appName => 'Nama aplikasi';

  @override
  String get packageName => 'Nama paket';

  @override
  String get version => 'Versi';

  @override
  String get buildNumber => 'Nomor build';

  @override
  String get deviceAndBuild => 'Perangkat dan build';

  @override
  String get operatingSystem => 'Sistem operasi';

  @override
  String get osVersion => 'Versi OS';

  @override
  String get buildMode => 'Mode build';

  @override
  String get debug => 'Debug';

  @override
  String get release => 'Rilis';

  @override
  String get builtWith => 'Dibuat dengan';

  @override
  String get installation => 'Instalasi';

  @override
  String get installedFrom => 'Terpasang dari';

  @override
  String get installedOn => 'Terpasang pada';

  @override
  String get updatedOn => 'Diperbarui pada';

  @override
  String get unavailable => 'Tidak tersedia';

  @override
  String get projectAndSupport => 'Proyek dan dukungan';

  @override
  String get githubRepository => 'Repositori GitHub';

  @override
  String get viewZumiSourceCode => 'Lihat kode sumber Zumi';

  @override
  String get readTheREADME => 'Baca README';

  @override
  String get learnAboutZumiOnGitHub => 'Pelajari tentang Zumi di GitHub';

  @override
  String get reportAnIssue => 'Laporkan masalah';

  @override
  String get viewAndCreateGitHubIssues => 'Lihat dan buat masalah di GitHub';

  @override
  String get latestRelease => 'Rilis terbaru';

  @override
  String get viewReleasesAndDownloads => 'Lihat rilis dan unduhan';

  @override
  String get supportZumi => 'Dukung Zumi';

  @override
  String get openTheOfficialDonationPage => 'Buka halaman donasi resmi';

  @override
  String get couldNotOpenTheLinkPleaseTryAgain =>
      'Tidak dapat membuka tautan. Silakan coba lagi.';

  @override
  String get developer => 'Pengembang';

  @override
  String get mostafaSensei => 'Mostafa Sensei';

  @override
  String get githubProfile => 'Profil GitHub';

  @override
  String get seeProjectsAndContactDetails => 'Lihat proyek dan detail kontak';

  @override
  String get maintenanceInProgress => 'Pemeliharaan sedang berlangsung';

  @override
  String get zumiIsTemporarilyUnavailablePleaseTryAgainLater =>
      'Zumi sementara tidak tersedia. Silakan coba lagi nanti.';

  @override
  String get comingSoon => 'Segera hadir';

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
  String get pleaseWait => 'Harap tunggu...';

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
  String get cancel => 'Batal';

  @override
  String get clean => 'Clean';

  @override
  String get openSourceLicenses => 'Lisensi sumber terbuka';

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
  String get languageName => 'Bahasa Indonesia';

  @override
  String get countryCode => 'ID';

  @override
  String countryName(String countryCode) {
    String _temp0 = intl.Intl.selectLogic(countryCode, {
      'AE': 'Uni Emirat Arab',
      'AT': 'Austria',
      'AU': 'Australia',
      'BE': 'Belgia',
      'BH': 'Bahrain',
      'BR': 'Brasil',
      'CA': 'Kanada',
      'CH': 'Swiss',
      'CN': 'Tiongkok',
      'DE': 'Jerman',
      'DJ': 'Jibuti',
      'DZ': 'Aljazair',
      'EG': 'Mesir',
      'ES': 'Spanyol',
      'FR': 'Prancis',
      'GB': 'Inggris Raya',
      'HK': 'Hong Kong DAK Tiongkok',
      'ID': 'Indonesia',
      'IQ': 'Irak',
      'IT': 'Italia',
      'JO': 'Yordania',
      'JP': 'Jepang',
      'KM': 'Komoro',
      'KR': 'Korea Selatan',
      'KW': 'Kuwait',
      'LB': 'Lebanon',
      'LY': 'Libya',
      'MA': 'Maroko',
      'MR': 'Mauritania',
      'MX': 'Meksiko',
      'NL': 'Belanda',
      'OM': 'Oman',
      'PL': 'Polandia',
      'PS': 'Wilayah Palestina',
      'PT': 'Portugal',
      'QA': 'Qatar',
      'RU': 'Rusia',
      'SA': 'Arab Saudi',
      'SD': 'Sudan',
      'SE': 'Swedia',
      'SG': 'Singapura',
      'SO': 'Somalia',
      'SY': 'Suriah',
      'TH': 'Thailand',
      'TN': 'Tunisia',
      'TR': 'Turki',
      'TW': 'Taiwan',
      'US': 'Amerika Serikat',
      'VN': 'Vietnam',
      'YE': 'Yaman',
      'other': 'Negara',
    });
    return '$_temp0';
  }
}

/// The translations for Indonesian, as used in Indonesia (`id_ID`).
class AppLocalizationsIdId extends AppLocalizationsId {
  AppLocalizationsIdId() : super('id_ID');

  @override
  String get zumi => 'Zumi';

  @override
  String get downloadFile => 'Unduh File';

  @override
  String fileOpenedInBrowser(String fileName) {
    return 'File dibuka di browser: $fileName';
  }

  @override
  String fileSavedToGallery(String fileName) {
    return 'File disimpan ke galeri: $fileName';
  }

  @override
  String fileSavedToDocuments(String fileName) {
    return 'File disimpan ke dokumen: $fileName';
  }

  @override
  String get fileIsAlreadySaved => 'File sudah disimpan';

  @override
  String get error => 'Kesalahan';

  @override
  String get info => 'Info';

  @override
  String get success => 'Sukses';

  @override
  String get warning => 'Peringatan';

  @override
  String get paid => 'Berbayar';

  @override
  String get unpaid => 'Belum Dibayar';

  @override
  String get partial => 'Sebagian';

  @override
  String get addressLineCannotBeEmpty => 'Baris alamat tidak boleh kosong';

  @override
  String get addressLineIsTooLong => 'Baris alamat terlalu panjang';

  @override
  String get specialCharactersAreNotAllowed =>
      'Karakter khusus tidak diperbolehkan';

  @override
  String get emojisAreNotAllowed => 'Emoji tidak diperbolehkan';

  @override
  String get cityCannotBeEmpty => 'Kota tidak boleh kosong';

  @override
  String get cityNameIsTooLong => 'Nama kota terlalu panjang';

  @override
  String get cityContainsInvalidSpecialCharacters =>
      'Kota mengandung karakter khusus yang tidak valid';

  @override
  String get addressLabelCannotBeEmpty => 'Label alamat tidak boleh kosong';

  @override
  String get addressLabelIsTooLong => 'Label alamat terlalu panjang';

  @override
  String get emailCannotBeEmpty => 'Email tidak boleh kosong';

  @override
  String get invalidEmailFormat => 'Format email tidak valid';

  @override
  String get emailContainsInvalidCharacters =>
      'Email mengandung karakter tidak valid';

  @override
  String get emailMustContain => 'Email harus mengandung @';

  @override
  String get emailMustBeInLowercase => 'Email harus dalam huruf kecil';

  @override
  String get arabicCharactersAreNotAllowed =>
      'Karakter Arab tidak diperbolehkan';

  @override
  String get emojisAreNotAllowedInEmail =>
      'Emoji tidak diperbolehkan dalam email';

  @override
  String get phoneNumberCannotBeEmpty => 'Nomor telepon tidak boleh kosong';

  @override
  String get invalidPhoneNumber => 'Nomor telepon tidak valid';

  @override
  String get phoneNumberMustBeAtLeast11Digits =>
      'Nomor telepon harus terdiri dari minimal 11 digit';

  @override
  String get nameCannotBeEmpty => 'Nama tidak boleh kosong';

  @override
  String get invalidName => 'Nama tidak valid';

  @override
  String get nameMustBeAtLeast3Characters =>
      'Nama harus terdiri dari minimal 3 karakter';

  @override
  String get nameCannotExceed20Characters =>
      'Nama tidak boleh melebihi 20 karakter';

  @override
  String get nameContainsInvalidSpecialCharacters =>
      'Nama mengandung karakter khusus yang tidak valid';

  @override
  String get emojisAreNotAllowedInName =>
      'Emoji tidak diperbolehkan dalam nama';

  @override
  String get passwordCannotBeEmpty => 'Kata sandi tidak boleh kosong';

  @override
  String get passwordMustContainUppercaseLowercaseNumberAndSpecialCharacter =>
      'Kata sandi harus mengandung huruf besar, huruf kecil, angka, dan karakter khusus';

  @override
  String get passwordMustBeAtLeast8CharactersLong =>
      'Kata sandi harus minimal 8 karakter';

  @override
  String get noInternetConnection => 'Tidak ada koneksi internet';

  @override
  String get internetConnectionRestored => 'Koneksi internet dipulihkan';

  @override
  String get retry => 'Coba lagi';

  @override
  String get confirm => 'Konfirmasi';

  @override
  String get ok => 'OK';

  @override
  String get compressVideosPrivatelyOnYourDevice =>
      'Kompres video secara privat di perangkat Anda.';

  @override
  String get welcomeToZumi => 'Selamat datang di Zumi';

  @override
  String get learnHowZumiCompressesYourVideosWithoutEverLeavingYourPhone =>
      'Pelajari cara Zumi mengompres video Anda tanpa harus meninggalkan ponsel.';

  @override
  String get signIn => 'Masuk';

  @override
  String get signInToSyncYourPlanAndKeepYourPurchasesAvailableOnEveryDevice =>
      'Masuk untuk menyinkronkan rencana Anda dan menjaga pembelian tetap tersedia di setiap perangkat.';

  @override
  String get chooseAVideo => 'Pilih video';

  @override
  String get pickAVideoFromYourGalleryToStartCompressing =>
      'Pilih video dari galeri Anda untuk mulai mengompres.';

  @override
  String get compressionSetup => 'Pengaturan kompresi';

  @override
  String get chooseResolutionBitrateAndOutputFormatBeforeYouStart =>
      'Pilih resolusi, bitrate, dan format keluaran sebelum Anda mulai.';

  @override
  String get compressing => 'Kompresi';

  @override
  String get followTheLiveProgressOfYourCompressionJob =>
      'Ikuti perkembangan langsung dari pekerjaan kompresi Anda.';

  @override
  String get compressionResult => 'Hasil kompresi';

  @override
  String get compareTheBeforeAndAfterSizeThenSaveOrShareTheResult =>
      'Bandingkan ukuran sebelum dan sesudah, lalu simpan atau bagikan hasilnya.';

  @override
  String get compressionHistory => 'Riwayat kompresi';

  @override
  String get reviewTheVideosYouHaveCompressedOnThisDevice =>
      'Tinjau video yang telah Anda kompres di perangkat ini.';

  @override
  String get settings => 'Pengaturan';

  @override
  String get appearance => 'Tampilan';

  @override
  String get themeColorSchemeAndMotionPreferences =>
      'Tema, skema warna, dan preferensi gerakan.';

  @override
  String get language => 'Bahasa';

  @override
  String get appLanguageAndTextDirection => 'Bahasa aplikasi dan arah teks.';

  @override
  String get compressionDefaults => 'Default kompresi';

  @override
  String get defaultResolutionBitrateAndOutputFormat =>
      'Resolusi, bitrate, dan format keluaran default.';

  @override
  String get storageCleanup => 'Penyimpanan & pembersihan';

  @override
  String get storageUsageCacheSizeAndTemporaryFileCleanup =>
      'Penggunaan penyimpanan, ukuran cache, dan pembersihan file sementara.';

  @override
  String get notifications => 'Notifikasi';

  @override
  String get jobCompletionAndProductUpdateNotifications =>
      'Notifikasi penyelesaian pekerjaan dan pembaruan produk.';

  @override
  String get privacy => 'Privasi';

  @override
  String get onDeviceProcessingLocalLogsAndOptionalCrashReports =>
      'Pemrosesan di perangkat, log lokal, dan laporan kerusakan opsional.';

  @override
  String get aboutZumi => 'Tentang Zumi';

  @override
  String get versionBuildNumberAndApplicationDetails =>
      'Versi, nomor build, dan detail aplikasi.';

  @override
  String get aboutTheDeveloper => 'Tentang pengembang';

  @override
  String get theDeveloperAndToolsBehindZumi =>
      'Pengembang dan alat di balik Zumi.';

  @override
  String get openSourcePackagesBundledWithZumi =>
      'Paket sumber terbuka yang disertakan dengan Zumi.';

  @override
  String get privacyPolicy => 'Kebijakan privasi';

  @override
  String get howZumiHandlesYourVideosAndData =>
      'Bagaimana Zumi menangani video dan data Anda.';

  @override
  String get termsOfService => 'Ketentuan layanan';

  @override
  String get theTermsThatApplyToZumiAndItsPurchases =>
      'Ketentuan yang berlaku untuk Zumi dan pembeliannya.';

  @override
  String get dataSafety => 'Keamanan data';

  @override
  String get summaryOfTheDataZumiCollectsAndWhy =>
      'Ringkasan data yang dikumpulkan Zumi dan alasannya.';

  @override
  String get permissions => 'Izin';

  @override
  String get runtimePermissionsZumiRequestsAndWhyEachIsNeeded =>
      'Izin runtime yang diminta Zumi dan alasan setiap izin dibutuhkan.';

  @override
  String get faq => 'FAQ';

  @override
  String get answersToCommonQuestionsAboutCompressionAndBilling =>
      'Jawaban atas pertanyaan umum tentang kompresi dan penagihan.';

  @override
  String get support => 'Dukungan';

  @override
  String get getHelpWithYourAccountOrAPurchase =>
      'Dapatkan bantuan untuk akun atau pembelian Anda.';

  @override
  String get sendFeedback => 'Kirim masukan';

  @override
  String get reportAProblemOrSuggestAnImprovement =>
      'Lapor masalah atau sarankan perbaikan.';

  @override
  String get plans => 'Rencana';

  @override
  String get comparePlansAndSeeWhatEachOneUnlocks =>
      'Bandingkan rencana dan lihat apa yang dapat dibuka oleh masing-masing.';

  @override
  String get planDetails => 'Detail rencana';

  @override
  String get benefitsLimitsAndPricingForThisPlan =>
      'Manfaat, batasan, dan harga untuk rencana ini.';

  @override
  String get paymentMethods => 'Metode pembayaran';

  @override
  String get supportedWaysToPayIncludingStoreBilling =>
      'Cara pembayaran yang didukung, termasuk penagihan melalui toko.';

  @override
  String get restorePurchases => 'Pulihkan pembelian';

  @override
  String get reApplyAPurchaseMadeOnAnotherDevice =>
      'Terapkan kembali pembelian yang dilakukan di perangkat lain.';

  @override
  String get profile => 'Profil';

  @override
  String get yourIdentityPlanStatusAndAccountPreferences =>
      'Identitas, status paket, dan preferensi akun Anda.';

  @override
  String get deleteAccount => 'Hapus akun';

  @override
  String get permanentlyRemoveYourAccountAndItsServerSideData =>
      'Hapus akun Anda secara permanen beserta data sisi servernya.';

  @override
  String get rateZumi => 'Beri rating Zumi';

  @override
  String get tellOthersHowZumiWorkedForYouOnTheStore =>
      'Beritahu orang lain bagaimana Zumi bekerja untuk Anda di toko.';

  @override
  String get shareZumi => 'Bagikan Zumi';

  @override
  String get recommendZumiToAFriend => 'Rekomendasikan Zumi kepada teman.';

  @override
  String get appearanceLanguage => 'Tampilan & bahasa';

  @override
  String get compression => 'Kompresi';

  @override
  String get onDeviceAI => 'AI di perangkat';

  @override
  String get notificationsPrivacy => 'Notifikasi & privasi';

  @override
  String get plansPurchases => 'Paket & pembelian';

  @override
  String get about => 'Tentang';

  @override
  String get legal => 'Hukum';

  @override
  String get helpFeedback => 'Bantuan & umpan balik';

  @override
  String get account => 'Akun';

  @override
  String get themeAndAppLanguage => 'Tema dan bahasa aplikasi';

  @override
  String get appLanguageAndDirection => 'Bahasa dan arah aplikasi';

  @override
  String get defaultQualityAndFormat => 'Kualitas dan format default';

  @override
  String get cacheAndStorageUsage => 'Penggunaan cache dan penyimpanan';

  @override
  String get aiSettings => 'Pengaturan AI';

  @override
  String get zumiAssistant => 'Asisten Zumi';

  @override
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere =>
      'Asisten pribadi untuk video Anda akan segera hadir. Anda akan dapat menanyakan tentang kompresi, organisasi, dan video yang disimpan di sini.';

  @override
  String get localModelsAndSmartTools => 'Model lokal dan alat pintar';

  @override
  String get exploreLocalModelsAndFutureAIToolsTheseOptionsAreNotActiveYet =>
      'Jelajahi model lokal dan alat AI di masa depan. Opsi ini belum aktif.';

  @override
  String get localModels => 'Model lokal';

  @override
  String get browseAndDownloadSupportedModels =>
      'Jelajahi dan unduh model yang didukung';

  @override
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere =>
      'Pilih model yang didukung, unduh ke perangkat ini, dan kelola model yang terpasang di sini.';

  @override
  String get importAModel => 'Impor model';

  @override
  String get useACompatibleModelFromYourFiles =>
      'Gunakan model yang kompatibel dari file Anda';

  @override
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt =>
      'Pilih file model lokal yang kompatibel dan tinjau persyaratannya sebelum menggunakannya.';

  @override
  String get smartFeatures => 'Fitur pintar';

  @override
  String get compressionOrganizationAndSearch =>
      'Kompresi, organisasi, dan pencarian';

  @override
  String
  get chooseWhichLocalAISuggestionsToUseForVideoCompressionOrganizationNamingAndSearch =>
      'Pilih saran AI lokal mana yang akan digunakan untuk kompresi video, organisasi, penamaan, dan pencarian.';

  @override
  String get modelPerformance => 'Kinerja model';

  @override
  String get processingAndResourcePreferences =>
      'Preferensi pemrosesan dan sumber daya';

  @override
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels =>
      'Kontrol backend pemrosesan dan batas sumber daya untuk model yang didukung.';

  @override
  String get conversationSettings => 'Pengaturan percakapan';

  @override
  String get streamingThinkingAndResponseLength =>
      'Streaming, berpikir, dan panjang respons';

  @override
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits =>
      'Konfigurasikan bagaimana asisten merespons, termasuk streaming, mode berpikir, sampling, dan batasan respons.';

  @override
  String get imagesAndAudio => 'Gambar dan audio';

  @override
  String get controlMultimodalInputs => 'Kendalikan input multimodal';

  @override
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos =>
      'Pilih apakah model yang kompatibel dapat menganalisis gambar dan audio tertentu dari video Anda.';

  @override
  String get semanticSearch => 'Pencarian semantik';

  @override
  String get embeddingsAndLocalIndexing => 'Embedding dan pengindeksan lokal';

  @override
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning =>
      'Kelola model embedding lokal dan indeks pencarian untuk menemukan video dan momen berdasarkan makna.';

  @override
  String get toolsAndStructuredOutput => 'Alat dan output terstruktur';

  @override
  String get actionsSchemasAndConfirmations =>
      'Tindakan, skema, dan konfirmasi';

  @override
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation =>
      'Kelola tindakan asisten yang didukung dan respons terstruktur. Tindakan yang memengaruhi file akan memerlukan konfirmasi Anda.';

  @override
  String get models => 'Model';

  @override
  String get assistantExperience => 'Pengalaman asisten';

  @override
  String get smartCapabilities => 'Kemampuan cerdas';

  @override
  String get performance => 'Kinerja';

  @override
  String get yourCompressedVideoHistory => 'Riwayat video yang dikompres';

  @override
  String get completionAndUpdateAlerts =>
      'Peringatan penyelesaian dan pembaruan';

  @override
  String get yourDataStaysLocal => 'Data Anda tetap lokal';

  @override
  String get comparePlansAndUpgrade => 'Bandingkan paket dan tingkatkan';

  @override
  String get paymentMethodsAndBilling => 'Metode pembayaran dan tagihan';

  @override
  String get restoreYourPreviousPurchase => 'Pulihkan pembelian sebelumnya';

  @override
  String get versionAndBuildDetails => 'Detail versi dan build';

  @override
  String get theDeveloperBehindZumi => 'Pengembang di balik Zumi';

  @override
  String get openSourcePackageLicenses => 'Lisensi paket sumber terbuka';

  @override
  String get howDataIsHandled => 'Bagaimana data ditangani';

  @override
  String get rulesForUsingZumi => 'Aturan penggunaan Zumi';

  @override
  String get whatDataWeCollect => 'Data apa yang kami kumpulkan';

  @override
  String get whyWeNeedPermissions => 'Mengapa kami membutuhkan izin';

  @override
  String get answersToCommonQuestions => 'Jawaban atas pertanyaan umum';

  @override
  String get reachTheDeveloperDirectly => 'Hubungi pengembang secara langsung';

  @override
  String get sendUsYourFeedback => 'Kirimkan umpan balik Anda';

  @override
  String get pickVideo => 'Pilih video';

  @override
  String get targetSizeMB => 'Ukuran target (MB)';

  @override
  String get startCompression => 'Mulai kompresi';

  @override
  String get pause => 'Jeda';

  @override
  String get resume => 'Lanjutkan';

  @override
  String get viewResult => 'Lihat hasil';

  @override
  String get saveToGallery => 'Simpan ke galeri';

  @override
  String get shareVideo => 'Bagikan video';

  @override
  String get originalSize => 'Ukuran asli';

  @override
  String get outputSize => 'Ukuran output';

  @override
  String get noCompressedVideosYet => 'Belum ada video yang dikompresi';

  @override
  String get savedToGallery => 'Disimpan ke galeri';

  @override
  String get enterATargetSizeGreaterThanZero =>
      'Masukkan ukuran target yang lebih besar dari nol';

  @override
  String get compressionCancelled => 'Kompresi dibatalkan';

  @override
  String get thisVideoCouldNotReachTheSelectedSizeTryALargerTargetSize =>
      'Video ini tidak dapat mencapai ukuran yang dipilih. Coba ukuran target yang lebih besar.';

  @override
  String get theSelectedSizeIsTooSmallForThisVideoChooseALargerSize =>
      'Ukuran yang dipilih terlalu kecil untuk video ini. Pilih ukuran yang lebih besar.';

  @override
  String get originalPreview => 'Pratinjau asli';

  @override
  String get compressedPreview => 'Pratinjau terkompresi';

  @override
  String get targetPreset => 'Preset target';

  @override
  String get customSize => 'Ukuran kustom';

  @override
  String get previewUnavailable => 'Pratinjau tidak tersedia';

  @override
  String get advancedControls => 'Kontrol lanjutan';

  @override
  String get automatic => 'Otomatis';

  @override
  String get maximumResolution => 'Resolusi maksimum';

  @override
  String get originalResolution => 'Resolusi asli';

  @override
  String get maximumFrameRate => 'Kecepatan bingkai maksimum';

  @override
  String get audioBitrate => 'Bitrate audio';

  @override
  String get removeAudio => 'Hapus audio';

  @override
  String get videoBitrateCeilingKbps => 'Batas bitrate video (kbps)';

  @override
  String get hdrHandling => 'Penanganan HDR';

  @override
  String get convertToSDR => 'Konversi ke SDR';

  @override
  String get keepHDRWhenSupported => 'Pertahankan HDR bila didukung';

  @override
  String get beforeYouStart => 'Sebelum Anda memulai';

  @override
  String get calculatingCompressionPlan => 'Menghitung rencana kompresi…';

  @override
  String get plannedResolution => 'Resolusi yang direncanakan';

  @override
  String get plannedVideoBitrate => 'Bitrate video yang direncanakan';

  @override
  String get plannedAudioBitrate => 'Bitrate audio yang direncanakan';

  @override
  String
  get reEncodingConvertsAudioToAACStereoDolbyAtmosAndDTSSpatialAudioWillNotBePreserved =>
      'Pengkodean ulang mengubah audio menjadi AAC stereo. Dolby Atmos dan audio spasial DTS tidak akan dipertahankan.';

  @override
  String
  get thisTargetIsTooSmallForAUsableVideoIncreaseTheSizeOrLowerOtherLimits =>
      'Target ini terlalu kecil untuk video yang dapat digunakan. Perbesar ukurannya atau turunkan batas lainnya.';

  @override
  String get theSelectedTargetMayReduceVideoQuality =>
      'Target yang dipilih dapat mengurangi kualitas video.';

  @override
  String get theSourceIsAlreadyWithinTheSizeLimit =>
      'Sumber sudah berada dalam batas ukuran.';

  @override
  String get enterABitrateOfAtLeast150KbpsOrLeaveBlankForAutomatic =>
      'Masukkan bitrate minimal 150 kbps, atau biarkan kosong untuk otomatis';

  @override
  String get enterAnEvenResolutionFrom240To16384OrLeaveBlankForAutomatic =>
      'Masukkan resolusi genap dari 240 hingga 16384, atau biarkan kosong untuk otomatis';

  @override
  String get videoPosition => 'Posisi video';

  @override
  String
  get aPreviousCompressionWasInterruptedItsTemporaryFilesWereCleanedUpYouCanSelectTheVideoAndTryAgain =>
      'Kompresi sebelumnya terhenti. File sementara telah dibersihkan; Anda dapat memilih video dan mencoba lagi.';

  @override
  String get dismiss => 'Tutup';

  @override
  String get clearHistory => 'Bersihkan riwayat';

  @override
  String get removeAllHistoryEntriesSavedVideosWillRemainOnYourDevice =>
      'Hapus semua riwayat? Video yang disimpan akan tetap ada di perangkat Anda.';

  @override
  String get attempts => 'Percobaan';

  @override
  String get targetSize => 'Ukuran target';

  @override
  String get outputResolution => 'Resolusi keluaran';

  @override
  String get thisVideoCouldNotBeReadChooseAnotherFile =>
      'Video ini tidak dapat dibaca. Pilih file lain.';

  @override
  String get theEncodedVideoFailedVerificationYourOriginalVideoWasNotChanged =>
      'Video yang dikodekan gagal diverifikasi. Video asli Anda tidak berubah.';

  @override
  String
  get thisDeviceCannotEncodeTheSelectedResolutionOrFrameRateLowerThatSettingAndTryAgain =>
      'Perangkat ini tidak dapat mengkodekan resolusi atau laju bingkai yang dipilih. Turunkan pengaturan tersebut dan coba lagi.';

  @override
  String
  get thisDeviceCannotDecodeThisAudioFormatForCompressionRemoveAudioOrUseASupportedSource =>
      'Perangkat ini tidak dapat mendekode format audio ini untuk kompresi. Hapus audio atau gunakan sumber yang didukung.';

  @override
  String
  get thisDeviceCannotDecodeThisVideoFormatOrProfileForCompressionChooseAnotherSourceOrDevice =>
      'Perangkat ini tidak dapat mendekode format video ini atau profil untuk kompresi. Pilih sumber atau perangkat lain.';

  @override
  String get theExportedMP4IsNotReadyForStreamingTryAnotherVideoOrDevice =>
      'MP4 yang diekspor belum siap untuk streaming. Coba video atau perangkat lain.';

  @override
  String get thereIsNotEnoughFreeStorageToCompressThisVideo =>
      'Tidak cukup penyimpanan bebas untuk mengompres video ini.';

  @override
  String get thisDeviceCannotProcessTheSelectedHDRModeTryConvertingToSDR =>
      'Perangkat ini tidak dapat memproses mode HDR yang dipilih. Coba konversi ke SDR.';

  @override
  String get compressionCouldNotBeCompletedTryAnotherSettingOrVideo =>
      'Kompresi tidak dapat diselesaikan. Coba pengaturan atau video lain.';

  @override
  String get appIdentity => 'Identitas aplikasi';

  @override
  String get appName => 'Nama aplikasi';

  @override
  String get packageName => 'Nama paket';

  @override
  String get version => 'Versi';

  @override
  String get buildNumber => 'Nomor build';

  @override
  String get deviceAndBuild => 'Perangkat dan build';

  @override
  String get operatingSystem => 'Sistem operasi';

  @override
  String get osVersion => 'Versi OS';

  @override
  String get buildMode => 'Mode build';

  @override
  String get debug => 'Debug';

  @override
  String get release => 'Rilis';

  @override
  String get builtWith => 'Dibuat dengan';

  @override
  String get installation => 'Instalasi';

  @override
  String get installedFrom => 'Terpasang dari';

  @override
  String get installedOn => 'Terpasang pada';

  @override
  String get updatedOn => 'Diperbarui pada';

  @override
  String get unavailable => 'Tidak tersedia';

  @override
  String get projectAndSupport => 'Proyek dan dukungan';

  @override
  String get githubRepository => 'Repositori GitHub';

  @override
  String get viewZumiSourceCode => 'Lihat kode sumber Zumi';

  @override
  String get readTheREADME => 'Baca README';

  @override
  String get learnAboutZumiOnGitHub => 'Pelajari tentang Zumi di GitHub';

  @override
  String get reportAnIssue => 'Laporkan masalah';

  @override
  String get viewAndCreateGitHubIssues => 'Lihat dan buat masalah di GitHub';

  @override
  String get latestRelease => 'Rilis terbaru';

  @override
  String get viewReleasesAndDownloads => 'Lihat rilis dan unduhan';

  @override
  String get supportZumi => 'Dukung Zumi';

  @override
  String get openTheOfficialDonationPage => 'Buka halaman donasi resmi';

  @override
  String get couldNotOpenTheLinkPleaseTryAgain =>
      'Tidak dapat membuka tautan. Silakan coba lagi.';

  @override
  String get developer => 'Pengembang';

  @override
  String get mostafaSensei => 'Mostafa Sensei';

  @override
  String get githubProfile => 'Profil GitHub';

  @override
  String get seeProjectsAndContactDetails => 'Lihat proyek dan detail kontak';

  @override
  String get maintenanceInProgress => 'Pemeliharaan sedang berlangsung';

  @override
  String get zumiIsTemporarilyUnavailablePleaseTryAgainLater =>
      'Zumi sementara tidak tersedia. Silakan coba lagi nanti.';

  @override
  String get comingSoon => 'Segera hadir';

  @override
  String get pleaseWait => 'Harap tunggu...';

  @override
  String get cancel => 'Batal';

  @override
  String get openSourceLicenses => 'Lisensi sumber terbuka';

  @override
  String get languageName => 'Bahasa Indonesia';

  @override
  String get countryCode => 'ID';

  @override
  String countryName(String countryCode) {
    String _temp0 = intl.Intl.selectLogic(countryCode, {
      'AE': 'Uni Emirat Arab',
      'AT': 'Austria',
      'AU': 'Australia',
      'BE': 'Belgia',
      'BH': 'Bahrain',
      'BR': 'Brasil',
      'CA': 'Kanada',
      'CH': 'Swiss',
      'CN': 'Tiongkok',
      'DE': 'Jerman',
      'DJ': 'Jibuti',
      'DZ': 'Aljazair',
      'EG': 'Mesir',
      'ES': 'Spanyol',
      'FR': 'Prancis',
      'GB': 'Inggris Raya',
      'HK': 'Hong Kong DAK Tiongkok',
      'ID': 'Indonesia',
      'IQ': 'Irak',
      'IT': 'Italia',
      'JO': 'Yordania',
      'JP': 'Jepang',
      'KM': 'Komoro',
      'KR': 'Korea Selatan',
      'KW': 'Kuwait',
      'LB': 'Lebanon',
      'LY': 'Libya',
      'MA': 'Maroko',
      'MR': 'Mauritania',
      'MX': 'Meksiko',
      'NL': 'Belanda',
      'OM': 'Oman',
      'PL': 'Polandia',
      'PS': 'Wilayah Palestina',
      'PT': 'Portugal',
      'QA': 'Qatar',
      'RU': 'Rusia',
      'SA': 'Arab Saudi',
      'SD': 'Sudan',
      'SE': 'Swedia',
      'SG': 'Singapura',
      'SO': 'Somalia',
      'SY': 'Suriah',
      'TH': 'Thailand',
      'TN': 'Tunisia',
      'TR': 'Turki',
      'TW': 'Taiwan',
      'US': 'Amerika Serikat',
      'VN': 'Vietnam',
      'YE': 'Yaman',
      'other': 'Negara',
    });
    return '$_temp0';
  }
}
