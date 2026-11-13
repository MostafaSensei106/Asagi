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
  String fileSavedToDcim(String fileName) {
    return 'File disimpan ke galeri: $fileName';
  }

  @override
  String fileSavedToDocuments(String fileName) {
    return 'File disimpan ke dokumen: $fileName';
  }

  @override
  String get fileAlreadySaved => 'File sudah disimpan';

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
  String get error_address_line_cant_be_empty =>
      'Baris alamat tidak boleh kosong';

  @override
  String get error_address_line_too_long => 'Baris alamat terlalu panjang';

  @override
  String get error_address_invalid_special_characters =>
      'Karakter khusus tidak diperbolehkan';

  @override
  String get error_address_emoji_not_allowed => 'Emoji tidak diperbolehkan';

  @override
  String get error_city_cant_be_empty => 'Kota tidak boleh kosong';

  @override
  String get error_city_too_long => 'Nama kota terlalu panjang';

  @override
  String get error_city_invalid_special_characters =>
      'Kota mengandung karakter khusus yang tidak valid';

  @override
  String get error_address_label_cant_be_empty =>
      'Label alamat tidak boleh kosong';

  @override
  String get error_address_label_too_long => 'Label alamat terlalu panjang';

  @override
  String get error_email_cant_be_empty => 'Email tidak boleh kosong';

  @override
  String get error_email_not_invalid_format => 'Format email tidak valid';

  @override
  String get error_email_contains_invalid_characters =>
      'Email mengandung karakter tidak valid';

  @override
  String get error_email_must_contain_at_symbol => 'Email harus mengandung @';

  @override
  String get error_email_must_be_in_lowercase =>
      'Email harus dalam huruf kecil';

  @override
  String get error_arabic_not_allowed => 'Karakter Arab tidak diperbolehkan';

  @override
  String get error_email_emoji_not_allowed =>
      'Emoji tidak diperbolehkan dalam email';

  @override
  String get error_phone_number_cant_be_empty =>
      'Nomor telepon tidak boleh kosong';

  @override
  String get error_phone_number_invalid => 'Nomor telepon tidak valid';

  @override
  String get error_phone_number_min_length =>
      'Nomor telepon harus terdiri dari minimal 11 digit';

  @override
  String get error_name_cant_be_empty => 'Nama tidak boleh kosong';

  @override
  String get error_name_invalid => 'Nama tidak valid';

  @override
  String get error_name_too_short_at_least_3_characters =>
      'Nama harus terdiri dari minimal 3 karakter';

  @override
  String get error_name_too_long_maximum_20_characters =>
      'Nama tidak boleh melebihi 20 karakter';

  @override
  String get error_name_invalid_special_characters =>
      'Nama mengandung karakter khusus yang tidak valid';

  @override
  String get error_name_emoji_not_allowed =>
      'Emoji tidak diperbolehkan dalam nama';

  @override
  String get error_password_cant_be_empty => 'Kata sandi tidak boleh kosong';

  @override
  String
  get error_password_must_contain_uppercase_lowercase_number_and_special_character =>
      'Kata sandi harus mengandung huruf besar, huruf kecil, angka, dan karakter khusus';

  @override
  String get error_password_must_be_at_least_8_characters_long =>
      'Kata sandi harus minimal 8 karakter';

  @override
  String get noInternetConnection => 'Tidak ada koneksi internet';

  @override
  String get internetConnectionRestored => 'Koneksi internet dipulihkan';

  @override
  String get retry => 'Coba lagi';

  @override
  String get cancel => 'Batal';

  @override
  String get confirm => 'Konfirmasi';

  @override
  String get pleaseWait => 'Harap tunggu...';

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
  String get openSourceLicenses => 'Lisensi sumber terbuka';

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
  String get settingsGroupAppearance => 'Tampilan & bahasa';

  @override
  String get settingsGroupCompression => 'Kompresi';

  @override
  String get settingsGroupAi => 'AI di perangkat';

  @override
  String get settingsGroupPrivacy => 'Notifikasi & privasi';

  @override
  String get settingsGroupPlans => 'Paket & pembelian';

  @override
  String get settingsGroupAbout => 'Tentang';

  @override
  String get settingsGroupLegal => 'Hukum';

  @override
  String get settingsGroupHelp => 'Bantuan & umpan balik';

  @override
  String get settingsGroupAccount => 'Akun';

  @override
  String get settingsAppearanceSubtitle => 'Tema dan bahasa aplikasi';

  @override
  String get settingsLanguageSubtitle => 'Bahasa dan arah aplikasi';

  @override
  String get settingsCompressionSubtitle => 'Kualitas dan format default';

  @override
  String get settingsStorageSubtitle => 'Penggunaan cache dan penyimpanan';

  @override
  String get aiSettings => 'Pengaturan AI';

  @override
  String get zumiAssistant => 'Asisten Zumi';

  @override
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere =>
      'Asisten pribadi untuk video Anda akan segera hadir. Anda akan dapat menanyakan tentang kompresi, organisasi, dan video yang disimpan di sini.';

  @override
  String get settingsAiSubtitle => 'Model lokal dan alat pintar';

  @override
  String get exploreLocalModelsAndFutureAiToolsTheseOptionsAreNotActiveYet =>
      'Jelajahi model lokal dan alat AI di masa depan. Opsi ini belum aktif.';

  @override
  String get localModels => 'Model lokal';

  @override
  String get aiModelsSubtitle => 'Jelajahi dan unduh model yang didukung';

  @override
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere =>
      'Pilih model yang didukung, unduh ke perangkat ini, dan kelola model yang terpasang di sini.';

  @override
  String get importAModel => 'Impor model';

  @override
  String get aiImportSubtitle => 'Gunakan model yang kompatibel dari file Anda';

  @override
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt =>
      'Pilih file model lokal yang kompatibel dan tinjau persyaratannya sebelum menggunakannya.';

  @override
  String get smartFeatures => 'Fitur pintar';

  @override
  String get aiFeaturesSubtitle => 'Kompresi, organisasi, dan pencarian';

  @override
  String
  get chooseWhichLocalAiSuggestionsToUseForVideoCompressionOrganizationNamingAndSearch =>
      'Pilih saran AI lokal mana yang akan digunakan untuk kompresi video, organisasi, penamaan, dan pencarian.';

  @override
  String get modelPerformance => 'Kinerja model';

  @override
  String get aiRuntimeSubtitle => 'Preferensi pemrosesan dan sumber daya';

  @override
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels =>
      'Kontrol backend pemrosesan dan batas sumber daya untuk model yang didukung.';

  @override
  String get conversationSettings => 'Pengaturan percakapan';

  @override
  String get aiChatSettingsSubtitle =>
      'Streaming, berpikir, dan panjang respons';

  @override
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits =>
      'Konfigurasikan bagaimana asisten merespons, termasuk streaming, mode berpikir, sampling, dan batasan respons.';

  @override
  String get imagesAndAudio => 'Gambar dan audio';

  @override
  String get aiMediaSubtitle => 'Kendalikan input multimodal';

  @override
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos =>
      'Pilih apakah model yang kompatibel dapat menganalisis gambar dan audio tertentu dari video Anda.';

  @override
  String get semanticSearch => 'Pencarian semantik';

  @override
  String get aiSearchSubtitle => 'Embedding dan pengindeksan lokal';

  @override
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning =>
      'Kelola model embedding lokal dan indeks pencarian untuk menemukan video dan momen berdasarkan makna.';

  @override
  String get toolsAndStructuredOutput => 'Alat dan output terstruktur';

  @override
  String get aiToolsSubtitle => 'Tindakan, skema, dan konfirmasi';

  @override
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation =>
      'Kelola tindakan asisten yang didukung dan respons terstruktur. Tindakan yang memengaruhi file akan memerlukan konfirmasi Anda.';

  @override
  String get aiGroupModels => 'Model';

  @override
  String get aiGroupExperience => 'Pengalaman asisten';

  @override
  String get aiGroupCapabilities => 'Kemampuan cerdas';

  @override
  String get aiGroupPerformance => 'Kinerja';

  @override
  String get compressionHistorySubtitle => 'Riwayat video yang dikompres';

  @override
  String get settingsNotificationsSubtitle =>
      'Peringatan penyelesaian dan pembaruan';

  @override
  String get settingsPrivacySubtitle => 'Data Anda tetap lokal';

  @override
  String get plansSubtitle => 'Bandingkan paket dan tingkatkan';

  @override
  String get plansMethodsSubtitle => 'Metode pembayaran dan tagihan';

  @override
  String get plansRestoreSubtitle => 'Pulihkan pembelian sebelumnya';

  @override
  String get aboutAppSubtitle => 'Detail versi dan build';

  @override
  String get aboutDeveloperSubtitle => 'Pengembang di balik Zumi';

  @override
  String get aboutLicensesSubtitle => 'Lisensi paket sumber terbuka';

  @override
  String get legalPrivacySubtitle => 'Bagaimana data ditangani';

  @override
  String get legalTermsSubtitle => 'Aturan penggunaan Zumi';

  @override
  String get legalDataSafetySubtitle => 'Data apa yang kami kumpulkan';

  @override
  String get legalPermissionsSubtitle => 'Mengapa kami membutuhkan izin';

  @override
  String get helpFaqSubtitle => 'Jawaban atas pertanyaan umum';

  @override
  String get helpSupportSubtitle => 'Hubungi pengembang secara langsung';

  @override
  String get helpFeedbackSubtitle => 'Kirimkan umpan balik Anda';

  @override
  String get compressionPickVideo => 'Pilih video';

  @override
  String get compressionTargetMb => 'Ukuran target (MB)';

  @override
  String get compressionStart => 'Mulai kompresi';

  @override
  String get compressionPause => 'Jeda';

  @override
  String get compressionResume => 'Lanjutkan';

  @override
  String get compressionViewResult => 'Lihat hasil';

  @override
  String get compressionSaveGallery => 'Simpan ke galeri';

  @override
  String get compressionShare => 'Bagikan video';

  @override
  String get compressionOriginalSize => 'Ukuran asli';

  @override
  String get compressionOutputSize => 'Ukuran output';

  @override
  String get compressionEmptyHistory => 'Belum ada video yang dikompresi';

  @override
  String get compressionSavedGallery => 'Disimpan ke galeri';

  @override
  String get compressionInvalidTarget =>
      'Masukkan ukuran target yang lebih besar dari nol';

  @override
  String get compressionCancelled => 'Kompresi dibatalkan';

  @override
  String get compressionTargetExceeded =>
      'Video ini tidak dapat mencapai ukuran yang dipilih. Coba ukuran target yang lebih besar.';

  @override
  String get compressionTargetInfeasible =>
      'Ukuran yang dipilih terlalu kecil untuk video ini. Pilih ukuran yang lebih besar.';

  @override
  String get compressionPreviewBefore => 'Pratinjau asli';

  @override
  String get compressionPreviewAfter => 'Pratinjau terkompresi';

  @override
  String get compressionPreset => 'Preset target';

  @override
  String get compressionCustom => 'Ukuran kustom';

  @override
  String get compressionPreviewUnavailable => 'Pratinjau tidak tersedia';

  @override
  String get compressionAdvanced => 'Kontrol lanjutan';

  @override
  String get compressionAutomatic => 'Otomatis';

  @override
  String get compressionResolutionLimit => 'Resolusi maksimum';

  @override
  String get compressionSourceResolution => 'Resolusi asli';

  @override
  String get compressionFrameRateLimit => 'Kecepatan bingkai maksimum';

  @override
  String get compressionAudioQuality => 'Bitrate audio';

  @override
  String get compressionRemoveAudio => 'Hapus audio';

  @override
  String get compressionVideoBitrateLimit => 'Batas bitrate video (kbps)';

  @override
  String get compressionHdrPolicy => 'Penanganan HDR';

  @override
  String get compressionHdrConvert => 'Konversi ke SDR';

  @override
  String get compressionHdrPreserve => 'Pertahankan HDR bila didukung';

  @override
  String get compressionPlanPreview => 'Sebelum Anda memulai';

  @override
  String get compressionPlanLoading => 'Menghitung rencana kompresi…';

  @override
  String get compressionPlanResolution => 'Resolusi yang direncanakan';

  @override
  String get compressionPlanVideoBitrate => 'Bitrate video yang direncanakan';

  @override
  String get compressionPlanAudioBitrate => 'Bitrate audio yang direncanakan';

  @override
  String get compressionAudioConversionNote =>
      'Pengkodean ulang mengubah audio menjadi AAC stereo. Dolby Atmos dan audio spasial DTS tidak akan dipertahankan.';

  @override
  String get compressionPlanTooSmall =>
      'Target ini terlalu kecil untuk video yang dapat digunakan. Perbesar ukurannya atau turunkan batas lainnya.';

  @override
  String get compressionPlanLowQuality =>
      'Target yang dipilih dapat mengurangi kualitas video.';

  @override
  String get compressionPlanAlreadyWithinLimit =>
      'Sumber sudah berada dalam batas ukuran.';

  @override
  String get compressionInvalidBitrate =>
      'Masukkan bitrate minimal 150 kbps, atau biarkan kosong untuk otomatis';

  @override
  String get compressionInvalidResolution =>
      'Masukkan resolusi genap dari 240 hingga 16384, atau biarkan kosong untuk otomatis';

  @override
  String get compressionSeek => 'Posisi video';

  @override
  String get compressionInterrupted =>
      'Kompresi sebelumnya terhenti. File sementara telah dibersihkan; Anda dapat memilih video dan mencoba lagi.';

  @override
  String get compressionDismiss => 'Tutup';

  @override
  String get compressionClearHistory => 'Bersihkan riwayat';

  @override
  String get compressionClearHistoryConfirm =>
      'Hapus semua riwayat? Video yang disimpan akan tetap ada di perangkat Anda.';

  @override
  String get compressionAttempts => 'Percobaan';

  @override
  String get compressionTargetSize => 'Ukuran target';

  @override
  String get compressionOutputResolution => 'Resolusi keluaran';

  @override
  String get compressionInvalidVideo =>
      'Video ini tidak dapat dibaca. Pilih file lain.';

  @override
  String get compressionInvalidOutput =>
      'Video yang dikodekan gagal diverifikasi. Video asli Anda tidak berubah.';

  @override
  String get compressionEncoderUnsupported =>
      'Perangkat ini tidak dapat mengkodekan resolusi atau laju bingkai yang dipilih. Turunkan pengaturan tersebut dan coba lagi.';

  @override
  String get compressionAudioDecoderUnsupported =>
      'Perangkat ini tidak dapat mendekode format audio ini untuk kompresi. Hapus audio atau gunakan sumber yang didukung.';

  @override
  String get compressionVideoDecoderUnsupported =>
      'Perangkat ini tidak dapat mendekode format video ini atau profil untuk kompresi. Pilih sumber atau perangkat lain.';

  @override
  String get compressionMp4NotStreamable =>
      'MP4 yang diekspor belum siap untuk streaming. Coba video atau perangkat lain.';

  @override
  String get compressionNoSpace =>
      'Tidak cukup penyimpanan bebas untuk mengompres video ini.';

  @override
  String get compressionHdrUnsupported =>
      'Perangkat ini tidak dapat memproses mode HDR yang dipilih. Coba konversi ke SDR.';

  @override
  String get compressionGeneralFailure =>
      'Kompresi tidak dapat diselesaikan. Coba pengaturan atau video lain.';

  @override
  String get aboutIdentitySection => 'Identitas aplikasi';

  @override
  String get aboutAppName => 'Nama aplikasi';

  @override
  String get aboutPackageName => 'Nama paket';

  @override
  String get aboutVersion => 'Versi';

  @override
  String get aboutBuildNumber => 'Nomor build';

  @override
  String get aboutEnvironmentSection => 'Perangkat dan build';

  @override
  String get aboutOperatingSystem => 'Sistem operasi';

  @override
  String get aboutOsVersion => 'Versi OS';

  @override
  String get aboutBuildMode => 'Mode build';

  @override
  String get aboutDebug => 'Debug';

  @override
  String get aboutRelease => 'Rilis';

  @override
  String get aboutToolchainSection => 'Dibuat dengan';

  @override
  String get aboutInstallationSection => 'Instalasi';

  @override
  String get aboutInstaller => 'Terpasang dari';

  @override
  String get aboutInstalledOn => 'Terpasang pada';

  @override
  String get aboutUpdatedOn => 'Diperbarui pada';

  @override
  String get aboutUnavailable => 'Tidak tersedia';

  @override
  String get aboutProjectSection => 'Proyek dan dukungan';

  @override
  String get aboutRepository => 'Repositori GitHub';

  @override
  String get aboutRepositorySubtitle => 'Lihat kode sumber Zumi';

  @override
  String get aboutReadme => 'Baca README';

  @override
  String get aboutReadmeSubtitle => 'Pelajari tentang Zumi di GitHub';

  @override
  String get aboutIssues => 'Laporkan masalah';

  @override
  String get aboutIssuesSubtitle => 'Lihat dan buat masalah di GitHub';

  @override
  String get aboutLatestRelease => 'Rilis terbaru';

  @override
  String get aboutLatestReleaseSubtitle => 'Lihat rilis dan unduhan';

  @override
  String get aboutDonate => 'Dukung Zumi';

  @override
  String get aboutDonateSubtitle => 'Buka halaman donasi resmi';

  @override
  String get aboutLinkError => 'Tidak dapat membuka tautan. Silakan coba lagi.';

  @override
  String get aboutDeveloperSection => 'Pengembang';

  @override
  String get aboutDeveloperName => 'Mostafa Sensei';

  @override
  String get aboutDeveloperProfile => 'Profil GitHub';

  @override
  String get aboutDeveloperProfileSubtitle => 'Lihat proyek dan detail kontak';

  @override
  String get maintenanceInProgress => 'Pemeliharaan sedang berlangsung';

  @override
  String get maintenanceMessage =>
      'Zumi sementara tidak tersedia. Silakan coba lagi nanti.';

  @override
  String get comingSoon => 'Segera hadir';

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
  String fileSavedToDcim(String fileName) {
    return 'File disimpan ke galeri: $fileName';
  }

  @override
  String fileSavedToDocuments(String fileName) {
    return 'File disimpan ke dokumen: $fileName';
  }

  @override
  String get fileAlreadySaved => 'File sudah disimpan';

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
  String get error_address_line_cant_be_empty =>
      'Baris alamat tidak boleh kosong';

  @override
  String get error_address_line_too_long => 'Baris alamat terlalu panjang';

  @override
  String get error_address_invalid_special_characters =>
      'Karakter khusus tidak diperbolehkan';

  @override
  String get error_address_emoji_not_allowed => 'Emoji tidak diperbolehkan';

  @override
  String get error_city_cant_be_empty => 'Kota tidak boleh kosong';

  @override
  String get error_city_too_long => 'Nama kota terlalu panjang';

  @override
  String get error_city_invalid_special_characters =>
      'Kota mengandung karakter khusus yang tidak valid';

  @override
  String get error_address_label_cant_be_empty =>
      'Label alamat tidak boleh kosong';

  @override
  String get error_address_label_too_long => 'Label alamat terlalu panjang';

  @override
  String get error_email_cant_be_empty => 'Email tidak boleh kosong';

  @override
  String get error_email_not_invalid_format => 'Format email tidak valid';

  @override
  String get error_email_contains_invalid_characters =>
      'Email mengandung karakter tidak valid';

  @override
  String get error_email_must_contain_at_symbol => 'Email harus mengandung @';

  @override
  String get error_email_must_be_in_lowercase =>
      'Email harus dalam huruf kecil';

  @override
  String get error_arabic_not_allowed => 'Karakter Arab tidak diperbolehkan';

  @override
  String get error_email_emoji_not_allowed =>
      'Emoji tidak diperbolehkan dalam email';

  @override
  String get error_phone_number_cant_be_empty =>
      'Nomor telepon tidak boleh kosong';

  @override
  String get error_phone_number_invalid => 'Nomor telepon tidak valid';

  @override
  String get error_phone_number_min_length =>
      'Nomor telepon harus terdiri dari minimal 11 digit';

  @override
  String get error_name_cant_be_empty => 'Nama tidak boleh kosong';

  @override
  String get error_name_invalid => 'Nama tidak valid';

  @override
  String get error_name_too_short_at_least_3_characters =>
      'Nama harus terdiri dari minimal 3 karakter';

  @override
  String get error_name_too_long_maximum_20_characters =>
      'Nama tidak boleh melebihi 20 karakter';

  @override
  String get error_name_invalid_special_characters =>
      'Nama mengandung karakter khusus yang tidak valid';

  @override
  String get error_name_emoji_not_allowed =>
      'Emoji tidak diperbolehkan dalam nama';

  @override
  String get error_password_cant_be_empty => 'Kata sandi tidak boleh kosong';

  @override
  String
  get error_password_must_contain_uppercase_lowercase_number_and_special_character =>
      'Kata sandi harus mengandung huruf besar, huruf kecil, angka, dan karakter khusus';

  @override
  String get error_password_must_be_at_least_8_characters_long =>
      'Kata sandi harus minimal 8 karakter';

  @override
  String get noInternetConnection => 'Tidak ada koneksi internet';

  @override
  String get internetConnectionRestored => 'Koneksi internet dipulihkan';

  @override
  String get retry => 'Coba lagi';

  @override
  String get cancel => 'Batal';

  @override
  String get confirm => 'Konfirmasi';

  @override
  String get pleaseWait => 'Harap tunggu...';

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
  String get openSourceLicenses => 'Lisensi sumber terbuka';

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
  String get settingsGroupAppearance => 'Tampilan & bahasa';

  @override
  String get settingsGroupCompression => 'Kompresi';

  @override
  String get settingsGroupAi => 'AI di perangkat';

  @override
  String get settingsGroupPrivacy => 'Notifikasi & privasi';

  @override
  String get settingsGroupPlans => 'Paket & pembelian';

  @override
  String get settingsGroupAbout => 'Tentang';

  @override
  String get settingsGroupLegal => 'Hukum';

  @override
  String get settingsGroupHelp => 'Bantuan & umpan balik';

  @override
  String get settingsGroupAccount => 'Akun';

  @override
  String get settingsAppearanceSubtitle => 'Tema dan bahasa aplikasi';

  @override
  String get settingsLanguageSubtitle => 'Bahasa dan arah aplikasi';

  @override
  String get settingsCompressionSubtitle => 'Kualitas dan format default';

  @override
  String get settingsStorageSubtitle => 'Penggunaan cache dan penyimpanan';

  @override
  String get aiSettings => 'Pengaturan AI';

  @override
  String get zumiAssistant => 'Asisten Zumi';

  @override
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere =>
      'Asisten pribadi untuk video Anda akan segera hadir. Anda akan dapat menanyakan tentang kompresi, organisasi, dan video yang disimpan di sini.';

  @override
  String get settingsAiSubtitle => 'Model lokal dan alat pintar';

  @override
  String get exploreLocalModelsAndFutureAiToolsTheseOptionsAreNotActiveYet =>
      'Jelajahi model lokal dan alat AI di masa depan. Opsi ini belum aktif.';

  @override
  String get localModels => 'Model lokal';

  @override
  String get aiModelsSubtitle => 'Jelajahi dan unduh model yang didukung';

  @override
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere =>
      'Pilih model yang didukung, unduh ke perangkat ini, dan kelola model yang terpasang di sini.';

  @override
  String get importAModel => 'Impor model';

  @override
  String get aiImportSubtitle => 'Gunakan model yang kompatibel dari file Anda';

  @override
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt =>
      'Pilih file model lokal yang kompatibel dan tinjau persyaratannya sebelum menggunakannya.';

  @override
  String get smartFeatures => 'Fitur pintar';

  @override
  String get aiFeaturesSubtitle => 'Kompresi, organisasi, dan pencarian';

  @override
  String
  get chooseWhichLocalAiSuggestionsToUseForVideoCompressionOrganizationNamingAndSearch =>
      'Pilih saran AI lokal mana yang akan digunakan untuk kompresi video, organisasi, penamaan, dan pencarian.';

  @override
  String get modelPerformance => 'Kinerja model';

  @override
  String get aiRuntimeSubtitle => 'Preferensi pemrosesan dan sumber daya';

  @override
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels =>
      'Kontrol backend pemrosesan dan batas sumber daya untuk model yang didukung.';

  @override
  String get conversationSettings => 'Pengaturan percakapan';

  @override
  String get aiChatSettingsSubtitle =>
      'Streaming, berpikir, dan panjang respons';

  @override
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits =>
      'Konfigurasikan bagaimana asisten merespons, termasuk streaming, mode berpikir, sampling, dan batasan respons.';

  @override
  String get imagesAndAudio => 'Gambar dan audio';

  @override
  String get aiMediaSubtitle => 'Kendalikan input multimodal';

  @override
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos =>
      'Pilih apakah model yang kompatibel dapat menganalisis gambar dan audio tertentu dari video Anda.';

  @override
  String get semanticSearch => 'Pencarian semantik';

  @override
  String get aiSearchSubtitle => 'Embedding dan pengindeksan lokal';

  @override
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning =>
      'Kelola model embedding lokal dan indeks pencarian untuk menemukan video dan momen berdasarkan makna.';

  @override
  String get toolsAndStructuredOutput => 'Alat dan output terstruktur';

  @override
  String get aiToolsSubtitle => 'Tindakan, skema, dan konfirmasi';

  @override
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation =>
      'Kelola tindakan asisten yang didukung dan respons terstruktur. Tindakan yang memengaruhi file akan memerlukan konfirmasi Anda.';

  @override
  String get aiGroupModels => 'Model';

  @override
  String get aiGroupExperience => 'Pengalaman asisten';

  @override
  String get aiGroupCapabilities => 'Kemampuan cerdas';

  @override
  String get aiGroupPerformance => 'Kinerja';

  @override
  String get compressionHistorySubtitle => 'Riwayat video yang dikompres';

  @override
  String get settingsNotificationsSubtitle =>
      'Peringatan penyelesaian dan pembaruan';

  @override
  String get settingsPrivacySubtitle => 'Data Anda tetap lokal';

  @override
  String get plansSubtitle => 'Bandingkan paket dan tingkatkan';

  @override
  String get plansMethodsSubtitle => 'Metode pembayaran dan tagihan';

  @override
  String get plansRestoreSubtitle => 'Pulihkan pembelian sebelumnya';

  @override
  String get aboutAppSubtitle => 'Detail versi dan build';

  @override
  String get aboutDeveloperSubtitle => 'Pengembang di balik Zumi';

  @override
  String get aboutLicensesSubtitle => 'Lisensi paket sumber terbuka';

  @override
  String get legalPrivacySubtitle => 'Bagaimana data ditangani';

  @override
  String get legalTermsSubtitle => 'Aturan penggunaan Zumi';

  @override
  String get legalDataSafetySubtitle => 'Data apa yang kami kumpulkan';

  @override
  String get legalPermissionsSubtitle => 'Mengapa kami membutuhkan izin';

  @override
  String get helpFaqSubtitle => 'Jawaban atas pertanyaan umum';

  @override
  String get helpSupportSubtitle => 'Hubungi pengembang secara langsung';

  @override
  String get helpFeedbackSubtitle => 'Kirimkan umpan balik Anda';

  @override
  String get compressionPickVideo => 'Pilih video';

  @override
  String get compressionTargetMb => 'Ukuran target (MB)';

  @override
  String get compressionStart => 'Mulai kompresi';

  @override
  String get compressionPause => 'Jeda';

  @override
  String get compressionResume => 'Lanjutkan';

  @override
  String get compressionViewResult => 'Lihat hasil';

  @override
  String get compressionSaveGallery => 'Simpan ke galeri';

  @override
  String get compressionShare => 'Bagikan video';

  @override
  String get compressionOriginalSize => 'Ukuran asli';

  @override
  String get compressionOutputSize => 'Ukuran output';

  @override
  String get compressionEmptyHistory => 'Belum ada video yang dikompresi';

  @override
  String get compressionSavedGallery => 'Disimpan ke galeri';

  @override
  String get compressionInvalidTarget =>
      'Masukkan ukuran target yang lebih besar dari nol';

  @override
  String get compressionCancelled => 'Kompresi dibatalkan';

  @override
  String get compressionTargetExceeded =>
      'Video ini tidak dapat mencapai ukuran yang dipilih. Coba ukuran target yang lebih besar.';

  @override
  String get compressionTargetInfeasible =>
      'Ukuran yang dipilih terlalu kecil untuk video ini. Pilih ukuran yang lebih besar.';

  @override
  String get compressionPreviewBefore => 'Pratinjau asli';

  @override
  String get compressionPreviewAfter => 'Pratinjau terkompresi';

  @override
  String get compressionPreset => 'Preset target';

  @override
  String get compressionCustom => 'Ukuran kustom';

  @override
  String get compressionPreviewUnavailable => 'Pratinjau tidak tersedia';

  @override
  String get compressionAdvanced => 'Kontrol lanjutan';

  @override
  String get compressionAutomatic => 'Otomatis';

  @override
  String get compressionResolutionLimit => 'Resolusi maksimum';

  @override
  String get compressionSourceResolution => 'Resolusi asli';

  @override
  String get compressionFrameRateLimit => 'Kecepatan bingkai maksimum';

  @override
  String get compressionAudioQuality => 'Bitrate audio';

  @override
  String get compressionRemoveAudio => 'Hapus audio';

  @override
  String get compressionVideoBitrateLimit => 'Batas bitrate video (kbps)';

  @override
  String get compressionHdrPolicy => 'Penanganan HDR';

  @override
  String get compressionHdrConvert => 'Konversi ke SDR';

  @override
  String get compressionHdrPreserve => 'Pertahankan HDR bila didukung';

  @override
  String get compressionPlanPreview => 'Sebelum Anda memulai';

  @override
  String get compressionPlanLoading => 'Menghitung rencana kompresi…';

  @override
  String get compressionPlanResolution => 'Resolusi yang direncanakan';

  @override
  String get compressionPlanVideoBitrate => 'Bitrate video yang direncanakan';

  @override
  String get compressionPlanAudioBitrate => 'Bitrate audio yang direncanakan';

  @override
  String get compressionAudioConversionNote =>
      'Pengkodean ulang mengubah audio menjadi AAC stereo. Dolby Atmos dan audio spasial DTS tidak akan dipertahankan.';

  @override
  String get compressionPlanTooSmall =>
      'Target ini terlalu kecil untuk video yang dapat digunakan. Perbesar ukurannya atau turunkan batas lainnya.';

  @override
  String get compressionPlanLowQuality =>
      'Target yang dipilih dapat mengurangi kualitas video.';

  @override
  String get compressionPlanAlreadyWithinLimit =>
      'Sumber sudah berada dalam batas ukuran.';

  @override
  String get compressionInvalidBitrate =>
      'Masukkan bitrate minimal 150 kbps, atau biarkan kosong untuk otomatis';

  @override
  String get compressionInvalidResolution =>
      'Masukkan resolusi genap dari 240 hingga 16384, atau biarkan kosong untuk otomatis';

  @override
  String get compressionSeek => 'Posisi video';

  @override
  String get compressionInterrupted =>
      'Kompresi sebelumnya terhenti. File sementara telah dibersihkan; Anda dapat memilih video dan mencoba lagi.';

  @override
  String get compressionDismiss => 'Tutup';

  @override
  String get compressionClearHistory => 'Bersihkan riwayat';

  @override
  String get compressionClearHistoryConfirm =>
      'Hapus semua riwayat? Video yang disimpan akan tetap ada di perangkat Anda.';

  @override
  String get compressionAttempts => 'Percobaan';

  @override
  String get compressionTargetSize => 'Ukuran target';

  @override
  String get compressionOutputResolution => 'Resolusi keluaran';

  @override
  String get compressionInvalidVideo =>
      'Video ini tidak dapat dibaca. Pilih file lain.';

  @override
  String get compressionInvalidOutput =>
      'Video yang dikodekan gagal diverifikasi. Video asli Anda tidak berubah.';

  @override
  String get compressionEncoderUnsupported =>
      'Perangkat ini tidak dapat mengkodekan resolusi atau laju bingkai yang dipilih. Turunkan pengaturan tersebut dan coba lagi.';

  @override
  String get compressionAudioDecoderUnsupported =>
      'Perangkat ini tidak dapat mendekode format audio ini untuk kompresi. Hapus audio atau gunakan sumber yang didukung.';

  @override
  String get compressionVideoDecoderUnsupported =>
      'Perangkat ini tidak dapat mendekode format video ini atau profil untuk kompresi. Pilih sumber atau perangkat lain.';

  @override
  String get compressionMp4NotStreamable =>
      'MP4 yang diekspor belum siap untuk streaming. Coba video atau perangkat lain.';

  @override
  String get compressionNoSpace =>
      'Tidak cukup penyimpanan bebas untuk mengompres video ini.';

  @override
  String get compressionHdrUnsupported =>
      'Perangkat ini tidak dapat memproses mode HDR yang dipilih. Coba konversi ke SDR.';

  @override
  String get compressionGeneralFailure =>
      'Kompresi tidak dapat diselesaikan. Coba pengaturan atau video lain.';

  @override
  String get aboutIdentitySection => 'Identitas aplikasi';

  @override
  String get aboutAppName => 'Nama aplikasi';

  @override
  String get aboutPackageName => 'Nama paket';

  @override
  String get aboutVersion => 'Versi';

  @override
  String get aboutBuildNumber => 'Nomor build';

  @override
  String get aboutEnvironmentSection => 'Perangkat dan build';

  @override
  String get aboutOperatingSystem => 'Sistem operasi';

  @override
  String get aboutOsVersion => 'Versi OS';

  @override
  String get aboutBuildMode => 'Mode build';

  @override
  String get aboutDebug => 'Debug';

  @override
  String get aboutRelease => 'Rilis';

  @override
  String get aboutToolchainSection => 'Dibuat dengan';

  @override
  String get aboutInstallationSection => 'Instalasi';

  @override
  String get aboutInstaller => 'Terpasang dari';

  @override
  String get aboutInstalledOn => 'Terpasang pada';

  @override
  String get aboutUpdatedOn => 'Diperbarui pada';

  @override
  String get aboutUnavailable => 'Tidak tersedia';

  @override
  String get aboutProjectSection => 'Proyek dan dukungan';

  @override
  String get aboutRepository => 'Repositori GitHub';

  @override
  String get aboutRepositorySubtitle => 'Lihat kode sumber Zumi';

  @override
  String get aboutReadme => 'Baca README';

  @override
  String get aboutReadmeSubtitle => 'Pelajari tentang Zumi di GitHub';

  @override
  String get aboutIssues => 'Laporkan masalah';

  @override
  String get aboutIssuesSubtitle => 'Lihat dan buat masalah di GitHub';

  @override
  String get aboutLatestRelease => 'Rilis terbaru';

  @override
  String get aboutLatestReleaseSubtitle => 'Lihat rilis dan unduhan';

  @override
  String get aboutDonate => 'Dukung Zumi';

  @override
  String get aboutDonateSubtitle => 'Buka halaman donasi resmi';

  @override
  String get aboutLinkError => 'Tidak dapat membuka tautan. Silakan coba lagi.';

  @override
  String get aboutDeveloperSection => 'Pengembang';

  @override
  String get aboutDeveloperName => 'Mostafa Sensei';

  @override
  String get aboutDeveloperProfile => 'Profil GitHub';

  @override
  String get aboutDeveloperProfileSubtitle => 'Lihat proyek dan detail kontak';

  @override
  String get maintenanceInProgress => 'Pemeliharaan sedang berlangsung';

  @override
  String get maintenanceMessage =>
      'Zumi sementara tidak tersedia. Silakan coba lagi nanti.';

  @override
  String get comingSoon => 'Segera hadir';

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
