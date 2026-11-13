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
  String fileSavedToDcim(String fileName) {
    return 'Tệp đã được lưu vào thư viện: $fileName';
  }

  @override
  String fileSavedToDocuments(String fileName) {
    return 'Tệp đã được lưu vào tài liệu: $fileName';
  }

  @override
  String get fileAlreadySaved => 'Tệp đã được lưu';

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
  String get error_address_line_cant_be_empty =>
      'Dòng địa chỉ không được để trống';

  @override
  String get error_address_line_too_long => 'Dòng địa chỉ quá dài';

  @override
  String get error_address_invalid_special_characters =>
      'Không được sử dụng ký tự đặc biệt';

  @override
  String get error_address_emoji_not_allowed =>
      'Không được sử dụng biểu tượng cảm xúc';

  @override
  String get error_city_cant_be_empty => 'Thành phố không được để trống';

  @override
  String get error_city_too_long => 'Tên thành phố quá dài';

  @override
  String get error_city_invalid_special_characters =>
      'Thành phố chứa ký tự đặc biệt không hợp lệ';

  @override
  String get error_address_label_cant_be_empty =>
      'Nhãn địa chỉ không được để trống';

  @override
  String get error_address_label_too_long => 'Nhãn địa chỉ quá dài';

  @override
  String get error_email_cant_be_empty => 'Email không được để trống';

  @override
  String get error_email_not_invalid_format => 'Định dạng email không hợp lệ';

  @override
  String get error_email_contains_invalid_characters =>
      'Email chứa ký tự không hợp lệ';

  @override
  String get error_email_must_contain_at_symbol => 'Email phải chứa @';

  @override
  String get error_email_must_be_in_lowercase => 'Email phải viết thường';

  @override
  String get error_arabic_not_allowed => 'Không được sử dụng ký tự Ả Rập';

  @override
  String get error_email_emoji_not_allowed =>
      'Không được sử dụng biểu tượng cảm xúc trong email';

  @override
  String get error_phone_number_cant_be_empty =>
      'Số điện thoại không được để trống';

  @override
  String get error_phone_number_invalid => 'Số điện thoại không hợp lệ';

  @override
  String get error_phone_number_min_length =>
      'Số điện thoại phải có ít nhất 11 chữ số';

  @override
  String get error_name_cant_be_empty => 'Tên không được để trống';

  @override
  String get error_name_invalid => 'Tên không hợp lệ';

  @override
  String get error_name_too_short_at_least_3_characters =>
      'Tên phải có ít nhất 3 ký tự';

  @override
  String get error_name_too_long_maximum_20_characters =>
      'Tên không được vượt quá 20 ký tự';

  @override
  String get error_name_invalid_special_characters =>
      'Tên chứa ký tự đặc biệt không hợp lệ';

  @override
  String get error_name_emoji_not_allowed =>
      'Không được sử dụng biểu tượng cảm xúc trong tên';

  @override
  String get error_password_cant_be_empty => 'Mật khẩu không được để trống';

  @override
  String
  get error_password_must_contain_uppercase_lowercase_number_and_special_character =>
      'Mật khẩu phải chứa chữ hoa, chữ thường, số và ký tự đặc biệt';

  @override
  String get error_password_must_be_at_least_8_characters_long =>
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
  String get settingsGroupAppearance => 'Giao diện & ngôn ngữ';

  @override
  String get settingsGroupCompression => 'Nén';

  @override
  String get settingsGroupAi => 'AI trên thiết bị';

  @override
  String get settingsGroupPrivacy => 'Thông báo & quyền riêng tư';

  @override
  String get settingsGroupPlans => 'Gói & giao dịch mua';

  @override
  String get settingsGroupAbout => 'Giới thiệu';

  @override
  String get settingsGroupLegal => 'Pháp lý';

  @override
  String get settingsGroupHelp => 'Trợ giúp & phản hồi';

  @override
  String get settingsGroupAccount => 'Tài khoản';

  @override
  String get settingsAppearanceSubtitle => 'Chủ đề và ngôn ngữ ứng dụng';

  @override
  String get settingsLanguageSubtitle => 'Ngôn ngữ và hướng của ứng dụng';

  @override
  String get settingsCompressionSubtitle => 'Chất lượng và định dạng mặc định';

  @override
  String get settingsStorageSubtitle => 'Sử dụng bộ nhớ đệm và lưu trữ';

  @override
  String get aiSettings => 'Cài đặt AI';

  @override
  String get zumiAssistant => 'Trợ lý Zumi';

  @override
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere =>
      'Một trợ lý cá nhân cho video của bạn sắp ra mắt. Bạn sẽ có thể hỏi về nén, tổ chức và các video đã lưu tại đây.';

  @override
  String get settingsAiSubtitle => 'Mô hình cục bộ và công cụ thông minh';

  @override
  String get exploreLocalModelsAndFutureAiToolsTheseOptionsAreNotActiveYet =>
      'Khám phá các mô hình cục bộ và công cụ AI tương lai. Những tùy chọn này vẫn chưa được kích hoạt.';

  @override
  String get localModels => 'Mô hình cục bộ';

  @override
  String get aiModelsSubtitle => 'Duyệt và tải xuống các mô hình được hỗ trợ';

  @override
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere =>
      'Chọn một mô hình được hỗ trợ, tải nó xuống thiết bị này và quản lý các mô hình đã cài đặt tại đây.';

  @override
  String get importAModel => 'Nhập một mô hình';

  @override
  String get aiImportSubtitle =>
      'Sử dụng một mô hình tương thích từ các tệp của bạn';

  @override
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt =>
      'Chọn một tệp mô hình cục bộ tương thích và xem lại các yêu cầu của nó trước khi sử dụng.';

  @override
  String get smartFeatures => 'Tính năng thông minh';

  @override
  String get aiFeaturesSubtitle => 'Nén, tổ chức và tìm kiếm';

  @override
  String
  get chooseWhichLocalAiSuggestionsToUseForVideoCompressionOrganizationNamingAndSearch =>
      'Chọn các đề xuất AI cục bộ để sử dụng cho việc nén video, tổ chức, đặt tên và tìm kiếm.';

  @override
  String get modelPerformance => 'Hiệu suất mô hình';

  @override
  String get aiRuntimeSubtitle => 'Tùy chọn xử lý và tài nguyên';

  @override
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels =>
      'Kiểm soát hệ thống xử lý và giới hạn tài nguyên cho các mô hình được hỗ trợ.';

  @override
  String get conversationSettings => 'Cài đặt hội thoại';

  @override
  String get aiChatSettingsSubtitle =>
      'Phát trực tuyến, suy nghĩ và độ dài phản hồi';

  @override
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits =>
      'Cấu hình cách trợ lý phản hồi, bao gồm phát trực tiếp, chế độ suy nghĩ, lấy mẫu và giới hạn phản hồi.';

  @override
  String get imagesAndAudio => 'Hình ảnh và âm thanh';

  @override
  String get aiMediaSubtitle => 'Kiểm soát các đầu vào đa phương tiện';

  @override
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos =>
      'Chọn xem các mô hình tương thích có thể phân tích hình ảnh và âm thanh đã chọn từ video của bạn hay không.';

  @override
  String get semanticSearch => 'Tìm kiếm ngữ nghĩa';

  @override
  String get aiSearchSubtitle => 'Nhúng và lập chỉ mục cục bộ';

  @override
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning =>
      'Quản lý mô hình nhúng cục bộ và chỉ mục tìm kiếm để tìm video và khoảnh khắc theo ý nghĩa.';

  @override
  String get toolsAndStructuredOutput => 'Công cụ và đầu ra có cấu trúc';

  @override
  String get aiToolsSubtitle => 'Các hành động, sơ đồ và xác nhận';

  @override
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation =>
      'Quản lý các hành động trợ lý được hỗ trợ và các phản hồi có cấu trúc. Các hành động ảnh hưởng đến tệp sẽ yêu cầu bạn xác nhận.';

  @override
  String get aiGroupModels => 'Mô hình';

  @override
  String get aiGroupExperience => 'Trải nghiệm trợ lý';

  @override
  String get aiGroupCapabilities => 'Khả năng thông minh';

  @override
  String get aiGroupPerformance => 'Hiệu suất';

  @override
  String get compressionHistorySubtitle => 'Lịch sử video nén của bạn';

  @override
  String get settingsNotificationsSubtitle => 'Cảnh báo hoàn thành và cập nhật';

  @override
  String get settingsPrivacySubtitle => 'Dữ liệu của bạn vẫn giữ tại chỗ';

  @override
  String get plansSubtitle => 'So sánh các gói và nâng cấp';

  @override
  String get plansMethodsSubtitle => 'Phương thức thanh toán và hóa đơn';

  @override
  String get plansRestoreSubtitle => 'Khôi phục mua hàng trước đó của bạn';

  @override
  String get aboutAppSubtitle => 'Chi tiết phiên bản và bản dựng';

  @override
  String get aboutDeveloperSubtitle => 'Nhà phát triển đứng sau Zumi';

  @override
  String get aboutLicensesSubtitle => 'Giấy phép gói mã nguồn mở';

  @override
  String get legalPrivacySubtitle => 'Cách dữ liệu được xử lý';

  @override
  String get legalTermsSubtitle => 'Quy tắc sử dụng Zumi';

  @override
  String get legalDataSafetySubtitle => 'Dữ liệu chúng tôi thu thập';

  @override
  String get legalPermissionsSubtitle => 'Tại sao chúng ta cần quyền';

  @override
  String get helpFaqSubtitle => 'Câu trả lời cho các câu hỏi thường gặp';

  @override
  String get helpSupportSubtitle => 'Liên hệ trực tiếp với nhà phát triển';

  @override
  String get helpFeedbackSubtitle => 'Gửi phản hồi của bạn cho chúng tôi';

  @override
  String get compressionPickVideo => 'Chọn video';

  @override
  String get compressionTargetMb => 'Kích thước mục tiêu (MB)';

  @override
  String get compressionStart => 'Bắt đầu nén';

  @override
  String get compressionPause => 'Tạm dừng';

  @override
  String get compressionResume => 'Tiếp tục';

  @override
  String get compressionViewResult => 'Xem kết quả';

  @override
  String get compressionSaveGallery => 'Lưu vào thư viện';

  @override
  String get compressionShare => 'Chia sẻ video';

  @override
  String get compressionOriginalSize => 'Kích thước gốc';

  @override
  String get compressionOutputSize => 'Kích thước xuất';

  @override
  String get compressionEmptyHistory => 'Chưa có video nào được nén';

  @override
  String get compressionSavedGallery => 'Đã lưu vào thư viện';

  @override
  String get compressionInvalidTarget =>
      'Nhập kích thước mục tiêu lớn hơn không';

  @override
  String get compressionCancelled => 'Nén đã bị hủy';

  @override
  String get compressionTargetExceeded =>
      'Video này không thể đạt kích thước đã chọn. Thử kích thước mục tiêu lớn hơn.';

  @override
  String get compressionTargetInfeasible =>
      'Kích thước đã chọn quá nhỏ cho video này. Chọn kích thước lớn hơn.';

  @override
  String get compressionPreviewBefore => 'Xem trước ban đầu';

  @override
  String get compressionPreviewAfter => 'Xem trước nén';

  @override
  String get compressionPreset => 'Cài đặt mục tiêu';

  @override
  String get compressionCustom => 'Kích thước tùy chỉnh';

  @override
  String get compressionPreviewUnavailable => 'Xem trước không khả dụng';

  @override
  String get compressionAdvanced => 'Điều khiển nâng cao';

  @override
  String get compressionAutomatic => 'Tự động';

  @override
  String get compressionResolutionLimit => 'Độ phân giải tối đa';

  @override
  String get compressionSourceResolution => 'Độ phân giải gốc';

  @override
  String get compressionFrameRateLimit => 'Tốc độ khung hình tối đa';

  @override
  String get compressionAudioQuality => 'Tốc độ bit âm thanh';

  @override
  String get compressionRemoveAudio => 'Loại bỏ âm thanh';

  @override
  String get compressionVideoBitrateLimit => 'Giới hạn tốc độ bit video (kbps)';

  @override
  String get compressionHdrPolicy => 'Xử lý HDR';

  @override
  String get compressionHdrConvert => 'Chuyển sang SDR';

  @override
  String get compressionHdrPreserve => 'Giữ HDR khi được hỗ trợ';

  @override
  String get compressionPlanPreview => 'Trước khi bạn bắt đầu';

  @override
  String get compressionPlanLoading => 'Đang tính toán kế hoạch nén…';

  @override
  String get compressionPlanResolution => 'Độ phân giải dự kiến';

  @override
  String get compressionPlanVideoBitrate => 'Tốc độ bit video dự kiến';

  @override
  String get compressionPlanAudioBitrate => 'Tốc độ bit âm thanh dự kiến';

  @override
  String get compressionAudioConversionNote =>
      'Việc mã hóa lại sẽ chuyển âm thanh sang AAC stereo. Dolby Atmos và âm thanh không gian DTS sẽ không được giữ lại.';

  @override
  String get compressionPlanTooSmall =>
      'Mục tiêu này quá nhỏ để có một video sử dụng được. Tăng kích thước hoặc hạ các giới hạn khác.';

  @override
  String get compressionPlanLowQuality =>
      'Mục tiêu đã chọn có thể làm giảm chất lượng video.';

  @override
  String get compressionPlanAlreadyWithinLimit =>
      'Nguồn đã nằm trong giới hạn kích thước.';

  @override
  String get compressionInvalidBitrate =>
      'Nhập tốc độ bit ít nhất 150 kbps, hoặc để trống để tự động.';

  @override
  String get compressionInvalidResolution =>
      'Nhập độ phân giải chẵn từ 240 đến 16384, hoặc để trống để tự động.';

  @override
  String get compressionSeek => 'Vị trí video';

  @override
  String get compressionInterrupted =>
      'Một lần nén trước đã bị gián đoạn. Các tệp tạm thời đã được dọn dẹp; bạn có thể chọn video và thử lại.';

  @override
  String get compressionDismiss => 'Bỏ qua';

  @override
  String get compressionClearHistory => 'Xóa lịch sử';

  @override
  String get compressionClearHistoryConfirm =>
      'Xóa tất cả các mục lịch sử? Video đã lưu sẽ vẫn còn trên thiết bị của bạn.';

  @override
  String get compressionAttempts => 'Số lần thử';

  @override
  String get compressionTargetSize => 'Kích thước mục tiêu';

  @override
  String get compressionOutputResolution => 'Độ phân giải đầu ra';

  @override
  String get compressionInvalidVideo =>
      'Không thể đọc video này. Chọn một tệp khác.';

  @override
  String get compressionInvalidOutput =>
      'Video được mã hóa không vượt qua kiểm tra. Video gốc của bạn không bị thay đổi.';

  @override
  String get compressionEncoderUnsupported =>
      'Thiết bị này không thể mã hóa độ phân giải hoặc tốc độ khung hình đã chọn. Hạ cài đặt đó và thử lại.';

  @override
  String get compressionAudioDecoderUnsupported =>
      'Thiết bị này không thể giải mã định dạng âm thanh này để nén. Xóa âm thanh hoặc sử dụng nguồn được hỗ trợ.';

  @override
  String get compressionVideoDecoderUnsupported =>
      'Thiết bị này không thể giải mã định dạng video hoặc hồ sơ nén này. Chọn nguồn hoặc thiết bị khác.';

  @override
  String get compressionMp4NotStreamable =>
      'Tệp MP4 xuất ra chưa sẵn sàng để phát trực tuyến. Thử video hoặc thiết bị khác.';

  @override
  String get compressionNoSpace =>
      'Không đủ dung lượng lưu trữ để nén video này.';

  @override
  String get compressionHdrUnsupported =>
      'Thiết bị này không thể xử lý chế độ HDR đã chọn. Thử chuyển đổi sang SDR.';

  @override
  String get compressionGeneralFailure =>
      'Quá trình nén không thể hoàn tất. Thử thiết lập hoặc video khác.';

  @override
  String get aboutIdentitySection => 'Nhận diện ứng dụng';

  @override
  String get aboutAppName => 'Tên ứng dụng';

  @override
  String get aboutPackageName => 'Tên gói';

  @override
  String get aboutVersion => 'Phiên bản';

  @override
  String get aboutBuildNumber => 'Số bản dựng';

  @override
  String get aboutEnvironmentSection => 'Thiết bị và bản dựng';

  @override
  String get aboutOperatingSystem => 'Hệ điều hành';

  @override
  String get aboutOsVersion => 'Phiên bản OS';

  @override
  String get aboutBuildMode => 'Chế độ xây dựng';

  @override
  String get aboutDebug => 'Gỡ lỗi';

  @override
  String get aboutRelease => 'Phát hành';

  @override
  String get aboutToolchainSection => 'Xây dựng với';

  @override
  String get aboutInstallationSection => 'Cài đặt';

  @override
  String get aboutInstaller => 'Đã cài đặt từ';

  @override
  String get aboutInstalledOn => 'Đã cài đặt vào';

  @override
  String get aboutUpdatedOn => 'Cập nhật vào';

  @override
  String get aboutUnavailable => 'Không có sẵn';

  @override
  String get aboutProjectSection => 'Dự án và hỗ trợ';

  @override
  String get aboutRepository => 'Kho lưu trữ GitHub';

  @override
  String get aboutRepositorySubtitle => 'Xem mã nguồn Zumi';

  @override
  String get aboutReadme => 'Đọc README';

  @override
  String get aboutReadmeSubtitle => 'Tìm hiểu về Zumi trên GitHub';

  @override
  String get aboutIssues => 'Báo cáo sự cố';

  @override
  String get aboutIssuesSubtitle => 'Xem và tạo các vấn đề trên GitHub';

  @override
  String get aboutLatestRelease => 'Phiên bản mới nhất';

  @override
  String get aboutLatestReleaseSubtitle => 'Xem các bản phát hành và tải xuống';

  @override
  String get aboutDonate => 'Hỗ trợ Zumi';

  @override
  String get aboutDonateSubtitle => 'Mở trang quyên góp chính thức';

  @override
  String get aboutLinkError => 'Không thể mở liên kết. Vui lòng thử lại.';

  @override
  String get aboutDeveloperSection => 'Nhà phát triển';

  @override
  String get aboutDeveloperName => 'Mostafa Sensei';

  @override
  String get aboutDeveloperProfile => 'Hồ sơ GitHub';

  @override
  String get aboutDeveloperProfileSubtitle => 'Xem dự án và thông tin liên hệ';

  @override
  String get maintenanceInProgress => 'Đang bảo trì';

  @override
  String get maintenanceMessage =>
      'Zumi hiện tạm thời không khả dụng. Vui lòng thử lại sau.';

  @override
  String get comingSoon => 'Sắp ra mắt';

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

