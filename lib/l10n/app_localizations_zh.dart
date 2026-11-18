// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get zumi => 'Zumi';

  @override
  String get downloadFile => '下载文件';

  @override
  String fileOpenedInBrowser(String fileName) {
    return '文件已在浏览器中打开：$fileName';
  }

  @override
  String fileSavedToGallery(String fileName) {
    return '文件已保存到图库：$fileName';
  }

  @override
  String fileSavedToDocuments(String fileName) {
    return '文件已保存到文档：$fileName';
  }

  @override
  String get fileIsAlreadySaved => '文件已存在';

  @override
  String get error => '错误';

  @override
  String get info => '信息';

  @override
  String get success => '成功';

  @override
  String get warning => '警告';

  @override
  String get paid => '已付款';

  @override
  String get unpaid => '未付款';

  @override
  String get partial => '部分';

  @override
  String get addressLineCannotBeEmpty => '地址行不能为空';

  @override
  String get addressLineIsTooLong => '地址行太长';

  @override
  String get specialCharactersAreNotAllowed => '不允许使用特殊字符';

  @override
  String get emojisAreNotAllowed => '不允许使用表情符号';

  @override
  String get cityCannotBeEmpty => '城市不能为空';

  @override
  String get cityNameIsTooLong => '城市名称太长';

  @override
  String get cityContainsInvalidSpecialCharacters => '城市包含无效的特殊字符';

  @override
  String get addressLabelCannotBeEmpty => '地址标签不能为空';

  @override
  String get addressLabelIsTooLong => '地址标签太长';

  @override
  String get emailCannotBeEmpty => '邮箱不能为空';

  @override
  String get invalidEmailFormat => '邮箱格式无效';

  @override
  String get emailContainsInvalidCharacters => '电子邮件包含无效字符';

  @override
  String get emailMustContain => '电子邮件必须包含@';

  @override
  String get emailMustBeInLowercase => '电子邮件必须为小写';

  @override
  String get arabicCharactersAreNotAllowed => '不允许使用阿拉伯字符';

  @override
  String get emojisAreNotAllowedInEmail => '电子邮件中不允许使用表情符号';

  @override
  String get phoneNumberCannotBeEmpty => '电话号码不能为空';

  @override
  String get invalidPhoneNumber => '无效的电话号码';

  @override
  String get phoneNumberMustBeAtLeast11Digits => '电话号码必须至少包含11位数字';

  @override
  String get nameCannotBeEmpty => '姓名不能为空';

  @override
  String get invalidName => '无效的姓名';

  @override
  String get nameMustBeAtLeast3Characters => '姓名必须至少包含3个字符';

  @override
  String get nameCannotExceed20Characters => '姓名不能超过20个字符';

  @override
  String get nameContainsInvalidSpecialCharacters => '姓名包含无效的特殊字符';

  @override
  String get emojisAreNotAllowedInName => '姓名中不允许使用表情符号';

  @override
  String get passwordCannotBeEmpty => '密码不能为空';

  @override
  String get passwordMustContainUppercaseLowercaseNumberAndSpecialCharacter =>
      '密码必须包含大写字母、小写字母、数字和特殊字符';

  @override
  String get passwordMustBeAtLeast8CharactersLong => '密码长度至少为8个字符';

  @override
  String get noInternetConnection => '没有网络连接';

  @override
  String get internetConnectionRestored => '网络连接已恢复';

  @override
  String get retry => '重试';

  @override
  String get confirm => '确认';

  @override
  String get ok => '确定';

  @override
  String get compressVideosPrivatelyOnYourDevice => '在设备上私密地压缩视频。';

  @override
  String get welcomeToZumi => '欢迎使用Zumi';

  @override
  String get learnHowZumiCompressesYourVideosWithoutEverLeavingYourPhone =>
      '了解Zumi如何在不离开手机的情况下压缩您的视频。';

  @override
  String get signIn => '登录';

  @override
  String get signInToSyncYourPlanAndKeepYourPurchasesAvailableOnEveryDevice =>
      '登录以同步您的计划并让您的购买在每台设备上可用。';

  @override
  String get chooseAVideo => '选择视频';

  @override
  String get pickAVideoFromYourGalleryToStartCompressing => '从您的图库中选择一个视频开始压缩。';

  @override
  String get compressionSetup => '压缩设置';

  @override
  String get chooseResolutionBitrateAndOutputFormatBeforeYouStart =>
      '在开始之前选择分辨率、比特率和输出格式。';

  @override
  String get compressing => '压缩中';

  @override
  String get followTheLiveProgressOfYourCompressionJob => '关注压缩任务的实时进度。';

  @override
  String get compressionResult => '压缩结果';

  @override
  String get compareTheBeforeAndAfterSizeThenSaveOrShareTheResult =>
      '比较压缩前后的大小，然后保存或分享结果。';

  @override
  String get compressionHistory => '压缩历史';

  @override
  String get reviewTheVideosYouHaveCompressedOnThisDevice => '查看您在此设备上压缩过的视频。';

  @override
  String get settings => '设置';

  @override
  String get appearance => '外观';

  @override
  String get themeColorSchemeAndMotionPreferences => '主题、配色方案和动画偏好。';

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
  String get language => '语言';

  @override
  String get appLanguageAndTextDirection => '应用语言和文字方向。';

  @override
  String get compressionDefaults => '压缩默认值';

  @override
  String get defaultResolutionBitrateAndOutputFormat => '默认分辨率、比特率和输出格式。';

  @override
  String get storageCleanup => '存储与清理';

  @override
  String get storageUsageCacheSizeAndTemporaryFileCleanup =>
      '存储使用情况、缓存大小和临时文件清理。';

  @override
  String get notifications => '通知';

  @override
  String get jobCompletionAndProductUpdateNotifications => '作业完成和产品更新通知。';

  @override
  String get privacy => '隐私';

  @override
  String get onDeviceProcessingLocalLogsAndOptionalCrashReports =>
      '设备端处理、本地日志和可选的崩溃报告。';

  @override
  String get aboutZumi => '关于 Zumi';

  @override
  String get versionBuildNumberAndApplicationDetails => '版本、构建号和应用详情。';

  @override
  String get aboutTheDeveloper => '关于开发者';

  @override
  String get theDeveloperAndToolsBehindZumi => 'Zumi 的开发者及工具。';

  @override
  String get openSourcePackagesBundledWithZumi => '随 Zumi 打包的开源软件包。';

  @override
  String get privacyPolicy => '隐私政策';

  @override
  String get howZumiHandlesYourVideosAndData => 'Zumi 如何处理您的视频和数据。';

  @override
  String get termsOfService => '服务条款';

  @override
  String get theTermsThatApplyToZumiAndItsPurchases => '适用于 Zumi 及其购买内容的条款。';

  @override
  String get dataSafety => '数据安全';

  @override
  String get summaryOfTheDataZumiCollectsAndWhy => 'Zumi 收集的数据摘要及原因。';

  @override
  String get permissions => '权限';

  @override
  String get runtimePermissionsZumiRequestsAndWhyEachIsNeeded =>
      'Zumi 请求的运行时权限及每个权限的必要性。';

  @override
  String get faq => '常见问题';

  @override
  String get answersToCommonQuestionsAboutCompressionAndBilling =>
      '关于压缩和计费的常见问题解答。';

  @override
  String get support => '支持';

  @override
  String get getHelpWithYourAccountOrAPurchase => '获取有关您的账户或购买的帮助。';

  @override
  String get sendFeedback => '发送反馈';

  @override
  String get reportAProblemOrSuggestAnImprovement => '报告问题或提出改进建议。';

  @override
  String get plans => '计划';

  @override
  String get comparePlansAndSeeWhatEachOneUnlocks => '比较计划并查看每个计划解锁的内容。';

  @override
  String get planDetails => '计划详情';

  @override
  String get benefitsLimitsAndPricingForThisPlan => '该计划的福利、限制和定价。';

  @override
  String get paymentMethods => '支付方式';

  @override
  String get supportedWaysToPayIncludingStoreBilling => '支持的支付方式，包括商店账单。';

  @override
  String get restorePurchases => '恢复购买';

  @override
  String get reApplyAPurchaseMadeOnAnotherDevice => '重新应用在其他设备上购买的内容。';

  @override
  String get profile => '个人资料';

  @override
  String get yourIdentityPlanStatusAndAccountPreferences => '您的身份、计划状态和账户偏好。';

  @override
  String get deleteAccount => '删除账户';

  @override
  String get permanentlyRemoveYourAccountAndItsServerSideData =>
      '永久删除您的账户及其服务器端数据。';

  @override
  String get rateZumi => '评价 Zumi';

  @override
  String get tellOthersHowZumiWorkedForYouOnTheStore => '告诉其他人 Zumi 在商店中的使用体验。';

  @override
  String get shareZumi => '分享 Zumi';

  @override
  String get recommendZumiToAFriend => '推荐 Zumi 给朋友。';

  @override
  String get appearanceLanguage => '外观与语言';

  @override
  String get compression => '压缩';

  @override
  String get onDeviceAI => '设备端 AI';

  @override
  String get notificationsPrivacy => '通知与隐私';

  @override
  String get plansPurchases => '计划与购买';

  @override
  String get about => '关于';

  @override
  String get legal => '法律';

  @override
  String get helpFeedback => '帮助与反馈';

  @override
  String get account => '账户';

  @override
  String get themeAndAppLanguage => '主题和应用语言';

  @override
  String get appLanguageAndDirection => '应用语言和方向';

  @override
  String get defaultQualityAndFormat => '默认质量和格式';

  @override
  String get cacheAndStorageUsage => '缓存和存储使用情况';

  @override
  String get aiSettings => 'AI 设置';

  @override
  String get zumiAssistant => 'Zumi 助手';

  @override
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere =>
      '一个专用于你视频的私人助手即将到来。你将能够在这里询问有关压缩、组织和已保存视频的问题。';

  @override
  String get localModelsAndSmartTools => '本地模型和智能工具';

  @override
  String get exploreLocalModelsAndFutureAIToolsTheseOptionsAreNotActiveYet =>
      '探索本地模型和未来 AI 工具。这些选项尚未激活。';

  @override
  String get localModels => '本地模型';

  @override
  String get browseAndDownloadSupportedModels => '浏览和下载支持的模型';

  @override
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere =>
      '选择一个支持的模型，下载到此设备，并在此管理已安装的模型。';

  @override
  String get importAModel => '导入模型';

  @override
  String get useACompatibleModelFromYourFiles => '使用来自你的文件的兼容模型';

  @override
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt =>
      '选择一个兼容的本地模型文件，并在使用前查看其要求。';

  @override
  String get smartFeatures => '智能功能';

  @override
  String get compressionOrganizationAndSearch => '压缩、组织和搜索';

  @override
  String
  get chooseWhichLocalAISuggestionsToUseForVideoCompressionOrganizationNamingAndSearch =>
      '选择用于视频压缩、组织、命名和搜索的本地 AI 建议。';

  @override
  String get modelPerformance => '模型性能';

  @override
  String get processingAndResourcePreferences => '处理和资源偏好';

  @override
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels =>
      '控制受支持模型的处理后台和资源限制。';

  @override
  String get conversationSettings => '对话设置';

  @override
  String get streamingThinkingAndResponseLength => '流式处理、思考和响应长度';

  @override
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits =>
      '配置助手的响应方式，包括流式、思考模式、采样和响应限制。';

  @override
  String get imagesAndAudio => '图片和音频';

  @override
  String get controlMultimodalInputs => '控制多模态输入';

  @override
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos =>
      '选择兼容模型是否可以分析您视频中选定的图片和音频。';

  @override
  String get semanticSearch => '语义搜索';

  @override
  String get embeddingsAndLocalIndexing => '嵌入和本地索引';

  @override
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning =>
      '管理本地嵌入模型和搜索索引，以根据含义查找视频和片段。';

  @override
  String get toolsAndStructuredOutput => '工具和结构化输出';

  @override
  String get actionsSchemasAndConfirmations => '操作、模式和确认';

  @override
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation =>
      '管理支持的助手操作和结构化响应。影响文件的操作将需要您的确认。';

  @override
  String get models => '模型';

  @override
  String get assistantExperience => '助手体验';

  @override
  String get smartCapabilities => '智能功能';

  @override
  String get performance => '性能';

  @override
  String get yourCompressedVideoHistory => '您的压缩视频历史';

  @override
  String get completionAndUpdateAlerts => '完成和更新提醒';

  @override
  String get yourDataStaysLocal => '您的数据保持本地';

  @override
  String get comparePlansAndUpgrade => '比较计划并升级';

  @override
  String get paymentMethodsAndBilling => '付款方式和账单';

  @override
  String get restoreYourPreviousPurchase => '恢复您以前的购买';

  @override
  String get versionAndBuildDetails => '版本和构建详情';

  @override
  String get theDeveloperBehindZumi => 'Zumi背后的开发者';

  @override
  String get openSourcePackageLicenses => '开源软件包许可证';

  @override
  String get howDataIsHandled => '数据处理方式';

  @override
  String get rulesForUsingZumi => '使用Zumi的规则';

  @override
  String get whatDataWeCollect => '我们收集的数据';

  @override
  String get whyWeNeedPermissions => '为什么我们需要权限';

  @override
  String get answersToCommonQuestions => '常见问题解答';

  @override
  String get reachTheDeveloperDirectly => '直接联系开发者';

  @override
  String get sendUsYourFeedback => '发送您的反馈';

  @override
  String get pickVideo => '选择视频';

  @override
  String get targetSizeMB => '目标大小（MB）';

  @override
  String get startCompression => '开始压缩';

  @override
  String get pause => '暂停';

  @override
  String get resume => '继续';

  @override
  String get viewResult => '查看结果';

  @override
  String get saveToGallery => '保存到相册';

  @override
  String get shareVideo => '分享视频';

  @override
  String get originalSize => '原始大小';

  @override
  String get outputSize => '输出大小';

  @override
  String get noCompressedVideosYet => '尚无压缩视频';

  @override
  String get savedToGallery => '已保存到相册';

  @override
  String get enterATargetSizeGreaterThanZero => '请输入大于零的目标大小';

  @override
  String get compressionCancelled => '压缩已取消';

  @override
  String get thisVideoCouldNotReachTheSelectedSizeTryALargerTargetSize =>
      '此视频无法达到所选大小。请尝试更大的目标大小。';

  @override
  String get theSelectedSizeIsTooSmallForThisVideoChooseALargerSize =>
      '所选大小对于此视频过小。请选择更大的大小。';

  @override
  String get originalPreview => '原始预览';

  @override
  String get compressedPreview => '压缩预览';

  @override
  String get targetPreset => '目标预设';

  @override
  String get customSize => '自定义尺寸';

  @override
  String get previewUnavailable => '预览不可用';

  @override
  String get advancedControls => '高级控制';

  @override
  String get automatic => '自动';

  @override
  String get maximumResolution => '最大分辨率';

  @override
  String get originalResolution => '原始分辨率';

  @override
  String get maximumFrameRate => '最高帧率';

  @override
  String get audioBitrate => '音频比特率';

  @override
  String get removeAudio => '移除音频';

  @override
  String get videoBitrateCeilingKbps => '视频比特率上限（kbps）';

  @override
  String get hdrHandling => 'HDR处理';

  @override
  String get convertToSDR => '转换为SDR';

  @override
  String get keepHDRWhenSupported => '支持时保留HDR';

  @override
  String get beforeYouStart => '开始前';

  @override
  String get calculatingCompressionPlan => '正在计算压缩计划…';

  @override
  String get plannedResolution => '计划分辨率';

  @override
  String get plannedVideoBitrate => '计划视频比特率';

  @override
  String get plannedAudioBitrate => '计划音频比特率';

  @override
  String
  get reEncodingConvertsAudioToAACStereoDolbyAtmosAndDTSSpatialAudioWillNotBePreserved =>
      '重新编码会将音频转换为AAC立体声。Dolby Atmos和DTS空间音频将无法保留。';

  @override
  String
  get thisTargetIsTooSmallForAUsableVideoIncreaseTheSizeOrLowerOtherLimits =>
      '这个目标对于可用视频来说太小。增大尺寸或降低其他限制。';

  @override
  String get theSelectedTargetMayReduceVideoQuality => '所选目标可能会降低视频质量。';

  @override
  String get theSourceIsAlreadyWithinTheSizeLimit => '源文件已在尺寸限制内。';

  @override
  String get enterABitrateOfAtLeast150KbpsOrLeaveBlankForAutomatic =>
      '请输入至少 150 kbps 的比特率，或留空以自动设置';

  @override
  String get enterAnEvenResolutionFrom240To16384OrLeaveBlankForAutomatic =>
      '请输入 240 到 16384 之间的偶数分辨率，或留空以自动设置';

  @override
  String get videoPosition => '视频位置';

  @override
  String
  get aPreviousCompressionWasInterruptedItsTemporaryFilesWereCleanedUpYouCanSelectTheVideoAndTryAgain =>
      '之前的压缩被中断。其临时文件已被清理；您可以选择视频并重试。';

  @override
  String get dismiss => '关闭';

  @override
  String get clearHistory => '清除历史记录';

  @override
  String get removeAllHistoryEntriesSavedVideosWillRemainOnYourDevice =>
      '是否删除所有历史记录条目？已保存的视频将保留在您的设备上。';

  @override
  String get attempts => '尝试';

  @override
  String get targetSize => '目标大小';

  @override
  String get outputResolution => '输出分辨率';

  @override
  String get thisVideoCouldNotBeReadChooseAnotherFile => '无法读取此视频。请选择其他文件。';

  @override
  String get theEncodedVideoFailedVerificationYourOriginalVideoWasNotChanged =>
      '编码后的视频验证失败。您的原始视频未更改。';

  @override
  String
  get thisDeviceCannotEncodeTheSelectedResolutionOrFrameRateLowerThatSettingAndTryAgain =>
      '此设备无法编码所选的分辨率或帧率。请降低该设置后重试。';

  @override
  String
  get thisDeviceCannotDecodeThisAudioFormatForCompressionRemoveAudioOrUseASupportedSource =>
      '此设备无法解码此音频格式以进行压缩。请移除音频或使用支持的来源。';

  @override
  String
  get thisDeviceCannotDecodeThisVideoFormatOrProfileForCompressionChooseAnotherSourceOrDevice =>
      '此设备无法解码该视频格式或压缩配置文件。请选择其他来源或设备。';

  @override
  String get theExportedMP4IsNotReadyForStreamingTryAnotherVideoOrDevice =>
      '导出的 MP4 尚未准备好进行流式传输。尝试使用其他视频或设备。';

  @override
  String get thereIsNotEnoughFreeStorageToCompressThisVideo =>
      '可用存储空间不足，无法压缩此视频。';

  @override
  String get thisDeviceCannotProcessTheSelectedHDRModeTryConvertingToSDR =>
      '此设备无法处理所选的 HDR 模式。尝试转换为 SDR。';

  @override
  String get compressionCouldNotBeCompletedTryAnotherSettingOrVideo =>
      '无法完成压缩。尝试使用其他设置或视频。';

  @override
  String get appIdentity => '应用身份';

  @override
  String get appName => '应用名称';

  @override
  String get packageName => '包名称';

  @override
  String get version => '版本';

  @override
  String get buildNumber => '构建号';

  @override
  String get deviceAndBuild => '设备和构建';

  @override
  String get operatingSystem => '操作系统';

  @override
  String get osVersion => '操作系统版本';

  @override
  String get buildMode => '构建模式';

  @override
  String get debug => '调试';

  @override
  String get release => '发布';

  @override
  String get builtWith => '构建于';

  @override
  String get installation => '安装';

  @override
  String get installedFrom => '安装自';

  @override
  String get installedOn => '安装于';

  @override
  String get updatedOn => '更新于';

  @override
  String get unavailable => '不可用';

  @override
  String get projectAndSupport => '项目和支持';

  @override
  String get githubRepository => 'GitHub 仓库';

  @override
  String get viewZumiSourceCode => '查看 Zumi 源代码';

  @override
  String get readTheREADME => '阅读 README';

  @override
  String get learnAboutZumiOnGitHub => '在 GitHub 上了解 Zumi';

  @override
  String get reportAnIssue => '报告问题';

  @override
  String get viewAndCreateGitHubIssues => '查看并创建 GitHub 问题';

  @override
  String get latestRelease => '最新版本';

  @override
  String get viewReleasesAndDownloads => '查看版本和下载';

  @override
  String get supportZumi => '支持 Zumi';

  @override
  String get openTheOfficialDonationPage => '打开官方捐赠页面';

  @override
  String get couldNotOpenTheLinkPleaseTryAgain => '无法打开链接。请重试。';

  @override
  String get developer => '开发者';

  @override
  String get mostafaSensei => 'Mostafa Sensei';

  @override
  String get githubProfile => 'GitHub 个人资料';

  @override
  String get seeProjectsAndContactDetails => '查看项目和联系方式';

  @override
  String get maintenanceInProgress => '维护中';

  @override
  String get zumiIsTemporarilyUnavailablePleaseTryAgainLater =>
      'Zumi 暂时不可用。请稍后再试。';

  @override
  String get comingSoon => '即将到来';

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
  String get pleaseWait => '请稍候...';

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
  String get cancel => '取消';

  @override
  String get clean => 'Clean';

  @override
  String get openSourceLicenses => '开源许可';

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
  String get languageName => '简体中文';

  @override
  String get countryCode => 'CN';

  @override
  String countryName(String countryCode) {
    String _temp0 = intl.Intl.selectLogic(countryCode, {
      'AE': '阿拉伯联合酋长国',
      'AT': '奥地利',
      'AU': '澳大利亚',
      'BE': '比利时',
      'BH': '巴林',
      'BR': '巴西',
      'CA': '加拿大',
      'CH': '瑞士',
      'CN': '中国',
      'DE': '德国',
      'DJ': '吉布提',
      'DZ': '阿尔及利亚',
      'EG': '埃及',
      'ES': '西班牙',
      'FR': '法国',
      'GB': '英国',
      'HK': '中国香港特别行政区',
      'ID': '印度尼西亚',
      'IQ': '伊拉克',
      'IT': '意大利',
      'JO': '约旦',
      'JP': '日本',
      'KM': '科摩罗',
      'KR': '韩国',
      'KW': '科威特',
      'LB': '黎巴嫩',
      'LY': '利比亚',
      'MA': '摩洛哥',
      'MR': '毛里塔尼亚',
      'MX': '墨西哥',
      'NL': '荷兰',
      'OM': '阿曼',
      'PL': '波兰',
      'PS': '巴勒斯坦领土',
      'PT': '葡萄牙',
      'QA': '卡塔尔',
      'RU': '俄罗斯',
      'SA': '沙特阿拉伯',
      'SD': '苏丹',
      'SE': '瑞典',
      'SG': '新加坡',
      'SO': '索马里',
      'SY': '叙利亚',
      'TH': '泰国',
      'TN': '突尼斯',
      'TR': '土耳其',
      'TW': '台湾',
      'US': '美国',
      'VN': '越南',
      'YE': '也门',
      'other': '国家',
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

/// The translations for Chinese, as used in China (`zh_CN`).
class AppLocalizationsZhCn extends AppLocalizationsZh {
  AppLocalizationsZhCn() : super('zh_CN');

  @override
  String get zumi => 'Zumi';

  @override
  String get downloadFile => '下载文件';

  @override
  String fileOpenedInBrowser(String fileName) {
    return '文件已在浏览器中打开：$fileName';
  }

  @override
  String fileSavedToGallery(String fileName) {
    return '文件已保存到图库：$fileName';
  }

  @override
  String fileSavedToDocuments(String fileName) {
    return '文件已保存到文档：$fileName';
  }

  @override
  String get fileIsAlreadySaved => '文件已存在';

  @override
  String get error => '错误';

  @override
  String get info => '信息';

  @override
  String get success => '成功';

  @override
  String get warning => '警告';

  @override
  String get paid => '已付款';

  @override
  String get unpaid => '未付款';

  @override
  String get partial => '部分';

  @override
  String get addressLineCannotBeEmpty => '地址行不能为空';

  @override
  String get addressLineIsTooLong => '地址行太长';

  @override
  String get specialCharactersAreNotAllowed => '不允许使用特殊字符';

  @override
  String get emojisAreNotAllowed => '不允许使用表情符号';

  @override
  String get cityCannotBeEmpty => '城市不能为空';

  @override
  String get cityNameIsTooLong => '城市名称太长';

  @override
  String get cityContainsInvalidSpecialCharacters => '城市包含无效的特殊字符';

  @override
  String get addressLabelCannotBeEmpty => '地址标签不能为空';

  @override
  String get addressLabelIsTooLong => '地址标签太长';

  @override
  String get emailCannotBeEmpty => '邮箱不能为空';

  @override
  String get invalidEmailFormat => '邮箱格式无效';

  @override
  String get emailContainsInvalidCharacters => '电子邮件包含无效字符';

  @override
  String get emailMustContain => '电子邮件必须包含@';

  @override
  String get emailMustBeInLowercase => '电子邮件必须为小写';

  @override
  String get arabicCharactersAreNotAllowed => '不允许使用阿拉伯字符';

  @override
  String get emojisAreNotAllowedInEmail => '电子邮件中不允许使用表情符号';

  @override
  String get phoneNumberCannotBeEmpty => '电话号码不能为空';

  @override
  String get invalidPhoneNumber => '无效的电话号码';

  @override
  String get phoneNumberMustBeAtLeast11Digits => '电话号码必须至少包含11位数字';

  @override
  String get nameCannotBeEmpty => '姓名不能为空';

  @override
  String get invalidName => '无效的姓名';

  @override
  String get nameMustBeAtLeast3Characters => '姓名必须至少包含3个字符';

  @override
  String get nameCannotExceed20Characters => '姓名不能超过20个字符';

  @override
  String get nameContainsInvalidSpecialCharacters => '姓名包含无效的特殊字符';

  @override
  String get emojisAreNotAllowedInName => '姓名中不允许使用表情符号';

  @override
  String get passwordCannotBeEmpty => '密码不能为空';

  @override
  String get passwordMustContainUppercaseLowercaseNumberAndSpecialCharacter =>
      '密码必须包含大写字母、小写字母、数字和特殊字符';

  @override
  String get passwordMustBeAtLeast8CharactersLong => '密码长度至少为8个字符';

  @override
  String get noInternetConnection => '没有网络连接';

  @override
  String get internetConnectionRestored => '网络连接已恢复';

  @override
  String get retry => '重试';

  @override
  String get confirm => '确认';

  @override
  String get ok => '确定';

  @override
  String get compressVideosPrivatelyOnYourDevice => '在设备上私密地压缩视频。';

  @override
  String get welcomeToZumi => '欢迎使用Zumi';

  @override
  String get learnHowZumiCompressesYourVideosWithoutEverLeavingYourPhone =>
      '了解Zumi如何在不离开手机的情况下压缩您的视频。';

  @override
  String get signIn => '登录';

  @override
  String get signInToSyncYourPlanAndKeepYourPurchasesAvailableOnEveryDevice =>
      '登录以同步您的计划并让您的购买在每台设备上可用。';

  @override
  String get chooseAVideo => '选择视频';

  @override
  String get pickAVideoFromYourGalleryToStartCompressing => '从您的图库中选择一个视频开始压缩。';

  @override
  String get compressionSetup => '压缩设置';

  @override
  String get chooseResolutionBitrateAndOutputFormatBeforeYouStart =>
      '在开始之前选择分辨率、比特率和输出格式。';

  @override
  String get compressing => '压缩中';

  @override
  String get followTheLiveProgressOfYourCompressionJob => '关注压缩任务的实时进度。';

  @override
  String get compressionResult => '压缩结果';

  @override
  String get compareTheBeforeAndAfterSizeThenSaveOrShareTheResult =>
      '比较压缩前后的大小，然后保存或分享结果。';

  @override
  String get compressionHistory => '压缩历史';

  @override
  String get reviewTheVideosYouHaveCompressedOnThisDevice => '查看您在此设备上压缩过的视频。';

  @override
  String get settings => '设置';

  @override
  String get appearance => '外观';

  @override
  String get themeColorSchemeAndMotionPreferences => '主题、配色方案和动画偏好。';

  @override
  String get language => '语言';

  @override
  String get appLanguageAndTextDirection => '应用语言和文字方向。';

  @override
  String get compressionDefaults => '压缩默认值';

  @override
  String get defaultResolutionBitrateAndOutputFormat => '默认分辨率、比特率和输出格式。';

  @override
  String get storageCleanup => '存储与清理';

  @override
  String get storageUsageCacheSizeAndTemporaryFileCleanup =>
      '存储使用情况、缓存大小和临时文件清理。';

  @override
  String get notifications => '通知';

  @override
  String get jobCompletionAndProductUpdateNotifications => '作业完成和产品更新通知。';

  @override
  String get privacy => '隐私';

  @override
  String get onDeviceProcessingLocalLogsAndOptionalCrashReports =>
      '设备端处理、本地日志和可选的崩溃报告。';

  @override
  String get aboutZumi => '关于 Zumi';

  @override
  String get versionBuildNumberAndApplicationDetails => '版本、构建号和应用详情。';

  @override
  String get aboutTheDeveloper => '关于开发者';

  @override
  String get theDeveloperAndToolsBehindZumi => 'Zumi 的开发者及工具。';

  @override
  String get openSourcePackagesBundledWithZumi => '随 Zumi 打包的开源软件包。';

  @override
  String get privacyPolicy => '隐私政策';

  @override
  String get howZumiHandlesYourVideosAndData => 'Zumi 如何处理您的视频和数据。';

  @override
  String get termsOfService => '服务条款';

  @override
  String get theTermsThatApplyToZumiAndItsPurchases => '适用于 Zumi 及其购买内容的条款。';

  @override
  String get dataSafety => '数据安全';

  @override
  String get summaryOfTheDataZumiCollectsAndWhy => 'Zumi 收集的数据摘要及原因。';

  @override
  String get permissions => '权限';

  @override
  String get runtimePermissionsZumiRequestsAndWhyEachIsNeeded =>
      'Zumi 请求的运行时权限及每个权限的必要性。';

  @override
  String get faq => '常见问题';

  @override
  String get answersToCommonQuestionsAboutCompressionAndBilling =>
      '关于压缩和计费的常见问题解答。';

  @override
  String get support => '支持';

  @override
  String get getHelpWithYourAccountOrAPurchase => '获取有关您的账户或购买的帮助。';

  @override
  String get sendFeedback => '发送反馈';

  @override
  String get reportAProblemOrSuggestAnImprovement => '报告问题或提出改进建议。';

  @override
  String get plans => '计划';

  @override
  String get comparePlansAndSeeWhatEachOneUnlocks => '比较计划并查看每个计划解锁的内容。';

  @override
  String get planDetails => '计划详情';

  @override
  String get benefitsLimitsAndPricingForThisPlan => '该计划的福利、限制和定价。';

  @override
  String get paymentMethods => '支付方式';

  @override
  String get supportedWaysToPayIncludingStoreBilling => '支持的支付方式，包括商店账单。';

  @override
  String get restorePurchases => '恢复购买';

  @override
  String get reApplyAPurchaseMadeOnAnotherDevice => '重新应用在其他设备上购买的内容。';

  @override
  String get profile => '个人资料';

  @override
  String get yourIdentityPlanStatusAndAccountPreferences => '您的身份、计划状态和账户偏好。';

  @override
  String get deleteAccount => '删除账户';

  @override
  String get permanentlyRemoveYourAccountAndItsServerSideData =>
      '永久删除您的账户及其服务器端数据。';

  @override
  String get rateZumi => '评价 Zumi';

  @override
  String get tellOthersHowZumiWorkedForYouOnTheStore => '告诉其他人 Zumi 在商店中的使用体验。';

  @override
  String get shareZumi => '分享 Zumi';

  @override
  String get recommendZumiToAFriend => '推荐 Zumi 给朋友。';

  @override
  String get appearanceLanguage => '外观与语言';

  @override
  String get compression => '压缩';

  @override
  String get onDeviceAI => '设备端 AI';

  @override
  String get notificationsPrivacy => '通知与隐私';

  @override
  String get plansPurchases => '计划与购买';

  @override
  String get about => '关于';

  @override
  String get legal => '法律';

  @override
  String get helpFeedback => '帮助与反馈';

  @override
  String get account => '账户';

  @override
  String get themeAndAppLanguage => '主题和应用语言';

  @override
  String get appLanguageAndDirection => '应用语言和方向';

  @override
  String get defaultQualityAndFormat => '默认质量和格式';

  @override
  String get cacheAndStorageUsage => '缓存和存储使用情况';

  @override
  String get aiSettings => 'AI 设置';

  @override
  String get zumiAssistant => 'Zumi 助手';

  @override
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere =>
      '一个专用于你视频的私人助手即将到来。你将能够在这里询问有关压缩、组织和已保存视频的问题。';

  @override
  String get localModelsAndSmartTools => '本地模型和智能工具';

  @override
  String get exploreLocalModelsAndFutureAIToolsTheseOptionsAreNotActiveYet =>
      '探索本地模型和未来 AI 工具。这些选项尚未激活。';

  @override
  String get localModels => '本地模型';

  @override
  String get browseAndDownloadSupportedModels => '浏览和下载支持的模型';

  @override
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere =>
      '选择一个支持的模型，下载到此设备，并在此管理已安装的模型。';

  @override
  String get importAModel => '导入模型';

  @override
  String get useACompatibleModelFromYourFiles => '使用来自你的文件的兼容模型';

  @override
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt =>
      '选择一个兼容的本地模型文件，并在使用前查看其要求。';

  @override
  String get smartFeatures => '智能功能';

  @override
  String get compressionOrganizationAndSearch => '压缩、组织和搜索';

  @override
  String
  get chooseWhichLocalAISuggestionsToUseForVideoCompressionOrganizationNamingAndSearch =>
      '选择用于视频压缩、组织、命名和搜索的本地 AI 建议。';

  @override
  String get modelPerformance => '模型性能';

  @override
  String get processingAndResourcePreferences => '处理和资源偏好';

  @override
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels =>
      '控制受支持模型的处理后台和资源限制。';

  @override
  String get conversationSettings => '对话设置';

  @override
  String get streamingThinkingAndResponseLength => '流式处理、思考和响应长度';

  @override
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits =>
      '配置助手的响应方式，包括流式、思考模式、采样和响应限制。';

  @override
  String get imagesAndAudio => '图片和音频';

  @override
  String get controlMultimodalInputs => '控制多模态输入';

  @override
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos =>
      '选择兼容模型是否可以分析您视频中选定的图片和音频。';

  @override
  String get semanticSearch => '语义搜索';

  @override
  String get embeddingsAndLocalIndexing => '嵌入和本地索引';

  @override
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning =>
      '管理本地嵌入模型和搜索索引，以根据含义查找视频和片段。';

  @override
  String get toolsAndStructuredOutput => '工具和结构化输出';

  @override
  String get actionsSchemasAndConfirmations => '操作、模式和确认';

  @override
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation =>
      '管理支持的助手操作和结构化响应。影响文件的操作将需要您的确认。';

  @override
  String get models => '模型';

  @override
  String get assistantExperience => '助手体验';

  @override
  String get smartCapabilities => '智能功能';

  @override
  String get performance => '性能';

  @override
  String get yourCompressedVideoHistory => '您的压缩视频历史';

  @override
  String get completionAndUpdateAlerts => '完成和更新提醒';

  @override
  String get yourDataStaysLocal => '您的数据保持本地';

  @override
  String get comparePlansAndUpgrade => '比较计划并升级';

  @override
  String get paymentMethodsAndBilling => '付款方式和账单';

  @override
  String get restoreYourPreviousPurchase => '恢复您以前的购买';

  @override
  String get versionAndBuildDetails => '版本和构建详情';

  @override
  String get theDeveloperBehindZumi => 'Zumi背后的开发者';

  @override
  String get openSourcePackageLicenses => '开源软件包许可证';

  @override
  String get howDataIsHandled => '数据处理方式';

  @override
  String get rulesForUsingZumi => '使用Zumi的规则';

  @override
  String get whatDataWeCollect => '我们收集的数据';

  @override
  String get whyWeNeedPermissions => '为什么我们需要权限';

  @override
  String get answersToCommonQuestions => '常见问题解答';

  @override
  String get reachTheDeveloperDirectly => '直接联系开发者';

  @override
  String get sendUsYourFeedback => '发送您的反馈';

  @override
  String get pickVideo => '选择视频';

  @override
  String get targetSizeMB => '目标大小（MB）';

  @override
  String get startCompression => '开始压缩';

  @override
  String get pause => '暂停';

  @override
  String get resume => '继续';

  @override
  String get viewResult => '查看结果';

  @override
  String get saveToGallery => '保存到相册';

  @override
  String get shareVideo => '分享视频';

  @override
  String get originalSize => '原始大小';

  @override
  String get outputSize => '输出大小';

  @override
  String get noCompressedVideosYet => '尚无压缩视频';

  @override
  String get savedToGallery => '已保存到相册';

  @override
  String get enterATargetSizeGreaterThanZero => '请输入大于零的目标大小';

  @override
  String get compressionCancelled => '压缩已取消';

  @override
  String get thisVideoCouldNotReachTheSelectedSizeTryALargerTargetSize =>
      '此视频无法达到所选大小。请尝试更大的目标大小。';

  @override
  String get theSelectedSizeIsTooSmallForThisVideoChooseALargerSize =>
      '所选大小对于此视频过小。请选择更大的大小。';

  @override
  String get originalPreview => '原始预览';

  @override
  String get compressedPreview => '压缩预览';

  @override
  String get targetPreset => '目标预设';

  @override
  String get customSize => '自定义尺寸';

  @override
  String get previewUnavailable => '预览不可用';

  @override
  String get advancedControls => '高级控制';

  @override
  String get automatic => '自动';

  @override
  String get maximumResolution => '最大分辨率';

  @override
  String get originalResolution => '原始分辨率';

  @override
  String get maximumFrameRate => '最高帧率';

  @override
  String get audioBitrate => '音频比特率';

  @override
  String get removeAudio => '移除音频';

  @override
  String get videoBitrateCeilingKbps => '视频比特率上限（kbps）';

  @override
  String get hdrHandling => 'HDR处理';

  @override
  String get convertToSDR => '转换为SDR';

  @override
  String get keepHDRWhenSupported => '支持时保留HDR';

  @override
  String get beforeYouStart => '开始前';

  @override
  String get calculatingCompressionPlan => '正在计算压缩计划…';

  @override
  String get plannedResolution => '计划分辨率';

  @override
  String get plannedVideoBitrate => '计划视频比特率';

  @override
  String get plannedAudioBitrate => '计划音频比特率';

  @override
  String
  get reEncodingConvertsAudioToAACStereoDolbyAtmosAndDTSSpatialAudioWillNotBePreserved =>
      '重新编码会将音频转换为AAC立体声。Dolby Atmos和DTS空间音频将无法保留。';

  @override
  String
  get thisTargetIsTooSmallForAUsableVideoIncreaseTheSizeOrLowerOtherLimits =>
      '这个目标对于可用视频来说太小。增大尺寸或降低其他限制。';

  @override
  String get theSelectedTargetMayReduceVideoQuality => '所选目标可能会降低视频质量。';

  @override
  String get theSourceIsAlreadyWithinTheSizeLimit => '源文件已在尺寸限制内。';

  @override
  String get enterABitrateOfAtLeast150KbpsOrLeaveBlankForAutomatic =>
      '请输入至少 150 kbps 的比特率，或留空以自动设置';

  @override
  String get enterAnEvenResolutionFrom240To16384OrLeaveBlankForAutomatic =>
      '请输入 240 到 16384 之间的偶数分辨率，或留空以自动设置';

  @override
  String get videoPosition => '视频位置';

  @override
  String
  get aPreviousCompressionWasInterruptedItsTemporaryFilesWereCleanedUpYouCanSelectTheVideoAndTryAgain =>
      '之前的压缩被中断。其临时文件已被清理；您可以选择视频并重试。';

  @override
  String get dismiss => '关闭';

  @override
  String get clearHistory => '清除历史记录';

  @override
  String get removeAllHistoryEntriesSavedVideosWillRemainOnYourDevice =>
      '是否删除所有历史记录条目？已保存的视频将保留在您的设备上。';

  @override
  String get attempts => '尝试';

  @override
  String get targetSize => '目标大小';

  @override
  String get outputResolution => '输出分辨率';

  @override
  String get thisVideoCouldNotBeReadChooseAnotherFile => '无法读取此视频。请选择其他文件。';

  @override
  String get theEncodedVideoFailedVerificationYourOriginalVideoWasNotChanged =>
      '编码后的视频验证失败。您的原始视频未更改。';

  @override
  String
  get thisDeviceCannotEncodeTheSelectedResolutionOrFrameRateLowerThatSettingAndTryAgain =>
      '此设备无法编码所选的分辨率或帧率。请降低该设置后重试。';

  @override
  String
  get thisDeviceCannotDecodeThisAudioFormatForCompressionRemoveAudioOrUseASupportedSource =>
      '此设备无法解码此音频格式以进行压缩。请移除音频或使用支持的来源。';

  @override
  String
  get thisDeviceCannotDecodeThisVideoFormatOrProfileForCompressionChooseAnotherSourceOrDevice =>
      '此设备无法解码该视频格式或压缩配置文件。请选择其他来源或设备。';

  @override
  String get theExportedMP4IsNotReadyForStreamingTryAnotherVideoOrDevice =>
      '导出的 MP4 尚未准备好进行流式传输。尝试使用其他视频或设备。';

  @override
  String get thereIsNotEnoughFreeStorageToCompressThisVideo =>
      '可用存储空间不足，无法压缩此视频。';

  @override
  String get thisDeviceCannotProcessTheSelectedHDRModeTryConvertingToSDR =>
      '此设备无法处理所选的 HDR 模式。尝试转换为 SDR。';

  @override
  String get compressionCouldNotBeCompletedTryAnotherSettingOrVideo =>
      '无法完成压缩。尝试使用其他设置或视频。';

  @override
  String get appIdentity => '应用身份';

  @override
  String get appName => '应用名称';

  @override
  String get packageName => '包名称';

  @override
  String get version => '版本';

  @override
  String get buildNumber => '构建号';

  @override
  String get deviceAndBuild => '设备和构建';

  @override
  String get operatingSystem => '操作系统';

  @override
  String get osVersion => '操作系统版本';

  @override
  String get buildMode => '构建模式';

  @override
  String get debug => '调试';

  @override
  String get release => '发布';

  @override
  String get builtWith => '构建于';

  @override
  String get installation => '安装';

  @override
  String get installedFrom => '安装自';

  @override
  String get installedOn => '安装于';

  @override
  String get updatedOn => '更新于';

  @override
  String get unavailable => '不可用';

  @override
  String get projectAndSupport => '项目和支持';

  @override
  String get githubRepository => 'GitHub 仓库';

  @override
  String get viewZumiSourceCode => '查看 Zumi 源代码';

  @override
  String get readTheREADME => '阅读 README';

  @override
  String get learnAboutZumiOnGitHub => '在 GitHub 上了解 Zumi';

  @override
  String get reportAnIssue => '报告问题';

  @override
  String get viewAndCreateGitHubIssues => '查看并创建 GitHub 问题';

  @override
  String get latestRelease => '最新版本';

  @override
  String get viewReleasesAndDownloads => '查看版本和下载';

  @override
  String get supportZumi => '支持 Zumi';

  @override
  String get openTheOfficialDonationPage => '打开官方捐赠页面';

  @override
  String get couldNotOpenTheLinkPleaseTryAgain => '无法打开链接。请重试。';

  @override
  String get developer => '开发者';

  @override
  String get mostafaSensei => 'Mostafa Sensei';

  @override
  String get githubProfile => 'GitHub 个人资料';

  @override
  String get seeProjectsAndContactDetails => '查看项目和联系方式';

  @override
  String get maintenanceInProgress => '维护中';

  @override
  String get zumiIsTemporarilyUnavailablePleaseTryAgainLater =>
      'Zumi 暂时不可用。请稍后再试。';

  @override
  String get comingSoon => '即将到来';

  @override
  String get pleaseWait => '请稍候...';

  @override
  String get cancel => '取消';

  @override
  String get openSourceLicenses => '开源许可';

  @override
  String get languageName => '简体中文';

  @override
  String get countryCode => 'CN';

  @override
  String countryName(String countryCode) {
    String _temp0 = intl.Intl.selectLogic(countryCode, {
      'AE': '阿拉伯联合酋长国',
      'AT': '奥地利',
      'AU': '澳大利亚',
      'BE': '比利时',
      'BH': '巴林',
      'BR': '巴西',
      'CA': '加拿大',
      'CH': '瑞士',
      'CN': '中国',
      'DE': '德国',
      'DJ': '吉布提',
      'DZ': '阿尔及利亚',
      'EG': '埃及',
      'ES': '西班牙',
      'FR': '法国',
      'GB': '英国',
      'HK': '中国香港特别行政区',
      'ID': '印度尼西亚',
      'IQ': '伊拉克',
      'IT': '意大利',
      'JO': '约旦',
      'JP': '日本',
      'KM': '科摩罗',
      'KR': '韩国',
      'KW': '科威特',
      'LB': '黎巴嫩',
      'LY': '利比亚',
      'MA': '摩洛哥',
      'MR': '毛里塔尼亚',
      'MX': '墨西哥',
      'NL': '荷兰',
      'OM': '阿曼',
      'PL': '波兰',
      'PS': '巴勒斯坦领土',
      'PT': '葡萄牙',
      'QA': '卡塔尔',
      'RU': '俄罗斯',
      'SA': '沙特阿拉伯',
      'SD': '苏丹',
      'SE': '瑞典',
      'SG': '新加坡',
      'SO': '索马里',
      'SY': '叙利亚',
      'TH': '泰国',
      'TN': '突尼斯',
      'TR': '土耳其',
      'TW': '台湾',
      'US': '美国',
      'VN': '越南',
      'YE': '也门',
      'other': '国家',
    });
    return '$_temp0';
  }
}

/// The translations for Chinese, as used in Hong Kong (`zh_HK`).
class AppLocalizationsZhHk extends AppLocalizationsZh {
  AppLocalizationsZhHk() : super('zh_HK');

  @override
  String get zumi => 'Zumi';

  @override
  String get downloadFile => '下載檔案';

  @override
  String fileOpenedInBrowser(String fileName) {
    return '檔案已在瀏覽器中打開：$fileName';
  }

  @override
  String fileSavedToGallery(String fileName) {
    return '檔案已保存到相簿：$fileName';
  }

  @override
  String fileSavedToDocuments(String fileName) {
    return '檔案已保存到文件：$fileName';
  }

  @override
  String get fileIsAlreadySaved => '檔案已經保存';

  @override
  String get error => '錯誤';

  @override
  String get info => '資訊';

  @override
  String get success => '成功';

  @override
  String get warning => '警告';

  @override
  String get paid => '已付款';

  @override
  String get unpaid => '未付款';

  @override
  String get partial => '部分';

  @override
  String get addressLineCannotBeEmpty => '地址欄位不能為空';

  @override
  String get addressLineIsTooLong => '地址欄位太長';

  @override
  String get specialCharactersAreNotAllowed => '不允許特殊字元';

  @override
  String get emojisAreNotAllowed => '不允許使用表情符號';

  @override
  String get cityCannotBeEmpty => '城市不能為空';

  @override
  String get cityNameIsTooLong => '城市名稱太長';

  @override
  String get cityContainsInvalidSpecialCharacters => '城市包含無效的特殊字元';

  @override
  String get addressLabelCannotBeEmpty => '地址標籤不能為空';

  @override
  String get addressLabelIsTooLong => '地址標籤太長';

  @override
  String get emailCannotBeEmpty => '電子郵件不能為空';

  @override
  String get invalidEmailFormat => '電子郵件格式無效';

  @override
  String get emailContainsInvalidCharacters => '電子郵件包含無效字符';

  @override
  String get emailMustContain => '電子郵件必須包含@';

  @override
  String get emailMustBeInLowercase => '電子郵件必須為小寫';

  @override
  String get arabicCharactersAreNotAllowed => '不允許使用阿拉伯字符';

  @override
  String get emojisAreNotAllowedInEmail => '電子郵件中不允許使用表情符號';

  @override
  String get phoneNumberCannotBeEmpty => '電話號碼不能為空';

  @override
  String get invalidPhoneNumber => '電話號碼無效';

  @override
  String get phoneNumberMustBeAtLeast11Digits => '電話號碼至少必須為11位數';

  @override
  String get nameCannotBeEmpty => '姓名不能為空';

  @override
  String get invalidName => '姓名無效';

  @override
  String get nameMustBeAtLeast3Characters => '姓名至少必須為3個字符';

  @override
  String get nameCannotExceed20Characters => '姓名不能超過20個字符';

  @override
  String get nameContainsInvalidSpecialCharacters => '姓名包含無效特殊字符';

  @override
  String get emojisAreNotAllowedInName => '姓名中不允許使用表情符號';

  @override
  String get passwordCannotBeEmpty => '密碼不能為空';

  @override
  String get passwordMustContainUppercaseLowercaseNumberAndSpecialCharacter =>
      '密碼必須包含大寫字母、小寫字母、數字和特殊字符';

  @override
  String get passwordMustBeAtLeast8CharactersLong => '密碼長度至少為 8 個字符';

  @override
  String get noInternetConnection => '無網路連線';

  @override
  String get internetConnectionRestored => '網路連線已恢復';

  @override
  String get retry => '重試';

  @override
  String get confirm => '確認';

  @override
  String get ok => '確定';

  @override
  String get compressVideosPrivatelyOnYourDevice => '在裝置上私密地壓縮影片。';

  @override
  String get welcomeToZumi => '歡迎來到 Zumi';

  @override
  String get learnHowZumiCompressesYourVideosWithoutEverLeavingYourPhone =>
      '了解 Zumi 如何在不離開手機的情況下壓縮您的影片。';

  @override
  String get signIn => '登入';

  @override
  String get signInToSyncYourPlanAndKeepYourPurchasesAvailableOnEveryDevice =>
      '登入以同步您的計畫，並在每個裝置上保留已購買內容。';

  @override
  String get chooseAVideo => '選擇影片';

  @override
  String get pickAVideoFromYourGalleryToStartCompressing =>
      '從您的相簿中選擇一個影片以開始壓縮。';

  @override
  String get compressionSetup => '壓縮設定';

  @override
  String get chooseResolutionBitrateAndOutputFormatBeforeYouStart =>
      '在開始之前選擇解析度、位元率和輸出格式。';

  @override
  String get compressing => '壓縮中';

  @override
  String get followTheLiveProgressOfYourCompressionJob => '查看您的壓縮工作的即時進度。';

  @override
  String get compressionResult => '壓縮結果';

  @override
  String get compareTheBeforeAndAfterSizeThenSaveOrShareTheResult =>
      '比較壓縮前後的大小，然後儲存或分享結果。';

  @override
  String get compressionHistory => '壓縮歷史';

  @override
  String get reviewTheVideosYouHaveCompressedOnThisDevice => '查看您在此裝置上壓縮過的影片。';

  @override
  String get settings => '設定';

  @override
  String get appearance => '外觀';

  @override
  String get themeColorSchemeAndMotionPreferences => '主題、配色方案和動作偏好。';

  @override
  String get language => '語言';

  @override
  String get appLanguageAndTextDirection => '應用程式語言和文字方向。';

  @override
  String get compressionDefaults => '壓縮預設值';

  @override
  String get defaultResolutionBitrateAndOutputFormat => '預設解析度、位元率和輸出格式。';

  @override
  String get storageCleanup => '儲存與清理';

  @override
  String get storageUsageCacheSizeAndTemporaryFileCleanup =>
      '儲存使用量、快取大小與暫存檔案清理。';

  @override
  String get notifications => '通知';

  @override
  String get jobCompletionAndProductUpdateNotifications => '工作完成與產品更新通知。';

  @override
  String get privacy => '隱私';

  @override
  String get onDeviceProcessingLocalLogsAndOptionalCrashReports =>
      '裝置端處理、本地紀錄及選擇性崩潰報告。';

  @override
  String get aboutZumi => '關於 Zumi';

  @override
  String get versionBuildNumberAndApplicationDetails => '版本、建置號碼與應用程式詳情。';

  @override
  String get aboutTheDeveloper => '關於開發者';

  @override
  String get theDeveloperAndToolsBehindZumi => 'Zumi 的開發者與工具。';

  @override
  String get openSourcePackagesBundledWithZumi => 'Zumi 所包含的開源套件。';

  @override
  String get privacyPolicy => '隱私政策';

  @override
  String get howZumiHandlesYourVideosAndData => 'Zumi 如何處理您的影片與資料。';

  @override
  String get termsOfService => '服務條款';

  @override
  String get theTermsThatApplyToZumiAndItsPurchases => '適用於 Zumi 及其購買項目的條款。';

  @override
  String get dataSafety => '資料安全';

  @override
  String get summaryOfTheDataZumiCollectsAndWhy => 'Zumi 收集的資料摘要及原因。';

  @override
  String get permissions => '權限';

  @override
  String get runtimePermissionsZumiRequestsAndWhyEachIsNeeded =>
      'Zumi 請求的運行時權限及其必要原因。';

  @override
  String get faq => '常見問題';

  @override
  String get answersToCommonQuestionsAboutCompressionAndBilling =>
      '有關壓縮和計費的常見問題解答。';

  @override
  String get support => '支援';

  @override
  String get getHelpWithYourAccountOrAPurchase => '獲得帳戶或購買相關的幫助。';

  @override
  String get sendFeedback => '發送回饋意見';

  @override
  String get reportAProblemOrSuggestAnImprovement => '回報問題或建議改進。';

  @override
  String get plans => '方案';

  @override
  String get comparePlansAndSeeWhatEachOneUnlocks => '比較方案及查看每個方案解鎖的功能。';

  @override
  String get planDetails => '方案詳情';

  @override
  String get benefitsLimitsAndPricingForThisPlan => '此方案的好處、限制和價格。';

  @override
  String get paymentMethods => '付款方式';

  @override
  String get supportedWaysToPayIncludingStoreBilling => '支援的支付方式，包括商店付款。';

  @override
  String get restorePurchases => '恢復購買';

  @override
  String get reApplyAPurchaseMadeOnAnotherDevice => '重新套用在其他裝置上購買的項目。';

  @override
  String get profile => '個人資料';

  @override
  String get yourIdentityPlanStatusAndAccountPreferences => '您的身份、方案狀態和帳戶偏好。';

  @override
  String get deleteAccount => '刪除帳戶';

  @override
  String get permanentlyRemoveYourAccountAndItsServerSideData =>
      '永久移除您的帳戶及其伺服器端資料。';

  @override
  String get rateZumi => '評價 Zumi';

  @override
  String get tellOthersHowZumiWorkedForYouOnTheStore => '告訴其他人 Zumi 在商店上的使用體驗。';

  @override
  String get shareZumi => '分享 Zumi';

  @override
  String get recommendZumiToAFriend => '向朋友推薦 Zumi。';

  @override
  String get appearanceLanguage => '外觀與語言';

  @override
  String get compression => '壓縮';

  @override
  String get onDeviceAI => '裝置端 AI';

  @override
  String get notificationsPrivacy => '通知與隱私';

  @override
  String get plansPurchases => '方案與購買';

  @override
  String get about => '關於';

  @override
  String get legal => '法律';

  @override
  String get helpFeedback => '幫助與回饋';

  @override
  String get account => '帳戶';

  @override
  String get themeAndAppLanguage => '主題與應用程式語言';

  @override
  String get appLanguageAndDirection => '應用程式語言與方向';

  @override
  String get defaultQualityAndFormat => '預設品質與格式';

  @override
  String get cacheAndStorageUsage => '快取與儲存使用情況';

  @override
  String get aiSettings => 'AI 設定';

  @override
  String get zumiAssistant => 'Zumi 助手';

  @override
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere =>
      '專為您的影片打造的私人助手即將推出。您將能在此詢問有關壓縮、整理及已儲存影片的問題。';

  @override
  String get localModelsAndSmartTools => '本地模型與智能工具';

  @override
  String get exploreLocalModelsAndFutureAIToolsTheseOptionsAreNotActiveYet =>
      '探索本地模型與未來的 AI 工具。這些選項尚未啟用。';

  @override
  String get localModels => '本地模型';

  @override
  String get browseAndDownloadSupportedModels => '瀏覽並下載支援的模型';

  @override
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere =>
      '選擇支援的模型，將其下載到此裝置，並在此管理已安裝的模型。';

  @override
  String get importAModel => '匯入模型';

  @override
  String get useACompatibleModelFromYourFiles => '使用您的檔案中的相容模型';

  @override
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt =>
      '選擇相容的本地模型文件並在使用前檢查其需求。';

  @override
  String get smartFeatures => '智慧功能';

  @override
  String get compressionOrganizationAndSearch => '壓縮、組織和搜索';

  @override
  String
  get chooseWhichLocalAISuggestionsToUseForVideoCompressionOrganizationNamingAndSearch =>
      '選擇使用哪些本地 AI 建議來進行影片壓縮、組織、命名和搜索。';

  @override
  String get modelPerformance => '模型性能';

  @override
  String get processingAndResourcePreferences => '處理和資源偏好';

  @override
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels =>
      '控制受支持模型的處理後端和資源限制。';

  @override
  String get conversationSettings => '對話設置';

  @override
  String get streamingThinkingAndResponseLength => '串流、思考和回應長度';

  @override
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits =>
      '配置助理的回應方式，包括串流、思考模式、取樣和回應限制。';

  @override
  String get imagesAndAudio => '圖像和音頻';

  @override
  String get controlMultimodalInputs => '控制多模態輸入';

  @override
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos =>
      '選擇是否允許兼容模型分析您視頻中選定的圖像和音頻。';

  @override
  String get semanticSearch => '語義搜索';

  @override
  String get embeddingsAndLocalIndexing => '嵌入和本地索引';

  @override
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning =>
      '管理本地嵌入模型和搜索索引，以便按意義查找視頻和片段。';

  @override
  String get toolsAndStructuredOutput => '工具與結構化輸出';

  @override
  String get actionsSchemasAndConfirmations => '操作、架構和確認';

  @override
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation =>
      '管理受支持的助理操作和結構化回應。影響檔案的操作需要您的確認。';

  @override
  String get models => '模型';

  @override
  String get assistantExperience => '助理體驗';

  @override
  String get smartCapabilities => '智慧功能';

  @override
  String get performance => '性能';

  @override
  String get yourCompressedVideoHistory => '您的壓縮影片歷史';

  @override
  String get completionAndUpdateAlerts => '完成和更新提醒';

  @override
  String get yourDataStaysLocal => '您的資料保持本地';

  @override
  String get comparePlansAndUpgrade => '比較方案並升級';

  @override
  String get paymentMethodsAndBilling => '付款方式和帳單';

  @override
  String get restoreYourPreviousPurchase => '恢復您之前的購買';

  @override
  String get versionAndBuildDetails => '版本和建置詳情';

  @override
  String get theDeveloperBehindZumi => 'Zumi 背後的開發者';

  @override
  String get openSourcePackageLicenses => '開源套件授權';

  @override
  String get howDataIsHandled => '資料處理方式';

  @override
  String get rulesForUsingZumi => '使用 Zumi 的規則';

  @override
  String get whatDataWeCollect => '我們收集的資料';

  @override
  String get whyWeNeedPermissions => '為什麼我們需要權限';

  @override
  String get answersToCommonQuestions => '常見問題解答';

  @override
  String get reachTheDeveloperDirectly => '直接聯繫開發者';

  @override
  String get sendUsYourFeedback => '發送您的反饋';

  @override
  String get pickVideo => '揀選影片';

  @override
  String get targetSizeMB => '目標大小（MB）';

  @override
  String get startCompression => '開始壓縮';

  @override
  String get pause => '暫停';

  @override
  String get resume => '恢復';

  @override
  String get viewResult => '查看結果';

  @override
  String get saveToGallery => '儲存到相簿';

  @override
  String get shareVideo => '分享影片';

  @override
  String get originalSize => '原始大小';

  @override
  String get outputSize => '輸出大小';

  @override
  String get noCompressedVideosYet => '尚無壓縮影片';

  @override
  String get savedToGallery => '已儲存至相簿';

  @override
  String get enterATargetSizeGreaterThanZero => '請輸入大於零的目標大小';

  @override
  String get compressionCancelled => '壓縮已取消';

  @override
  String get thisVideoCouldNotReachTheSelectedSizeTryALargerTargetSize =>
      '此影片無法達到所選大小。請嘗試更大的目標大小。';

  @override
  String get theSelectedSizeIsTooSmallForThisVideoChooseALargerSize =>
      '所選大小對此影片來說過小。請選擇更大的大小。';

  @override
  String get originalPreview => '原始預覽';

  @override
  String get compressedPreview => '壓縮預覽';

  @override
  String get targetPreset => '目標預設';

  @override
  String get customSize => '自訂尺寸';

  @override
  String get previewUnavailable => '無法預覽';

  @override
  String get advancedControls => '進階控制';

  @override
  String get automatic => '自動';

  @override
  String get maximumResolution => '最大解析度';

  @override
  String get originalResolution => '原始解析度';

  @override
  String get maximumFrameRate => '最高幀率';

  @override
  String get audioBitrate => '音訊位元率';

  @override
  String get removeAudio => '移除音訊';

  @override
  String get videoBitrateCeilingKbps => '影片位元率上限（kbps）';

  @override
  String get hdrHandling => 'HDR 處理';

  @override
  String get convertToSDR => '轉換為 SDR';

  @override
  String get keepHDRWhenSupported => '支援時保留 HDR';

  @override
  String get beforeYouStart => '開始之前';

  @override
  String get calculatingCompressionPlan => '正在計算壓縮計畫…';

  @override
  String get plannedResolution => '計畫解析度';

  @override
  String get plannedVideoBitrate => '計畫影片位元率';

  @override
  String get plannedAudioBitrate => '計畫音訊位元率';

  @override
  String
  get reEncodingConvertsAudioToAACStereoDolbyAtmosAndDTSSpatialAudioWillNotBePreserved =>
      '重新編碼會將音訊轉換為 AAC 立體聲。Dolby Atmos 與 DTS 空間音訊將不被保留。';

  @override
  String
  get thisTargetIsTooSmallForAUsableVideoIncreaseTheSizeOrLowerOtherLimits =>
      '此目標對於可用視頻來說太小。請增加尺寸或降低其他限制。';

  @override
  String get theSelectedTargetMayReduceVideoQuality => '選定的目標可能會降低視頻質量。';

  @override
  String get theSourceIsAlreadyWithinTheSizeLimit => '來源已在尺寸限制內。';

  @override
  String get enterABitrateOfAtLeast150KbpsOrLeaveBlankForAutomatic =>
      '請輸入至少 150 kbps 的比特率，或留空使用自動。';

  @override
  String get enterAnEvenResolutionFrom240To16384OrLeaveBlankForAutomatic =>
      '請輸入 240 到 16384 之間的偶數分辨率，或留空使用自動。';

  @override
  String get videoPosition => '視頻位置';

  @override
  String
  get aPreviousCompressionWasInterruptedItsTemporaryFilesWereCleanedUpYouCanSelectTheVideoAndTryAgain =>
      '之前的壓縮操作被中斷。其臨時文件已清理；您可以選擇視頻並再試一次。';

  @override
  String get dismiss => '關閉';

  @override
  String get clearHistory => '清除歷史記錄';

  @override
  String get removeAllHistoryEntriesSavedVideosWillRemainOnYourDevice =>
      '要刪除所有歷史記錄嗎？已保存的影片將保留在您的裝置上。';

  @override
  String get attempts => '嘗試次數';

  @override
  String get targetSize => '目標大小';

  @override
  String get outputResolution => '輸出解析度';

  @override
  String get thisVideoCouldNotBeReadChooseAnotherFile => '此影片無法讀取。請選擇其他檔案。';

  @override
  String get theEncodedVideoFailedVerificationYourOriginalVideoWasNotChanged =>
      '編碼的影片驗證失敗。您的原始影片未被更改。';

  @override
  String
  get thisDeviceCannotEncodeTheSelectedResolutionOrFrameRateLowerThatSettingAndTryAgain =>
      '此裝置無法編碼所選解析度或幀率。請降低該設定後再試。';

  @override
  String
  get thisDeviceCannotDecodeThisAudioFormatForCompressionRemoveAudioOrUseASupportedSource =>
      '此裝置無法解碼此音訊格式以進行壓縮。請移除音訊或使用支援的來源。';

  @override
  String
  get thisDeviceCannotDecodeThisVideoFormatOrProfileForCompressionChooseAnotherSourceOrDevice =>
      '此裝置無法解碼此影片格式或壓縮配置檔。請選擇其他來源或裝置。';

  @override
  String get theExportedMP4IsNotReadyForStreamingTryAnotherVideoOrDevice =>
      '匯出的 MP4 尚未準備好播放串流。請嘗試其他影片或裝置。';

  @override
  String get thereIsNotEnoughFreeStorageToCompressThisVideo =>
      '可用的儲存空間不足以壓縮此影片。';

  @override
  String get thisDeviceCannotProcessTheSelectedHDRModeTryConvertingToSDR =>
      '此裝置無法處理選取的 HDR 模式。請嘗試轉換為 SDR。';

  @override
  String get compressionCouldNotBeCompletedTryAnotherSettingOrVideo =>
      '壓縮無法完成。請嘗試其他設定或影片。';

  @override
  String get appIdentity => '應用程式身份';

  @override
  String get appName => '應用程式名稱';

  @override
  String get packageName => '套件名稱';

  @override
  String get version => '版本';

  @override
  String get buildNumber => '建置號碼';

  @override
  String get deviceAndBuild => '裝置與建置';

  @override
  String get operatingSystem => '作業系統';

  @override
  String get osVersion => '作業系統版本';

  @override
  String get buildMode => '建置模式';

  @override
  String get debug => '除錯';

  @override
  String get release => '發行';

  @override
  String get builtWith => '建立於';

  @override
  String get installation => '安裝';

  @override
  String get installedFrom => '已安裝自';

  @override
  String get installedOn => '安裝於';

  @override
  String get updatedOn => '更新於';

  @override
  String get unavailable => '不可用';

  @override
  String get projectAndSupport => '專案與支援';

  @override
  String get githubRepository => 'GitHub 儲存庫';

  @override
  String get viewZumiSourceCode => '檢視 Zumi 原始碼';

  @override
  String get readTheREADME => '閱讀 README';

  @override
  String get learnAboutZumiOnGitHub => '在 GitHub 上了解 Zumi';

  @override
  String get reportAnIssue => '回報問題';

  @override
  String get viewAndCreateGitHubIssues => '檢視並創建 GitHub 問題';

  @override
  String get latestRelease => '最新版本';

  @override
  String get viewReleasesAndDownloads => '檢視版本與下載';

  @override
  String get supportZumi => '支援 Zumi';

  @override
  String get openTheOfficialDonationPage => '打開官方捐款頁面';

  @override
  String get couldNotOpenTheLinkPleaseTryAgain => '無法打開連結。請再試一次。';

  @override
  String get developer => '開發者';

  @override
  String get mostafaSensei => 'Mostafa Sensei';

  @override
  String get githubProfile => 'GitHub 個人檔案';

  @override
  String get seeProjectsAndContactDetails => '查看專案與聯絡資訊';

  @override
  String get maintenanceInProgress => '維護中';

  @override
  String get zumiIsTemporarilyUnavailablePleaseTryAgainLater =>
      'Zumi 暫時無法使用。請稍後再試。';

  @override
  String get comingSoon => '即將推出';

  @override
  String get pleaseWait => '請稍候…';

  @override
  String get cancel => '取消';

  @override
  String get openSourceLicenses => '開源授權';

  @override
  String get languageName => '繁體中文';

  @override
  String get countryCode => 'HK';

  @override
  String countryName(String countryCode) {
    String _temp0 = intl.Intl.selectLogic(countryCode, {
      'AE': '阿拉伯聯合酋長國',
      'AT': '奧地利',
      'AU': '澳洲',
      'BE': '比利時',
      'BH': '巴林',
      'BR': '巴西',
      'CA': '加拿大',
      'CH': '瑞士',
      'CN': '中國',
      'DE': '德國',
      'DJ': '吉布提',
      'DZ': '阿爾及利亞',
      'EG': '埃及',
      'ES': '西班牙',
      'FR': '法國',
      'GB': '英國',
      'HK': '中國香港特別行政區',
      'ID': '印尼',
      'IQ': '伊拉克',
      'IT': '意大利',
      'JO': '約旦',
      'JP': '日本',
      'KM': '科摩羅',
      'KR': '南韓',
      'KW': '科威特',
      'LB': '黎巴嫩',
      'LY': '利比亞',
      'MA': '摩洛哥',
      'MR': '毛里塔尼亞',
      'MX': '墨西哥',
      'NL': '荷蘭',
      'OM': '阿曼',
      'PL': '波蘭',
      'PS': '巴勒斯坦領土',
      'PT': '葡萄牙',
      'QA': '卡塔爾',
      'RU': '俄羅斯',
      'SA': '沙地阿拉伯',
      'SD': '蘇丹',
      'SE': '瑞典',
      'SG': '新加坡',
      'SO': '索馬里',
      'SY': '敘利亞',
      'TH': '泰國',
      'TN': '突尼西亞',
      'TR': '土耳其',
      'TW': '台灣',
      'US': '美國',
      'VN': '越南',
      'YE': '也門',
      'other': '國家',
    });
    return '$_temp0';
  }
}

/// The translations for Chinese, as used in Singapore (`zh_SG`).
class AppLocalizationsZhSg extends AppLocalizationsZh {
  AppLocalizationsZhSg() : super('zh_SG');

  @override
  String get zumi => 'Zumi';

  @override
  String get downloadFile => '下载文件';

  @override
  String fileOpenedInBrowser(String fileName) {
    return '文件已在浏览器中打开：$fileName';
  }

  @override
  String fileSavedToGallery(String fileName) {
    return '文件已保存到图库：$fileName';
  }

  @override
  String fileSavedToDocuments(String fileName) {
    return '文件已保存到文档：$fileName';
  }

  @override
  String get fileIsAlreadySaved => '文件已存在';

  @override
  String get error => '错误';

  @override
  String get info => '信息';

  @override
  String get success => '成功';

  @override
  String get warning => '警告';

  @override
  String get paid => '已付款';

  @override
  String get unpaid => '未付款';

  @override
  String get partial => '部分';

  @override
  String get addressLineCannotBeEmpty => '地址行不能为空';

  @override
  String get addressLineIsTooLong => '地址行太长';

  @override
  String get specialCharactersAreNotAllowed => '不允许使用特殊字符';

  @override
  String get emojisAreNotAllowed => '不允许使用表情符号';

  @override
  String get cityCannotBeEmpty => '城市不能为空';

  @override
  String get cityNameIsTooLong => '城市名称太长';

  @override
  String get cityContainsInvalidSpecialCharacters => '城市包含无效的特殊字符';

  @override
  String get addressLabelCannotBeEmpty => '地址标签不能为空';

  @override
  String get addressLabelIsTooLong => '地址标签太长';

  @override
  String get emailCannotBeEmpty => '邮箱不能为空';

  @override
  String get invalidEmailFormat => '邮箱格式无效';

  @override
  String get emailContainsInvalidCharacters => '电子邮件包含无效字符';

  @override
  String get emailMustContain => '电子邮件必须包含@';

  @override
  String get emailMustBeInLowercase => '电子邮件必须为小写';

  @override
  String get arabicCharactersAreNotAllowed => '不允许使用阿拉伯字符';

  @override
  String get emojisAreNotAllowedInEmail => '电子邮件中不允许使用表情符号';

  @override
  String get phoneNumberCannotBeEmpty => '电话号码不能为空';

  @override
  String get invalidPhoneNumber => '无效的电话号码';

  @override
  String get phoneNumberMustBeAtLeast11Digits => '电话号码必须至少包含11位数字';

  @override
  String get nameCannotBeEmpty => '姓名不能为空';

  @override
  String get invalidName => '无效的姓名';

  @override
  String get nameMustBeAtLeast3Characters => '姓名必须至少包含3个字符';

  @override
  String get nameCannotExceed20Characters => '姓名不能超过20个字符';

  @override
  String get nameContainsInvalidSpecialCharacters => '姓名包含无效的特殊字符';

  @override
  String get emojisAreNotAllowedInName => '姓名中不允许使用表情符号';

  @override
  String get passwordCannotBeEmpty => '密码不能为空';

  @override
  String get passwordMustContainUppercaseLowercaseNumberAndSpecialCharacter =>
      '密码必须包含大写字母、小写字母、数字和特殊字符';

  @override
  String get passwordMustBeAtLeast8CharactersLong => '密码长度至少为8个字符';

  @override
  String get noInternetConnection => '没有网络连接';

  @override
  String get internetConnectionRestored => '网络连接已恢复';

  @override
  String get retry => '重试';

  @override
  String get confirm => '确认';

  @override
  String get ok => '确定';

  @override
  String get compressVideosPrivatelyOnYourDevice => '在设备上私密地压缩视频。';

  @override
  String get welcomeToZumi => '欢迎使用Zumi';

  @override
  String get learnHowZumiCompressesYourVideosWithoutEverLeavingYourPhone =>
      '了解Zumi如何在不离开手机的情况下压缩您的视频。';

  @override
  String get signIn => '登录';

  @override
  String get signInToSyncYourPlanAndKeepYourPurchasesAvailableOnEveryDevice =>
      '登录以同步您的计划并让您的购买在每台设备上可用。';

  @override
  String get chooseAVideo => '选择视频';

  @override
  String get pickAVideoFromYourGalleryToStartCompressing => '从您的图库中选择一个视频开始压缩。';

  @override
  String get compressionSetup => '压缩设置';

  @override
  String get chooseResolutionBitrateAndOutputFormatBeforeYouStart =>
      '在开始之前选择分辨率、比特率和输出格式。';

  @override
  String get compressing => '压缩中';

  @override
  String get followTheLiveProgressOfYourCompressionJob => '关注压缩任务的实时进度。';

  @override
  String get compressionResult => '压缩结果';

  @override
  String get compareTheBeforeAndAfterSizeThenSaveOrShareTheResult =>
      '比较压缩前后的大小，然后保存或分享结果。';

  @override
  String get compressionHistory => '压缩历史';

  @override
  String get reviewTheVideosYouHaveCompressedOnThisDevice => '查看您在此设备上压缩过的视频。';

  @override
  String get settings => '设置';

  @override
  String get appearance => '外观';

  @override
  String get themeColorSchemeAndMotionPreferences => '主题、配色方案和动画偏好。';

  @override
  String get language => '语言';

  @override
  String get appLanguageAndTextDirection => '应用语言和文字方向。';

  @override
  String get compressionDefaults => '压缩默认值';

  @override
  String get defaultResolutionBitrateAndOutputFormat => '默认分辨率、比特率和输出格式。';

  @override
  String get storageCleanup => '存储与清理';

  @override
  String get storageUsageCacheSizeAndTemporaryFileCleanup =>
      '存储使用情况、缓存大小和临时文件清理。';

  @override
  String get notifications => '通知';

  @override
  String get jobCompletionAndProductUpdateNotifications => '作业完成和产品更新通知。';

  @override
  String get privacy => '隐私';

  @override
  String get onDeviceProcessingLocalLogsAndOptionalCrashReports =>
      '设备端处理、本地日志和可选的崩溃报告。';

  @override
  String get aboutZumi => '关于 Zumi';

  @override
  String get versionBuildNumberAndApplicationDetails => '版本、构建号和应用详情。';

  @override
  String get aboutTheDeveloper => '关于开发者';

  @override
  String get theDeveloperAndToolsBehindZumi => 'Zumi 的开发者及工具。';

  @override
  String get openSourcePackagesBundledWithZumi => '随 Zumi 打包的开源软件包。';

  @override
  String get privacyPolicy => '隐私政策';

  @override
  String get howZumiHandlesYourVideosAndData => 'Zumi 如何处理您的视频和数据。';

  @override
  String get termsOfService => '服务条款';

  @override
  String get theTermsThatApplyToZumiAndItsPurchases => '适用于 Zumi 及其购买内容的条款。';

  @override
  String get dataSafety => '数据安全';

  @override
  String get summaryOfTheDataZumiCollectsAndWhy => 'Zumi 收集的数据摘要及原因。';

  @override
  String get permissions => '权限';

  @override
  String get runtimePermissionsZumiRequestsAndWhyEachIsNeeded =>
      'Zumi 请求的运行时权限及每个权限的必要性。';

  @override
  String get faq => '常见问题';

  @override
  String get answersToCommonQuestionsAboutCompressionAndBilling =>
      '关于压缩和计费的常见问题解答。';

  @override
  String get support => '支持';

  @override
  String get getHelpWithYourAccountOrAPurchase => '获取有关您的账户或购买的帮助。';

  @override
  String get sendFeedback => '发送反馈';

  @override
  String get reportAProblemOrSuggestAnImprovement => '报告问题或提出改进建议。';

  @override
  String get plans => '计划';

  @override
  String get comparePlansAndSeeWhatEachOneUnlocks => '比较计划并查看每个计划解锁的内容。';

  @override
  String get planDetails => '计划详情';

  @override
  String get benefitsLimitsAndPricingForThisPlan => '该计划的福利、限制和定价。';

  @override
  String get paymentMethods => '支付方式';

  @override
  String get supportedWaysToPayIncludingStoreBilling => '支持的支付方式，包括商店账单。';

  @override
  String get restorePurchases => '恢复购买';

  @override
  String get reApplyAPurchaseMadeOnAnotherDevice => '重新应用在其他设备上购买的内容。';

  @override
  String get profile => '个人资料';

  @override
  String get yourIdentityPlanStatusAndAccountPreferences => '您的身份、计划状态和账户偏好。';

  @override
  String get deleteAccount => '删除账户';

  @override
  String get permanentlyRemoveYourAccountAndItsServerSideData =>
      '永久删除您的账户及其服务器端数据。';

  @override
  String get rateZumi => '评价 Zumi';

  @override
  String get tellOthersHowZumiWorkedForYouOnTheStore => '告诉其他人 Zumi 在商店中的使用体验。';

  @override
  String get shareZumi => '分享 Zumi';

  @override
  String get recommendZumiToAFriend => '推荐 Zumi 给朋友。';

  @override
  String get appearanceLanguage => '外观与语言';

  @override
  String get compression => '压缩';

  @override
  String get onDeviceAI => '设备端 AI';

  @override
  String get notificationsPrivacy => '通知与隐私';

  @override
  String get plansPurchases => '计划与购买';

  @override
  String get about => '关于';

  @override
  String get legal => '法律';

  @override
  String get helpFeedback => '帮助与反馈';

  @override
  String get account => '账户';

  @override
  String get themeAndAppLanguage => '主题和应用语言';

  @override
  String get appLanguageAndDirection => '应用语言和方向';

  @override
  String get defaultQualityAndFormat => '默认质量和格式';

  @override
  String get cacheAndStorageUsage => '缓存和存储使用情况';

  @override
  String get aiSettings => 'AI 设置';

  @override
  String get zumiAssistant => 'Zumi 助手';

  @override
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere =>
      '一个专用于你视频的私人助手即将到来。你将能够在这里询问有关压缩、组织和已保存视频的问题。';

  @override
  String get localModelsAndSmartTools => '本地模型和智能工具';

  @override
  String get exploreLocalModelsAndFutureAIToolsTheseOptionsAreNotActiveYet =>
      '探索本地模型和未来 AI 工具。这些选项尚未激活。';

  @override
  String get localModels => '本地模型';

  @override
  String get browseAndDownloadSupportedModels => '浏览和下载支持的模型';

  @override
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere =>
      '选择一个支持的模型，下载到此设备，并在此管理已安装的模型。';

  @override
  String get importAModel => '导入模型';

  @override
  String get useACompatibleModelFromYourFiles => '使用来自你的文件的兼容模型';

  @override
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt =>
      '选择一个兼容的本地模型文件，并在使用前查看其要求。';

  @override
  String get smartFeatures => '智能功能';

  @override
  String get compressionOrganizationAndSearch => '压缩、组织和搜索';

  @override
  String
  get chooseWhichLocalAISuggestionsToUseForVideoCompressionOrganizationNamingAndSearch =>
      '选择用于视频压缩、组织、命名和搜索的本地 AI 建议。';

  @override
  String get modelPerformance => '模型性能';

  @override
  String get processingAndResourcePreferences => '处理和资源偏好';

  @override
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels =>
      '控制受支持模型的处理后台和资源限制。';

  @override
  String get conversationSettings => '对话设置';

  @override
  String get streamingThinkingAndResponseLength => '流式处理、思考和响应长度';

  @override
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits =>
      '配置助手的响应方式，包括流式、思考模式、采样和响应限制。';

  @override
  String get imagesAndAudio => '图片和音频';

  @override
  String get controlMultimodalInputs => '控制多模态输入';

  @override
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos =>
      '选择兼容模型是否可以分析您视频中选定的图片和音频。';

  @override
  String get semanticSearch => '语义搜索';

  @override
  String get embeddingsAndLocalIndexing => '嵌入和本地索引';

  @override
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning =>
      '管理本地嵌入模型和搜索索引，以根据含义查找视频和片段。';

  @override
  String get toolsAndStructuredOutput => '工具和结构化输出';

  @override
  String get actionsSchemasAndConfirmations => '操作、模式和确认';

  @override
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation =>
      '管理支持的助手操作和结构化响应。影响文件的操作将需要您的确认。';

  @override
  String get models => '模型';

  @override
  String get assistantExperience => '助手体验';

  @override
  String get smartCapabilities => '智能功能';

  @override
  String get performance => '性能';

  @override
  String get yourCompressedVideoHistory => '您的压缩视频历史';

  @override
  String get completionAndUpdateAlerts => '完成和更新提醒';

  @override
  String get yourDataStaysLocal => '您的数据保持本地';

  @override
  String get comparePlansAndUpgrade => '比较计划并升级';

  @override
  String get paymentMethodsAndBilling => '付款方式和账单';

  @override
  String get restoreYourPreviousPurchase => '恢复您以前的购买';

  @override
  String get versionAndBuildDetails => '版本和构建详情';

  @override
  String get theDeveloperBehindZumi => 'Zumi背后的开发者';

  @override
  String get openSourcePackageLicenses => '开源软件包许可证';

  @override
  String get howDataIsHandled => '数据处理方式';

  @override
  String get rulesForUsingZumi => '使用Zumi的规则';

  @override
  String get whatDataWeCollect => '我们收集的数据';

  @override
  String get whyWeNeedPermissions => '为什么我们需要权限';

  @override
  String get answersToCommonQuestions => '常见问题解答';

  @override
  String get reachTheDeveloperDirectly => '直接联系开发者';

  @override
  String get sendUsYourFeedback => '发送您的反馈';

  @override
  String get pickVideo => '选择视频';

  @override
  String get targetSizeMB => '目标大小（MB）';

  @override
  String get startCompression => '开始压缩';

  @override
  String get pause => '暂停';

  @override
  String get resume => '继续';

  @override
  String get viewResult => '查看结果';

  @override
  String get saveToGallery => '保存到相册';

  @override
  String get shareVideo => '分享视频';

  @override
  String get originalSize => '原始大小';

  @override
  String get outputSize => '输出大小';

  @override
  String get noCompressedVideosYet => '尚无压缩视频';

  @override
  String get savedToGallery => '已保存到相册';

  @override
  String get enterATargetSizeGreaterThanZero => '请输入大于零的目标大小';

  @override
  String get compressionCancelled => '压缩已取消';

  @override
  String get thisVideoCouldNotReachTheSelectedSizeTryALargerTargetSize =>
      '此视频无法达到所选大小。请尝试更大的目标大小。';

  @override
  String get theSelectedSizeIsTooSmallForThisVideoChooseALargerSize =>
      '所选大小对于此视频过小。请选择更大的大小。';

  @override
  String get originalPreview => '原始预览';

  @override
  String get compressedPreview => '压缩预览';

  @override
  String get targetPreset => '目标预设';

  @override
  String get customSize => '自定义尺寸';

  @override
  String get previewUnavailable => '预览不可用';

  @override
  String get advancedControls => '高级控制';

  @override
  String get automatic => '自动';

  @override
  String get maximumResolution => '最大分辨率';

  @override
  String get originalResolution => '原始分辨率';

  @override
  String get maximumFrameRate => '最高帧率';

  @override
  String get audioBitrate => '音频比特率';

  @override
  String get removeAudio => '移除音频';

  @override
  String get videoBitrateCeilingKbps => '视频比特率上限（kbps）';

  @override
  String get hdrHandling => 'HDR处理';

  @override
  String get convertToSDR => '转换为SDR';

  @override
  String get keepHDRWhenSupported => '支持时保留HDR';

  @override
  String get beforeYouStart => '开始前';

  @override
  String get calculatingCompressionPlan => '正在计算压缩计划…';

  @override
  String get plannedResolution => '计划分辨率';

  @override
  String get plannedVideoBitrate => '计划视频比特率';

  @override
  String get plannedAudioBitrate => '计划音频比特率';

  @override
  String
  get reEncodingConvertsAudioToAACStereoDolbyAtmosAndDTSSpatialAudioWillNotBePreserved =>
      '重新编码会将音频转换为AAC立体声。Dolby Atmos和DTS空间音频将无法保留。';

  @override
  String
  get thisTargetIsTooSmallForAUsableVideoIncreaseTheSizeOrLowerOtherLimits =>
      '这个目标对于可用视频来说太小。增大尺寸或降低其他限制。';

  @override
  String get theSelectedTargetMayReduceVideoQuality => '所选目标可能会降低视频质量。';

  @override
  String get theSourceIsAlreadyWithinTheSizeLimit => '源文件已在尺寸限制内。';

  @override
  String get enterABitrateOfAtLeast150KbpsOrLeaveBlankForAutomatic =>
      '请输入至少 150 kbps 的比特率，或留空以自动设置';

  @override
  String get enterAnEvenResolutionFrom240To16384OrLeaveBlankForAutomatic =>
      '请输入 240 到 16384 之间的偶数分辨率，或留空以自动设置';

  @override
  String get videoPosition => '视频位置';

  @override
  String
  get aPreviousCompressionWasInterruptedItsTemporaryFilesWereCleanedUpYouCanSelectTheVideoAndTryAgain =>
      '之前的压缩被中断。其临时文件已被清理；您可以选择视频并重试。';

  @override
  String get dismiss => '关闭';

  @override
  String get clearHistory => '清除历史记录';

  @override
  String get removeAllHistoryEntriesSavedVideosWillRemainOnYourDevice =>
      '是否删除所有历史记录条目？已保存的视频将保留在您的设备上。';

  @override
  String get attempts => '尝试';

  @override
  String get targetSize => '目标大小';

  @override
  String get outputResolution => '输出分辨率';

  @override
  String get thisVideoCouldNotBeReadChooseAnotherFile => '无法读取此视频。请选择其他文件。';

  @override
  String get theEncodedVideoFailedVerificationYourOriginalVideoWasNotChanged =>
      '编码后的视频验证失败。您的原始视频未更改。';

  @override
  String
  get thisDeviceCannotEncodeTheSelectedResolutionOrFrameRateLowerThatSettingAndTryAgain =>
      '此设备无法编码所选的分辨率或帧率。请降低该设置后重试。';

  @override
  String
  get thisDeviceCannotDecodeThisAudioFormatForCompressionRemoveAudioOrUseASupportedSource =>
      '此设备无法解码此音频格式以进行压缩。请移除音频或使用支持的来源。';

  @override
  String
  get thisDeviceCannotDecodeThisVideoFormatOrProfileForCompressionChooseAnotherSourceOrDevice =>
      '此设备无法解码该视频格式或压缩配置文件。请选择其他来源或设备。';

  @override
  String get theExportedMP4IsNotReadyForStreamingTryAnotherVideoOrDevice =>
      '导出的 MP4 尚未准备好进行流式传输。尝试使用其他视频或设备。';

  @override
  String get thereIsNotEnoughFreeStorageToCompressThisVideo =>
      '可用存储空间不足，无法压缩此视频。';

  @override
  String get thisDeviceCannotProcessTheSelectedHDRModeTryConvertingToSDR =>
      '此设备无法处理所选的 HDR 模式。尝试转换为 SDR。';

  @override
  String get compressionCouldNotBeCompletedTryAnotherSettingOrVideo =>
      '无法完成压缩。尝试使用其他设置或视频。';

  @override
  String get appIdentity => '应用身份';

  @override
  String get appName => '应用名称';

  @override
  String get packageName => '包名称';

  @override
  String get version => '版本';

  @override
  String get buildNumber => '构建号';

  @override
  String get deviceAndBuild => '设备和构建';

  @override
  String get operatingSystem => '操作系统';

  @override
  String get osVersion => '操作系统版本';

  @override
  String get buildMode => '构建模式';

  @override
  String get debug => '调试';

  @override
  String get release => '发布';

  @override
  String get builtWith => '构建于';

  @override
  String get installation => '安装';

  @override
  String get installedFrom => '安装自';

  @override
  String get installedOn => '安装于';

  @override
  String get updatedOn => '更新于';

  @override
  String get unavailable => '不可用';

  @override
  String get projectAndSupport => '项目和支持';

  @override
  String get githubRepository => 'GitHub 仓库';

  @override
  String get viewZumiSourceCode => '查看 Zumi 源代码';

  @override
  String get readTheREADME => '阅读 README';

  @override
  String get learnAboutZumiOnGitHub => '在 GitHub 上了解 Zumi';

  @override
  String get reportAnIssue => '报告问题';

  @override
  String get viewAndCreateGitHubIssues => '查看并创建 GitHub 问题';

  @override
  String get latestRelease => '最新版本';

  @override
  String get viewReleasesAndDownloads => '查看版本和下载';

  @override
  String get supportZumi => '支持 Zumi';

  @override
  String get openTheOfficialDonationPage => '打开官方捐赠页面';

  @override
  String get couldNotOpenTheLinkPleaseTryAgain => '无法打开链接。请重试。';

  @override
  String get developer => '开发者';

  @override
  String get mostafaSensei => 'Mostafa Sensei';

  @override
  String get githubProfile => 'GitHub 个人资料';

  @override
  String get seeProjectsAndContactDetails => '查看项目和联系方式';

  @override
  String get maintenanceInProgress => '维护中';

  @override
  String get zumiIsTemporarilyUnavailablePleaseTryAgainLater =>
      'Zumi 暂时不可用。请稍后再试。';

  @override
  String get comingSoon => '即将到来';

  @override
  String get pleaseWait => '请稍候...';

  @override
  String get cancel => '取消';

  @override
  String get openSourceLicenses => '开源许可';

  @override
  String get languageName => '简体中文';

  @override
  String get countryCode => 'SG';

  @override
  String countryName(String countryCode) {
    String _temp0 = intl.Intl.selectLogic(countryCode, {
      'AE': '阿拉伯联合酋长国',
      'AT': '奥地利',
      'AU': '澳大利亚',
      'BE': '比利时',
      'BH': '巴林',
      'BR': '巴西',
      'CA': '加拿大',
      'CH': '瑞士',
      'CN': '中国',
      'DE': '德国',
      'DJ': '吉布提',
      'DZ': '阿尔及利亚',
      'EG': '埃及',
      'ES': '西班牙',
      'FR': '法国',
      'GB': '英国',
      'HK': '中国香港特别行政区',
      'ID': '印度尼西亚',
      'IQ': '伊拉克',
      'IT': '意大利',
      'JO': '约旦',
      'JP': '日本',
      'KM': '科摩罗',
      'KR': '韩国',
      'KW': '科威特',
      'LB': '黎巴嫩',
      'LY': '利比亚',
      'MA': '摩洛哥',
      'MR': '毛里塔尼亚',
      'MX': '墨西哥',
      'NL': '荷兰',
      'OM': '阿曼',
      'PL': '波兰',
      'PS': '巴勒斯坦领土',
      'PT': '葡萄牙',
      'QA': '卡塔尔',
      'RU': '俄罗斯',
      'SA': '沙特阿拉伯',
      'SD': '苏丹',
      'SE': '瑞典',
      'SG': '新加坡',
      'SO': '索马里',
      'SY': '叙利亚',
      'TH': '泰国',
      'TN': '突尼斯',
      'TR': '土耳其',
      'TW': '台湾',
      'US': '美国',
      'VN': '越南',
      'YE': '也门',
      'other': '国家',
    });
    return '$_temp0';
  }
}

/// The translations for Chinese, as used in Taiwan (`zh_TW`).
class AppLocalizationsZhTw extends AppLocalizationsZh {
  AppLocalizationsZhTw() : super('zh_TW');

  @override
  String get zumi => 'Zumi';

  @override
  String get downloadFile => '下載檔案';

  @override
  String fileOpenedInBrowser(String fileName) {
    return '檔案已在瀏覽器中打開：$fileName';
  }

  @override
  String fileSavedToGallery(String fileName) {
    return '檔案已保存到相簿：$fileName';
  }

  @override
  String fileSavedToDocuments(String fileName) {
    return '檔案已保存到文件：$fileName';
  }

  @override
  String get fileIsAlreadySaved => '檔案已經保存';

  @override
  String get error => '錯誤';

  @override
  String get info => '資訊';

  @override
  String get success => '成功';

  @override
  String get warning => '警告';

  @override
  String get paid => '已付款';

  @override
  String get unpaid => '未付款';

  @override
  String get partial => '部分';

  @override
  String get addressLineCannotBeEmpty => '地址欄位不能為空';

  @override
  String get addressLineIsTooLong => '地址欄位太長';

  @override
  String get specialCharactersAreNotAllowed => '不允許特殊字元';

  @override
  String get emojisAreNotAllowed => '不允許使用表情符號';

  @override
  String get cityCannotBeEmpty => '城市不能為空';

  @override
  String get cityNameIsTooLong => '城市名稱太長';

  @override
  String get cityContainsInvalidSpecialCharacters => '城市包含無效的特殊字元';

  @override
  String get addressLabelCannotBeEmpty => '地址標籤不能為空';

  @override
  String get addressLabelIsTooLong => '地址標籤太長';

  @override
  String get emailCannotBeEmpty => '電子郵件不能為空';

  @override
  String get invalidEmailFormat => '電子郵件格式無效';

  @override
  String get emailContainsInvalidCharacters => '電子郵件包含無效字符';

  @override
  String get emailMustContain => '電子郵件必須包含@';

  @override
  String get emailMustBeInLowercase => '電子郵件必須為小寫';

  @override
  String get arabicCharactersAreNotAllowed => '不允許使用阿拉伯字符';

  @override
  String get emojisAreNotAllowedInEmail => '電子郵件中不允許使用表情符號';

  @override
  String get phoneNumberCannotBeEmpty => '電話號碼不能為空';

  @override
  String get invalidPhoneNumber => '電話號碼無效';

  @override
  String get phoneNumberMustBeAtLeast11Digits => '電話號碼至少必須為11位數';

  @override
  String get nameCannotBeEmpty => '姓名不能為空';

  @override
  String get invalidName => '姓名無效';

  @override
  String get nameMustBeAtLeast3Characters => '姓名至少必須為3個字符';

  @override
  String get nameCannotExceed20Characters => '姓名不能超過20個字符';

  @override
  String get nameContainsInvalidSpecialCharacters => '姓名包含無效特殊字符';

  @override
  String get emojisAreNotAllowedInName => '姓名中不允許使用表情符號';

  @override
  String get passwordCannotBeEmpty => '密碼不能為空';

  @override
  String get passwordMustContainUppercaseLowercaseNumberAndSpecialCharacter =>
      '密碼必須包含大寫字母、小寫字母、數字和特殊字符';

  @override
  String get passwordMustBeAtLeast8CharactersLong => '密碼長度至少為 8 個字符';

  @override
  String get noInternetConnection => '無網路連線';

  @override
  String get internetConnectionRestored => '網路連線已恢復';

  @override
  String get retry => '重試';

  @override
  String get confirm => '確認';

  @override
  String get ok => '確定';

  @override
  String get compressVideosPrivatelyOnYourDevice => '在裝置上私密地壓縮影片。';

  @override
  String get welcomeToZumi => '歡迎來到 Zumi';

  @override
  String get learnHowZumiCompressesYourVideosWithoutEverLeavingYourPhone =>
      '了解 Zumi 如何在不離開手機的情況下壓縮您的影片。';

  @override
  String get signIn => '登入';

  @override
  String get signInToSyncYourPlanAndKeepYourPurchasesAvailableOnEveryDevice =>
      '登入以同步您的計畫，並在每個裝置上保留已購買內容。';

  @override
  String get chooseAVideo => '選擇影片';

  @override
  String get pickAVideoFromYourGalleryToStartCompressing =>
      '從您的相簿中選擇一個影片以開始壓縮。';

  @override
  String get compressionSetup => '壓縮設定';

  @override
  String get chooseResolutionBitrateAndOutputFormatBeforeYouStart =>
      '在開始之前選擇解析度、位元率和輸出格式。';

  @override
  String get compressing => '壓縮中';

  @override
  String get followTheLiveProgressOfYourCompressionJob => '查看您的壓縮工作的即時進度。';

  @override
  String get compressionResult => '壓縮結果';

  @override
  String get compareTheBeforeAndAfterSizeThenSaveOrShareTheResult =>
      '比較壓縮前後的大小，然後儲存或分享結果。';

  @override
  String get compressionHistory => '壓縮歷史';

  @override
  String get reviewTheVideosYouHaveCompressedOnThisDevice => '查看您在此裝置上壓縮過的影片。';

  @override
  String get settings => '設定';

  @override
  String get appearance => '外觀';

  @override
  String get themeColorSchemeAndMotionPreferences => '主題、配色方案和動作偏好。';

  @override
  String get language => '語言';

  @override
  String get appLanguageAndTextDirection => '應用程式語言和文字方向。';

  @override
  String get compressionDefaults => '壓縮預設值';

  @override
  String get defaultResolutionBitrateAndOutputFormat => '預設解析度、位元率和輸出格式。';

  @override
  String get storageCleanup => '儲存與清理';

  @override
  String get storageUsageCacheSizeAndTemporaryFileCleanup =>
      '儲存使用量、快取大小與暫存檔案清理。';

  @override
  String get notifications => '通知';

  @override
  String get jobCompletionAndProductUpdateNotifications => '工作完成與產品更新通知。';

  @override
  String get privacy => '隱私';

  @override
  String get onDeviceProcessingLocalLogsAndOptionalCrashReports =>
      '裝置端處理、本地紀錄及選擇性崩潰報告。';

  @override
  String get aboutZumi => '關於 Zumi';

  @override
  String get versionBuildNumberAndApplicationDetails => '版本、建置號碼與應用程式詳情。';

  @override
  String get aboutTheDeveloper => '關於開發者';

  @override
  String get theDeveloperAndToolsBehindZumi => 'Zumi 的開發者與工具。';

  @override
  String get openSourcePackagesBundledWithZumi => 'Zumi 所包含的開源套件。';

  @override
  String get privacyPolicy => '隱私政策';

  @override
  String get howZumiHandlesYourVideosAndData => 'Zumi 如何處理您的影片與資料。';

  @override
  String get termsOfService => '服務條款';

  @override
  String get theTermsThatApplyToZumiAndItsPurchases => '適用於 Zumi 及其購買項目的條款。';

  @override
  String get dataSafety => '資料安全';

  @override
  String get summaryOfTheDataZumiCollectsAndWhy => 'Zumi 收集的資料摘要及原因。';

  @override
  String get permissions => '權限';

  @override
  String get runtimePermissionsZumiRequestsAndWhyEachIsNeeded =>
      'Zumi 請求的運行時權限及其必要原因。';

  @override
  String get faq => '常見問題';

  @override
  String get answersToCommonQuestionsAboutCompressionAndBilling =>
      '有關壓縮和計費的常見問題解答。';

  @override
  String get support => '支援';

  @override
  String get getHelpWithYourAccountOrAPurchase => '獲得帳戶或購買相關的幫助。';

  @override
  String get sendFeedback => '發送回饋意見';

  @override
  String get reportAProblemOrSuggestAnImprovement => '回報問題或建議改進。';

  @override
  String get plans => '方案';

  @override
  String get comparePlansAndSeeWhatEachOneUnlocks => '比較方案及查看每個方案解鎖的功能。';

  @override
  String get planDetails => '方案詳情';

  @override
  String get benefitsLimitsAndPricingForThisPlan => '此方案的好處、限制和價格。';

  @override
  String get paymentMethods => '付款方式';

  @override
  String get supportedWaysToPayIncludingStoreBilling => '支援的支付方式，包括商店付款。';

  @override
  String get restorePurchases => '恢復購買';

  @override
  String get reApplyAPurchaseMadeOnAnotherDevice => '重新套用在其他裝置上購買的項目。';

  @override
  String get profile => '個人資料';

  @override
  String get yourIdentityPlanStatusAndAccountPreferences => '您的身份、方案狀態和帳戶偏好。';

  @override
  String get deleteAccount => '刪除帳戶';

  @override
  String get permanentlyRemoveYourAccountAndItsServerSideData =>
      '永久移除您的帳戶及其伺服器端資料。';

  @override
  String get rateZumi => '評價 Zumi';

  @override
  String get tellOthersHowZumiWorkedForYouOnTheStore => '告訴其他人 Zumi 在商店上的使用體驗。';

  @override
  String get shareZumi => '分享 Zumi';

  @override
  String get recommendZumiToAFriend => '向朋友推薦 Zumi。';

  @override
  String get appearanceLanguage => '外觀與語言';

  @override
  String get compression => '壓縮';

  @override
  String get onDeviceAI => '裝置端 AI';

  @override
  String get notificationsPrivacy => '通知與隱私';

  @override
  String get plansPurchases => '方案與購買';

  @override
  String get about => '關於';

  @override
  String get legal => '法律';

  @override
  String get helpFeedback => '幫助與回饋';

  @override
  String get account => '帳戶';

  @override
  String get themeAndAppLanguage => '主題與應用程式語言';

  @override
  String get appLanguageAndDirection => '應用程式語言與方向';

  @override
  String get defaultQualityAndFormat => '預設品質與格式';

  @override
  String get cacheAndStorageUsage => '快取與儲存使用情況';

  @override
  String get aiSettings => 'AI 設定';

  @override
  String get zumiAssistant => 'Zumi 助手';

  @override
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere =>
      '專為您的影片打造的私人助手即將推出。您將能在此詢問有關壓縮、整理及已儲存影片的問題。';

  @override
  String get localModelsAndSmartTools => '本地模型與智能工具';

  @override
  String get exploreLocalModelsAndFutureAIToolsTheseOptionsAreNotActiveYet =>
      '探索本地模型與未來的 AI 工具。這些選項尚未啟用。';

  @override
  String get localModels => '本地模型';

  @override
  String get browseAndDownloadSupportedModels => '瀏覽並下載支援的模型';

  @override
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere =>
      '選擇支援的模型，將其下載到此裝置，並在此管理已安裝的模型。';

  @override
  String get importAModel => '匯入模型';

  @override
  String get useACompatibleModelFromYourFiles => '使用您的檔案中的相容模型';

  @override
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt =>
      '選擇相容的本地模型文件並在使用前檢查其需求。';

  @override
  String get smartFeatures => '智慧功能';

  @override
  String get compressionOrganizationAndSearch => '壓縮、組織和搜索';

  @override
  String
  get chooseWhichLocalAISuggestionsToUseForVideoCompressionOrganizationNamingAndSearch =>
      '選擇使用哪些本地 AI 建議來進行影片壓縮、組織、命名和搜索。';

  @override
  String get modelPerformance => '模型性能';

  @override
  String get processingAndResourcePreferences => '處理和資源偏好';

  @override
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels =>
      '控制受支持模型的處理後端和資源限制。';

  @override
  String get conversationSettings => '對話設置';

  @override
  String get streamingThinkingAndResponseLength => '串流、思考和回應長度';

  @override
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits =>
      '配置助理的回應方式，包括串流、思考模式、取樣和回應限制。';

  @override
  String get imagesAndAudio => '圖像和音頻';

  @override
  String get controlMultimodalInputs => '控制多模態輸入';

  @override
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos =>
      '選擇是否允許兼容模型分析您視頻中選定的圖像和音頻。';

  @override
  String get semanticSearch => '語義搜索';

  @override
  String get embeddingsAndLocalIndexing => '嵌入和本地索引';

  @override
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning =>
      '管理本地嵌入模型和搜索索引，以便按意義查找視頻和片段。';

  @override
  String get toolsAndStructuredOutput => '工具與結構化輸出';

  @override
  String get actionsSchemasAndConfirmations => '操作、架構和確認';

  @override
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation =>
      '管理受支持的助理操作和結構化回應。影響檔案的操作需要您的確認。';

  @override
  String get models => '模型';

  @override
  String get assistantExperience => '助理體驗';

  @override
  String get smartCapabilities => '智慧功能';

  @override
  String get performance => '性能';

  @override
  String get yourCompressedVideoHistory => '您的壓縮影片歷史';

  @override
  String get completionAndUpdateAlerts => '完成和更新提醒';

  @override
  String get yourDataStaysLocal => '您的資料保持本地';

  @override
  String get comparePlansAndUpgrade => '比較方案並升級';

  @override
  String get paymentMethodsAndBilling => '付款方式和帳單';

  @override
  String get restoreYourPreviousPurchase => '恢復您之前的購買';

  @override
  String get versionAndBuildDetails => '版本和建置詳情';

  @override
  String get theDeveloperBehindZumi => 'Zumi 背後的開發者';

  @override
  String get openSourcePackageLicenses => '開源套件授權';

  @override
  String get howDataIsHandled => '資料處理方式';

  @override
  String get rulesForUsingZumi => '使用 Zumi 的規則';

  @override
  String get whatDataWeCollect => '我們收集的資料';

  @override
  String get whyWeNeedPermissions => '為什麼我們需要權限';

  @override
  String get answersToCommonQuestions => '常見問題解答';

  @override
  String get reachTheDeveloperDirectly => '直接聯繫開發者';

  @override
  String get sendUsYourFeedback => '發送您的反饋';

  @override
  String get pickVideo => '選擇影片';

  @override
  String get targetSizeMB => '目標大小（MB）';

  @override
  String get startCompression => '開始壓縮';

  @override
  String get pause => '暫停';

  @override
  String get resume => '恢復';

  @override
  String get viewResult => '查看結果';

  @override
  String get saveToGallery => '保存到相冊';

  @override
  String get shareVideo => '分享影片';

  @override
  String get originalSize => '原始大小';

  @override
  String get outputSize => '輸出大小';

  @override
  String get noCompressedVideosYet => '尚無壓縮影片';

  @override
  String get savedToGallery => '已儲存至相簿';

  @override
  String get enterATargetSizeGreaterThanZero => '請輸入大於零的目標大小';

  @override
  String get compressionCancelled => '壓縮已取消';

  @override
  String get thisVideoCouldNotReachTheSelectedSizeTryALargerTargetSize =>
      '此影片無法達到所選大小。請嘗試更大的目標大小。';

  @override
  String get theSelectedSizeIsTooSmallForThisVideoChooseALargerSize =>
      '所選大小對此影片來說過小。請選擇更大的大小。';

  @override
  String get originalPreview => '原始預覽';

  @override
  String get compressedPreview => '壓縮預覽';

  @override
  String get targetPreset => '目標預設';

  @override
  String get customSize => '自訂尺寸';

  @override
  String get previewUnavailable => '無法預覽';

  @override
  String get advancedControls => '進階控制';

  @override
  String get automatic => '自動';

  @override
  String get maximumResolution => '最大解析度';

  @override
  String get originalResolution => '原始解析度';

  @override
  String get maximumFrameRate => '最高幀率';

  @override
  String get audioBitrate => '音訊位元率';

  @override
  String get removeAudio => '移除音訊';

  @override
  String get videoBitrateCeilingKbps => '影片位元率上限（kbps）';

  @override
  String get hdrHandling => 'HDR 處理';

  @override
  String get convertToSDR => '轉換為 SDR';

  @override
  String get keepHDRWhenSupported => '支援時保留 HDR';

  @override
  String get beforeYouStart => '開始之前';

  @override
  String get calculatingCompressionPlan => '正在計算壓縮計畫…';

  @override
  String get plannedResolution => '計畫解析度';

  @override
  String get plannedVideoBitrate => '計畫影片位元率';

  @override
  String get plannedAudioBitrate => '計畫音訊位元率';

  @override
  String
  get reEncodingConvertsAudioToAACStereoDolbyAtmosAndDTSSpatialAudioWillNotBePreserved =>
      '重新編碼會將音訊轉換為 AAC 立體聲。Dolby Atmos 與 DTS 空間音訊將不被保留。';

  @override
  String
  get thisTargetIsTooSmallForAUsableVideoIncreaseTheSizeOrLowerOtherLimits =>
      '此目標對於可用視頻來說太小。請增加尺寸或降低其他限制。';

  @override
  String get theSelectedTargetMayReduceVideoQuality => '選定的目標可能會降低視頻質量。';

  @override
  String get theSourceIsAlreadyWithinTheSizeLimit => '來源已在尺寸限制內。';

  @override
  String get enterABitrateOfAtLeast150KbpsOrLeaveBlankForAutomatic =>
      '請輸入至少 150 kbps 的比特率，或留空使用自動。';

  @override
  String get enterAnEvenResolutionFrom240To16384OrLeaveBlankForAutomatic =>
      '請輸入 240 到 16384 之間的偶數分辨率，或留空使用自動。';

  @override
  String get videoPosition => '視頻位置';

  @override
  String
  get aPreviousCompressionWasInterruptedItsTemporaryFilesWereCleanedUpYouCanSelectTheVideoAndTryAgain =>
      '之前的壓縮操作被中斷。其臨時文件已清理；您可以選擇視頻並再試一次。';

  @override
  String get dismiss => '關閉';

  @override
  String get clearHistory => '清除歷史記錄';

  @override
  String get removeAllHistoryEntriesSavedVideosWillRemainOnYourDevice =>
      '要刪除所有歷史記錄嗎？已保存的影片將保留在您的裝置上。';

  @override
  String get attempts => '嘗試次數';

  @override
  String get targetSize => '目標大小';

  @override
  String get outputResolution => '輸出解析度';

  @override
  String get thisVideoCouldNotBeReadChooseAnotherFile => '此影片無法讀取。請選擇其他檔案。';

  @override
  String get theEncodedVideoFailedVerificationYourOriginalVideoWasNotChanged =>
      '編碼的影片驗證失敗。您的原始影片未被更改。';

  @override
  String
  get thisDeviceCannotEncodeTheSelectedResolutionOrFrameRateLowerThatSettingAndTryAgain =>
      '此裝置無法編碼所選解析度或幀率。請降低該設定後再試。';

  @override
  String
  get thisDeviceCannotDecodeThisAudioFormatForCompressionRemoveAudioOrUseASupportedSource =>
      '此裝置無法解碼此音訊格式以進行壓縮。請移除音訊或使用支援的來源。';

  @override
  String
  get thisDeviceCannotDecodeThisVideoFormatOrProfileForCompressionChooseAnotherSourceOrDevice =>
      '此裝置無法解碼此影片格式或壓縮配置檔。請選擇其他來源或裝置。';

  @override
  String get theExportedMP4IsNotReadyForStreamingTryAnotherVideoOrDevice =>
      '匯出的 MP4 尚未準備好播放串流。請嘗試其他影片或裝置。';

  @override
  String get thereIsNotEnoughFreeStorageToCompressThisVideo =>
      '可用的儲存空間不足以壓縮此影片。';

  @override
  String get thisDeviceCannotProcessTheSelectedHDRModeTryConvertingToSDR =>
      '此裝置無法處理選取的 HDR 模式。請嘗試轉換為 SDR。';

  @override
  String get compressionCouldNotBeCompletedTryAnotherSettingOrVideo =>
      '壓縮無法完成。請嘗試其他設定或影片。';

  @override
  String get appIdentity => '應用程式身份';

  @override
  String get appName => '應用程式名稱';

  @override
  String get packageName => '套件名稱';

  @override
  String get version => '版本';

  @override
  String get buildNumber => '建置號碼';

  @override
  String get deviceAndBuild => '裝置與建置';

  @override
  String get operatingSystem => '作業系統';

  @override
  String get osVersion => '作業系統版本';

  @override
  String get buildMode => '建置模式';

  @override
  String get debug => '除錯';

  @override
  String get release => '發行';

  @override
  String get builtWith => '建立於';

  @override
  String get installation => '安裝';

  @override
  String get installedFrom => '已安裝自';

  @override
  String get installedOn => '安裝於';

  @override
  String get updatedOn => '更新於';

  @override
  String get unavailable => '不可用';

  @override
  String get projectAndSupport => '專案與支援';

  @override
  String get githubRepository => 'GitHub 儲存庫';

  @override
  String get viewZumiSourceCode => '檢視 Zumi 原始碼';

  @override
  String get readTheREADME => '閱讀 README';

  @override
  String get learnAboutZumiOnGitHub => '在 GitHub 上了解 Zumi';

  @override
  String get reportAnIssue => '回報問題';

  @override
  String get viewAndCreateGitHubIssues => '檢視並創建 GitHub 問題';

  @override
  String get latestRelease => '最新版本';

  @override
  String get viewReleasesAndDownloads => '檢視版本與下載';

  @override
  String get supportZumi => '支援 Zumi';

  @override
  String get openTheOfficialDonationPage => '打開官方捐款頁面';

  @override
  String get couldNotOpenTheLinkPleaseTryAgain => '無法打開連結。請再試一次。';

  @override
  String get developer => '開發者';

  @override
  String get mostafaSensei => 'Mostafa Sensei';

  @override
  String get githubProfile => 'GitHub 個人檔案';

  @override
  String get seeProjectsAndContactDetails => '查看專案與聯絡資訊';

  @override
  String get maintenanceInProgress => '維護中';

  @override
  String get zumiIsTemporarilyUnavailablePleaseTryAgainLater =>
      'Zumi 暫時無法使用。請稍後再試。';

  @override
  String get comingSoon => '即將推出';

  @override
  String get pleaseWait => '請稍候…';

  @override
  String get cancel => '取消';

  @override
  String get openSourceLicenses => '開源授權';

  @override
  String get languageName => '繁體中文';

  @override
  String get countryCode => 'TW';

  @override
  String countryName(String countryCode) {
    String _temp0 = intl.Intl.selectLogic(countryCode, {
      'AE': '阿拉伯聯合大公國',
      'AT': '奧地利',
      'AU': '澳洲',
      'BE': '比利時',
      'BH': '巴林',
      'BR': '巴西',
      'CA': '加拿大',
      'CH': '瑞士',
      'CN': '中國',
      'DE': '德國',
      'DJ': '吉布地',
      'DZ': '阿爾及利亞',
      'EG': '埃及',
      'ES': '西班牙',
      'FR': '法國',
      'GB': '英國',
      'HK': '中國香港特別行政區',
      'ID': '印尼',
      'IQ': '伊拉克',
      'IT': '義大利',
      'JO': '約旦',
      'JP': '日本',
      'KM': '葛摩',
      'KR': '南韓',
      'KW': '科威特',
      'LB': '黎巴嫩',
      'LY': '利比亞',
      'MA': '摩洛哥',
      'MR': '茅利塔尼亞',
      'MX': '墨西哥',
      'NL': '荷蘭',
      'OM': '阿曼',
      'PL': '波蘭',
      'PS': '巴勒斯坦自治區',
      'PT': '葡萄牙',
      'QA': '卡達',
      'RU': '俄羅斯',
      'SA': '沙烏地阿拉伯',
      'SD': '蘇丹',
      'SE': '瑞典',
      'SG': '新加坡',
      'SO': '索馬利亞',
      'SY': '敘利亞',
      'TH': '泰國',
      'TN': '突尼西亞',
      'TR': '土耳其',
      'TW': '台灣',
      'US': '美國',
      'VN': '越南',
      'YE': '葉門',
      'other': '國家',
    });
    return '$_temp0';
  }
}
