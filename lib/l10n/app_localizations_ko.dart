// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get zumi => 'Zumi';

  @override
  String get downloadFile => '파일 다운로드';

  @override
  String fileOpenedInBrowser(String fileName) {
    return '브라우저에서 파일 열기: $fileName';
  }

  @override
  String fileSavedToDcim(String fileName) {
    return '갤러리에 파일 저장됨: $fileName';
  }

  @override
  String fileSavedToDocuments(String fileName) {
    return '문서에 파일 저장됨: $fileName';
  }

  @override
  String get fileAlreadySaved => '파일이 이미 저장되어 있습니다';

  @override
  String get error => '오류';

  @override
  String get info => '정보';

  @override
  String get success => '성공';

  @override
  String get warning => '경고';

  @override
  String get paid => '유료';

  @override
  String get unpaid => '미지급';

  @override
  String get partial => '부분';

  @override
  String get error_address_line_cant_be_empty => '주소 줄은 비워둘 수 없습니다';

  @override
  String get error_address_line_too_long => '주소 줄이 너무 깁니다';

  @override
  String get error_address_invalid_special_characters => '특수 문자는 허용되지 않습니다';

  @override
  String get error_address_emoji_not_allowed => '이모지는 허용되지 않습니다';

  @override
  String get error_city_cant_be_empty => '도시는 비워둘 수 없습니다';

  @override
  String get error_city_too_long => '도시 이름이 너무 깁니다';

  @override
  String get error_city_invalid_special_characters =>
      '도시에는 잘못된 특수 문자가 포함되어 있습니다';

  @override
  String get error_address_label_cant_be_empty => '주소 라벨은 비워둘 수 없습니다';

  @override
  String get error_address_label_too_long => '주소 라벨이 너무 깁니다';

  @override
  String get error_email_cant_be_empty => '이메일은 비워둘 수 없습니다';

  @override
  String get error_email_not_invalid_format => '잘못된 이메일 형식';

  @override
  String get error_email_contains_invalid_characters =>
      '이메일에 유효하지 않은 문자가 포함되어 있습니다';

  @override
  String get error_email_must_contain_at_symbol => '이메일에는 @가 포함되어야 합니다';

  @override
  String get error_email_must_be_in_lowercase => '이메일은 소문자여야 합니다';

  @override
  String get error_arabic_not_allowed => '아랍어 문자는 허용되지 않습니다';

  @override
  String get error_email_emoji_not_allowed => '이모지는 이메일에 허용되지 않습니다';

  @override
  String get error_phone_number_cant_be_empty => '전화번호는 비워둘 수 없습니다';

  @override
  String get error_phone_number_invalid => '유효하지 않은 전화번호입니다';

  @override
  String get error_phone_number_min_length => '전화번호는 최소 11자리여야 합니다';

  @override
  String get error_name_cant_be_empty => '이름은 비워둘 수 없습니다';

  @override
  String get error_name_invalid => '유효하지 않은 이름입니다';

  @override
  String get error_name_too_short_at_least_3_characters => '이름은 최소 3자여야 합니다';

  @override
  String get error_name_too_long_maximum_20_characters => '이름은 20자를 초과할 수 없습니다';

  @override
  String get error_name_invalid_special_characters =>
      '이름에 유효하지 않은 특수 문자가 포함되어 있습니다';

  @override
  String get error_name_emoji_not_allowed => '이모지는 이름에 허용되지 않습니다';

  @override
  String get error_password_cant_be_empty => '비밀번호는 비워둘 수 없습니다';

  @override
  String
  get error_password_must_contain_uppercase_lowercase_number_and_special_character =>
      '비밀번호에는 대문자, 소문자, 숫자 및 특수 문자가 포함되어야 합니다';

  @override
  String get error_password_must_be_at_least_8_characters_long =>
      '비밀번호는 최소 8자 이상이어야 합니다';

  @override
  String get noInternetConnection => '인터넷 연결 없음';

  @override
  String get internetConnectionRestored => '인터넷 연결 복원됨';

  @override
  String get retry => '재시도';

  @override
  String get cancel => '취소';

  @override
  String get confirm => '확인';

  @override
  String get pleaseWait => '잠시만 기다려 주세요...';

  @override
  String get ok => '확인';

  @override
  String get compressVideosPrivatelyOnYourDevice => '동영상을 기기에서 비공개로 압축하세요.';

  @override
  String get welcomeToZumi => 'Zumi에 오신 것을 환영합니다';

  @override
  String get learnHowZumiCompressesYourVideosWithoutEverLeavingYourPhone =>
      'Zumi가 휴대폰을 벗어나지 않고 동영상을 어떻게 압축하는지 알아보세요.';

  @override
  String get signIn => '로그인';

  @override
  String get signInToSyncYourPlanAndKeepYourPurchasesAvailableOnEveryDevice =>
      '플랜을 동기화하고 구매한 항목을 모든 기기에서 이용하려면 로그인하세요.';

  @override
  String get chooseAVideo => '동영상 선택';

  @override
  String get pickAVideoFromYourGalleryToStartCompressing =>
      '갤러리에서 동영상을 선택하여 압축을 시작하세요.';

  @override
  String get compressionSetup => '압축 설정';

  @override
  String get chooseResolutionBitrateAndOutputFormatBeforeYouStart =>
      '시작하기 전에 해상도, 비트레이트 및 출력 형식을 선택하세요.';

  @override
  String get compressing => '압축 중';

  @override
  String get followTheLiveProgressOfYourCompressionJob =>
      '압축 작업의 실시간 진행 상황을 확인하세요.';

  @override
  String get compressionResult => '압축 결과';

  @override
  String get compareTheBeforeAndAfterSizeThenSaveOrShareTheResult =>
      '전후 크기를 비교한 후 결과를 저장하거나 공유하세요.';

  @override
  String get compressionHistory => '압축 기록';

  @override
  String get reviewTheVideosYouHaveCompressedOnThisDevice =>
      '이 장치에서 압축한 동영상을 검토하세요.';

  @override
  String get settings => '설정';

  @override
  String get appearance => '외관';

  @override
  String get themeColorSchemeAndMotionPreferences => '테마, 색 구성표 및 모션 환경 설정.';

  @override
  String get language => '언어';

  @override
  String get appLanguageAndTextDirection => '앱 언어 및 텍스트 방향.';

  @override
  String get compressionDefaults => '압축 기본값';

  @override
  String get defaultResolutionBitrateAndOutputFormat =>
      '기본 해상도, 비트레이트 및 출력 형식.';

  @override
  String get storageCleanup => '저장소 및 정리';

  @override
  String get storageUsageCacheSizeAndTemporaryFileCleanup =>
      '저장 용량 사용, 캐시 크기 및 임시 파일 정리.';

  @override
  String get notifications => '알림';

  @override
  String get jobCompletionAndProductUpdateNotifications =>
      '작업 완료 및 제품 업데이트 알림.';

  @override
  String get privacy => '개인정보';

  @override
  String get onDeviceProcessingLocalLogsAndOptionalCrashReports =>
      '기기 내 처리, 로컬 로그 및 선택적 충돌 보고서.';

  @override
  String get aboutZumi => 'Zumi 정보';

  @override
  String get versionBuildNumberAndApplicationDetails =>
      '버전, 빌드 번호 및 애플리케이션 세부 정보.';

  @override
  String get aboutTheDeveloper => '개발자 정보';

  @override
  String get theDeveloperAndToolsBehindZumi => 'Zumi의 개발자 및 사용 도구.';

  @override
  String get openSourceLicenses => '오픈 소스 라이선스';

  @override
  String get openSourcePackagesBundledWithZumi => 'Zumi에 포함된 오픈 소스 패키지.';

  @override
  String get privacyPolicy => '개인정보 처리방침';

  @override
  String get howZumiHandlesYourVideosAndData => 'Zumi가 동영상과 데이터를 처리하는 방식.';

  @override
  String get termsOfService => '서비스 약관';

  @override
  String get theTermsThatApplyToZumiAndItsPurchases => 'Zumi 및 구매에 적용되는 약관.';

  @override
  String get dataSafety => '데이터 안전';

  @override
  String get summaryOfTheDataZumiCollectsAndWhy => 'Zumi가 수집하는 데이터 요약 및 이유';

  @override
  String get permissions => '권한';

  @override
  String get runtimePermissionsZumiRequestsAndWhyEachIsNeeded =>
      'Zumi가 요청하는 런타임 권한과 각 권한이 필요한 이유.';

  @override
  String get faq => 'FAQ';

  @override
  String get answersToCommonQuestionsAboutCompressionAndBilling =>
      '압축 및 청구에 대한 일반적인 질문에 대한 답변.';

  @override
  String get support => '지원';

  @override
  String get getHelpWithYourAccountOrAPurchase => '계정이나 구매 관련 도움 받기.';

  @override
  String get sendFeedback => '피드백 보내기';

  @override
  String get reportAProblemOrSuggestAnImprovement => '문제 보고 또는 개선 사항 제안.';

  @override
  String get plans => '요금제';

  @override
  String get comparePlansAndSeeWhatEachOneUnlocks =>
      '요금제 비교 및 각 요금제로 해제되는 기능 보기.';

  @override
  String get planDetails => '요금제 상세';

  @override
  String get benefitsLimitsAndPricingForThisPlan => '이 요금제의 혜택, 제한, 가격.';

  @override
  String get paymentMethods => '결제 방법';

  @override
  String get supportedWaysToPayIncludingStoreBilling =>
      '스토어 결제를 포함한 지원되는 결제 방법.';

  @override
  String get restorePurchases => '구매 복원';

  @override
  String get reApplyAPurchaseMadeOnAnotherDevice => '다른 기기에서 한 구매를 다시 적용하기.';

  @override
  String get profile => '프로필';

  @override
  String get yourIdentityPlanStatusAndAccountPreferences =>
      '귀하의 신원, 요금제 상태 및 계정 설정.';

  @override
  String get deleteAccount => '계정 삭제';

  @override
  String get permanentlyRemoveYourAccountAndItsServerSideData =>
      '귀하의 계정과 서버 측 데이터를 영구적으로 삭제합니다.';

  @override
  String get rateZumi => 'Zumi 평가하기';

  @override
  String get tellOthersHowZumiWorkedForYouOnTheStore =>
      '스토어에서 Zumi가 어떻게 작동했는지 다른 사람에게 알려주세요.';

  @override
  String get shareZumi => 'Zumi 공유하기';

  @override
  String get recommendZumiToAFriend => '친구에게 Zumi를 추천하세요.';

  @override
  String get settingsGroupAppearance => '외관 및 언어';

  @override
  String get settingsGroupCompression => '압축';

  @override
  String get settingsGroupAi => '기기 내 AI';

  @override
  String get settingsGroupPrivacy => '알림 및 개인정보';

  @override
  String get settingsGroupPlans => '요금제 및 구매';

  @override
  String get settingsGroupAbout => '정보';

  @override
  String get settingsGroupLegal => '법적 사항';

  @override
  String get settingsGroupHelp => '도움말 및 피드백';

  @override
  String get settingsGroupAccount => '계정';

  @override
  String get settingsAppearanceSubtitle => '테마 및 앱 언어';

  @override
  String get settingsLanguageSubtitle => '앱 언어 및 방향';

  @override
  String get settingsCompressionSubtitle => '기본 품질 및 형식';

  @override
  String get settingsStorageSubtitle => '캐시 및 저장소 사용량';

  @override
  String get aiSettings => 'AI 설정';

  @override
  String get zumiAssistant => 'Zumi 어시스턴트';

  @override
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere =>
      '곧 여러분의 동영상을 위한 개인 비서가 제공됩니다. 여기에서 압축, 정리 및 저장된 동영상에 대해 물어볼 수 있습니다.';

  @override
  String get settingsAiSubtitle => '로컬 모델 및 스마트 도구';

  @override
  String get exploreLocalModelsAndFutureAiToolsTheseOptionsAreNotActiveYet =>
      '로컬 모델과 미래 AI 도구를 탐험하세요. 이 옵션들은 아직 활성화되어 있지 않습니다.';

  @override
  String get localModels => '로컬 모델';

  @override
  String get aiModelsSubtitle => '지원되는 모델 찾아보기 및 다운로드';

  @override
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere =>
      '지원되는 모델을 선택하고 이 장치에 다운로드한 후 설치된 모델을 관리하세요.';

  @override
  String get importAModel => '모델 가져오기';

  @override
  String get aiImportSubtitle => '파일에서 호환 가능한 모델을 사용하세요';

  @override
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt =>
      '호환되는 로컬 모델 파일을 선택하고 사용하기 전에 요구 사항을 검토하십시오.';

  @override
  String get smartFeatures => '스마트 기능';

  @override
  String get aiFeaturesSubtitle => '압축, 조직화 및 검색';

  @override
  String
  get chooseWhichLocalAiSuggestionsToUseForVideoCompressionOrganizationNamingAndSearch =>
      '비디오 압축, 조직화, 이름 지정 및 검색을 위해 사용할 로컬 AI 제안을 선택하십시오.';

  @override
  String get modelPerformance => '모델 성능';

  @override
  String get aiRuntimeSubtitle => '처리 및 리소스 환경 설정';

  @override
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels =>
      '지원되는 모델의 처리 백엔드와 리소스 한도를 제어하십시오.';

  @override
  String get conversationSettings => '대화 설정';

  @override
  String get aiChatSettingsSubtitle => '스트리밍, 사고 및 응답 길이';

  @override
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits =>
      '조수가 응답하는 방식을 구성합니다. 여기에는 스트리밍, 사고 모드, 샘플링 및 응답 제한이 포함됩니다.';

  @override
  String get imagesAndAudio => '이미지 및 오디오';

  @override
  String get aiMediaSubtitle => '멀티모달 입력 제어';

  @override
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos =>
      '호환되는 모델이 비디오에서 선택한 이미지와 오디오를 분석할 수 있는지 여부를 선택합니다.';

  @override
  String get semanticSearch => '시맨틱 검색';

  @override
  String get aiSearchSubtitle => '임베딩 및 로컬 인덱싱';

  @override
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning =>
      '의미에 따라 비디오와 순간을 찾기 위한 로컬 임베딩 모델 및 검색 인덱스를 관리합니다.';

  @override
  String get toolsAndStructuredOutput => '도구 및 구조화된 출력';

  @override
  String get aiToolsSubtitle => '작업, 스키마 및 확인';

  @override
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation =>
      '지원되는 어시스턴트 작업 및 구조화된 응답을 관리합니다. 파일에 영향을 주는 작업은 확인이 필요합니다.';

  @override
  String get aiGroupModels => '모델';

  @override
  String get aiGroupExperience => '어시스턴트 경험';

  @override
  String get aiGroupCapabilities => '스마트 기능';

  @override
  String get aiGroupPerformance => '성능';

  @override
  String get compressionHistorySubtitle => '압축된 동영상 기록';

  @override
  String get settingsNotificationsSubtitle => '완료 및 업데이트 알림';

  @override
  String get settingsPrivacySubtitle => '데이터는 로컬에 저장됩니다';

  @override
  String get plansSubtitle => '요금제 비교 및 업그레이드';

  @override
  String get plansMethodsSubtitle => '결제 수단 및 청구';

  @override
  String get plansRestoreSubtitle => '이전 구매 복원';

  @override
  String get aboutAppSubtitle => '버전 및 빌드 정보';

  @override
  String get aboutDeveloperSubtitle => 'Zumi 개발자';

  @override
  String get aboutLicensesSubtitle => '오픈 소스 패키지 라이선스';

  @override
  String get legalPrivacySubtitle => '데이터 처리 방식';

  @override
  String get legalTermsSubtitle => 'Zumi 사용 규칙';

  @override
  String get legalDataSafetySubtitle => '수집하는 데이터';

  @override
  String get legalPermissionsSubtitle => '왜 권한이 필요한가';

  @override
  String get helpFaqSubtitle => '자주 묻는 질문에 대한 답변';

  @override
  String get helpSupportSubtitle => '개발자에게 직접 문의하기';

  @override
  String get helpFeedbackSubtitle => '피드백 보내기';

  @override
  String get compressionPickVideo => '비디오 선택';

  @override
  String get compressionTargetMb => '목표 크기 (MB)';

  @override
  String get compressionStart => '압축 시작';

  @override
  String get compressionPause => '일시정지';

  @override
  String get compressionResume => '다시 시작';

  @override
  String get compressionViewResult => '결과 보기';

  @override
  String get compressionSaveGallery => '갤러리에 저장';

  @override
  String get compressionShare => '동영상 공유';

  @override
  String get compressionOriginalSize => '원본 크기';

  @override
  String get compressionOutputSize => '출력 크기';

  @override
  String get compressionEmptyHistory => '아직 압축된 동영상 없음';

  @override
  String get compressionSavedGallery => '갤러리에 저장됨';

  @override
  String get compressionInvalidTarget => '0보다 큰 목표 크기를 입력하세요';

  @override
  String get compressionCancelled => '압축 취소됨';

  @override
  String get compressionTargetExceeded =>
      '이 동영상은 선택한 크기에 도달할 수 없습니다. 더 큰 목표 크기를 시도하세요.';

  @override
  String get compressionTargetInfeasible =>
      '선택한 크기는 이 동영상에 너무 작습니다. 더 큰 크기를 선택하세요.';

  @override
  String get compressionPreviewBefore => '원본 미리보기';

  @override
  String get compressionPreviewAfter => '압축 미리보기';

  @override
  String get compressionPreset => '대상 프리셋';

  @override
  String get compressionCustom => '사용자 지정 크기';

  @override
  String get compressionPreviewUnavailable => '미리보기 사용 불가';

  @override
  String get compressionAdvanced => '고급 컨트롤';

  @override
  String get compressionAutomatic => '자동';

  @override
  String get compressionResolutionLimit => '최대 해상도';

  @override
  String get compressionSourceResolution => '원본 해상도';

  @override
  String get compressionFrameRateLimit => '최대 프레임 레이트';

  @override
  String get compressionAudioQuality => '오디오 비트레이트';

  @override
  String get compressionRemoveAudio => '오디오 제거';

  @override
  String get compressionVideoBitrateLimit => '비디오 비트레이트 상한(kbps)';

  @override
  String get compressionHdrPolicy => 'HDR 처리';

  @override
  String get compressionHdrConvert => 'SDR로 변환';

  @override
  String get compressionHdrPreserve => '지원되는 경우 HDR 유지';

  @override
  String get compressionPlanPreview => '시작하기 전에';

  @override
  String get compressionPlanLoading => '압축 계획 계산 중…';

  @override
  String get compressionPlanResolution => '계획된 해상도';

  @override
  String get compressionPlanVideoBitrate => '계획된 비디오 비트레이트';

  @override
  String get compressionPlanAudioBitrate => '계획된 오디오 비트레이트';

  @override
  String get compressionAudioConversionNote =>
      '재인코딩 시 오디오가 AAC 스테레오로 변환됩니다. Dolby Atmos 및 DTS 공간 오디오는 유지되지 않습니다.';

  @override
  String get compressionPlanTooSmall =>
      '이 대상은 사용 가능한 비디오로는 너무 작습니다. 크기를 늘리거나 다른 제한을 낮추세요.';

  @override
  String get compressionPlanLowQuality => '선택한 대상은 비디오 품질을 낮출 수 있습니다.';

  @override
  String get compressionPlanAlreadyWithinLimit => '소스는 이미 크기 제한 내에 있습니다.';

  @override
  String get compressionInvalidBitrate =>
      '최소 150 kbps의 비트레이트를 입력하거나 자동으로 두려면 빈칸으로 두세요.';

  @override
  String get compressionInvalidResolution =>
      '240에서 16384 사이의 짝수 해상도를 입력하거나 자동으로 두려면 빈칸으로 두세요.';

  @override
  String get compressionSeek => '비디오 위치';

  @override
  String get compressionInterrupted =>
      '이전 압축이 중단되었습니다. 임시 파일이 정리되었으므로 비디오를 선택하고 다시 시도할 수 있습니다.';

  @override
  String get compressionDismiss => '닫기';

  @override
  String get compressionClearHistory => '기록 지우기';

  @override
  String get compressionClearHistoryConfirm =>
      '모든 기록 항목을 삭제하시겠습니까? 저장된 동영상은 기기에 남아 있습니다.';

  @override
  String get compressionAttempts => '시도';

  @override
  String get compressionTargetSize => '목표 크기';

  @override
  String get compressionOutputResolution => '출력 해상도';

  @override
  String get compressionInvalidVideo => '이 동영상을 읽을 수 없습니다. 다른 파일을 선택하세요.';

  @override
  String get compressionInvalidOutput =>
      '인코딩된 동영상이 검증에 실패했습니다. 원본 동영상은 변경되지 않았습니다.';

  @override
  String get compressionEncoderUnsupported =>
      '이 기기는 선택한 해상도나 프레임 속도를 인코딩할 수 없습니다. 설정을 낮춘 후 다시 시도하세요.';

  @override
  String get compressionAudioDecoderUnsupported =>
      '이 기기는 압축을 위해 이 오디오 형식을 디코딩할 수 없습니다. 오디오를 제거하거나 지원되는 소스를 사용하세요.';

  @override
  String get compressionVideoDecoderUnsupported =>
      '이 장치는 이 비디오 형식이나 압축 프로필을 디코딩할 수 없습니다. 다른 소스나 장치를 선택하세요.';

  @override
  String get compressionMp4NotStreamable =>
      '내보낸 MP4는 스트리밍용으로 준비되지 않았습니다. 다른 비디오나 장치를 시도하세요.';

  @override
  String get compressionNoSpace => '이 비디오를 압축할 수 있는 충분한 자유 저장 공간이 없습니다.';

  @override
  String get compressionHdrUnsupported =>
      '이 장치는 선택한 HDR 모드를 처리할 수 없습니다. SDR로 변환을 시도하세요.';

  @override
  String get compressionGeneralFailure => '압축을 완료할 수 없습니다. 다른 설정이나 비디오를 시도하세요.';

  @override
  String get aboutIdentitySection => '앱 정보';

  @override
  String get aboutAppName => '앱 이름';

  @override
  String get aboutPackageName => '패키지 이름';

  @override
  String get aboutVersion => '버전';

  @override
  String get aboutBuildNumber => '빌드 번호';

  @override
  String get aboutEnvironmentSection => '장치 및 빌드';

  @override
  String get aboutOperatingSystem => '운영 체제';

  @override
  String get aboutOsVersion => 'OS 버전';

  @override
  String get aboutBuildMode => '빌드 모드';

  @override
  String get aboutDebug => '디버그';

  @override
  String get aboutRelease => '릴리스';

  @override
  String get aboutToolchainSection => '제작';

  @override
  String get aboutInstallationSection => '설치';

  @override
  String get aboutInstaller => '에서 설치됨';

  @override
  String get aboutInstalledOn => '설치된 날짜';

  @override
  String get aboutUpdatedOn => '업데이트된 날짜';

  @override
  String get aboutUnavailable => '사용 불가';

  @override
  String get aboutProjectSection => '프로젝트 및 지원';

  @override
  String get aboutRepository => 'GitHub 저장소';

  @override
  String get aboutRepositorySubtitle => 'Zumi 소스 코드 보기';

  @override
  String get aboutReadme => 'README 읽기';

  @override
  String get aboutReadmeSubtitle => 'GitHub에서 Zumi에 대해 알아보기';

  @override
  String get aboutIssues => '문제 보고';

  @override
  String get aboutIssuesSubtitle => 'GitHub 이슈 보기 및 생성';

  @override
  String get aboutLatestRelease => '최신 릴리스';

  @override
  String get aboutLatestReleaseSubtitle => '릴리스 및 다운로드 보기';

  @override
  String get aboutDonate => 'Zumi 지원';

  @override
  String get aboutDonateSubtitle => '공식 기부 페이지 열기';

  @override
  String get aboutLinkError => '링크를 열 수 없습니다. 다시 시도하세요.';

  @override
  String get aboutDeveloperSection => '개발자';

  @override
  String get aboutDeveloperName => 'Mostafa Sensei';

  @override
  String get aboutDeveloperProfile => 'GitHub 프로필';

  @override
  String get aboutDeveloperProfileSubtitle => '프로젝트 및 연락처 정보 보기';

  @override
  String get maintenanceInProgress => '유지보수 진행 중';

  @override
  String get maintenanceMessage => 'Zumi를 일시적으로 사용할 수 없습니다. 나중에 다시 시도하세요.';

  @override
  String get comingSoon => '곧 출시';

  @override
  String get languageName => '한국어';

  @override
  String get countryCode => 'KR';

  @override
  String countryName(String countryCode) {
    String _temp0 = intl.Intl.selectLogic(countryCode, {
      'AE': '아랍에미리트',
      'AT': '오스트리아',
      'AU': '오스트레일리아',
      'BE': '벨기에',
      'BH': '바레인',
      'BR': '브라질',
      'CA': '캐나다',
      'CH': '스위스',
      'CN': '중국',
      'DE': '독일',
      'DJ': '지부티',
      'DZ': '알제리',
      'EG': '이집트',
      'ES': '스페인',
      'FR': '프랑스',
      'GB': '영국',
      'HK': '홍콩(중국 특별행정구)',
      'ID': '인도네시아',
      'IQ': '이라크',
      'IT': '이탈리아',
      'JO': '요르단',
      'JP': '일본',
      'KM': '코모로',
      'KR': '대한민국',
      'KW': '쿠웨이트',
      'LB': '레바논',
      'LY': '리비아',
      'MA': '모로코',
      'MR': '모리타니',
      'MX': '멕시코',
      'NL': '네덜란드',
      'OM': '오만',
      'PL': '폴란드',
      'PS': '팔레스타인 지구',
      'PT': '포르투갈',
      'QA': '카타르',
      'RU': '러시아',
      'SA': '사우디아라비아',
      'SD': '수단',
      'SE': '스웨덴',
      'SG': '싱가포르',
      'SO': '소말리아',
      'SY': '시리아',
      'TH': '태국',
      'TN': '튀니지',
      'TR': '튀르키예',
      'TW': '대만',
      'US': '미국',
      'VN': '베트남',
      'YE': '예멘',
      'other': '국가',
    });
    return '$_temp0';
  }
}