/// The translations for Vietnamese, as used in Viet Nam (`vi_VN`).
class AppLocalizationsViVn extends AppLocalizationsVi {
  AppLocalizationsViVn() : super('vi_VN');

  @override
  String get zumi => 'Zumi';

  @override
  String get downloadFile => 'Tải xuống Tệp';

  @override
  String fileOpenedInBrowser(String fileName) {
    return 'Tệp đã mở trong trình duyệt: $fileName';
  }

  @override
  String fileSavedToDcim(String fileName) {
    return 'Tệp đã được lưu vào thư viện: $fileName';
  }

  @override
  String fileSavedToDocuments(String fileName) {
    return 'Tệp đã được lưu vào tài liệu: $fileName';
  }

  @override
  String get fileAlreadySaved => 'Tệp đã được lưu';

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
  String get error_address_line_cant_be_empty =>
      'Dòng địa chỉ không được để trống';

  @override
  String get error_address_line_too_long => 'Dòng địa chỉ quá dài';

  @override
  String get error_address_invalid_special_characters =>
      'Không được sử dụng ký tự đặc biệt';

  @override
  String get error_address_emoji_not_allowed =>
      'Không được sử dụng biểu tượng cảm xúc';

  @override
  String get error_city_cant_be_empty => 'Thành phố không được để trống';

