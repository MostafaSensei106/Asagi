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
  String fileSavedToGallery(String fileName) {
    return '갤러리에 파일 저장됨: $fileName';
  }

  @override
  String fileSavedToDocuments(String fileName) {
    return '문서에 파일 저장됨: $fileName';
  }

  @override
  String get fileIsAlreadySaved => '파일이 이미 저장되어 있습니다';

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
  String get addressLineCannotBeEmpty => '주소 줄은 비워둘 수 없습니다';

  @override
  String get addressLineIsTooLong => '주소 줄이 너무 깁니다';

  @override
  String get specialCharactersAreNotAllowed => '특수 문자는 허용되지 않습니다';

  @override
  String get emojisAreNotAllowed => '이모지는 허용되지 않습니다';

  @override
  String get cityCannotBeEmpty => '도시는 비워둘 수 없습니다';

  @override
  String get cityNameIsTooLong => '도시 이름이 너무 깁니다';

  @override
  String get cityContainsInvalidSpecialCharacters =>
      '도시에는 잘못된 특수 문자가 포함되어 있습니다';

  @override
  String get addressLabelCannotBeEmpty => '주소 라벨은 비워둘 수 없습니다';

  @override
  String get addressLabelIsTooLong => '주소 라벨이 너무 깁니다';

  @override
  String get emailCannotBeEmpty => '이메일은 비워둘 수 없습니다';

  @override
  String get invalidEmailFormat => '잘못된 이메일 형식';

  @override
  String get emailContainsInvalidCharacters => '이메일에 유효하지 않은 문자가 포함되어 있습니다';

  @override
  String get emailMustContain => '이메일에는 @가 포함되어야 합니다';

  @override
  String get emailMustBeInLowercase => '이메일은 소문자여야 합니다';

  @override
  String get arabicCharactersAreNotAllowed => '아랍어 문자는 허용되지 않습니다';

  @override
  String get emojisAreNotAllowedInEmail => '이모지는 이메일에 허용되지 않습니다';

  @override
  String get phoneNumberCannotBeEmpty => '전화번호는 비워둘 수 없습니다';

  @override
  String get invalidPhoneNumber => '유효하지 않은 전화번호입니다';

  @override
  String get phoneNumberMustBeAtLeast11Digits => '전화번호는 최소 11자리여야 합니다';

  @override
  String get nameCannotBeEmpty => '이름은 비워둘 수 없습니다';

  @override
  String get invalidName => '유효하지 않은 이름입니다';

  @override
  String get nameMustBeAtLeast3Characters => '이름은 최소 3자여야 합니다';

  @override
  String get nameCannotExceed20Characters => '이름은 20자를 초과할 수 없습니다';

  @override
  String get nameContainsInvalidSpecialCharacters =>
      '이름에 유효하지 않은 특수 문자가 포함되어 있습니다';

  @override
  String get emojisAreNotAllowedInName => '이모지는 이름에 허용되지 않습니다';

  @override
  String get passwordCannotBeEmpty => '비밀번호는 비워둘 수 없습니다';

  @override
  String get passwordMustContainUppercaseLowercaseNumberAndSpecialCharacter =>
      '비밀번호에는 대문자, 소문자, 숫자 및 특수 문자가 포함되어야 합니다';

  @override
  String get passwordMustBeAtLeast8CharactersLong => '비밀번호는 최소 8자 이상이어야 합니다';

  @override
  String get noInternetConnection => '인터넷 연결 없음';

  @override
  String get internetConnectionRestored => '인터넷 연결 복원됨';

  @override
  String get retry => '재시도';

  @override
  String get confirm => '확인';

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
  String get appearanceLanguage => '외관 및 언어';

  @override
  String get compression => '압축';

  @override
  String get onDeviceAI => '기기 내 AI';

  @override
  String get notificationsPrivacy => '알림 및 개인정보';

  @override
  String get plansPurchases => '요금제 및 구매';

  @override
  String get about => '정보';

  @override
  String get legal => '법적 사항';

  @override
  String get helpFeedback => '도움말 및 피드백';

  @override
  String get account => '계정';

  @override
  String get themeAndAppLanguage => '테마 및 앱 언어';

  @override
  String get appLanguageAndDirection => '앱 언어 및 방향';

  @override
  String get defaultQualityAndFormat => '기본 품질 및 형식';

  @override
  String get cacheAndStorageUsage => '캐시 및 저장소 사용량';

  @override
  String get aiSettings => 'AI 설정';

  @override
  String get zumiAssistant => 'Zumi 어시스턴트';

  @override
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere =>
      '곧 여러분의 동영상을 위한 개인 비서가 제공됩니다. 여기에서 압축, 정리 및 저장된 동영상에 대해 물어볼 수 있습니다.';

  @override
  String get localModelsAndSmartTools => '로컬 모델 및 스마트 도구';

  @override
  String get exploreLocalModelsAndFutureAIToolsTheseOptionsAreNotActiveYet =>
      '로컬 모델과 미래 AI 도구를 탐험하세요. 이 옵션들은 아직 활성화되어 있지 않습니다.';

  @override
  String get localModels => '로컬 모델';

  @override
  String get browseAndDownloadSupportedModels => '지원되는 모델 찾아보기 및 다운로드';

  @override
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere =>
      '지원되는 모델을 선택하고 이 장치에 다운로드한 후 설치된 모델을 관리하세요.';

  @override
  String get importAModel => '모델 가져오기';

  @override
  String get useACompatibleModelFromYourFiles => '파일에서 호환 가능한 모델을 사용하세요';

  @override
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt =>
      '호환되는 로컬 모델 파일을 선택하고 사용하기 전에 요구 사항을 검토하십시오.';

  @override
  String get smartFeatures => '스마트 기능';

  @override
  String get compressionOrganizationAndSearch => '압축, 조직화 및 검색';

  @override
  String
  get chooseWhichLocalAISuggestionsToUseForVideoCompressionOrganizationNamingAndSearch =>
      '비디오 압축, 조직화, 이름 지정 및 검색을 위해 사용할 로컬 AI 제안을 선택하십시오.';

  @override
  String get modelPerformance => '모델 성능';

  @override
  String get processingAndResourcePreferences => '처리 및 리소스 환경 설정';

  @override
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels =>
      '지원되는 모델의 처리 백엔드와 리소스 한도를 제어하십시오.';

  @override
  String get conversationSettings => '대화 설정';

  @override
  String get streamingThinkingAndResponseLength => '스트리밍, 사고 및 응답 길이';

  @override
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits =>
      '조수가 응답하는 방식을 구성합니다. 여기에는 스트리밍, 사고 모드, 샘플링 및 응답 제한이 포함됩니다.';

  @override
  String get imagesAndAudio => '이미지 및 오디오';

  @override
  String get controlMultimodalInputs => '멀티모달 입력 제어';

  @override
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos =>
      '호환되는 모델이 비디오에서 선택한 이미지와 오디오를 분석할 수 있는지 여부를 선택합니다.';

  @override
  String get semanticSearch => '시맨틱 검색';

  @override
  String get embeddingsAndLocalIndexing => '임베딩 및 로컬 인덱싱';

  @override
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning =>
      '의미에 따라 비디오와 순간을 찾기 위한 로컬 임베딩 모델 및 검색 인덱스를 관리합니다.';

  @override
  String get toolsAndStructuredOutput => '도구 및 구조화된 출력';

  @override
  String get actionsSchemasAndConfirmations => '작업, 스키마 및 확인';

  @override
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation =>
      '지원되는 어시스턴트 작업 및 구조화된 응답을 관리합니다. 파일에 영향을 주는 작업은 확인이 필요합니다.';

  @override
  String get models => '모델';

  @override
  String get assistantExperience => '어시스턴트 경험';

  @override
  String get smartCapabilities => '스마트 기능';

  @override
  String get performance => '성능';

  @override
  String get yourCompressedVideoHistory => '압축된 동영상 기록';

  @override
  String get completionAndUpdateAlerts => '완료 및 업데이트 알림';

  @override
  String get yourDataStaysLocal => '데이터는 로컬에 저장됩니다';

  @override
  String get comparePlansAndUpgrade => '요금제 비교 및 업그레이드';

  @override
  String get paymentMethodsAndBilling => '결제 수단 및 청구';

  @override
  String get restoreYourPreviousPurchase => '이전 구매 복원';

  @override
  String get versionAndBuildDetails => '버전 및 빌드 정보';

  @override
  String get theDeveloperBehindZumi => 'Zumi 개발자';

  @override
  String get openSourcePackageLicenses => '오픈 소스 패키지 라이선스';

  @override
  String get howDataIsHandled => '데이터 처리 방식';

  @override
  String get rulesForUsingZumi => 'Zumi 사용 규칙';

  @override
  String get whatDataWeCollect => '수집하는 데이터';

  @override
  String get whyWeNeedPermissions => '왜 권한이 필요한가';

  @override
  String get answersToCommonQuestions => '자주 묻는 질문에 대한 답변';

  @override
  String get reachTheDeveloperDirectly => '개발자에게 직접 문의하기';

  @override
  String get sendUsYourFeedback => '피드백 보내기';

  @override
  String get pickVideo => '비디오 선택';

  @override
  String get targetSizeMB => '목표 크기 (MB)';

  @override
  String get startCompression => '압축 시작';

  @override
  String get pause => '일시정지';

  @override
  String get resume => '다시 시작';

  @override
  String get viewResult => '결과 보기';

  @override
  String get saveToGallery => '갤러리에 저장';

  @override
  String get shareVideo => '동영상 공유';

  @override
  String get originalSize => '원본 크기';

  @override
  String get outputSize => '출력 크기';

  @override
  String get noCompressedVideosYet => '아직 압축된 동영상 없음';

  @override
  String get savedToGallery => '갤러리에 저장됨';

  @override
  String get enterATargetSizeGreaterThanZero => '0보다 큰 목표 크기를 입력하세요';

  @override
  String get compressionCancelled => '압축 취소됨';

  @override
  String get thisVideoCouldNotReachTheSelectedSizeTryALargerTargetSize =>
      '이 동영상은 선택한 크기에 도달할 수 없습니다. 더 큰 목표 크기를 시도하세요.';

  @override
  String get theSelectedSizeIsTooSmallForThisVideoChooseALargerSize =>
      '선택한 크기는 이 동영상에 너무 작습니다. 더 큰 크기를 선택하세요.';

  @override
  String get originalPreview => '원본 미리보기';

  @override
  String get compressedPreview => '압축 미리보기';

  @override
  String get targetPreset => '대상 프리셋';

  @override
  String get customSize => '사용자 지정 크기';

  @override
  String get previewUnavailable => '미리보기 사용 불가';

  @override
  String get advancedControls => '고급 컨트롤';

  @override
  String get automatic => '자동';

  @override
  String get maximumResolution => '최대 해상도';

  @override
  String get originalResolution => '원본 해상도';

  @override
  String get maximumFrameRate => '최대 프레임 레이트';

  @override
  String get audioBitrate => '오디오 비트레이트';

  @override
  String get removeAudio => '오디오 제거';

  @override
  String get videoBitrateCeilingKbps => '비디오 비트레이트 상한(kbps)';

  @override
  String get hdrHandling => 'HDR 처리';

  @override
  String get convertToSDR => 'SDR로 변환';

  @override
  String get keepHDRWhenSupported => '지원되는 경우 HDR 유지';

  @override
  String get beforeYouStart => '시작하기 전에';

  @override
  String get calculatingCompressionPlan => '압축 계획 계산 중…';

  @override
  String get plannedResolution => '계획된 해상도';

  @override
  String get plannedVideoBitrate => '계획된 비디오 비트레이트';

  @override
  String get plannedAudioBitrate => '계획된 오디오 비트레이트';

  @override
  String
  get reEncodingConvertsAudioToAACStereoDolbyAtmosAndDTSSpatialAudioWillNotBePreserved =>
      '재인코딩 시 오디오가 AAC 스테레오로 변환됩니다. Dolby Atmos 및 DTS 공간 오디오는 유지되지 않습니다.';

  @override
  String
  get thisTargetIsTooSmallForAUsableVideoIncreaseTheSizeOrLowerOtherLimits =>
      '이 대상은 사용 가능한 비디오로는 너무 작습니다. 크기를 늘리거나 다른 제한을 낮추세요.';

  @override
  String get theSelectedTargetMayReduceVideoQuality =>
      '선택한 대상은 비디오 품질을 낮출 수 있습니다.';

  @override
  String get theSourceIsAlreadyWithinTheSizeLimit => '소스는 이미 크기 제한 내에 있습니다.';

  @override
  String get enterABitrateOfAtLeast150KbpsOrLeaveBlankForAutomatic =>
      '최소 150 kbps의 비트레이트를 입력하거나 자동으로 두려면 빈칸으로 두세요.';

  @override
  String get enterAnEvenResolutionFrom240To16384OrLeaveBlankForAutomatic =>
      '240에서 16384 사이의 짝수 해상도를 입력하거나 자동으로 두려면 빈칸으로 두세요.';

  @override
  String get videoPosition => '비디오 위치';

  @override
  String
  get aPreviousCompressionWasInterruptedItsTemporaryFilesWereCleanedUpYouCanSelectTheVideoAndTryAgain =>
      '이전 압축이 중단되었습니다. 임시 파일이 정리되었으므로 비디오를 선택하고 다시 시도할 수 있습니다.';

  @override
  String get dismiss => '닫기';

  @override
  String get clearHistory => '기록 지우기';

  @override
  String get removeAllHistoryEntriesSavedVideosWillRemainOnYourDevice =>
      '모든 기록 항목을 삭제하시겠습니까? 저장된 동영상은 기기에 남아 있습니다.';

  @override
  String get attempts => '시도';

  @override
  String get targetSize => '목표 크기';

  @override
  String get outputResolution => '출력 해상도';

  @override
  String get thisVideoCouldNotBeReadChooseAnotherFile =>
      '이 동영상을 읽을 수 없습니다. 다른 파일을 선택하세요.';

  @override
  String get theEncodedVideoFailedVerificationYourOriginalVideoWasNotChanged =>
      '인코딩된 동영상이 검증에 실패했습니다. 원본 동영상은 변경되지 않았습니다.';

  @override
  String
  get thisDeviceCannotEncodeTheSelectedResolutionOrFrameRateLowerThatSettingAndTryAgain =>
      '이 기기는 선택한 해상도나 프레임 속도를 인코딩할 수 없습니다. 설정을 낮춘 후 다시 시도하세요.';

  @override
  String
  get thisDeviceCannotDecodeThisAudioFormatForCompressionRemoveAudioOrUseASupportedSource =>
      '이 기기는 압축을 위해 이 오디오 형식을 디코딩할 수 없습니다. 오디오를 제거하거나 지원되는 소스를 사용하세요.';

  @override
  String
  get thisDeviceCannotDecodeThisVideoFormatOrProfileForCompressionChooseAnotherSourceOrDevice =>
      '이 장치는 이 비디오 형식이나 압축 프로필을 디코딩할 수 없습니다. 다른 소스나 장치를 선택하세요.';

  @override
  String get theExportedMP4IsNotReadyForStreamingTryAnotherVideoOrDevice =>
      '내보낸 MP4는 스트리밍용으로 준비되지 않았습니다. 다른 비디오나 장치를 시도하세요.';

  @override
  String get thereIsNotEnoughFreeStorageToCompressThisVideo =>
      '이 비디오를 압축할 수 있는 충분한 자유 저장 공간이 없습니다.';

  @override
  String get thisDeviceCannotProcessTheSelectedHDRModeTryConvertingToSDR =>
      '이 장치는 선택한 HDR 모드를 처리할 수 없습니다. SDR로 변환을 시도하세요.';

  @override
  String get compressionCouldNotBeCompletedTryAnotherSettingOrVideo =>
      '압축을 완료할 수 없습니다. 다른 설정이나 비디오를 시도하세요.';

  @override
  String get appIdentity => '앱 정보';

  @override
  String get appName => '앱 이름';

  @override
  String get packageName => '패키지 이름';

  @override
  String get version => '버전';

  @override
  String get buildNumber => '빌드 번호';

  @override
  String get deviceAndBuild => '장치 및 빌드';

  @override
  String get operatingSystem => '운영 체제';

  @override
  String get osVersion => 'OS 버전';

  @override
  String get buildMode => '빌드 모드';

  @override
  String get debug => '디버그';

  @override
  String get release => '릴리스';

  @override
  String get builtWith => '제작';

  @override
  String get installation => '설치';

  @override
  String get installedFrom => '에서 설치됨';

  @override
  String get installedOn => '설치된 날짜';

  @override
  String get updatedOn => '업데이트된 날짜';

  @override
  String get unavailable => '사용 불가';

  @override
  String get projectAndSupport => '프로젝트 및 지원';

  @override
  String get githubRepository => 'GitHub 저장소';

  @override
  String get viewZumiSourceCode => 'Zumi 소스 코드 보기';

  @override
  String get readTheREADME => 'README 읽기';

  @override
  String get learnAboutZumiOnGitHub => 'GitHub에서 Zumi에 대해 알아보기';

  @override
  String get reportAnIssue => '문제 보고';

  @override
  String get viewAndCreateGitHubIssues => 'GitHub 이슈 보기 및 생성';

  @override
  String get latestRelease => '최신 릴리스';

  @override
  String get viewReleasesAndDownloads => '릴리스 및 다운로드 보기';

  @override
  String get supportZumi => 'Zumi 지원';

  @override
  String get openTheOfficialDonationPage => '공식 기부 페이지 열기';

  @override
  String get couldNotOpenTheLinkPleaseTryAgain => '링크를 열 수 없습니다. 다시 시도하세요.';

  @override
  String get developer => '개발자';

  @override
  String get mostafaSensei => 'Mostafa Sensei';

  @override
  String get githubProfile => 'GitHub 프로필';

  @override
  String get seeProjectsAndContactDetails => '프로젝트 및 연락처 정보 보기';

  @override
  String get maintenanceInProgress => '유지보수 진행 중';

  @override
  String get zumiIsTemporarilyUnavailablePleaseTryAgainLater =>
      'Zumi를 일시적으로 사용할 수 없습니다. 나중에 다시 시도하세요.';

  @override
  String get comingSoon => '곧 출시';

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
      'Use custom-size compression and exclusive Discord and YouTube Shorts presets.';

  @override
  String get pleaseWait => '잠시만 기다려 주세요...';

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
  String get premiumFeatureCustomSize => 'Custom-size compression';

  @override
  String get premiumFeatureDiscordPreset => 'Discord export preset';

  @override
  String get premiumFeatureYouTubeShortsPreset => 'YouTube Shorts preset';

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
  String get cancel => '취소';

  @override
  String get clean => 'Clean';

  @override
  String get openSourceLicenses => '오픈 소스 라이선스';

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
  String get zumiIsStudyingThePlatformAlgorithmAndCalculatingTheBudget =>
      '🐾 Zumi is studying the platform\'s algorithm and calculating the budget...';

  @override
  String get customControlMode => 'Custom control mode';

  @override
  String
  get youSetTheTargetSizeManuallyTheEngineWillApplyTheHighestPossibleQualityWithinThatCap =>
      'You set the target size manually. The engine will apply the highest possible resolution and quality within that cap.';

  @override
  String zumiIsPuzzledAnImpossibleTargetForTheNameCap(String name) {
    return 'Zumi is puzzled (impossible target for the $name cap)';
  }

  @override
  String
  theVideoIsTooLongToFitWithinTheSizeCapWithoutSevereDistortionWeSuggestTrimmingTheVideoOrChoosingAnotherPlatformWithAHigherCap(
    String size,
  ) {
    return 'The video is too long to fit within the $size cap without severe image distortion. We suggest trimming the video or choosing another platform with a higher cap.';
  }

  @override
  String get zumiAlertProtectingQualityFromDistortion =>
      'Zumi alert: protecting quality from distortion';

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
      '1. Acceptance of Terms\nBy downloading, accessing, or using Zumi (\"the Application\"), you agree to be bound by these Terms of Service. If you disagree with any part of these terms, you must discontinue using the application.\n\n2. Personal License\nWe grant you a personal, revocable, non-exclusive, non-transferable license to use Zumi strictly for your personal, non-commercial, or internal creative media compression workflows on compatible devices.\n\n3. On-Device Execution & Content Ownership\nZumi executes compression pipelines exclusively on your device hardware using local encoders. You retain 100% of all intellectual property rights and copyrights in and to your video files and media. Zumi never uploads, hosts, replicates, or claims ownership over any videos you select or process. You are solely responsible for ensuring you have all requisite permissions and licenses for any media you compress.\n\n4. In-App Subscriptions & Billing\nOptional premium features (such as Zumi Pro) may be offered as recurring subscriptions or one-time unlock purchases. All billing, renewals, cancellations, and tax collections are processed exclusively through the official platform store (Google Play or Apple App Store). Subscriptions renew automatically unless cancelled at least 24 hours prior to the conclusion of the active billing cycle.\n\n5. Disclaimer of Warranties\nThe Application is provided \"as is\" and \"as available,\" without warranty of any kind, express or implied. While we employ rigorous testing and standard-compliant codecs, we do not guarantee that media compression will achieve specific file reduction percentages without visual changes for every source codec.\n';

  @override
  String get termsCopiedToClipboard => 'Terms copied to clipboard';

  @override
  String get termsAcceptanceLicenseTitle => '1. Acceptance & License';

  @override
  String get termsAcceptanceLicenseBody =>
      'By using Zumi, you agree to these Terms. We grant you a personal, non-exclusive, non-transferable license to compress media locally on your devices.';

  @override
  String get termsContentOwnershipTitle => '2. 100% Content Ownership';

  @override
  String get termsContentOwnershipBody =>
      'You retain all copyrights and ownership over your videos. Zumi does not transmit, store, or claim any rights to your media files.';

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
  get allPaymentDetailsAreHandledDirectlyByGooglePlayStoreOrAppleAppStoreZumiNeverAccessesCardDetails =>
      'All payment details are handled directly by Google Play Store or Apple App Store. Zumi never accesses card details.';

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
      'Zumi was built with a fundamental architectural guarantee: your videos, clips, and audio tracks are encoded exclusively on your device hardware using local native codecs. At no point is your media streamed, stored, or processed on external cloud infrastructure.';

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
      'Subscription and in-app purchase operations are executed directly through the official Apple App Store or Google Play Store. Zumi does not process or retain your credit card or financial billing information.';

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
  String get zumiBitrateOptimizer => 'Zumi Bitrate Optimizer (0.2B)';

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
  String get privacyPolicySummary => 'How Zumi handles data';

  @override
  String get dataSafetySummary => 'Collected data and purpose';

  @override
  String get permissionsSummary => 'Why Zumi needs access';

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
      'Use a card saved to your Google Play or Apple App Store account. The store processes the payment, so Zumi never receives your card number.';

  @override
  String get storeBalanceGiftCardsTitle => 'Store Balance & Gift Cards';

  @override
  String get storeBalanceGiftCardsSummary => 'Redeem store credit';

  @override
  String get storeBalanceGiftCardsDetails =>
      'Use eligible store balance, redeemed gift cards, or promotional credit toward a Zumi subscription. Availability depends on your store and region.';

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
      'Zumi never sees or retains your financial billing data. Google Play or Apple App Store authenticates and encrypts every transaction. You can cancel anytime through your store account, without hidden fees.';
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
  String fileSavedToGallery(String fileName) {
    return '갤러리에 파일 저장됨: $fileName';
  }

  @override
  String fileSavedToDocuments(String fileName) {
    return '문서에 파일 저장됨: $fileName';
  }

  @override
  String get fileIsAlreadySaved => '파일이 이미 저장되어 있습니다';

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
  String get addressLineCannotBeEmpty => '주소 줄은 비워둘 수 없습니다';

  @override
  String get addressLineIsTooLong => '주소 줄이 너무 깁니다';

  @override
  String get specialCharactersAreNotAllowed => '특수 문자는 허용되지 않습니다';

  @override
  String get emojisAreNotAllowed => '이모지는 허용되지 않습니다';

  @override
  String get cityCannotBeEmpty => '도시는 비워둘 수 없습니다';

  @override
  String get cityNameIsTooLong => '도시 이름이 너무 깁니다';

  @override
  String get cityContainsInvalidSpecialCharacters =>
      '도시에는 잘못된 특수 문자가 포함되어 있습니다';

  @override
  String get addressLabelCannotBeEmpty => '주소 라벨은 비워둘 수 없습니다';

  @override
  String get addressLabelIsTooLong => '주소 라벨이 너무 깁니다';

  @override
  String get emailCannotBeEmpty => '이메일은 비워둘 수 없습니다';

  @override
  String get invalidEmailFormat => '잘못된 이메일 형식';

  @override
  String get emailContainsInvalidCharacters => '이메일에 유효하지 않은 문자가 포함되어 있습니다';

  @override
  String get emailMustContain => '이메일에는 @가 포함되어야 합니다';

  @override
  String get emailMustBeInLowercase => '이메일은 소문자여야 합니다';

  @override
  String get arabicCharactersAreNotAllowed => '아랍어 문자는 허용되지 않습니다';

  @override
  String get emojisAreNotAllowedInEmail => '이모지는 이메일에 허용되지 않습니다';

  @override
  String get phoneNumberCannotBeEmpty => '전화번호는 비워둘 수 없습니다';

  @override
  String get invalidPhoneNumber => '유효하지 않은 전화번호입니다';

  @override
  String get phoneNumberMustBeAtLeast11Digits => '전화번호는 최소 11자리여야 합니다';

  @override
  String get nameCannotBeEmpty => '이름은 비워둘 수 없습니다';

  @override
  String get invalidName => '유효하지 않은 이름입니다';

  @override
  String get nameMustBeAtLeast3Characters => '이름은 최소 3자여야 합니다';

  @override
  String get nameCannotExceed20Characters => '이름은 20자를 초과할 수 없습니다';

  @override
  String get nameContainsInvalidSpecialCharacters =>
      '이름에 유효하지 않은 특수 문자가 포함되어 있습니다';

  @override
  String get emojisAreNotAllowedInName => '이모지는 이름에 허용되지 않습니다';

  @override
  String get passwordCannotBeEmpty => '비밀번호는 비워둘 수 없습니다';

  @override
  String get passwordMustContainUppercaseLowercaseNumberAndSpecialCharacter =>
      '비밀번호에는 대문자, 소문자, 숫자 및 특수 문자가 포함되어야 합니다';

  @override
  String get passwordMustBeAtLeast8CharactersLong => '비밀번호는 최소 8자 이상이어야 합니다';

  @override
  String get noInternetConnection => '인터넷 연결 없음';

  @override
  String get internetConnectionRestored => '인터넷 연결 복원됨';

  @override
  String get retry => '재시도';

  @override
  String get confirm => '확인';

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
  String get appearanceLanguage => '외관 및 언어';

  @override
  String get compression => '압축';

  @override
  String get onDeviceAI => '기기 내 AI';

  @override
  String get notificationsPrivacy => '알림 및 개인정보';

  @override
  String get plansPurchases => '요금제 및 구매';

  @override
  String get about => '정보';

  @override
  String get legal => '법적 사항';

  @override
  String get helpFeedback => '도움말 및 피드백';

  @override
  String get account => '계정';

  @override
  String get themeAndAppLanguage => '테마 및 앱 언어';

  @override
  String get appLanguageAndDirection => '앱 언어 및 방향';

  @override
  String get defaultQualityAndFormat => '기본 품질 및 형식';

  @override
  String get cacheAndStorageUsage => '캐시 및 저장소 사용량';

  @override
  String get aiSettings => 'AI 설정';

  @override
  String get zumiAssistant => 'Zumi 어시스턴트';

  @override
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere =>
      '곧 여러분의 동영상을 위한 개인 비서가 제공됩니다. 여기에서 압축, 정리 및 저장된 동영상에 대해 물어볼 수 있습니다.';

  @override
  String get localModelsAndSmartTools => '로컬 모델 및 스마트 도구';

  @override
  String get exploreLocalModelsAndFutureAIToolsTheseOptionsAreNotActiveYet =>
      '로컬 모델과 미래 AI 도구를 탐험하세요. 이 옵션들은 아직 활성화되어 있지 않습니다.';

  @override
  String get localModels => '로컬 모델';

  @override
  String get browseAndDownloadSupportedModels => '지원되는 모델 찾아보기 및 다운로드';

  @override
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere =>
      '지원되는 모델을 선택하고 이 장치에 다운로드한 후 설치된 모델을 관리하세요.';

  @override
  String get importAModel => '모델 가져오기';

  @override
  String get useACompatibleModelFromYourFiles => '파일에서 호환 가능한 모델을 사용하세요';

  @override
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt =>
      '호환되는 로컬 모델 파일을 선택하고 사용하기 전에 요구 사항을 검토하십시오.';

  @override
  String get smartFeatures => '스마트 기능';

  @override
  String get compressionOrganizationAndSearch => '압축, 조직화 및 검색';

  @override
  String
  get chooseWhichLocalAISuggestionsToUseForVideoCompressionOrganizationNamingAndSearch =>
      '비디오 압축, 조직화, 이름 지정 및 검색을 위해 사용할 로컬 AI 제안을 선택하십시오.';

  @override
  String get modelPerformance => '모델 성능';

  @override
  String get processingAndResourcePreferences => '처리 및 리소스 환경 설정';

  @override
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels =>
      '지원되는 모델의 처리 백엔드와 리소스 한도를 제어하십시오.';

  @override
  String get conversationSettings => '대화 설정';

  @override
  String get streamingThinkingAndResponseLength => '스트리밍, 사고 및 응답 길이';

  @override
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits =>
      '조수가 응답하는 방식을 구성합니다. 여기에는 스트리밍, 사고 모드, 샘플링 및 응답 제한이 포함됩니다.';

  @override
  String get imagesAndAudio => '이미지 및 오디오';

  @override
  String get controlMultimodalInputs => '멀티모달 입력 제어';

  @override
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos =>
      '호환되는 모델이 비디오에서 선택한 이미지와 오디오를 분석할 수 있는지 여부를 선택합니다.';

  @override
  String get semanticSearch => '시맨틱 검색';

  @override
  String get embeddingsAndLocalIndexing => '임베딩 및 로컬 인덱싱';

  @override
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning =>
      '의미에 따라 비디오와 순간을 찾기 위한 로컬 임베딩 모델 및 검색 인덱스를 관리합니다.';

  @override
  String get toolsAndStructuredOutput => '도구 및 구조화된 출력';

  @override
  String get actionsSchemasAndConfirmations => '작업, 스키마 및 확인';

  @override
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation =>
      '지원되는 어시스턴트 작업 및 구조화된 응답을 관리합니다. 파일에 영향을 주는 작업은 확인이 필요합니다.';

  @override
  String get models => '모델';

  @override
  String get assistantExperience => '어시스턴트 경험';

  @override
  String get smartCapabilities => '스마트 기능';

  @override
  String get performance => '성능';

  @override
  String get yourCompressedVideoHistory => '압축된 동영상 기록';

  @override
  String get completionAndUpdateAlerts => '완료 및 업데이트 알림';

  @override
  String get yourDataStaysLocal => '데이터는 로컬에 저장됩니다';

  @override
  String get comparePlansAndUpgrade => '요금제 비교 및 업그레이드';

  @override
  String get paymentMethodsAndBilling => '결제 수단 및 청구';

  @override
  String get restoreYourPreviousPurchase => '이전 구매 복원';

  @override
  String get versionAndBuildDetails => '버전 및 빌드 정보';

  @override
  String get theDeveloperBehindZumi => 'Zumi 개발자';

  @override
  String get openSourcePackageLicenses => '오픈 소스 패키지 라이선스';

  @override
  String get howDataIsHandled => '데이터 처리 방식';

  @override
  String get rulesForUsingZumi => 'Zumi 사용 규칙';

  @override
  String get whatDataWeCollect => '수집하는 데이터';

  @override
  String get whyWeNeedPermissions => '왜 권한이 필요한가';

  @override
  String get answersToCommonQuestions => '자주 묻는 질문에 대한 답변';

  @override
  String get reachTheDeveloperDirectly => '개발자에게 직접 문의하기';

  @override
  String get sendUsYourFeedback => '피드백 보내기';

  @override
  String get pickVideo => '비디오 선택';

  @override
  String get targetSizeMB => '목표 크기 (MB)';

  @override
  String get startCompression => '압축 시작';

  @override
  String get pause => '일시정지';

  @override
  String get resume => '다시 시작';

  @override
  String get viewResult => '결과 보기';

  @override
  String get saveToGallery => '갤러리에 저장';

  @override
  String get shareVideo => '동영상 공유';

  @override
  String get originalSize => '원본 크기';

  @override
  String get outputSize => '출력 크기';

  @override
  String get noCompressedVideosYet => '아직 압축된 동영상 없음';

  @override
  String get savedToGallery => '갤러리에 저장됨';

  @override
  String get enterATargetSizeGreaterThanZero => '0보다 큰 목표 크기를 입력하세요';

  @override
  String get compressionCancelled => '압축 취소됨';

  @override
  String get thisVideoCouldNotReachTheSelectedSizeTryALargerTargetSize =>
      '이 동영상은 선택한 크기에 도달할 수 없습니다. 더 큰 목표 크기를 시도하세요.';

  @override
  String get theSelectedSizeIsTooSmallForThisVideoChooseALargerSize =>
      '선택한 크기는 이 동영상에 너무 작습니다. 더 큰 크기를 선택하세요.';

  @override
  String get originalPreview => '원본 미리보기';

  @override
  String get compressedPreview => '압축 미리보기';

  @override
  String get targetPreset => '대상 프리셋';

  @override
  String get customSize => '사용자 지정 크기';

  @override
  String get previewUnavailable => '미리보기 사용 불가';

  @override
  String get advancedControls => '고급 컨트롤';

  @override
  String get automatic => '자동';

  @override
  String get maximumResolution => '최대 해상도';

  @override
  String get originalResolution => '원본 해상도';

  @override
  String get maximumFrameRate => '최대 프레임 레이트';

  @override
  String get audioBitrate => '오디오 비트레이트';

  @override
  String get removeAudio => '오디오 제거';

  @override
  String get videoBitrateCeilingKbps => '비디오 비트레이트 상한(kbps)';

  @override
  String get hdrHandling => 'HDR 처리';

  @override
  String get convertToSDR => 'SDR로 변환';

  @override
  String get keepHDRWhenSupported => '지원되는 경우 HDR 유지';

  @override
  String get beforeYouStart => '시작하기 전에';

  @override
  String get calculatingCompressionPlan => '압축 계획 계산 중…';

  @override
  String get plannedResolution => '계획된 해상도';

  @override
  String get plannedVideoBitrate => '계획된 비디오 비트레이트';

  @override
  String get plannedAudioBitrate => '계획된 오디오 비트레이트';

  @override
  String
  get reEncodingConvertsAudioToAACStereoDolbyAtmosAndDTSSpatialAudioWillNotBePreserved =>
      '재인코딩 시 오디오가 AAC 스테레오로 변환됩니다. Dolby Atmos 및 DTS 공간 오디오는 유지되지 않습니다.';

  @override
  String
  get thisTargetIsTooSmallForAUsableVideoIncreaseTheSizeOrLowerOtherLimits =>
      '이 대상은 사용 가능한 비디오로는 너무 작습니다. 크기를 늘리거나 다른 제한을 낮추세요.';

  @override
  String get theSelectedTargetMayReduceVideoQuality =>
      '선택한 대상은 비디오 품질을 낮출 수 있습니다.';

  @override
  String get theSourceIsAlreadyWithinTheSizeLimit => '소스는 이미 크기 제한 내에 있습니다.';

  @override
  String get enterABitrateOfAtLeast150KbpsOrLeaveBlankForAutomatic =>
      '최소 150 kbps의 비트레이트를 입력하거나 자동으로 두려면 빈칸으로 두세요.';

  @override
  String get enterAnEvenResolutionFrom240To16384OrLeaveBlankForAutomatic =>
      '240에서 16384 사이의 짝수 해상도를 입력하거나 자동으로 두려면 빈칸으로 두세요.';

  @override
  String get videoPosition => '비디오 위치';

  @override
  String
  get aPreviousCompressionWasInterruptedItsTemporaryFilesWereCleanedUpYouCanSelectTheVideoAndTryAgain =>
      '이전 압축이 중단되었습니다. 임시 파일이 정리되었으므로 비디오를 선택하고 다시 시도할 수 있습니다.';

  @override
  String get dismiss => '닫기';

  @override
  String get clearHistory => '기록 지우기';

  @override
  String get removeAllHistoryEntriesSavedVideosWillRemainOnYourDevice =>
      '모든 기록 항목을 삭제하시겠습니까? 저장된 동영상은 기기에 남아 있습니다.';

  @override
  String get attempts => '시도';

  @override
  String get targetSize => '목표 크기';

  @override
  String get outputResolution => '출력 해상도';

  @override
  String get thisVideoCouldNotBeReadChooseAnotherFile =>
      '이 동영상을 읽을 수 없습니다. 다른 파일을 선택하세요.';

  @override
  String get theEncodedVideoFailedVerificationYourOriginalVideoWasNotChanged =>
      '인코딩된 동영상이 검증에 실패했습니다. 원본 동영상은 변경되지 않았습니다.';

  @override
  String
  get thisDeviceCannotEncodeTheSelectedResolutionOrFrameRateLowerThatSettingAndTryAgain =>
      '이 기기는 선택한 해상도나 프레임 속도를 인코딩할 수 없습니다. 설정을 낮춘 후 다시 시도하세요.';

  @override
  String
  get thisDeviceCannotDecodeThisAudioFormatForCompressionRemoveAudioOrUseASupportedSource =>
      '이 기기는 압축을 위해 이 오디오 형식을 디코딩할 수 없습니다. 오디오를 제거하거나 지원되는 소스를 사용하세요.';

  @override
  String
  get thisDeviceCannotDecodeThisVideoFormatOrProfileForCompressionChooseAnotherSourceOrDevice =>
      '이 장치는 이 비디오 형식이나 압축 프로필을 디코딩할 수 없습니다. 다른 소스나 장치를 선택하세요.';

  @override
  String get theExportedMP4IsNotReadyForStreamingTryAnotherVideoOrDevice =>
      '내보낸 MP4는 스트리밍용으로 준비되지 않았습니다. 다른 비디오나 장치를 시도하세요.';

  @override
  String get thereIsNotEnoughFreeStorageToCompressThisVideo =>
      '이 비디오를 압축할 수 있는 충분한 자유 저장 공간이 없습니다.';

  @override
  String get thisDeviceCannotProcessTheSelectedHDRModeTryConvertingToSDR =>
      '이 장치는 선택한 HDR 모드를 처리할 수 없습니다. SDR로 변환을 시도하세요.';

  @override
  String get compressionCouldNotBeCompletedTryAnotherSettingOrVideo =>
      '압축을 완료할 수 없습니다. 다른 설정이나 비디오를 시도하세요.';

  @override
  String get appIdentity => '앱 정보';

  @override
  String get appName => '앱 이름';

  @override
  String get packageName => '패키지 이름';

  @override
  String get version => '버전';

  @override
  String get buildNumber => '빌드 번호';

  @override
  String get deviceAndBuild => '장치 및 빌드';

  @override
  String get operatingSystem => '운영 체제';

  @override
  String get osVersion => 'OS 버전';

  @override
  String get buildMode => '빌드 모드';

  @override
  String get debug => '디버그';

  @override
  String get release => '릴리스';

  @override
  String get builtWith => '제작';

  @override
  String get installation => '설치';

  @override
  String get installedFrom => '에서 설치됨';

  @override
  String get installedOn => '설치된 날짜';

  @override
  String get updatedOn => '업데이트된 날짜';

  @override
  String get unavailable => '사용 불가';

  @override
  String get projectAndSupport => '프로젝트 및 지원';

  @override
  String get githubRepository => 'GitHub 저장소';

  @override
  String get viewZumiSourceCode => 'Zumi 소스 코드 보기';

  @override
  String get readTheREADME => 'README 읽기';

  @override
  String get learnAboutZumiOnGitHub => 'GitHub에서 Zumi에 대해 알아보기';

  @override
  String get reportAnIssue => '문제 보고';

  @override
  String get viewAndCreateGitHubIssues => 'GitHub 이슈 보기 및 생성';

  @override
  String get latestRelease => '최신 릴리스';

  @override
  String get viewReleasesAndDownloads => '릴리스 및 다운로드 보기';

  @override
  String get supportZumi => 'Zumi 지원';

  @override
  String get openTheOfficialDonationPage => '공식 기부 페이지 열기';

  @override
  String get couldNotOpenTheLinkPleaseTryAgain => '링크를 열 수 없습니다. 다시 시도하세요.';

  @override
  String get developer => '개발자';

  @override
  String get mostafaSensei => 'Mostafa Sensei';

  @override
  String get githubProfile => 'GitHub 프로필';

  @override
  String get seeProjectsAndContactDetails => '프로젝트 및 연락처 정보 보기';

  @override
  String get maintenanceInProgress => '유지보수 진행 중';

  @override
  String get zumiIsTemporarilyUnavailablePleaseTryAgainLater =>
      'Zumi를 일시적으로 사용할 수 없습니다. 나중에 다시 시도하세요.';

  @override
  String get comingSoon => '곧 출시';

  @override
  String get pleaseWait => '잠시만 기다려 주세요...';

  @override
  String get cancel => '취소';

  @override
  String get openSourceLicenses => '오픈 소스 라이선스';

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