/// The translations for Korean, as used in Republic of Korea (`ko_KR`).
class AppLocalizationsKoKr extends AppLocalizationsKo {
  AppLocalizationsKoKr() : super('ko_KR');

  @override
  String get zumi => 'Zumi';

  @override
  String get downloadFile => '파일 다운로드';

  @override
  String fileOpenedInBrowser(String fileName) {
    return '브라우저에서 파일 열기: $fileName';
  }

  @override
  String fileSavedToDcim(String fileName) {
    return '갤러리에 파일 저장됨: $fileName';
  }

  @override
  String fileSavedToDocuments(String fileName) {
    return '문서에 파일 저장됨: $fileName';
  }

  @override
  String get fileAlreadySaved => '파일이 이미 저장되어 있습니다';

  @override
  String get error => '오류';

  @override
  String get info => '정보';

  @override
  String get success => '성공';

  @override
  String get warning => '경고';

  @override
  String get paid => '유료';

  @override
  String get unpaid => '미지급';

  @override
  String get partial => '부분';

  @override
  String get error_address_line_cant_be_empty => '주소 줄은 비워둘 수 없습니다';

  @override
  String get error_address_line_too_long => '주소 줄이 너무 깁니다';

  @override
  String get error_address_invalid_special_characters => '특수 문자는 허용되지 않습니다';