  @override
  String get error_city_too_long => 'Tên thành phố quá dài';

  @override
  String get error_city_invalid_special_characters =>
      'Thành phố chứa ký tự đặc biệt không hợp lệ';

  @override
  String get error_address_label_cant_be_empty =>
      'Nhãn địa chỉ không được để trống';

  @override
  String get error_address_label_too_long => 'Nhãn địa chỉ quá dài';

  @override
  String get error_email_cant_be_empty => 'Email không được để trống';

  @override
  String get error_email_not_invalid_format => 'Định dạng email không hợp lệ';

  @override
  String get error_email_contains_invalid_characters =>
      'Email chứa ký tự không hợp lệ';

  @override
  String get error_email_must_contain_at_symbol => 'Email phải chứa @';

  @override
  String get error_email_must_be_in_lowercase => 'Email phải viết thường';

  @override
  String get error_arabic_not_allowed => 'Không được sử dụng ký tự Ả Rập';

  @override
  String get error_email_emoji_not_allowed =>
      'Không được sử dụng biểu tượng cảm xúc trong email';

  @override
  String get error_phone_number_cant_be_empty =>
      'Số điện thoại không được để trống';

  @override
  String get error_phone_number_invalid => 'Số điện thoại không hợp lệ';

  @override
  String get error_phone_number_min_length =>
      'Số điện thoại phải có ít nhất 11 chữ số';

