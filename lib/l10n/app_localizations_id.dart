// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get asagi => 'Asagi';

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
  String get welcomeToAsagi => 'Selamat datang di Asagi';

  @override
  String get learnHowAsagiCompressesYourVideosWithoutEverLeavingYourPhone =>
      'Pelajari caran Asagi mengompres video Anda tanpa harus meninggalkan ponsel.';

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
  String get aboutAsagi => 'Tentang Asagi';

  @override
  String get versionBuildNumberAndApplicationDetails =>
      'Versi, nomor build, dan detail aplikasi.';

  @override
  String get aboutTheDeveloper => 'Tentang pengembang';

  @override
  String get theDeveloperAndToolsBehindAsagi =>
      'Pengembang dan alat di balik Asagi.';

  @override
  String get openSourcePackagesBundledWithAsagi =>
      'Paket sumber terbuka yang disertakan dengan Asagi.';

  @override
  String get privacyPolicy => 'Kebijakan privasi';

  @override
  String get howAsagiHandlesYourVideosAndData =>
      'Bagaimanan Asagi menangani video dan data Anda.';

  @override
  String get termsOfService => 'Ketentuan layanan';

  @override
  String get theTermsThatApplyToAsagiAndItsPurchases =>
      'Ketentuan yang berlaku untuk Asagi dan pembeliannya.';

  @override
  String get dataSafety => 'Keamanan data';

  @override
  String get summaryOfTheDataAsagiCollectsAndWhy =>
      'Ringkasan data yang dikumpulkan Asagi dan alasannya.';

  @override
  String get permissions => 'Izin';

  @override
  String get runtimePermissionsAsagiRequestsAndWhyEachIsNeeded =>
      'Izin runtime yang dimintan Asagi dan alasan setiap izin dibutuhkan.';

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
  String get rateAsagi => 'Beri rating Asagi';

  @override
  String get tellOthersHowAsagiWorkedForYouOnTheStore =>
      'Beritahu orang lain bagaimanan Asagi bekerja untuk Anda di toko.';

  @override
  String get shareAsagi => 'Bagikan Asagi';

  @override
  String get recommendAsagiToAFriend => 'Rekomendasikan Asagi kepada teman.';

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
  String get asagiAssistant => 'Asisten Asagi';

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
  String get theDeveloperBehindAsagi => 'Pengembang di balik Asagi';

  @override
  String get openSourcePackageLicenses => 'Lisensi paket sumber terbuka';

  @override
  String get howDataIsHandled => 'Bagaimana data ditangani';

  @override
  String get rulesForUsingAsagi => 'Aturan penggunaan Asagi';

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
  String get viewAsagiSourceCode => 'Lihat kode sumber Asagi';

  @override
  String get readTheREADME => 'Baca README';

  @override
  String get learnAboutAsagiOnGitHub => 'Pelajari tentang Asagi di GitHub';

  @override
  String get reportAnIssue => 'Laporkan masalah';

  @override
  String get viewAndCreateGitHubIssues => 'Lihat dan buat masalah di GitHub';

  @override
  String get latestRelease => 'Rilis terbaru';

  @override
  String get viewReleasesAndDownloads => 'Lihat rilis dan unduhan';

  @override
  String get supportAsagi => 'Dukung Asagi';

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
  String get asagiIsTemporarilyUnavailablePleaseTryAgainLater =>
      'Asagi sementara tidak tersedia. Silakan coba lagi nanti.';

  @override
  String get comingSoon => 'Segera hadir';

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
}

/// The translations for Indonesian, as used in Indonesia (`id_ID`).
class AppLocalizationsIdId extends AppLocalizationsId {
  AppLocalizationsIdId() : super('id_ID');

  @override
  String get asagi => 'Asagi';

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
  String get welcomeToAsagi => 'Selamat datang di Asagi';

  @override
  String get learnHowAsagiCompressesYourVideosWithoutEverLeavingYourPhone =>
      'Pelajari caran Asagi mengompres video Anda tanpa harus meninggalkan ponsel.';

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
  String get aboutAsagi => 'Tentang Asagi';

  @override
  String get versionBuildNumberAndApplicationDetails =>
      'Versi, nomor build, dan detail aplikasi.';

  @override
  String get aboutTheDeveloper => 'Tentang pengembang';

  @override
  String get theDeveloperAndToolsBehindAsagi =>
      'Pengembang dan alat di balik Asagi.';

  @override
  String get openSourcePackagesBundledWithAsagi =>
      'Paket sumber terbuka yang disertakan dengan Asagi.';

  @override
  String get privacyPolicy => 'Kebijakan privasi';

  @override
  String get howAsagiHandlesYourVideosAndData =>
      'Bagaimanan Asagi menangani video dan data Anda.';

  @override
  String get termsOfService => 'Ketentuan layanan';

  @override
  String get theTermsThatApplyToAsagiAndItsPurchases =>
      'Ketentuan yang berlaku untuk Asagi dan pembeliannya.';

  @override
  String get dataSafety => 'Keamanan data';

  @override
  String get summaryOfTheDataAsagiCollectsAndWhy =>
      'Ringkasan data yang dikumpulkan Asagi dan alasannya.';

  @override
  String get permissions => 'Izin';

  @override
  String get runtimePermissionsAsagiRequestsAndWhyEachIsNeeded =>
      'Izin runtime yang dimintan Asagi dan alasan setiap izin dibutuhkan.';

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
  String get rateAsagi => 'Beri rating Asagi';

  @override
  String get tellOthersHowAsagiWorkedForYouOnTheStore =>
      'Beritahu orang lain bagaimanan Asagi bekerja untuk Anda di toko.';

  @override
  String get shareAsagi => 'Bagikan Asagi';

  @override
  String get recommendAsagiToAFriend => 'Rekomendasikan Asagi kepada teman.';

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
  String get asagiAssistant => 'Asisten Asagi';

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
  String get theDeveloperBehindAsagi => 'Pengembang di balik Asagi';

  @override
  String get openSourcePackageLicenses => 'Lisensi paket sumber terbuka';

  @override
  String get howDataIsHandled => 'Bagaimana data ditangani';

  @override
  String get rulesForUsingAsagi => 'Aturan penggunaan Asagi';

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
  String get viewAsagiSourceCode => 'Lihat kode sumber Asagi';

  @override
  String get readTheREADME => 'Baca README';

  @override
  String get learnAboutAsagiOnGitHub => 'Pelajari tentang Asagi di GitHub';

  @override
  String get reportAnIssue => 'Laporkan masalah';

  @override
  String get viewAndCreateGitHubIssues => 'Lihat dan buat masalah di GitHub';

  @override
  String get latestRelease => 'Rilis terbaru';

  @override
  String get viewReleasesAndDownloads => 'Lihat rilis dan unduhan';

  @override
  String get supportAsagi => 'Dukung Asagi';

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
  String get asagiIsTemporarilyUnavailablePleaseTryAgainLater =>
      'Asagi sementara tidak tersedia. Silakan coba lagi nanti.';

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