  @override
  String get error_address_emoji_not_allowed => '이모지는 허용되지 않습니다';

  @override
  String get error_city_cant_be_empty => '도시는 비워둘 수 없습니다';

  @override
  String get error_city_too_long => '도시 이름이 너무 깁니다';

  @override
  String get error_city_invalid_special_characters =>
      '도시에는 잘못된 특수 문자가 포함되어 있습니다';

  @override
  String get error_address_label_cant_be_empty => '주소 라벨은 비워둘 수 없습니다';

  @override
  String get error_address_label_too_long => '주소 라벨이 너무 깁니다';

  @override
  String get error_email_cant_be_empty => '이메일은 비워둘 수 없습니다';

  @override
  String get error_email_not_invalid_format => '잘못된 이메일 형식';

  @override
  String get error_email_contains_invalid_characters =>
      '이메일에 유효하지 않은 문자가 포함되어 있습니다';

  @override
  String get error_email_must_contain_at_symbol => '이메일에는 @가 포함되어야 합니다';

  @override
  String get error_email_must_be_in_lowercase => '이메일은 소문자여야 합니다';

  @override
  String get error_arabic_not_allowed => '아랍어 문자는 허용되지 않습니다';

  @override
  String get error_email_emoji_not_allowed => '이모지는 이메일에 허용되지 않습니다';