  @override
  String get error_name_cant_be_empty => 'Tên không được để trống';

  @override
  String get error_name_invalid => 'Tên không hợp lệ';

  @override
  String get error_name_too_short_at_least_3_characters =>
      'Tên phải có ít nhất 3 ký tự';

  @override
  String get error_name_too_long_maximum_20_characters =>
      'Tên không được vượt quá 20 ký tự';

  @override
  String get error_name_invalid_special_characters =>
      'Tên chứa ký tự đặc biệt không hợp lệ';

  @override
  String get error_name_emoji_not_allowed =>
      'Không được sử dụng biểu tượng cảm xúc trong tên';

  @override
  String get error_password_cant_be_empty => 'Mật khẩu không được để trống';

  @override
  String
  get error_password_must_contain_uppercase_lowercase_number_and_special_character =>
      'Mật khẩu phải chứa chữ hoa, chữ thường, số và ký tự đặc biệt';

  @override
  String get error_password_must_be_at_least_8_characters_long =>
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
  String get settingsGroupAppearance => 'Giao diện & ngôn ngữ';

  @override
  String get settingsGroupCompression => 'Nén';

  @override
  String get settingsGroupAi => 'AI trên thiết bị';

  @override
  String get settingsGroupPrivacy => 'Thông báo & quyền riêng tư';

