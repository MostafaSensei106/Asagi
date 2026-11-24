// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get asagi => 'Asagi';

  @override
  String get downloadFile => 'Tải xuống Tệp';

  @override
  String fileOpenedInBrowser(String fileName) {
    return 'Tệp đã mở trong trình duyệt: $fileName';
  }

  @override
  String fileSavedToGallery(String fileName) {
    return 'Tệp đã được lưu vào thư viện: $fileName';
  }

  @override
  String fileSavedToDocuments(String fileName) {
    return 'Tệp đã được lưu vào tài liệu: $fileName';
  }

  @override
  String get fileIsAlreadySaved => 'Tệp đã được lưu';

  @override
  String get error => 'Lỗi';

  @override
  String get info => 'Thông tin';

  @override
  String get success => 'Thành công';

  @override
  String get warning => 'Cảnh báo';

  @override
  String get paid => 'Đã thanh toán';

  @override
  String get unpaid => 'Chưa thanh toán';

  @override
  String get partial => 'Một phần';

  @override
  String get addressLineCannotBeEmpty => 'Dòng địa chỉ không được để trống';

  @override
  String get addressLineIsTooLong => 'Dòng địa chỉ quá dài';

  @override
  String get specialCharactersAreNotAllowed =>
      'Không được sử dụng ký tự đặc biệt';

  @override
  String get emojisAreNotAllowed => 'Không được sử dụng biểu tượng cảm xúc';

  @override
  String get cityCannotBeEmpty => 'Thành phố không được để trống';

  @override
  String get cityNameIsTooLong => 'Tên thành phố quá dài';

  @override
  String get cityContainsInvalidSpecialCharacters =>
      'Thành phố chứa ký tự đặc biệt không hợp lệ';

  @override
  String get addressLabelCannotBeEmpty => 'Nhãn địa chỉ không được để trống';

  @override
  String get addressLabelIsTooLong => 'Nhãn địa chỉ quá dài';

  @override
  String get emailCannotBeEmpty => 'Email không được để trống';

  @override
  String get invalidEmailFormat => 'Định dạng email không hợp lệ';

  @override
  String get emailContainsInvalidCharacters => 'Email chứa ký tự không hợp lệ';

  @override
  String get emailMustContain => 'Email phải chứa @';

  @override
  String get emailMustBeInLowercase => 'Email phải viết thường';

  @override
  String get arabicCharactersAreNotAllowed => 'Không được sử dụng ký tự Ả Rập';

  @override
  String get emojisAreNotAllowedInEmail =>
      'Không được sử dụng biểu tượng cảm xúc trong email';

  @override
  String get phoneNumberCannotBeEmpty => 'Số điện thoại không được để trống';

  @override
  String get invalidPhoneNumber => 'Số điện thoại không hợp lệ';

  @override
  String get phoneNumberMustBeAtLeast11Digits =>
      'Số điện thoại phải có ít nhất 11 chữ số';

  @override
  String get nameCannotBeEmpty => 'Tên không được để trống';

  @override
  String get invalidName => 'Tên không hợp lệ';

  @override
  String get nameMustBeAtLeast3Characters => 'Tên phải có ít nhất 3 ký tự';

  @override
  String get nameCannotExceed20Characters => 'Tên không được vượt quá 20 ký tự';

  @override
  String get nameContainsInvalidSpecialCharacters =>
      'Tên chứa ký tự đặc biệt không hợp lệ';

  @override
  String get emojisAreNotAllowedInName =>
      'Không được sử dụng biểu tượng cảm xúc trong tên';

  @override
  String get passwordCannotBeEmpty => 'Mật khẩu không được để trống';

  @override
  String get passwordMustContainUppercaseLowercaseNumberAndSpecialCharacter =>
      'Mật khẩu phải chứa chữ hoa, chữ thường, số và ký tự đặc biệt';

  @override
  String get passwordMustBeAtLeast8CharactersLong =>
      'Mật khẩu phải có ít nhất 8 ký tự';

  @override
  String get noInternetConnection => 'Không có kết nối internet';

  @override
  String get internetConnectionRestored => 'Kết nối internet đã được khôi phục';

  @override
  String get retry => 'Thử lại';

  @override
  String get confirm => 'Xác nhận';

  @override
  String get ok => 'OK';

  @override
  String get compressVideosPrivatelyOnYourDevice =>
      'Nén video một cách riêng tư, ngay trên thiết bị của bạn.';

  @override
  String get welcomeToAsagi => 'Chào mừng đến với Asagi';

  @override
  String get learnHowAsagiCompressesYourVideosWithoutEverLeavingYourPhone =>
      'Tìm hiểu cách Asagi nén video của bạn mà không cần rời khỏi điện thoại.';

  @override
  String get signIn => 'Đăng nhập';

  @override
  String get chooseAVideo => 'Chọn video';

  @override
  String get preparingSelectedVideo => 'Getting your video ready';

  @override
  String get pickAVideoFromYourGalleryToStartCompressing =>
      'Chọn một video từ thư viện của bạn để bắt đầu nén.';

  @override
  String get compressionSetup => 'Cài đặt nén';

  @override
  String get chooseResolutionBitrateAndOutputFormatBeforeYouStart =>
      'Chọn độ phân giải, tốc độ bit và định dạng đầu ra trước khi bắt đầu.';

  @override
  String get compressing => 'Đang nén';

  @override
  String get followTheLiveProgressOfYourCompressionJob =>
      'Theo dõi tiến trình trực tiếp của công việc nén.';

  @override
  String get compressionResult => 'Kết quả nén';

  @override
  String get compareTheBeforeAndAfterSizeThenSaveOrShareTheResult =>
      'So sánh kích thước trước và sau, sau đó lưu hoặc chia sẻ kết quả.';

  @override
  String get compressionHistory => 'Lịch sử nén';

  @override
  String get reviewTheVideosYouHaveCompressedOnThisDevice =>
      'Xem lại các video bạn đã nén trên thiết bị này.';

  @override
  String get settings => 'Cài đặt';

  @override
  String get appearance => 'Giao diện';

  @override
  String get themeColorSchemeAndMotionPreferences =>
      'Chủ đề, bảng màu và tùy chọn chuyển động.';

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
  String get language => 'Ngôn ngữ';

  @override
  String get appLanguageAndTextDirection =>
      'Ngôn ngữ ứng dụng và hướng văn bản.';

  @override
  String get compressionDefaults => 'Mặc định nén';

  @override
  String get defaultResolutionBitrateAndOutputFormat =>
      'Độ phân giải, tốc độ bit và định dạng đầu ra mặc định.';

  @override
  String get storageCleanup => 'Lưu trữ & dọn dẹp';

  @override
  String get storageUsageCacheSizeAndTemporaryFileCleanup =>
      'Sử dụng bộ nhớ, kích thước bộ nhớ đệm và dọn dẹp tệp tạm thời.';

  @override
  String get notifications => 'Thông báo';

  @override
  String get jobCompletionAndProductUpdateNotifications =>
      'Thông báo hoàn tất công việc và cập nhật sản phẩm.';

  @override
  String get privacy => 'Quyền riêng tư';

  @override
  String get onDeviceProcessingLocalLogsAndOptionalCrashReports =>
      'Xử lý trên thiết bị, nhật ký cục bộ và báo cáo sự cố tùy chọn.';

  @override
  String get aboutAsagi => 'Về Asagi';

  @override
  String get versionBuildNumberAndApplicationDetails =>
      'Phiên bản, số bản dựng và chi tiết ứng dụng.';

  @override
  String get aboutTheDeveloper => 'Về nhà phát triển';

  @override
  String get theDeveloperAndToolsBehindAsagi =>
      'Nhà phát triển và các công cụ phía sau Asagi.';

  @override
  String get openSourcePackagesBundledWithAsagi =>
      'Các gói mã nguồn mở đi kèm với Asagi.';

  @override
  String get privacyPolicy => 'Chính sách quyền riêng tư';

  @override
  String get howAsagiHandlesYourVideosAndData =>
      'Cách Asagi xử lý video và dữ liệu của bạn.';

  @override
  String get termsOfService => 'Điều khoản dịch vụ';

  @override
  String get dataSafety => 'An toàn dữ liệu';

  @override
  String get summaryOfTheDataAsagiCollectsAndWhy =>
      'Tóm tắt dữ liệu Asagi thu thập và lý do.';

  @override
  String get permissions => 'Quyền hạn';

  @override
  String get runtimePermissionsAsagiRequestsAndWhyEachIsNeeded =>
      'Quyền hạn khi chạy mà Asagi yêu cầu và lý do cần thiết cho từng quyền.';

  @override
  String get faq => 'Câu hỏi thường gặp';

  @override
  String get support => 'Hỗ trợ';

  @override
  String get sendFeedback => 'Gửi phản hồi';

  @override
  String get reportAProblemOrSuggestAnImprovement =>
      'Báo cáo sự cố hoặc đề xuất cải tiến.';

  @override
  String get profile => 'Hồ sơ';

  @override
  String get deleteAccount => 'Xóa tài khoản';

  @override
  String get permanentlyRemoveYourAccountAndItsServerSideData =>
      'Xóa vĩnh viễn tài khoản của bạn và dữ liệu phía máy chủ của nó.';

  @override
  String get rateAsagi => 'Đánh giá Asagi';

  @override
  String get tellOthersHowAsagiWorkedForYouOnTheStore =>
      'Cho người khác biết Asagi đã hoạt động như thế nào với bạn trên cửa hàng.';

  @override
  String get shareAsagi => 'Chia sẻ Asagi';

  @override
  String get recommendAsagiToAFriend => 'Đề xuất Asagi cho một người bạn.';

  @override
  String get appearanceLanguage => 'Giao diện & ngôn ngữ';

  @override
  String get compression => 'Nén';

  @override
  String get onDeviceAI => 'AI trên thiết bị';

  @override
  String get notificationsPrivacy => 'Thông báo & quyền riêng tư';

  @override
  String get about => 'Giới thiệu';

  @override
  String get legal => 'Pháp lý';

  @override
  String get helpFeedback => 'Trợ giúp & phản hồi';

  @override
  String get account => 'Tài khoản';

  @override
  String get themeAndAppLanguage => 'Chủ đề và ngôn ngữ ứng dụng';

  @override
  String get appLanguageAndDirection => 'Ngôn ngữ và hướng của ứng dụng';

  @override
  String get defaultQualityAndFormat => 'Chất lượng và định dạng mặc định';

  @override
  String get cacheAndStorageUsage => 'Sử dụng bộ nhớ đệm và lưu trữ';

  @override
  String get aiSettings => 'Cài đặt AI';

  @override
  String get asagiAssistant => 'Trợ lý Asagi';

  @override
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere =>
      'Một trợ lý cá nhân cho video của bạn sắp ra mắt. Bạn sẽ có thể hỏi về nén, tổ chức và các video đã lưu tại đây.';

  @override
  String get localModelsAndSmartTools => 'Mô hình cục bộ và công cụ thông minh';

  @override
  String get exploreLocalModelsAndFutureAIToolsTheseOptionsAreNotActiveYet =>
      'Khám phá các mô hình cục bộ và công cụ AI tương lai. Những tùy chọn này vẫn chưa được kích hoạt.';

  @override
  String get localModels => 'Mô hình cục bộ';

  @override
  String get browseAndDownloadSupportedModels =>
      'Duyệt và tải xuống các mô hình được hỗ trợ';

  @override
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere =>
      'Chọn một mô hình được hỗ trợ, tải nó xuống thiết bị này và quản lý các mô hình đã cài đặt tại đây.';

  @override
  String get importAModel => 'Nhập một mô hình';

  @override
  String get useACompatibleModelFromYourFiles =>
      'Sử dụng một mô hình tương thích từ các tệp của bạn';

  @override
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt =>
      'Chọn một tệp mô hình cục bộ tương thích và xem lại các yêu cầu của nó trước khi sử dụng.';

  @override
  String get smartFeatures => 'Tính năng thông minh';

  @override
  String get compressionOrganizationAndSearch => 'Nén, tổ chức và tìm kiếm';

  @override
  String
  get chooseWhichLocalAISuggestionsToUseForVideoCompressionOrganizationNamingAndSearch =>
      'Chọn các đề xuất AI cục bộ để sử dụng cho việc nén video, tổ chức, đặt tên và tìm kiếm.';

  @override
  String get modelPerformance => 'Hiệu suất mô hình';

  @override
  String get processingAndResourcePreferences => 'Tùy chọn xử lý và tài nguyên';

  @override
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels =>
      'Kiểm soát hệ thống xử lý và giới hạn tài nguyên cho các mô hình được hỗ trợ.';

  @override
  String get conversationSettings => 'Cài đặt hội thoại';

  @override
  String get streamingThinkingAndResponseLength =>
      'Phát trực tuyến, suy nghĩ và độ dài phản hồi';

  @override
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits =>
      'Cấu hình cách trợ lý phản hồi, bao gồm phát trực tiếp, chế độ suy nghĩ, lấy mẫu và giới hạn phản hồi.';

  @override
  String get imagesAndAudio => 'Hình ảnh và âm thanh';

  @override
  String get controlMultimodalInputs => 'Kiểm soát các đầu vào đa phương tiện';

  @override
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos =>
      'Chọn xem các mô hình tương thích có thể phân tích hình ảnh và âm thanh đã chọn từ video của bạn hay không.';

  @override
  String get semanticSearch => 'Tìm kiếm ngữ nghĩa';

  @override
  String get embeddingsAndLocalIndexing => 'Nhúng và lập chỉ mục cục bộ';

  @override
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning =>
      'Quản lý mô hình nhúng cục bộ và chỉ mục tìm kiếm để tìm video và khoảnh khắc theo ý nghĩa.';

  @override
  String get toolsAndStructuredOutput => 'Công cụ và đầu ra có cấu trúc';

  @override
  String get actionsSchemasAndConfirmations =>
      'Các hành động, sơ đồ và xác nhận';

  @override
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation =>
      'Quản lý các hành động trợ lý được hỗ trợ và các phản hồi có cấu trúc. Các hành động ảnh hưởng đến tệp sẽ yêu cầu bạn xác nhận.';

  @override
  String get models => 'Mô hình';

  @override
  String get assistantExperience => 'Trải nghiệm trợ lý';

  @override
  String get smartCapabilities => 'Khả năng thông minh';

  @override
  String get performance => 'Hiệu suất';

  @override
  String get yourCompressedVideoHistory => 'Lịch sử video nén của bạn';

  @override
  String get completionAndUpdateAlerts => 'Cảnh báo hoàn thành và cập nhật';

  @override
  String get yourDataStaysLocal => 'Dữ liệu của bạn vẫn giữ tại chỗ';

  @override
  String get versionAndBuildDetails => 'Chi tiết phiên bản và bản dựng';

  @override
  String get theDeveloperBehindAsagi => 'Nhà phát triển đứng sau Asagi';

  @override
  String get openSourcePackageLicenses => 'Giấy phép gói mã nguồn mở';

  @override
  String get howDataIsHandled => 'Cách dữ liệu được xử lý';

  @override
  String get rulesForUsingAsagi => 'Quy tắc sử dụng Asagi';

  @override
  String get whatDataWeCollect => 'Dữ liệu chúng tôi thu thập';

  @override
  String get whyWeNeedPermissions => 'Tại sao chúng ta cần quyền';

  @override
  String get answersToCommonQuestions =>
      'Câu trả lời cho các câu hỏi thường gặp';

  @override
  String get reachTheDeveloperDirectly =>
      'Liên hệ trực tiếp với nhà phát triển';

  @override
  String get sendUsYourFeedback => 'Gửi phản hồi của bạn cho chúng tôi';

  @override
  String get pickVideo => 'Chọn video';

  @override
  String get targetSizeMB => 'Kích thước mục tiêu (MB)';

  @override
  String get startCompression => 'Bắt đầu nén';

  @override
  String get pause => 'Tạm dừng';

  @override
  String get resume => 'Tiếp tục';

  @override
  String get viewResult => 'Xem kết quả';

  @override
  String get saveToGallery => 'Lưu vào thư viện';

  @override
  String get shareVideo => 'Chia sẻ video';

  @override
  String get originalSize => 'Kích thước gốc';

  @override
  String get outputSize => 'Kích thước xuất';

  @override
  String get noCompressedVideosYet => 'Chưa có video nào được nén';

  @override
  String get savedToGallery => 'Đã lưu vào thư viện';

  @override
  String get enterATargetSizeGreaterThanZero =>
      'Nhập kích thước mục tiêu lớn hơn không';

  @override
  String get compressionCancelled => 'Nén đã bị hủy';

  @override
  String get thisVideoCouldNotReachTheSelectedSizeTryALargerTargetSize =>
      'Video này không thể đạt kích thước đã chọn. Thử kích thước mục tiêu lớn hơn.';

  @override
  String get theSelectedSizeIsTooSmallForThisVideoChooseALargerSize =>
      'Kích thước đã chọn quá nhỏ cho video này. Chọn kích thước lớn hơn.';

  @override
  String get originalPreview => 'Xem trước ban đầu';

  @override
  String get compressedPreview => 'Xem trước nén';

  @override
  String get targetPreset => 'Cài đặt mục tiêu';

  @override
  String get customSize => 'Kích thước tùy chỉnh';

  @override
  String get previewUnavailable => 'Xem trước không khả dụng';

  @override
  String get advancedControls => 'Điều khiển nâng cao';

  @override
  String get automatic => 'Tự động';

  @override
  String get maximumResolution => 'Độ phân giải tối đa';

  @override
  String get originalResolution => 'Độ phân giải gốc';

  @override
  String get maximumFrameRate => 'Tốc độ khung hình tối đa';

  @override
  String get audioBitrate => 'Tốc độ bit âm thanh';

  @override
  String get removeAudio => 'Loại bỏ âm thanh';

  @override
  String get videoBitrateCeilingKbps => 'Giới hạn tốc độ bit video (kbps)';

  @override
  String get hdrHandling => 'Xử lý HDR';

  @override
  String get convertToSDR => 'Chuyển sang SDR';

  @override
  String get keepHDRWhenSupported => 'Giữ HDR khi được hỗ trợ';

  @override
  String get beforeYouStart => 'Trước khi bạn bắt đầu';

  @override
  String get calculatingCompressionPlan => 'Đang tính toán kế hoạch nén…';

  @override
  String get plannedResolution => 'Độ phân giải dự kiến';

  @override
  String get plannedVideoBitrate => 'Tốc độ bit video dự kiến';

  @override
  String get plannedAudioBitrate => 'Tốc độ bit âm thanh dự kiến';

  @override
  String
  get reEncodingConvertsAudioToAACStereoDolbyAtmosAndDTSSpatialAudioWillNotBePreserved =>
      'Việc mã hóa lại sẽ chuyển âm thanh sang AAC stereo. Dolby Atmos và âm thanh không gian DTS sẽ không được giữ lại.';

  @override
  String
  get thisTargetIsTooSmallForAUsableVideoIncreaseTheSizeOrLowerOtherLimits =>
      'Mục tiêu này quá nhỏ để có một video sử dụng được. Tăng kích thước hoặc hạ các giới hạn khác.';

  @override
  String get theSelectedTargetMayReduceVideoQuality =>
      'Mục tiêu đã chọn có thể làm giảm chất lượng video.';

  @override
  String get theSourceIsAlreadyWithinTheSizeLimit =>
      'Nguồn đã nằm trong giới hạn kích thước.';

  @override
  String get enterABitrateOfAtLeast150KbpsOrLeaveBlankForAutomatic =>
      'Nhập tốc độ bit ít nhất 150 kbps, hoặc để trống để tự động.';

  @override
  String get enterAnEvenResolutionFrom240To16384OrLeaveBlankForAutomatic =>
      'Nhập độ phân giải chẵn từ 240 đến 16384, hoặc để trống để tự động.';

  @override
  String get videoPosition => 'Vị trí video';

  @override
  String
  get aPreviousCompressionWasInterruptedItsTemporaryFilesWereCleanedUpYouCanSelectTheVideoAndTryAgain =>
      'Một lần nén trước đã bị gián đoạn. Các tệp tạm thời đã được dọn dẹp; bạn có thể chọn video và thử lại.';

  @override
  String get dismiss => 'Bỏ qua';

  @override
  String get clearHistory => 'Xóa lịch sử';

  @override
  String get removeAllHistoryEntriesSavedVideosWillRemainOnYourDevice =>
      'Xóa tất cả các mục lịch sử? Video đã lưu sẽ vẫn còn trên thiết bị của bạn.';

  @override
  String get attempts => 'Số lần thử';

  @override
  String get targetSize => 'Kích thước mục tiêu';

  @override
  String get outputResolution => 'Độ phân giải đầu ra';

  @override
  String get thisVideoCouldNotBeReadChooseAnotherFile =>
      'Không thể đọc video này. Chọn một tệp khác.';

  @override
  String get theEncodedVideoFailedVerificationYourOriginalVideoWasNotChanged =>
      'Video được mã hóa không vượt qua kiểm tra. Video gốc của bạn không bị thay đổi.';

  @override
  String
  get thisDeviceCannotEncodeTheSelectedResolutionOrFrameRateLowerThatSettingAndTryAgain =>
      'Thiết bị này không thể mã hóa độ phân giải hoặc tốc độ khung hình đã chọn. Hạ cài đặt đó và thử lại.';

  @override
  String
  get thisDeviceCannotDecodeThisAudioFormatForCompressionRemoveAudioOrUseASupportedSource =>
      'Thiết bị này không thể giải mã định dạng âm thanh này để nén. Xóa âm thanh hoặc sử dụng nguồn được hỗ trợ.';

  @override
  String
  get thisDeviceCannotDecodeThisVideoFormatOrProfileForCompressionChooseAnotherSourceOrDevice =>
      'Thiết bị này không thể giải mã định dạng video hoặc hồ sơ nén này. Chọn nguồn hoặc thiết bị khác.';

  @override
  String get theExportedMP4IsNotReadyForStreamingTryAnotherVideoOrDevice =>
      'Tệp MP4 xuất ra chưa sẵn sàng để phát trực tuyến. Thử video hoặc thiết bị khác.';

  @override
  String get thereIsNotEnoughFreeStorageToCompressThisVideo =>
      'Không đủ dung lượng lưu trữ để nén video này.';

  @override
  String get thisDeviceCannotProcessTheSelectedHDRModeTryConvertingToSDR =>
      'Thiết bị này không thể xử lý chế độ HDR đã chọn. Thử chuyển đổi sang SDR.';

  @override
  String get compressionCouldNotBeCompletedTryAnotherSettingOrVideo =>
      'Quá trình nén không thể hoàn tất. Thử thiết lập hoặc video khác.';

  @override
  String get appIdentity => 'Nhận diện ứng dụng';

  @override
  String get appName => 'Tên ứng dụng';

  @override
  String get packageName => 'Tên gói';

  @override
  String get version => 'Phiên bản';

  @override
  String get buildNumber => 'Số bản dựng';

  @override
  String get deviceAndBuild => 'Thiết bị và bản dựng';

  @override
  String get operatingSystem => 'Hệ điều hành';

  @override
  String get osVersion => 'Phiên bản OS';

  @override
  String get buildMode => 'Chế độ xây dựng';

  @override
  String get debug => 'Gỡ lỗi';

  @override
  String get release => 'Phát hành';

  @override
  String get builtWith => 'Xây dựng với';

  @override
  String get installation => 'Cài đặt';

  @override
  String get installedFrom => 'Đã cài đặt từ';

  @override
  String get installedOn => 'Đã cài đặt vào';

  @override
  String get updatedOn => 'Cập nhật vào';

  @override
  String get unavailable => 'Không có sẵn';

  @override
  String get projectAndSupport => 'Dự án và hỗ trợ';

  @override
  String get githubRepository => 'Kho lưu trữ GitHub';

  @override
  String get viewAsagiSourceCode => 'Xem mã nguồn Asagi';

  @override
  String get readTheREADME => 'Đọc README';

  @override
  String get learnAboutAsagiOnGitHub => 'Tìm hiểu về Asagi trên GitHub';

  @override
  String get reportAnIssue => 'Báo cáo sự cố';

  @override
  String get viewAndCreateGitHubIssues => 'Xem và tạo các vấn đề trên GitHub';

  @override
  String get latestRelease => 'Phiên bản mới nhất';

  @override
  String get viewReleasesAndDownloads => 'Xem các bản phát hành và tải xuống';

  @override
  String get supportAsagi => 'Hỗ trợ Asagi';

  @override
  String get openTheOfficialDonationPage => 'Mở trang quyên góp chính thức';

  @override
  String get couldNotOpenTheLinkPleaseTryAgain =>
      'Không thể mở liên kết. Vui lòng thử lại.';

  @override
  String get developer => 'Nhà phát triển';

  @override
  String get mostafaSensei => 'Mostafa Sensei';

  @override
  String get githubProfile => 'Hồ sơ GitHub';

  @override
  String get seeProjectsAndContactDetails => 'Xem dự án và thông tin liên hệ';

  @override
  String get maintenanceInProgress => 'Đang bảo trì';

  @override
  String get asagiIsTemporarilyUnavailablePleaseTryAgainLater =>
      'Asagi hiện tạm thời không khả dụng. Vui lòng thử lại sau.';

  @override
  String get comingSoon => 'Sắp ra mắt';

  @override
  String get loading => 'Loading…';

  @override
  String get pleaseWait => 'Vui lòng đợi...';

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
  String get cancel => 'Hủy';

  @override
  String get clean => 'Clean';

  @override
  String get openSourceLicenses => 'Giấy phép mã nguồn mở';

  @override
  String get storageJobsLoadFailed => 'Interrupted jobs could not be loaded.';

  @override
  String get cleanupInterruptedJobsFailed =>
      'The interrupted files could not be cleaned.';

  @override
  String get languageName => 'Tiếng Việt';

  @override
  String get countryCode => 'VN';

  @override
  String countryName(String countryCode) {
    String _temp0 = intl.Intl.selectLogic(countryCode, {
      'AE': 'Các Tiểu Vương quốc Ả Rập Thống nhất',
      'AT': 'Áo',
      'AU': 'Úc',
      'BE': 'Bỉ',
      'BH': 'Bahrain',
      'BR': 'Brazil',
      'CA': 'Canada',
      'CH': 'Thụy Sĩ',
      'CN': 'Trung Quốc',
      'DE': 'Đức',
      'DJ': 'Djibouti',
      'DZ': 'Algeria',
      'EG': 'Ai Cập',
      'ES': 'Tây Ban Nha',
      'FR': 'Pháp',
      'GB': 'Vương quốc Anh',
      'HK': 'Đặc khu Hành chính Hồng Kông, Trung Quốc',
      'ID': 'Indonesia',
      'IQ': 'Iraq',
      'IT': 'Italy',
      'JO': 'Jordan',
      'JP': 'Nhật Bản',
      'KM': 'Comoros',
      'KR': 'Hàn Quốc',
      'KW': 'Kuwait',
      'LB': 'Li-băng',
      'LY': 'Libya',
      'MA': 'Ma-rốc',
      'MR': 'Mauritania',
      'MX': 'Mexico',
      'NL': 'Hà Lan',
      'OM': 'Oman',
      'PL': 'Ba Lan',
      'PS': 'Lãnh thổ Palestine',
      'PT': 'Bồ Đào Nha',
      'QA': 'Qatar',
      'RU': 'Nga',
      'SA': 'Ả Rập Xê-út',
      'SD': 'Sudan',
      'SE': 'Thụy Điển',
      'SG': 'Singapore',
      'SO': 'Somalia',
      'SY': 'Syria',
      'TH': 'Thái Lan',
      'TN': 'Tunisia',
      'TR': 'Thổ Nhĩ Kỳ',
      'TW': 'Đài Loan',
      'US': 'Hoa Kỳ',
      'VN': 'Việt Nam',
      'YE': 'Yemen',
      'other': 'Quốc gia',
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
  String get nativeEngineSpeed => 'Native compression engine';

  @override
  String get nativeEngineDescription =>
      'Uses Android’s native media engine to compress videos on your device.';

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

  @override
  String get compressionAndroidOnly =>
      'Tính năng nén video hiện chỉ có trên Android.';

  @override
  String get notificationPermissionTitle => 'Enable notifications';

  @override
  String get notificationPermissionBody =>
      'Tap to allow compression alerts and updates.';

  @override
  String get notificationPermissionSettingsBody =>
      'Notifications are blocked. Tap to open system settings.';

  @override
  String get notificationUnavailable =>
      'Notifications are currently supported on Android.';

  @override
  String get notificationSetupFailed =>
      'Notification settings could not be applied. Tap to retry.';

  @override
  String get notificationChannelBlocked =>
      'A notification channel is blocked in system settings.';

  @override
  String get notificationProgressDetails =>
      'Show progress details in the background. A basic service notification remains while compression runs.';

  @override
  String get notificationProgressTitle => 'Compressing video';

  @override
  String get notificationProgressBody => 'Tap to view your compression job.';

  @override
  String get notificationPausedTitle => 'Compression paused';

  @override
  String get notificationSavingTitle => 'Saving compressed video';

  @override
  String get notificationCompletedTitle => 'Video ready';

  @override
  String notificationCompletedBody(String name, String size, String saved) {
    return '$name · $size MB · Saved $saved MB';
  }

  @override
  String notificationCompletedWarningBody(String name, String size) {
    return '$name · $size MB · Review the result warning';
  }

  @override
  String get notificationFailedTitle => 'Compression interrupted';

  @override
  String notificationInterruptedBody(String count) {
    return '$count interrupted jobs are available to review.';
  }

  @override
  String notificationReleaseTitle(String version) {
    return 'Asagi $version is available';
  }

  @override
  String get notificationSavingsTitle => 'Your weekly storage savings';

  @override
  String notificationSavingsBody(String count, String saved) {
    return '$count videos · $saved MB saved';
  }

  @override
  String get hapticsButtons => 'Buttons and taps';

  @override
  String get hapticsButtonsDescription =>
      'Plays a light pulse when you press an action button. This setting applies across the app; selection changes and swipe gestures have their own controls.';

  @override
  String get hapticsSelections => 'Selection changes';

  @override
  String get hapticsSelectionsDescription =>
      'Plays a brief tick when you change a switch, checkbox, or selected value. Disable it to adjust preferences without vibration while keeping button feedback unchanged.';

  @override
  String get hapticsGestures => 'Gestures';

  @override
  String get hapticsGesturesDescription =>
      'Plays a light pulse when a swipe reaches the point that reveals or triggers an action. It helps you feel the action threshold without vibrating throughout the drag.';

  @override
  String get hapticsSuccess => 'Successful completion';

  @override
  String get hapticsSuccessDescription =>
      'Plays a confirmation pulse when video compression finishes. In the background the completion notification provides the vibration, so the same result does not vibrate twice. Sound on completion is controlled separately.';

  @override
  String get hapticsErrors => 'Errors and interruptions';

  @override
  String get hapticsErrorsDescription =>
      'Plays a stronger pulse if compression fails or is interrupted. In the background this follows the error notification. Cancelling a job yourself does not trigger an error pulse.';

  @override
  String get notificationJobUnavailable =>
      'This job is no longer available. Your history is shown instead.';

  @override
  String get notificationRecoveryHint =>
      'Review interrupted jobs from the home screen.';

  @override
  String get notificationProgressChannel => 'Compression status';

  @override
  String get notificationCompletionChannel => 'Completed videos';

  @override
  String get notificationErrorChannel => 'Compression problems';

  @override
  String get notificationReleaseChannel => 'App releases';

  @override
  String get notificationSavingsChannel => 'Storage savings';

  @override
  String get automaticColorSchemeDescription =>
      'Auto uses a vivid Asagi palette. Each option previews its own accent colors.';

  @override
  String get colorSchemeTonalSpot => 'Tonal spot';

  @override
  String get colorSchemeFidelity => 'Fidelity';

  @override
  String get colorSchemeContent => 'Content';

  @override
  String get colorSchemeExpressive => 'Expressive';

  @override
  String get colorSchemeFruitSalad => 'Fruit salad';

  @override
  String get colorSchemeMonochrome => 'Monochrome';

  @override
  String get colorSchemeNeutral => 'Neutral';

  @override
  String get colorSchemeRainbow => 'Rainbow';

  @override
  String get colorSchemeVibrant => 'Vibrant';

  @override
  String get hapticsButtonsShort => 'Button press feedback';

  @override
  String get hapticsSelectionsShort => 'Feedback when choices change';

  @override
  String get hapticsGesturesShort => 'Swipe action feedback';

  @override
  String get hapticsSuccessShort => 'A pulse when a video is ready';

  @override
  String get hapticsErrorsShort => 'Feedback when a job fails';
}