  @override
  String get error_phone_number_cant_be_empty => '전화번호는 비워둘 수 없습니다';

  @override
  String get error_phone_number_invalid => '유효하지 않은 전화번호입니다';

  @override
  String get error_phone_number_min_length => '전화번호는 최소 11자리여야 합니다';

  @override
  String get error_name_cant_be_empty => '이름은 비워둘 수 없습니다';

  @override
  String get error_name_invalid => '유효하지 않은 이름입니다';

  @override
  String get error_name_too_short_at_least_3_characters => '이름은 최소 3자여야 합니다';

  @override
  String get error_name_too_long_maximum_20_characters => '이름은 20자를 초과할 수 없습니다';

  @override
  String get error_name_invalid_special_characters =>
      '이름에 유효하지 않은 특수 문자가 포함되어 있습니다';

  @override
  String get error_name_emoji_not_allowed => '이모지는 이름에 허용되지 않습니다';

  @override
  String get error_password_cant_be_empty => '비밀번호는 비워둘 수 없습니다';

  @override
  String
  get error_password_must_contain_uppercase_lowercase_number_and_special_character =>
      '비밀번호에는 대문자, 소문자, 숫자 및 특수 문자가 포함되어야 합니다';

  @override
  String get error_password_must_be_at_least_8_characters_long =>
      '비밀번호는 최소 8자 이상이어야 합니다';