  @override
  String get settingsGroupPlans => 'Gói & giao dịch mua';

  @override
  String get settingsGroupAbout => 'Giới thiệu';

  @override
  String get settingsGroupLegal => 'Pháp lý';

  @override
  String get settingsGroupHelp => 'Trợ giúp & phản hồi';

  @override
  String get settingsGroupAccount => 'Tài khoản';

  @override
  String get settingsAppearanceSubtitle => 'Chủ đề và ngôn ngữ ứng dụng';

  @override
  String get settingsLanguageSubtitle => 'Ngôn ngữ và hướng của ứng dụng';

  @override
  String get settingsCompressionSubtitle => 'Chất lượng và định dạng mặc định';

  @override
  String get settingsStorageSubtitle => 'Sử dụng bộ nhớ đệm và lưu trữ';

  @override
  String get aiSettings => 'Cài đặt AI';

  @override
  String get zumiAssistant => 'Trợ lý Zumi';

  @override
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere =>
      'Một trợ lý cá nhân cho video của bạn sắp ra mắt. Bạn sẽ có thể hỏi về nén, tổ chức và các video đã lưu tại đây.';

  @override
  String get settingsAiSubtitle => 'Mô hình cục bộ và công cụ thông minh';

  @override
  String get exploreLocalModelsAndFutureAiToolsTheseOptionsAreNotActiveYet =>
      'Khám phá các mô hình cục bộ và công cụ AI tương lai. Những tùy chọn này vẫn chưa được kích hoạt.';

