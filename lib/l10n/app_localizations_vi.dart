// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get zumi => 'Zumi';

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
  String get cancel => 'Hủy';

  @override
  String get confirm => 'Xác nhận';

  @override
  String get pleaseWait => 'Vui lòng đợi...';

  @override
  String get ok => 'OK';

  @override
  String get compressVideosPrivatelyOnYourDevice =>
      'Nén video một cách riêng tư, ngay trên thiết bị của bạn.';

  @override
  String get welcomeToZumi => 'Chào mừng đến với Zumi';

  @override
  String get learnHowZumiCompressesYourVideosWithoutEverLeavingYourPhone =>
      'Tìm hiểu cách Zumi nén video của bạn mà không cần rời khỏi điện thoại.';

  @override
  String get signIn => 'Đăng nhập';

  @override
  String get signInToSyncYourPlanAndKeepYourPurchasesAvailableOnEveryDevice =>
      'Đăng nhập để đồng bộ kế hoạch của bạn và giữ các giao dịch mua khả dụng trên mọi thiết bị.';

  @override
  String get chooseAVideo => 'Chọn video';

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
  String get aboutZumi => 'Về Zumi';

  @override
  String get versionBuildNumberAndApplicationDetails =>
      'Phiên bản, số bản dựng và chi tiết ứng dụng.';

  @override
  String get aboutTheDeveloper => 'Về nhà phát triển';

  @override
  String get theDeveloperAndToolsBehindZumi =>
      'Nhà phát triển và các công cụ phía sau Zumi.';

  @override
  String get openSourceLicenses => 'Giấy phép mã nguồn mở';

  @override
  String get openSourcePackagesBundledWithZumi =>
      'Các gói mã nguồn mở đi kèm với Zumi.';

  @override
  String get privacyPolicy => 'Chính sách quyền riêng tư';

  @override
  String get howZumiHandlesYourVideosAndData =>
      'Cách Zumi xử lý video và dữ liệu của bạn.';

  @override
  String get termsOfService => 'Điều khoản dịch vụ';

  @override
  String get theTermsThatApplyToZumiAndItsPurchases =>
      'Các điều khoản áp dụng cho Zumi và các giao dịch mua của nó.';

  @override
  String get dataSafety => 'An toàn dữ liệu';

  @override
  String get summaryOfTheDataZumiCollectsAndWhy =>
      'Tóm tắt dữ liệu Zumi thu thập và lý do.';

  @override
  String get permissions => 'Quyền hạn';

  @override
  String get runtimePermissionsZumiRequestsAndWhyEachIsNeeded =>
      'Quyền hạn khi chạy mà Zumi yêu cầu và lý do cần thiết cho từng quyền.';

  @override
  String get faq => 'Câu hỏi thường gặp';

  @override
  String get answersToCommonQuestionsAboutCompressionAndBilling =>
      'Câu trả lời cho các câu hỏi phổ biến về nén và thanh toán.';

  @override
  String get support => 'Hỗ trợ';

  @override
  String get getHelpWithYourAccountOrAPurchase =>
      'Nhận trợ giúp về tài khoản hoặc việc mua hàng của bạn.';

  @override
  String get sendFeedback => 'Gửi phản hồi';

  @override
  String get reportAProblemOrSuggestAnImprovement =>
      'Báo cáo sự cố hoặc đề xuất cải tiến.';

  @override
  String get plans => 'Các gói';

  @override
  String get comparePlansAndSeeWhatEachOneUnlocks =>
      'So sánh các gói và xem những gì từng gói mở khóa.';

  @override
  String get planDetails => 'Chi tiết gói';

  @override
  String get benefitsLimitsAndPricingForThisPlan =>
      'Lợi ích, giới hạn và giá cả của gói này.';

  @override
  String get paymentMethods => 'Phương thức thanh toán';

  @override
  String get supportedWaysToPayIncludingStoreBilling =>
      'Các cách thanh toán được hỗ trợ, bao gồm cả thanh toán qua cửa hàng.';

  @override
  String get restorePurchases => 'Khôi phục mua hàng';

  @override
  String get reApplyAPurchaseMadeOnAnotherDevice =>
      'Áp dụng lại một giao dịch mua đã thực hiện trên thiết bị khác.';

  @override
  String get profile => 'Hồ sơ';

  @override
  String get yourIdentityPlanStatusAndAccountPreferences =>
      'Danh tính, trạng thái gói và tùy chọn tài khoản của bạn.';

  @override
  String get deleteAccount => 'Xóa tài khoản';

  @override
  String get permanentlyRemoveYourAccountAndItsServerSideData =>
      'Xóa vĩnh viễn tài khoản của bạn và dữ liệu phía máy chủ của nó.';

  @override
  String get rateZumi => 'Đánh giá Zumi';

  @override
  String get tellOthersHowZumiWorkedForYouOnTheStore =>
      'Cho người khác biết Zumi đã hoạt động như thế nào với bạn trên cửa hàng.';

  @override
  String get shareZumi => 'Chia sẻ Zumi';

  @override
  String get recommendZumiToAFriend => 'Đề xuất Zumi cho một người bạn.';

  @override
  String get appearanceLanguage => 'Giao diện & ngôn ngữ';

  @override
  String get compression => 'Nén';

  @override
  String get onDeviceAI => 'AI trên thiết bị';

  @override
  String get notificationsPrivacy => 'Thông báo & quyền riêng tư';

  @override
  String get plansPurchases => 'Gói & giao dịch mua';

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
  String get zumiAssistant => 'Trợ lý Zumi';

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
  String get comparePlansAndUpgrade => 'So sánh các gói và nâng cấp';

  @override
  String get paymentMethodsAndBilling => 'Phương thức thanh toán và hóa đơn';

  @override
  String get restoreYourPreviousPurchase =>
      'Khôi phục mua hàng trước đó của bạn';

  @override
  String get versionAndBuildDetails => 'Chi tiết phiên bản và bản dựng';

  @override
  String get theDeveloperBehindZumi => 'Nhà phát triển đứng sau Zumi';

  @override
  String get openSourcePackageLicenses => 'Giấy phép gói mã nguồn mở';

  @override
  String get howDataIsHandled => 'Cách dữ liệu được xử lý';

  @override
  String get rulesForUsingZumi => 'Quy tắc sử dụng Zumi';

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
  String get viewZumiSourceCode => 'Xem mã nguồn Zumi';

  @override
  String get readTheREADME => 'Đọc README';

  @override
  String get learnAboutZumiOnGitHub => 'Tìm hiểu về Zumi trên GitHub';

  @override
  String get reportAnIssue => 'Báo cáo sự cố';

  @override
  String get viewAndCreateGitHubIssues => 'Xem và tạo các vấn đề trên GitHub';

  @override
  String get latestRelease => 'Phiên bản mới nhất';

  @override
  String get viewReleasesAndDownloads => 'Xem các bản phát hành và tải xuống';

  @override
  String get supportZumi => 'Hỗ trợ Zumi';

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
  String get zumiIsTemporarilyUnavailablePleaseTryAgainLater =>
      'Zumi hiện tạm thời không khả dụng. Vui lòng thử lại sau.';

  @override
  String get comingSoon => 'Sắp ra mắt';

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
  String get clean => 'Clean';

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
}