  @override
  String get noInternetConnection => '인터넷 연결 없음';

  @override
  String get internetConnectionRestored => '인터넷 연결 복원됨';

  @override
  String get retry => '재시도';

  @override
  String get cancel => '취소';

  @override
  String get confirm => '확인';

  @override
  String get pleaseWait => '잠시만 기다려 주세요...';

  @override
  String get ok => '확인';

  @override
  String get compressVideosPrivatelyOnYourDevice => '동영상을 기기에서 비공개로 압축하세요.';

  @override
  String get welcomeToZumi => 'Zumi에 오신 것을 환영합니다';

  @override
  String get learnHowZumiCompressesYourVideosWithoutEverLeavingYourPhone =>
      'Zumi가 휴대폰을 벗어나지 않고 동영상을 어떻게 압축하는지 알아보세요.';

  @override
  String get signIn => '로그인';

  @override
  String get signInToSyncYourPlanAndKeepYourPurchasesAvailableOnEveryDevice =>
      '플랜을 동기화하고 구매한 항목을 모든 기기에서 이용하려면 로그인하세요.';

  @override
  String get chooseAVideo => '동영상 선택';

  @override
  String get pickAVideoFromYourGalleryToStartCompressing =>
      '갤러리에서 동영상을 선택하여 압축을 시작하세요.';

  @override
  String get compressionSetup => '압축 설정';

  @override
  String get chooseResolutionBitrateAndOutputFormatBeforeYouStart =>
      '시작하기 전에 해상도, 비트레이트 및 출력 형식을 선택하세요.';

  @override
  String get compressing => '압축 중';

  @override
  String get followTheLiveProgressOfYourCompressionJob =>
      '압축 작업의 실시간 진행 상황을 확인하세요.';

  @override
  String get compressionResult => '압축 결과';

  @override
  String get compareTheBeforeAndAfterSizeThenSaveOrShareTheResult =>
      '전후 크기를 비교한 후 결과를 저장하거나 공유하세요.';

  @override
  String get compressionHistory => '압축 기록';

  @override
  String get reviewTheVideosYouHaveCompressedOnThisDevice =>
      '이 장치에서 압축한 동영상을 검토하세요.';

  @override
  String get settings => '설정';

  @override
  String get appearance => '외관';

  @override
  String get themeColorSchemeAndMotionPreferences => '테마, 색 구성표 및 모션 환경 설정.';

  @override
  String get language => '언어';

  @override
  String get appLanguageAndTextDirection => '앱 언어 및 텍스트 방향.';

  @override
  String get compressionDefaults => '압축 기본값';

  @override
  String get defaultResolutionBitrateAndOutputFormat =>
      '기본 해상도, 비트레이트 및 출력 형식.';

  @override
  String get storageCleanup => '저장소 및 정리';