  @override
  String get localModels => 'Mô hình cục bộ';

  @override
  String get aiModelsSubtitle => 'Duyệt và tải xuống các mô hình được hỗ trợ';

  @override
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere =>
      'Chọn một mô hình được hỗ trợ, tải nó xuống thiết bị này và quản lý các mô hình đã cài đặt tại đây.';

  @override
  String get importAModel => 'Nhập một mô hình';

  @override
  String get aiImportSubtitle =>
      'Sử dụng một mô hình tương thích từ các tệp của bạn';

  @override
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt =>
      'Chọn một tệp mô hình cục bộ tương thích và xem lại các yêu cầu của nó trước khi sử dụng.';

  @override
  String get smartFeatures => 'Tính năng thông minh';

  @override
  String get aiFeaturesSubtitle => 'Nén, tổ chức và tìm kiếm';

  @override
  String
  get chooseWhichLocalAiSuggestionsToUseForVideoCompressionOrganizationNamingAndSearch =>
      'Chọn các đề xuất AI cục bộ để sử dụng cho việc nén video, tổ chức, đặt tên và tìm kiếm.';

  @override
  String get modelPerformance => 'Hiệu suất mô hình';

  @override
  String get aiRuntimeSubtitle => 'Tùy chọn xử lý và tài nguyên';

  @override
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels =>
      'Kiểm soát hệ thống xử lý và giới hạn tài nguyên cho các mô hình được hỗ trợ.';

  @override
  String get conversationSettings => 'Cài đặt hội thoại';

  @override
  String get aiChatSettingsSubtitle =>
      'Phát trực tuyến, suy nghĩ và độ dài phản hồi';

  @override
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits =>
      'Cấu hình cách trợ lý phản hồi, bao gồm phát trực tiếp, chế độ suy nghĩ, lấy mẫu và giới hạn phản hồi.';

  @override
  String get imagesAndAudio => 'Hình ảnh và âm thanh';

  @override
  String get aiMediaSubtitle => 'Kiểm soát các đầu vào đa phương tiện';

  @override
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos =>
      'Chọn xem các mô hình tương thích có thể phân tích hình ảnh và âm thanh đã chọn từ video của bạn hay không.';

  @override
  String get semanticSearch => 'Tìm kiếm ngữ nghĩa';

  @override
  String get aiSearchSubtitle => 'Nhúng và lập chỉ mục cục bộ';

  @override
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning =>
      'Quản lý mô hình nhúng cục bộ và chỉ mục tìm kiếm để tìm video và khoảnh khắc theo ý nghĩa.';

  @override
  String get toolsAndStructuredOutput => 'Công cụ và đầu ra có cấu trúc';

  @override
  String get aiToolsSubtitle => 'Các hành động, sơ đồ và xác nhận';

  @override
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation =>
      'Quản lý các hành động trợ lý được hỗ trợ và các phản hồi có cấu trúc. Các hành động ảnh hưởng đến tệp sẽ yêu cầu bạn xác nhận.';

  @override
  String get aiGroupModels => 'Mô hình';

  @override
  String get aiGroupExperience => 'Trải nghiệm trợ lý';

  @override
  String get aiGroupCapabilities => 'Khả năng thông minh';

  @override
  String get aiGroupPerformance => 'Hiệu suất';

  @override
  String get compressionHistorySubtitle => 'Lịch sử video nén của bạn';

  @override
  String get settingsNotificationsSubtitle => 'Cảnh báo hoàn thành và cập nhật';

  @override
  String get settingsPrivacySubtitle => 'Dữ liệu của bạn vẫn giữ tại chỗ';

  @override
  String get plansSubtitle => 'So sánh các gói và nâng cấp';

  @override
  String get plansMethodsSubtitle => 'Phương thức thanh toán và hóa đơn';

  @override
  String get plansRestoreSubtitle => 'Khôi phục mua hàng trước đó của bạn';

  @override
  String get aboutAppSubtitle => 'Chi tiết phiên bản và bản dựng';

  @override
  String get aboutDeveloperSubtitle => 'Nhà phát triển đứng sau Zumi';

  @override
  String get aboutLicensesSubtitle => 'Giấy phép gói mã nguồn mở';

  @override
  String get legalPrivacySubtitle => 'Cách dữ liệu được xử lý';

  @override
  String get legalTermsSubtitle => 'Quy tắc sử dụng Zumi';

  @override
  String get legalDataSafetySubtitle => 'Dữ liệu chúng tôi thu thập';

