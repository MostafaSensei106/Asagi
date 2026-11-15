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
  String get sharperTextAndSurfaces => 'Sharper text and surfaces';

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