  @override
  String get storageUsageCacheSizeAndTemporaryFileCleanup =>
      '저장 용량 사용, 캐시 크기 및 임시 파일 정리.';

  @override
  String get notifications => '알림';

  @override
  String get jobCompletionAndProductUpdateNotifications =>
      '작업 완료 및 제품 업데이트 알림.';

  @override
  String get privacy => '개인정보';

  @override
  String get onDeviceProcessingLocalLogsAndOptionalCrashReports =>
      '기기 내 처리, 로컬 로그 및 선택적 충돌 보고서.';

  @override
  String get aboutZumi => 'Zumi 정보';

  @override
  String get versionBuildNumberAndApplicationDetails =>
      '버전, 빌드 번호 및 애플리케이션 세부 정보.';

  @override
  String get aboutTheDeveloper => '개발자 정보';

  @override
  String get theDeveloperAndToolsBehindZumi => 'Zumi의 개발자 및 사용 도구.';

  @override
  String get openSourceLicenses => '오픈 소스 라이선스';

  @override
  String get openSourcePackagesBundledWithZumi => 'Zumi에 포함된 오픈 소스 패키지.';

  @override
  String get privacyPolicy => '개인정보 처리방침';

  @override
  String get howZumiHandlesYourVideosAndData => 'Zumi가 동영상과 데이터를 처리하는 방식.';

  @override
  String get termsOfService => '서비스 약관';

  @override
  String get theTermsThatApplyToZumiAndItsPurchases => 'Zumi 및 구매에 적용되는 약관.';

  @override
  String get dataSafety => '데이터 안전';

  @override
  String get summaryOfTheDataZumiCollectsAndWhy => 'Zumi가 수집하는 데이터 요약 및 이유';

  @override
  String get permissions => '권한';

  @override
  String get runtimePermissionsZumiRequestsAndWhyEachIsNeeded =>
      'Zumi가 요청하는 런타임 권한과 각 권한이 필요한 이유.';

  @override
  String get faq => 'FAQ';

  @override
  String get answersToCommonQuestionsAboutCompressionAndBilling =>
      '압축 및 청구에 대한 일반적인 질문에 대한 답변.';

  @override
  String get support => '지원';

  @override
  String get getHelpWithYourAccountOrAPurchase => '계정이나 구매 관련 도움 받기.';

  @override
  String get sendFeedback => '피드백 보내기';

  @override
  String get reportAProblemOrSuggestAnImprovement => '문제 보고 또는 개선 사항 제안.';

  @override
  String get plans => '요금제';

  @override
  String get comparePlansAndSeeWhatEachOneUnlocks =>
      '요금제 비교 및 각 요금제로 해제되는 기능 보기.';

  @override
  String get planDetails => '요금제 상세';

  @override
  String get benefitsLimitsAndPricingForThisPlan => '이 요금제의 혜택, 제한, 가격.';

  @override
  String get paymentMethods => '결제 방법';

  @override
  String get supportedWaysToPayIncludingStoreBilling =>
      '스토어 결제를 포함한 지원되는 결제 방법.';

  @override
  String get restorePurchases => '구매 복원';

  @override
  String get reApplyAPurchaseMadeOnAnotherDevice => '다른 기기에서 한 구매를 다시 적용하기.';

  @override
  String get profile => '프로필';

  @override
  String get yourIdentityPlanStatusAndAccountPreferences =>
      '귀하의 신원, 요금제 상태 및 계정 설정.';

  @override
  String get deleteAccount => '계정 삭제';

  @override
  String get permanentlyRemoveYourAccountAndItsServerSideData =>
      '귀하의 계정과 서버 측 데이터를 영구적으로 삭제합니다.';

  @override
  String get rateZumi => 'Zumi 평가하기';

  @override
  String get tellOthersHowZumiWorkedForYouOnTheStore =>
      '스토어에서 Zumi가 어떻게 작동했는지 다른 사람에게 알려주세요.';

  @override
  String get shareZumi => 'Zumi 공유하기';

  @override
  String get recommendZumiToAFriend => '친구에게 Zumi를 추천하세요.';

  @override
  String get settingsGroupAppearance => '외관 및 언어';

  @override
  String get settingsGroupCompression => '압축';

  @override
  String get settingsGroupAi => '기기 내 AI';

  @override
  String get settingsGroupPrivacy => '알림 및 개인정보';

  @override
  String get settingsGroupPlans => '요금제 및 구매';

  @override
  String get settingsGroupAbout => '정보';

  @override
  String get settingsGroupLegal => '법적 사항';

  @override
  String get settingsGroupHelp => '도움말 및 피드백';

  @override
  String get settingsGroupAccount => '계정';

  @override
  String get settingsAppearanceSubtitle => '테마 및 앱 언어';

  @override
  String get settingsLanguageSubtitle => '앱 언어 및 방향';

  @override
  String get settingsCompressionSubtitle => '기본 품질 및 형식';

  @override
  String get settingsStorageSubtitle => '캐시 및 저장소 사용량';

  @override
  String get aiSettings => 'AI 설정';

  @override
  String get zumiAssistant => 'Zumi 어시스턴트';

  @override
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere =>
      '곧 여러분의 동영상을 위한 개인 비서가 제공됩니다. 여기에서 압축, 정리 및 저장된 동영상에 대해 물어볼 수 있습니다.';

  @override
  String get settingsAiSubtitle => '로컬 모델 및 스마트 도구';

  @override
  String get exploreLocalModelsAndFutureAiToolsTheseOptionsAreNotActiveYet =>
      '로컬 모델과 미래 AI 도구를 탐험하세요. 이 옵션들은 아직 활성화되어 있지 않습니다.';

  @override
  String get localModels => '로컬 모델';

  @override
  String get aiModelsSubtitle => '지원되는 모델 찾아보기 및 다운로드';

  @override
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere =>
      '지원되는 모델을 선택하고 이 장치에 다운로드한 후 설치된 모델을 관리하세요.';

  @override
  String get importAModel => '모델 가져오기';

  @override
  String get aiImportSubtitle => '파일에서 호환 가능한 모델을 사용하세요';

  @override
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt =>
      '호환되는 로컬 모델 파일을 선택하고 사용하기 전에 요구 사항을 검토하십시오.';

  @override
  String get smartFeatures => '스마트 기능';

  @override
  String get aiFeaturesSubtitle => '압축, 조직화 및 검색';

  @override
  String
  get chooseWhichLocalAiSuggestionsToUseForVideoCompressionOrganizationNamingAndSearch =>
      '비디오 압축, 조직화, 이름 지정 및 검색을 위해 사용할 로컬 AI 제안을 선택하십시오.';

  @override
  String get modelPerformance => '모델 성능';

  @override
  String get aiRuntimeSubtitle => '처리 및 리소스 환경 설정';