  @override
  String get legalPermissionsSubtitle => 'Tại sao chúng ta cần quyền';

  @override
  String get helpFaqSubtitle => 'Câu trả lời cho các câu hỏi thường gặp';

  @override
  String get helpSupportSubtitle => 'Liên hệ trực tiếp với nhà phát triển';

  @override
  String get helpFeedbackSubtitle => 'Gửi phản hồi của bạn cho chúng tôi';

  @override
  String get compressionPickVideo => 'Chọn video';

  @override
  String get compressionTargetMb => 'Kích thước mục tiêu (MB)';

  @override
  String get compressionStart => 'Bắt đầu nén';

  @override
  String get compressionPause => 'Tạm dừng';

  @override
  String get compressionResume => 'Tiếp tục';

  @override
  String get compressionViewResult => 'Xem kết quả';

  @override
  String get compressionSaveGallery => 'Lưu vào thư viện';

  @override
  String get compressionShare => 'Chia sẻ video';

  @override
  String get compressionOriginalSize => 'Kích thước gốc';

  @override
  String get compressionOutputSize => 'Kích thước xuất';

  @override
  String get compressionEmptyHistory => 'Chưa có video nào được nén';

  @override
  String get compressionSavedGallery => 'Đã lưu vào thư viện';

  @override
  String get compressionInvalidTarget =>
      'Nhập kích thước mục tiêu lớn hơn không';

  @override
  String get compressionCancelled => 'Nén đã bị hủy';

  @override
  String get compressionTargetExceeded =>
      'Video này không thể đạt kích thước đã chọn. Thử kích thước mục tiêu lớn hơn.';

  @override
  String get compressionTargetInfeasible =>
      'Kích thước đã chọn quá nhỏ cho video này. Chọn kích thước lớn hơn.';

  @override
  String get compressionPreviewBefore => 'Xem trước ban đầu';

  @override
  String get compressionPreviewAfter => 'Xem trước nén';

  @override
  String get compressionPreset => 'Cài đặt mục tiêu';

  @override
  String get compressionCustom => 'Kích thước tùy chỉnh';

  @override
  String get compressionPreviewUnavailable => 'Xem trước không khả dụng';

  @override
  String get compressionAdvanced => 'Điều khiển nâng cao';

  @override
  String get compressionAutomatic => 'Tự động';

  @override
  String get compressionResolutionLimit => 'Độ phân giải tối đa';

  @override
  String get compressionSourceResolution => 'Độ phân giải gốc';

  @override
  String get compressionFrameRateLimit => 'Tốc độ khung hình tối đa';

  @override
  String get compressionAudioQuality => 'Tốc độ bit âm thanh';

  @override
  String get compressionRemoveAudio => 'Loại bỏ âm thanh';

  @override
  String get compressionVideoBitrateLimit => 'Giới hạn tốc độ bit video (kbps)';

  @override
  String get compressionHdrPolicy => 'Xử lý HDR';

  @override
  String get compressionHdrConvert => 'Chuyển sang SDR';

  @override
  String get compressionHdrPreserve => 'Giữ HDR khi được hỗ trợ';

  @override
  String get compressionPlanPreview => 'Trước khi bạn bắt đầu';

  @override
  String get compressionPlanLoading => 'Đang tính toán kế hoạch nén…';

  @override
  String get compressionPlanResolution => 'Độ phân giải dự kiến';

  @override
  String get compressionPlanVideoBitrate => 'Tốc độ bit video dự kiến';

  @override
  String get compressionPlanAudioBitrate => 'Tốc độ bit âm thanh dự kiến';

  @override
  String get compressionAudioConversionNote =>
      'Việc mã hóa lại sẽ chuyển âm thanh sang AAC stereo. Dolby Atmos và âm thanh không gian DTS sẽ không được giữ lại.';

  @override
  String get compressionPlanTooSmall =>
      'Mục tiêu này quá nhỏ để có một video sử dụng được. Tăng kích thước hoặc hạ các giới hạn khác.';

  @override
  String get compressionPlanLowQuality =>
      'Mục tiêu đã chọn có thể làm giảm chất lượng video.';

  @override
  String get compressionPlanAlreadyWithinLimit =>
      'Nguồn đã nằm trong giới hạn kích thước.';

  @override
  String get compressionInvalidBitrate =>
      'Nhập tốc độ bit ít nhất 150 kbps, hoặc để trống để tự động.';

  @override
  String get compressionInvalidResolution =>
      'Nhập độ phân giải chẵn từ 240 đến 16384, hoặc để trống để tự động.';

  @override
  String get compressionSeek => 'Vị trí video';

  @override
  String get compressionInterrupted =>
      'Một lần nén trước đã bị gián đoạn. Các tệp tạm thời đã được dọn dẹp; bạn có thể chọn video và thử lại.';

  @override
  String get compressionDismiss => 'Bỏ qua';

  @override
  String get compressionClearHistory => 'Xóa lịch sử';

  @override
  String get compressionClearHistoryConfirm =>
      'Xóa tất cả các mục lịch sử? Video đã lưu sẽ vẫn còn trên thiết bị của bạn.';

  @override
  String get compressionAttempts => 'Số lần thử';

  @override
  String get compressionTargetSize => 'Kích thước mục tiêu';

  @override
  String get compressionOutputResolution => 'Độ phân giải đầu ra';

  @override
  String get compressionInvalidVideo =>
      'Không thể đọc video này. Chọn một tệp khác.';

  @override
  String get compressionInvalidOutput =>
      'Video được mã hóa không vượt qua kiểm tra. Video gốc của bạn không bị thay đổi.';

  @override
  String get compressionEncoderUnsupported =>
      'Thiết bị này không thể mã hóa độ phân giải hoặc tốc độ khung hình đã chọn. Hạ cài đặt đó và thử lại.';

  @override
  String get compressionAudioDecoderUnsupported =>
      'Thiết bị này không thể giải mã định dạng âm thanh này để nén. Xóa âm thanh hoặc sử dụng nguồn được hỗ trợ.';

  @override
  String get compressionVideoDecoderUnsupported =>
      'Thiết bị này không thể giải mã định dạng video hoặc hồ sơ nén này. Chọn nguồn hoặc thiết bị khác.';

  @override
  String get compressionMp4NotStreamable =>
      'Tệp MP4 xuất ra chưa sẵn sàng để phát trực tuyến. Thử video hoặc thiết bị khác.';

  @override
  String get compressionNoSpace =>
      'Không đủ dung lượng lưu trữ để nén video này.';

  @override
  String get compressionHdrUnsupported =>
      'Thiết bị này không thể xử lý chế độ HDR đã chọn. Thử chuyển đổi sang SDR.';

  @override
  String get compressionGeneralFailure =>
      'Quá trình nén không thể hoàn tất. Thử thiết lập hoặc video khác.';

  @override
  String get aboutIdentitySection => 'Nhận diện ứng dụng';

  @override
  String get aboutAppName => 'Tên ứng dụng';

  @override
  String get aboutPackageName => 'Tên gói';

  @override
  String get aboutVersion => 'Phiên bản';

  @override
  String get aboutBuildNumber => 'Số bản dựng';

  @override
  String get aboutEnvironmentSection => 'Thiết bị và bản dựng';

  @override
  String get aboutOperatingSystem => 'Hệ điều hành';

  @override
  String get aboutOsVersion => 'Phiên bản OS';

  @override
  String get aboutBuildMode => 'Chế độ xây dựng';

  @override
  String get aboutDebug => 'Gỡ lỗi';

  @override
  String get aboutRelease => 'Phát hành';

  @override
  String get aboutToolchainSection => 'Xây dựng với';

  @override
  String get aboutInstallationSection => 'Cài đặt';

  @override
  String get aboutInstaller => 'Đã cài đặt từ';

  @override
  String get aboutInstalledOn => 'Đã cài đặt vào';

  @override
  String get aboutUpdatedOn => 'Cập nhật vào';

  @override
  String get aboutUnavailable => 'Không có sẵn';

  @override
  String get aboutProjectSection => 'Dự án và hỗ trợ';

  @override
  String get aboutRepository => 'Kho lưu trữ GitHub';

  @override
  String get aboutRepositorySubtitle => 'Xem mã nguồn Zumi';

  @override
  String get aboutReadme => 'Đọc README';

  @override
  String get aboutReadmeSubtitle => 'Tìm hiểu về Zumi trên GitHub';

  @override
  String get aboutIssues => 'Báo cáo sự cố';

  @override
  String get aboutIssuesSubtitle => 'Xem và tạo các vấn đề trên GitHub';

  @override
  String get aboutLatestRelease => 'Phiên bản mới nhất';

  @override
  String get aboutLatestReleaseSubtitle => 'Xem các bản phát hành và tải xuống';

  @override
  String get aboutDonate => 'Hỗ trợ Zumi';

  @override
  String get aboutDonateSubtitle => 'Mở trang quyên góp chính thức';

  @override
  String get aboutLinkError => 'Không thể mở liên kết. Vui lòng thử lại.';

  @override
  String get aboutDeveloperSection => 'Nhà phát triển';

  @override
  String get aboutDeveloperName => 'Mostafa Sensei';

  @override
  String get aboutDeveloperProfile => 'Hồ sơ GitHub';

  @override
  String get aboutDeveloperProfileSubtitle => 'Xem dự án và thông tin liên hệ';

  @override
  String get maintenanceInProgress => 'Đang bảo trì';

  @override
  String get maintenanceMessage =>
      'Zumi hiện tạm thời không khả dụng. Vui lòng thử lại sau.';

  @override
  String get comingSoon => 'Sắp ra mắt';

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