  @override
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels =>
      '지원되는 모델의 처리 백엔드와 리소스 한도를 제어하십시오.';

  @override
  String get conversationSettings => '대화 설정';

  @override
  String get aiChatSettingsSubtitle => '스트리밍, 사고 및 응답 길이';

  @override
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits =>
      '조수가 응답하는 방식을 구성합니다. 여기에는 스트리밍, 사고 모드, 샘플링 및 응답 제한이 포함됩니다.';

  @override
  String get imagesAndAudio => '이미지 및 오디오';

  @override
  String get aiMediaSubtitle => '멀티모달 입력 제어';

  @override
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos =>
      '호환되는 모델이 비디오에서 선택한 이미지와 오디오를 분석할 수 있는지 여부를 선택합니다.';

  @override
  String get semanticSearch => '시맨틱 검색';

  @override
  String get aiSearchSubtitle => '임베딩 및 로컬 인덱싱';

  @override
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning =>
      '의미에 따라 비디오와 순간을 찾기 위한 로컬 임베딩 모델 및 검색 인덱스를 관리합니다.';

  @override
  String get toolsAndStructuredOutput => '도구 및 구조화된 출력';

  @override
  String get aiToolsSubtitle => '작업, 스키마 및 확인';

  @override
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation =>
      '지원되는 어시스턴트 작업 및 구조화된 응답을 관리합니다. 파일에 영향을 주는 작업은 확인이 필요합니다.';

  @override
  String get aiGroupModels => '모델';

  @override
  String get aiGroupExperience => '어시스턴트 경험';

  @override
  String get aiGroupCapabilities => '스마트 기능';

  @override
  String get aiGroupPerformance => '성능';

  @override
  String get compressionHistorySubtitle => '압축된 동영상 기록';

  @override
  String get settingsNotificationsSubtitle => '완료 및 업데이트 알림';

  @override
  String get settingsPrivacySubtitle => '데이터는 로컬에 저장됩니다';

  @override
  String get plansSubtitle => '요금제 비교 및 업그레이드';

  @override
  String get plansMethodsSubtitle => '결제 수단 및 청구';

  @override
  String get plansRestoreSubtitle => '이전 구매 복원';

  @override
  String get aboutAppSubtitle => '버전 및 빌드 정보';

  @override
  String get aboutDeveloperSubtitle => 'Zumi 개발자';

  @override
  String get aboutLicensesSubtitle => '오픈 소스 패키지 라이선스';

  @override
  String get legalPrivacySubtitle => '데이터 처리 방식';

  @override
  String get legalTermsSubtitle => 'Zumi 사용 규칙';

  @override
  String get legalDataSafetySubtitle => '수집하는 데이터';

  @override
  String get legalPermissionsSubtitle => '왜 권한이 필요한가';

  @override
  String get helpFaqSubtitle => '자주 묻는 질문에 대한 답변';

  @override
  String get helpSupportSubtitle => '개발자에게 직접 문의하기';

  @override
  String get helpFeedbackSubtitle => '피드백 보내기';

  @override
  String get compressionPickVideo => '비디오 선택';

  @override
  String get compressionTargetMb => '목표 크기 (MB)';

  @override
  String get compressionStart => '압축 시작';

  @override
  String get compressionPause => '일시정지';

  @override
  String get compressionResume => '다시 시작';

  @override
  String get compressionViewResult => '결과 보기';

  @override
  String get compressionSaveGallery => '갤러리에 저장';

  @override
  String get compressionShare => '동영상 공유';

  @override
  String get compressionOriginalSize => '원본 크기';

  @override
  String get compressionOutputSize => '출력 크기';

  @override
  String get compressionEmptyHistory => '아직 압축된 동영상 없음';

  @override
  String get compressionSavedGallery => '갤러리에 저장됨';

  @override
  String get compressionInvalidTarget => '0보다 큰 목표 크기를 입력하세요';

  @override
  String get compressionCancelled => '압축 취소됨';

  @override
  String get compressionTargetExceeded =>
      '이 동영상은 선택한 크기에 도달할 수 없습니다. 더 큰 목표 크기를 시도하세요.';

  @override
  String get compressionTargetInfeasible =>
      '선택한 크기는 이 동영상에 너무 작습니다. 더 큰 크기를 선택하세요.';

  @override
  String get compressionPreviewBefore => '원본 미리보기';

  @override
  String get compressionPreviewAfter => '압축 미리보기';

  @override
  String get compressionPreset => '대상 프리셋';

  @override
  String get compressionCustom => '사용자 지정 크기';

  @override
  String get compressionPreviewUnavailable => '미리보기 사용 불가';

  @override
  String get compressionAdvanced => '고급 컨트롤';

  @override
  String get compressionAutomatic => '자동';

  @override
  String get compressionResolutionLimit => '최대 해상도';

  @override
  String get compressionSourceResolution => '원본 해상도';

  @override
  String get compressionFrameRateLimit => '최대 프레임 레이트';

  @override
  String get compressionAudioQuality => '오디오 비트레이트';

  @override
  String get compressionRemoveAudio => '오디오 제거';

  @override
  String get compressionVideoBitrateLimit => '비디오 비트레이트 상한(kbps)';

  @override
  String get compressionHdrPolicy => 'HDR 처리';

  @override
  String get compressionHdrConvert => 'SDR로 변환';

  @override
  String get compressionHdrPreserve => '지원되는 경우 HDR 유지';

  @override
  String get compressionPlanPreview => '시작하기 전에';

  @override
  String get compressionPlanLoading => '압축 계획 계산 중…';

  @override
  String get compressionPlanResolution => '계획된 해상도';

  @override
  String get compressionPlanVideoBitrate => '계획된 비디오 비트레이트';

  @override
  String get compressionPlanAudioBitrate => '계획된 오디오 비트레이트';

  @override
  String get compressionAudioConversionNote =>
      '재인코딩 시 오디오가 AAC 스테레오로 변환됩니다. Dolby Atmos 및 DTS 공간 오디오는 유지되지 않습니다.';

  @override
  String get compressionPlanTooSmall =>
      '이 대상은 사용 가능한 비디오로는 너무 작습니다. 크기를 늘리거나 다른 제한을 낮추세요.';

  @override
  String get compressionPlanLowQuality => '선택한 대상은 비디오 품질을 낮출 수 있습니다.';

  @override
  String get compressionPlanAlreadyWithinLimit => '소스는 이미 크기 제한 내에 있습니다.';

  @override
  String get compressionInvalidBitrate =>
      '최소 150 kbps의 비트레이트를 입력하거나 자동으로 두려면 빈칸으로 두세요.';

  @override
  String get compressionInvalidResolution =>
      '240에서 16384 사이의 짝수 해상도를 입력하거나 자동으로 두려면 빈칸으로 두세요.';

  @override
  String get compressionSeek => '비디오 위치';

  @override
  String get compressionInterrupted =>
      '이전 압축이 중단되었습니다. 임시 파일이 정리되었으므로 비디오를 선택하고 다시 시도할 수 있습니다.';

  @override
  String get compressionDismiss => '닫기';

  @override
  String get compressionClearHistory => '기록 지우기';

  @override
  String get compressionClearHistoryConfirm =>
      '모든 기록 항목을 삭제하시겠습니까? 저장된 동영상은 기기에 남아 있습니다.';

  @override
  String get compressionAttempts => '시도';

  @override
  String get compressionTargetSize => '목표 크기';

  @override
  String get compressionOutputResolution => '출력 해상도';

  @override
  String get compressionInvalidVideo => '이 동영상을 읽을 수 없습니다. 다른 파일을 선택하세요.';

  @override
  String get compressionInvalidOutput =>
      '인코딩된 동영상이 검증에 실패했습니다. 원본 동영상은 변경되지 않았습니다.';

  @override
  String get compressionEncoderUnsupported =>
      '이 기기는 선택한 해상도나 프레임 속도를 인코딩할 수 없습니다. 설정을 낮춘 후 다시 시도하세요.';

  @override
  String get compressionAudioDecoderUnsupported =>
      '이 기기는 압축을 위해 이 오디오 형식을 디코딩할 수 없습니다. 오디오를 제거하거나 지원되는 소스를 사용하세요.';

  @override
  String get compressionVideoDecoderUnsupported =>
      '이 장치는 이 비디오 형식이나 압축 프로필을 디코딩할 수 없습니다. 다른 소스나 장치를 선택하세요.';

  @override
  String get compressionMp4NotStreamable =>
      '내보낸 MP4는 스트리밍용으로 준비되지 않았습니다. 다른 비디오나 장치를 시도하세요.';

  @override
  String get compressionNoSpace => '이 비디오를 압축할 수 있는 충분한 자유 저장 공간이 없습니다.';

  @override
  String get compressionHdrUnsupported =>
      '이 장치는 선택한 HDR 모드를 처리할 수 없습니다. SDR로 변환을 시도하세요.';

  @override
  String get compressionGeneralFailure => '압축을 완료할 수 없습니다. 다른 설정이나 비디오를 시도하세요.';

  @override
  String get aboutIdentitySection => '앱 정보';

  @override
  String get aboutAppName => '앱 이름';

  @override
  String get aboutPackageName => '패키지 이름';

  @override
  String get aboutVersion => '버전';

  @override
  String get aboutBuildNumber => '빌드 번호';

  @override
  String get aboutEnvironmentSection => '장치 및 빌드';

  @override
  String get aboutOperatingSystem => '운영 체제';

  @override
  String get aboutOsVersion => 'OS 버전';

  @override
  String get aboutBuildMode => '빌드 모드';

  @override
  String get aboutDebug => '디버그';

  @override
  String get aboutRelease => '릴리스';

  @override
  String get aboutToolchainSection => '제작';

  @override
  String get aboutInstallationSection => '설치';

  @override
  String get aboutInstaller => '에서 설치됨';

  @override
  String get aboutInstalledOn => '설치된 날짜';

  @override
  String get aboutUpdatedOn => '업데이트된 날짜';

  @override
  String get aboutUnavailable => '사용 불가';

  @override
  String get aboutProjectSection => '프로젝트 및 지원';

  @override
  String get aboutRepository => 'GitHub 저장소';

  @override
  String get aboutRepositorySubtitle => 'Zumi 소스 코드 보기';

  @override
  String get aboutReadme => 'README 읽기';

  @override
  String get aboutReadmeSubtitle => 'GitHub에서 Zumi에 대해 알아보기';

  @override
  String get aboutIssues => '문제 보고';

  @override
  String get aboutIssuesSubtitle => 'GitHub 이슈 보기 및 생성';

  @override
  String get aboutLatestRelease => '최신 릴리스';

  @override
  String get aboutLatestReleaseSubtitle => '릴리스 및 다운로드 보기';

  @override
  String get aboutDonate => 'Zumi 지원';

  @override
  String get aboutDonateSubtitle => '공식 기부 페이지 열기';

  @override
  String get aboutLinkError => '링크를 열 수 없습니다. 다시 시도하세요.';

  @override
  String get aboutDeveloperSection => '개발자';

  @override
  String get aboutDeveloperName => 'Mostafa Sensei';

  @override
  String get aboutDeveloperProfile => 'GitHub 프로필';

  @override
  String get aboutDeveloperProfileSubtitle => '프로젝트 및 연락처 정보 보기';

  @override
  String get maintenanceInProgress => '유지보수 진행 중';

  @override
  String get maintenanceMessage => 'Zumi를 일시적으로 사용할 수 없습니다. 나중에 다시 시도하세요.';

  @override
  String get comingSoon => '곧 출시';

  @override
  String get languageName => '한국어';

  @override
  String get countryCode => 'KR';

  @override
  String countryName(String countryCode) {
    String _temp0 = intl.Intl.selectLogic(countryCode, {
      'AE': '아랍에미리트',
      'AT': '오스트리아',
      'AU': '오스트레일리아',
      'BE': '벨기에',
      'BH': '바레인',
      'BR': '브라질',
      'CA': '캐나다',
      'CH': '스위스',
      'CN': '중국',
      'DE': '독일',
      'DJ': '지부티',
      'DZ': '알제리',
      'EG': '이집트',
      'ES': '스페인',
      'FR': '프랑스',
      'GB': '영국',
      'HK': '홍콩(중국 특별행정구)',
      'ID': '인도네시아',
      'IQ': '이라크',
      'IT': '이탈리아',
      'JO': '요르단',
      'JP': '일본',
      'KM': '코모로',
      'KR': '대한민국',
      'KW': '쿠웨이트',
      'LB': '레바논',
      'LY': '리비아',
      'MA': '모로코',
      'MR': '모리타니',
      'MX': '멕시코',
      'NL': '네덜란드',
      'OM': '오만',
      'PL': '폴란드',
      'PS': '팔레스타인 지구',
      'PT': '포르투갈',
      'QA': '카타르',
      'RU': '러시아',
      'SA': '사우디아라비아',
      'SD': '수단',
      'SE': '스웨덴',
      'SG': '싱가포르',
      'SO': '소말리아',
      'SY': '시리아',
      'TH': '태국',
      'TN': '튀니지',
      'TR': '튀르키예',
      'TW': '대만',
      'US': '미국',
      'VN': '베트남',
      'YE': '예멘',
      'other': '국가',
    });
    return '$_temp0';
  }
}
