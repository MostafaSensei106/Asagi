// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get zumi => 'Zumi';

  @override
  String get downloadFile => 'ファイルをダウンロード';

  @override
  String fileOpenedInBrowser(String fileName) {
    return 'ブラウザでファイルを開きました: $fileName';
  }

  @override
  String fileSavedToGallery(String fileName) {
    return 'ギャラリーにファイルを保存しました: $fileName';
  }

  @override
  String fileSavedToDocuments(String fileName) {
    return 'ドキュメントにファイルを保存しました: $fileName';
  }

  @override
  String get fileIsAlreadySaved => 'ファイルは既に保存されています';

  @override
  String get error => 'エラー';

  @override
  String get info => '情報';

  @override
  String get success => '成功';

  @override
  String get warning => '警告';

  @override
  String get paid => '有料';

  @override
  String get unpaid => '未払い';

  @override
  String get partial => '部分的';

  @override
  String get addressLineCannotBeEmpty => '住所行を空にすることはできません';

  @override
  String get addressLineIsTooLong => '住所行が長すぎます';

  @override
  String get specialCharactersAreNotAllowed => '特殊文字は使用できません';

  @override
  String get emojisAreNotAllowed => '絵文字は使用できません';

  @override
  String get cityCannotBeEmpty => '市区町村を空にすることはできません';

  @override
  String get cityNameIsTooLong => '市区町村名が長すぎます';

  @override
  String get cityContainsInvalidSpecialCharacters => '市区町村に無効な特殊文字が含まれています';

  @override
  String get addressLabelCannotBeEmpty => '住所ラベルを空にすることはできません';

  @override
  String get addressLabelIsTooLong => '住所ラベルが長すぎます';

  @override
  String get emailCannotBeEmpty => 'メールを空にすることはできません';

  @override
  String get invalidEmailFormat => '無効なメール形式';

  @override
  String get emailContainsInvalidCharacters => 'メールに無効な文字が含まれています';

  @override
  String get emailMustContain => 'メールに@を含める必要があります';

  @override
  String get emailMustBeInLowercase => 'メールは小文字でなければなりません';

  @override
  String get arabicCharactersAreNotAllowed => 'アラビア文字は使用できません';

  @override
  String get emojisAreNotAllowedInEmail => 'メールに絵文字は使用できません';

  @override
  String get phoneNumberCannotBeEmpty => '電話番号を空にすることはできません';

  @override
  String get invalidPhoneNumber => '無効な電話番号';

  @override
  String get phoneNumberMustBeAtLeast11Digits => '電話番号は少なくとも11桁である必要があります';

  @override
  String get nameCannotBeEmpty => '名前を空にすることはできません';

  @override
  String get invalidName => '無効な名前';

  @override
  String get nameMustBeAtLeast3Characters => '名前は少なくとも3文字である必要があります';

  @override
  String get nameCannotExceed20Characters => '名前は20文字を超えることはできません';

  @override
  String get nameContainsInvalidSpecialCharacters => '名前に無効な特殊文字が含まれています';

  @override
  String get emojisAreNotAllowedInName => '名前に絵文字は使用できません';

  @override
  String get passwordCannotBeEmpty => 'パスワードを空にすることはできません';

  @override
  String get passwordMustContainUppercaseLowercaseNumberAndSpecialCharacter =>
      'パスワードには大文字、小文字、数字、特殊文字を含める必要があります';

  @override
  String get passwordMustBeAtLeast8CharactersLong =>
      'パスワードは少なくとも8文字以上である必要があります';

  @override
  String get noInternetConnection => 'インターネット接続がありません';

  @override
  String get internetConnectionRestored => 'インターネット接続が復旧しました';

  @override
  String get retry => '再試行';

  @override
  String get cancel => 'キャンセル';

  @override
  String get confirm => '確認';

  @override
  String get pleaseWait => 'お待ちください...';

  @override
  String get ok => 'OK';

  @override
  String get compressVideosPrivatelyOnYourDevice => 'デバイス上で、動画をプライベートに圧縮します。';

  @override
  String get welcomeToZumi => 'ズミへようこそ';

  @override
  String get learnHowZumiCompressesYourVideosWithoutEverLeavingYourPhone =>
      'ズミがどのようにして動画を電話を離さずに圧縮するかを学びましょう。';

  @override
  String get signIn => 'サインイン';

  @override
  String get signInToSyncYourPlanAndKeepYourPurchasesAvailableOnEveryDevice =>
      'プランを同期し、すべてのデバイスで購入を利用可能にするにはサインインしてください。';

  @override
  String get chooseAVideo => '動画を選択';

  @override
  String get pickAVideoFromYourGalleryToStartCompressing =>
      '圧縮を開始するにはギャラリーから動画を選んでください。';

  @override
  String get compressionSetup => '圧縮設定';

  @override
  String get chooseResolutionBitrateAndOutputFormatBeforeYouStart =>
      '開始する前に、解像度、ビットレート、出力形式を選択してください。';

  @override
  String get compressing => '圧縮中';

  @override
  String get followTheLiveProgressOfYourCompressionJob =>
      '圧縮作業の進行状況をリアルタイムで確認してください。';

  @override
  String get compressionResult => '圧縮結果';

  @override
  String get compareTheBeforeAndAfterSizeThenSaveOrShareTheResult =>
      'サイズのビフォーアフターを比較し、結果を保存または共有してください。';

  @override
  String get compressionHistory => '圧縮履歴';

  @override
  String get reviewTheVideosYouHaveCompressedOnThisDevice =>
      'このデバイスで圧縮した動画を確認してください。';

  @override
  String get settings => '設定';

  @override
  String get appearance => '外観';

  @override
  String get themeColorSchemeAndMotionPreferences => 'テーマ、カラースキーム、動作の設定。';

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
  String get language => '言語';

  @override
  String get appLanguageAndTextDirection => 'アプリの言語とテキスト方向。';

  @override
  String get compressionDefaults => '圧縮のデフォルト';

  @override
  String get defaultResolutionBitrateAndOutputFormat =>
      'デフォルトの解像度、ビットレート、出力形式。';

  @override
  String get storageCleanup => 'ストレージとクリーンアップ';

  @override
  String get storageUsageCacheSizeAndTemporaryFileCleanup =>
      'ストレージ使用量、キャッシュサイズ、一時ファイルのクリーンアップ。';

  @override
  String get notifications => '通知';

  @override
  String get jobCompletionAndProductUpdateNotifications => 'ジョブ完了および製品更新の通知。';

  @override
  String get privacy => 'プライバシー';

  @override
  String get onDeviceProcessingLocalLogsAndOptionalCrashReports =>
      'デバイス上での処理、ローカルログ、および任意のクラッシュレポート。';

  @override
  String get aboutZumi => 'Zumiについて';

  @override
  String get versionBuildNumberAndApplicationDetails =>
      'バージョン、ビルド番号、アプリケーションの詳細。';

  @override
  String get aboutTheDeveloper => '開発者について';

  @override
  String get theDeveloperAndToolsBehindZumi => 'Zumiの開発者と使用されているツール。';

  @override
  String get openSourceLicenses => 'オープンソースライセンス';

  @override
  String get openSourcePackagesBundledWithZumi => 'Zumiに同梱されているオープンソースパッケージ。';

  @override
  String get privacyPolicy => 'プライバシーポリシー';

  @override
  String get howZumiHandlesYourVideosAndData => 'Zumiがあなたのビデオやデータをどのように扱うか。';

  @override
  String get termsOfService => '利用規約';

  @override
  String get theTermsThatApplyToZumiAndItsPurchases => 'Zumiおよびその購入物に適用される規約。';

  @override
  String get dataSafety => 'データ安全性';

  @override
  String get summaryOfTheDataZumiCollectsAndWhy => 'Zumi が収集するデータの概要とその理由。';

  @override
  String get permissions => '権限';

  @override
  String get runtimePermissionsZumiRequestsAndWhyEachIsNeeded =>
      'Zumi が要求する実行時権限とそれぞれの必要な理由。';

  @override
  String get faq => 'FAQ';

  @override
  String get answersToCommonQuestionsAboutCompressionAndBilling =>
      '圧縮や請求に関するよくある質問への回答。';

  @override
  String get support => 'サポート';

  @override
  String get getHelpWithYourAccountOrAPurchase => 'アカウントや購入に関するサポートを受ける。';

  @override
  String get sendFeedback => 'フィードバックを送る';

  @override
  String get reportAProblemOrSuggestAnImprovement => '問題を報告したり、改善を提案したりする。';

  @override
  String get plans => 'プラン';

  @override
  String get comparePlansAndSeeWhatEachOneUnlocks => 'プランを比較し、それぞれが提供する内容を見る。';

  @override
  String get planDetails => 'プランの詳細';

  @override
  String get benefitsLimitsAndPricingForThisPlan => 'このプランの利点、制限、料金。';

  @override
  String get paymentMethods => '支払い方法';

  @override
  String get supportedWaysToPayIncludingStoreBilling =>
      'ストア課金を含む、サポートされている支払い方法。';

  @override
  String get restorePurchases => '購入を復元';

  @override
  String get reApplyAPurchaseMadeOnAnotherDevice => '別のデバイスで行った購入を再適用する。';

  @override
  String get profile => 'プロフィール';

  @override
  String get yourIdentityPlanStatusAndAccountPreferences =>
      'あなたの身元、プランの状況、アカウントの設定。';

  @override
  String get deleteAccount => 'アカウントを削除';

  @override
  String get permanentlyRemoveYourAccountAndItsServerSideData =>
      'アカウントとそのサーバー側データを完全に削除する。';

  @override
  String get rateZumi => 'Zumiを評価';

  @override
  String get tellOthersHowZumiWorkedForYouOnTheStore =>
      'ストアでZumiがどのように役立ったか他の人に伝える。';

  @override
  String get shareZumi => 'Zumiを共有';

  @override
  String get recommendZumiToAFriend => '友達にZumiをおすすめする。';

  @override
  String get appearanceLanguage => '外観と言語';

  @override
  String get compression => '圧縮';

  @override
  String get onDeviceAI => 'デバイス上のAI';

  @override
  String get notificationsPrivacy => '通知とプライバシー';

  @override
  String get plansPurchases => 'プランと購入';

  @override
  String get about => '情報';

  @override
  String get legal => '法的情報';

  @override
  String get helpFeedback => 'ヘルプとフィードバック';

  @override
  String get account => 'アカウント';

  @override
  String get themeAndAppLanguage => 'テーマとアプリの言語';

  @override
  String get appLanguageAndDirection => 'アプリの言語と方向';

  @override
  String get defaultQualityAndFormat => 'デフォルトの品質とフォーマット';

  @override
  String get cacheAndStorageUsage => 'キャッシュとストレージの使用状況';

  @override
  String get aiSettings => 'AI設定';

  @override
  String get zumiAssistant => 'Zumiアシスタント';

  @override
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere =>
      'あなたのビデオのためのプライベートアシスタントがまもなく登場します。ここで圧縮、整理、保存されたビデオについて質問できるようになります。';

  @override
  String get localModelsAndSmartTools => 'ローカルモデルとスマートツール';

  @override
  String get exploreLocalModelsAndFutureAIToolsTheseOptionsAreNotActiveYet =>
      'ローカルモデルや将来のAIツールを探索してください。これらのオプションはまだ有効ではありません。';

  @override
  String get localModels => 'ローカルモデル';

  @override
  String get browseAndDownloadSupportedModels => '対応モデルを閲覧してダウンロード';

  @override
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere =>
      '対応モデルを選択し、このデバイスにダウンロードして、インストール済みモデルをここで管理してください。';

  @override
  String get importAModel => 'モデルをインポート';

  @override
  String get useACompatibleModelFromYourFiles => 'ファイルから互換モデルを使用してください';

  @override
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt =>
      '互換性のあるローカルモデルファイルを選択し、使用前にその要件を確認してください。';

  @override
  String get smartFeatures => 'スマート機能';

  @override
  String get compressionOrganizationAndSearch => '圧縮、整理、検索';

  @override
  String
  get chooseWhichLocalAISuggestionsToUseForVideoCompressionOrganizationNamingAndSearch =>
      '動画の圧縮、整理、命名、および検索に使用するローカルAIの提案を選択してください。';

  @override
  String get modelPerformance => 'モデルのパフォーマンス';

  @override
  String get processingAndResourcePreferences => '処理およびリソースの設定';

  @override
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels =>
      'サポートされているモデルの処理バックエンドとリソース制限を制御します。';

  @override
  String get conversationSettings => '会話の設定';

  @override
  String get streamingThinkingAndResponseLength => 'ストリーミング、思考、応答の長さ';

  @override
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits =>
      'アシスタントの応答方法を設定します。ストリーミング、思考モード、サンプリング、応答制限を含みます。';

  @override
  String get imagesAndAudio => '画像と音声';

  @override
  String get controlMultimodalInputs => 'マルチモーダル入力を制御します。';

  @override
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos =>
      '互換モデルがビデオの選択した画像や音声を分析できるかどうかを選択します。';

  @override
  String get semanticSearch => 'セマンティック検索';

  @override
  String get embeddingsAndLocalIndexing => '埋め込みとローカルインデックス';

  @override
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning =>
      '意味によってビデオや瞬間を見つけるためのローカル埋め込みモデルと検索インデックスを管理します。';

  @override
  String get toolsAndStructuredOutput => 'ツールと構造化出力';

  @override
  String get actionsSchemasAndConfirmations => 'アクション、スキーマ、確認';

  @override
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation =>
      '対応するアシスタントの操作や構造化された応答を管理します。ファイルに影響を与える操作には確認が必要です。';

  @override
  String get models => 'モデル';

  @override
  String get assistantExperience => 'アシスタントの体験';

  @override
  String get smartCapabilities => 'スマート機能';

  @override
  String get performance => 'パフォーマンス';

  @override
  String get yourCompressedVideoHistory => '圧縮されたビデオ履歴';

  @override
  String get completionAndUpdateAlerts => '完了と更新の通知';

  @override
  String get yourDataStaysLocal => 'データはローカルに保存されます';

  @override
  String get comparePlansAndUpgrade => 'プランを比較してアップグレード';

  @override
  String get paymentMethodsAndBilling => '支払い方法と請求';

  @override
  String get restoreYourPreviousPurchase => '以前の購入を復元';

  @override
  String get versionAndBuildDetails => 'バージョンとビルドの詳細';

  @override
  String get theDeveloperBehindZumi => 'Zumiの開発者';

  @override
  String get openSourcePackageLicenses => 'オープンソースパッケージのライセンス';

  @override
  String get howDataIsHandled => 'データの取り扱い方法';

  @override
  String get rulesForUsingZumi => 'Zumi使用のルール';

  @override
  String get whatDataWeCollect => '収集するデータ';

  @override
  String get whyWeNeedPermissions => 'なぜ権限が必要か';

  @override
  String get answersToCommonQuestions => 'よくある質問への回答';

  @override
  String get reachTheDeveloperDirectly => '開発者に直接連絡';

  @override
  String get sendUsYourFeedback => 'フィードバックを送信';

  @override
  String get pickVideo => 'ビデオを選択';

  @override
  String get targetSizeMB => '目標サイズ（MB）';

  @override
  String get startCompression => '圧縮を開始';

  @override
  String get pause => '一時停止';

  @override
  String get resume => '再開';

  @override
  String get viewResult => '結果を表示';

  @override
  String get saveToGallery => 'ギャラリーに保存';

  @override
  String get shareVideo => 'ビデオを共有';

  @override
  String get originalSize => '元のサイズ';

  @override
  String get outputSize => '出力サイズ';

  @override
  String get noCompressedVideosYet => 'まだ圧縮されたビデオはありません';

  @override
  String get savedToGallery => 'ギャラリーに保存されました';

  @override
  String get enterATargetSizeGreaterThanZero => '0より大きい目標サイズを入力してください';

  @override
  String get compressionCancelled => '圧縮がキャンセルされました';

  @override
  String get thisVideoCouldNotReachTheSelectedSizeTryALargerTargetSize =>
      'このビデオは選択したサイズに到達できませんでした。大きい目標サイズを試してください。';

  @override
  String get theSelectedSizeIsTooSmallForThisVideoChooseALargerSize =>
      '選択したサイズはこのビデオには小さすぎます。より大きいサイズを選んでください。';

  @override
  String get originalPreview => '元のプレビュー';

  @override
  String get compressedPreview => '圧縮プレビュー';

  @override
  String get targetPreset => 'ターゲットプリセット';

  @override
  String get customSize => 'カスタムサイズ';

  @override
  String get previewUnavailable => 'プレビューは利用できません';

  @override
  String get advancedControls => '高度なコントロール';

  @override
  String get automatic => '自動';

  @override
  String get maximumResolution => '最大解像度';

  @override
  String get originalResolution => '元の解像度';

  @override
  String get maximumFrameRate => '最大フレームレート';

  @override
  String get audioBitrate => 'オーディオビットレート';

  @override
  String get removeAudio => 'オーディオを削除';

  @override
  String get videoBitrateCeilingKbps => 'ビデオビットレート上限（kbps）';

  @override
  String get hdrHandling => 'HDRの扱い';

  @override
  String get convertToSDR => 'SDRに変換';

  @override
  String get keepHDRWhenSupported => '対応している場合はHDRを保持';

  @override
  String get beforeYouStart => '開始前に';

  @override
  String get calculatingCompressionPlan => '圧縮プランを計算中…';

  @override
  String get plannedResolution => '予定解像度';

  @override
  String get plannedVideoBitrate => '予定ビデオビットレート';

  @override
  String get plannedAudioBitrate => '予定オーディオビットレート';

  @override
  String
  get reEncodingConvertsAudioToAACStereoDolbyAtmosAndDTSSpatialAudioWillNotBePreserved =>
      '再エンコードによりオーディオはAACステレオに変換されます。Dolby AtmosやDTS空間オーディオは保持されません。';

  @override
  String
  get thisTargetIsTooSmallForAUsableVideoIncreaseTheSizeOrLowerOtherLimits =>
      'このターゲットは、使用可能なビデオには小さすぎます。サイズを大きくするか、他の制限を下げてください。';

  @override
  String get theSelectedTargetMayReduceVideoQuality =>
      '選択されたターゲットはビデオの品質を下げる可能性があります。';

  @override
  String get theSourceIsAlreadyWithinTheSizeLimit => 'ソースはすでにサイズ制限内です。';

  @override
  String get enterABitrateOfAtLeast150KbpsOrLeaveBlankForAutomatic =>
      'ビットレートを少なくとも150 kbpsで入力するか、自動にする場合は空白のままにしてください。';

  @override
  String get enterAnEvenResolutionFrom240To16384OrLeaveBlankForAutomatic =>
      '240から16384までの偶数の解像度を入力するか、自動にする場合は空白のままにしてください。';

  @override
  String get videoPosition => 'ビデオの位置';

  @override
  String
  get aPreviousCompressionWasInterruptedItsTemporaryFilesWereCleanedUpYouCanSelectTheVideoAndTryAgain =>
      '以前の圧縮が中断されました。その一時ファイルは削除されました。ビデオを選択してもう一度試すことができます。';

  @override
  String get dismiss => '閉じる';

  @override
  String get clearHistory => '履歴をクリア';

  @override
  String get removeAllHistoryEntriesSavedVideosWillRemainOnYourDevice =>
      'すべての履歴を削除しますか？保存されたビデオはデバイスに残ります。';

  @override
  String get attempts => '試行回数';

  @override
  String get targetSize => '目標サイズ';

  @override
  String get outputResolution => '出力解像度';

  @override
  String get thisVideoCouldNotBeReadChooseAnotherFile =>
      'このビデオは読み取れません。他のファイルを選択してください。';

  @override
  String get theEncodedVideoFailedVerificationYourOriginalVideoWasNotChanged =>
      'エンコードされたビデオは検証に失敗しました。元のビデオは変更されていません。';

  @override
  String
  get thisDeviceCannotEncodeTheSelectedResolutionOrFrameRateLowerThatSettingAndTryAgain =>
      'このデバイスでは選択された解像度やフレームレートをエンコードできません。その設定を下げて再試行してください。';

  @override
  String
  get thisDeviceCannotDecodeThisAudioFormatForCompressionRemoveAudioOrUseASupportedSource =>
      'このデバイスではこのオーディオ形式を圧縮用にデコードできません。オーディオを削除するか、サポートされているソースを使用してください。';

  @override
  String
  get thisDeviceCannotDecodeThisVideoFormatOrProfileForCompressionChooseAnotherSourceOrDevice =>
      'このデバイスではこのビデオ形式または圧縮プロファイルをデコードできません。別のソースまたはデバイスを選択してください。';

  @override
  String get theExportedMP4IsNotReadyForStreamingTryAnotherVideoOrDevice =>
      'エクスポートされたMP4はストリーミングに準備されていません。別のビデオまたはデバイスを試してください。';

  @override
  String get thereIsNotEnoughFreeStorageToCompressThisVideo =>
      'このビデオを圧縮するための十分な空きストレージがありません。';

  @override
  String get thisDeviceCannotProcessTheSelectedHDRModeTryConvertingToSDR =>
      'このデバイスでは選択したHDRモードを処理できません。SDRに変換してみてください。';

  @override
  String get compressionCouldNotBeCompletedTryAnotherSettingOrVideo =>
      '圧縮を完了できませんでした。別の設定またはビデオをお試しください。';

  @override
  String get appIdentity => 'アプリの識別情報';

  @override
  String get appName => 'アプリ名';

  @override
  String get packageName => 'パッケージ名';

  @override
  String get version => 'バージョン';

  @override
  String get buildNumber => 'ビルド番号';

  @override
  String get deviceAndBuild => 'デバイスとビルド';

  @override
  String get operatingSystem => 'オペレーティングシステム';

  @override
  String get osVersion => 'OSバージョン';

  @override
  String get buildMode => 'ビルドモード';

  @override
  String get debug => 'デバッグ';

  @override
  String get release => 'リリース';

  @override
  String get builtWith => 'で構築';

  @override
  String get installation => 'インストール';

  @override
  String get installedFrom => 'からインストール済み';

  @override
  String get installedOn => 'インストール日';

  @override
  String get updatedOn => '更新日';

  @override
  String get unavailable => '利用不可';

  @override
  String get projectAndSupport => 'プロジェクトとサポート';

  @override
  String get githubRepository => 'GitHubリポジトリ';

  @override
  String get viewZumiSourceCode => 'Zumiのソースコードを見る';

  @override
  String get readTheREADME => 'READMEを読む';

  @override
  String get learnAboutZumiOnGitHub => 'GitHubでZumiについて学ぶ';

  @override
  String get reportAnIssue => '問題を報告する';

  @override
  String get viewAndCreateGitHubIssues => 'GitHubの問題を表示・作成する';

  @override
  String get latestRelease => '最新リリース';

  @override
  String get viewReleasesAndDownloads => 'リリースとダウンロードを見る';

  @override
  String get supportZumi => 'Zumiをサポートする';

  @override
  String get openTheOfficialDonationPage => '公式寄付ページを開く';

  @override
  String get couldNotOpenTheLinkPleaseTryAgain => 'リンクを開けませんでした。もう一度お試しください。';

  @override
  String get developer => '開発者';

  @override
  String get mostafaSensei => 'Mostafa Sensei';

  @override
  String get githubProfile => 'GitHubプロフィール';

  @override
  String get seeProjectsAndContactDetails => 'プロジェクトと連絡先の詳細を見る';

  @override
  String get maintenanceInProgress => 'メンテナンス中';

  @override
  String get zumiIsTemporarilyUnavailablePleaseTryAgainLater =>
      'Zumiは一時的に利用できません。後でもう一度お試しください。';

  @override
  String get comingSoon => '近日公開';

  @override
  String get languageName => '日本語';

  @override
  String get countryCode => 'JP';

  @override
  String countryName(String countryCode) {
    String _temp0 = intl.Intl.selectLogic(countryCode, {
      'AE': 'アラブ首長国連邦',
      'AT': 'オーストリア',
      'AU': 'オーストラリア',
      'BE': 'ベルギー',
      'BH': 'バーレーン',
      'BR': 'ブラジル',
      'CA': 'カナダ',
      'CH': 'スイス',
      'CN': '中国',
      'DE': 'ドイツ',
      'DJ': 'ジブチ',
      'DZ': 'アルジェリア',
      'EG': 'エジプト',
      'ES': 'スペイン',
      'FR': 'フランス',
      'GB': 'イギリス',
      'HK': '中華人民共和国香港特別行政区',
      'ID': 'インドネシア',
      'IQ': 'イラク',
      'IT': 'イタリア',
      'JO': 'ヨルダン',
      'JP': '日本',
      'KM': 'コモロ',
      'KR': '韓国',
      'KW': 'クウェート',
      'LB': 'レバノン',
      'LY': 'リビア',
      'MA': 'モロッコ',
      'MR': 'モーリタニア',
      'MX': 'メキシコ',
      'NL': 'オランダ',
      'OM': 'オマーン',
      'PL': 'ポーランド',
      'PS': 'パレスチナ自治区',
      'PT': 'ポルトガル',
      'QA': 'カタール',
      'RU': 'ロシア',
      'SA': 'サウジアラビア',
      'SD': 'スーダン',
      'SE': 'スウェーデン',
      'SG': 'シンガポール',
      'SO': 'ソマリア',
      'SY': 'シリア',
      'TH': 'タイ',
      'TN': 'チュニジア',
      'TR': 'トルコ',
      'TW': '台湾',
      'US': 'アメリカ合衆国',
      'VN': 'ベトナム',
      'YE': 'イエメン',
      'other': '国',
    });
    return '$_temp0';
  }
}

/// The translations for Japanese, as used in Japan (`ja_JP`).
class AppLocalizationsJaJp extends AppLocalizationsJa {
  AppLocalizationsJaJp() : super('ja_JP');

  @override
  String get zumi => 'Zumi';

  @override
  String get downloadFile => 'ファイルをダウンロード';

  @override
  String fileOpenedInBrowser(String fileName) {
    return 'ブラウザでファイルを開きました: $fileName';
  }

  @override
  String fileSavedToGallery(String fileName) {
    return 'ギャラリーにファイルを保存しました: $fileName';
  }

  @override
  String fileSavedToDocuments(String fileName) {
    return 'ドキュメントにファイルを保存しました: $fileName';
  }

  @override
  String get fileIsAlreadySaved => 'ファイルは既に保存されています';

  @override
  String get error => 'エラー';

  @override
  String get info => '情報';

  @override
  String get success => '成功';

  @override
  String get warning => '警告';

  @override
  String get paid => '有料';

  @override
  String get unpaid => '未払い';

  @override
  String get partial => '部分的';

  @override
  String get addressLineCannotBeEmpty => '住所行を空にすることはできません';

  @override
  String get addressLineIsTooLong => '住所行が長すぎます';

  @override
  String get specialCharactersAreNotAllowed => '特殊文字は使用できません';

  @override
  String get emojisAreNotAllowed => '絵文字は使用できません';

  @override
  String get cityCannotBeEmpty => '市区町村を空にすることはできません';

  @override
  String get cityNameIsTooLong => '市区町村名が長すぎます';

  @override
  String get cityContainsInvalidSpecialCharacters => '市区町村に無効な特殊文字が含まれています';

  @override
  String get addressLabelCannotBeEmpty => '住所ラベルを空にすることはできません';

  @override
  String get addressLabelIsTooLong => '住所ラベルが長すぎます';

  @override
  String get emailCannotBeEmpty => 'メールを空にすることはできません';

  @override
  String get invalidEmailFormat => '無効なメール形式';

  @override
  String get emailContainsInvalidCharacters => 'メールに無効な文字が含まれています';

  @override
  String get emailMustContain => 'メールに@を含める必要があります';

  @override
  String get emailMustBeInLowercase => 'メールは小文字でなければなりません';

  @override
  String get arabicCharactersAreNotAllowed => 'アラビア文字は使用できません';

  @override
  String get emojisAreNotAllowedInEmail => 'メールに絵文字は使用できません';

  @override
  String get phoneNumberCannotBeEmpty => '電話番号を空にすることはできません';

  @override
  String get invalidPhoneNumber => '無効な電話番号';

  @override
  String get phoneNumberMustBeAtLeast11Digits => '電話番号は少なくとも11桁である必要があります';

  @override
  String get nameCannotBeEmpty => '名前を空にすることはできません';

  @override
  String get invalidName => '無効な名前';

  @override
  String get nameMustBeAtLeast3Characters => '名前は少なくとも3文字である必要があります';

  @override
  String get nameCannotExceed20Characters => '名前は20文字を超えることはできません';

  @override
  String get nameContainsInvalidSpecialCharacters => '名前に無効な特殊文字が含まれています';

  @override
  String get emojisAreNotAllowedInName => '名前に絵文字は使用できません';

  @override
  String get passwordCannotBeEmpty => 'パスワードを空にすることはできません';

  @override
  String get passwordMustContainUppercaseLowercaseNumberAndSpecialCharacter =>
      'パスワードには大文字、小文字、数字、特殊文字を含める必要があります';

  @override
  String get passwordMustBeAtLeast8CharactersLong =>
      'パスワードは少なくとも8文字以上である必要があります';

  @override
  String get noInternetConnection => 'インターネット接続がありません';

  @override
  String get internetConnectionRestored => 'インターネット接続が復旧しました';

  @override
  String get retry => '再試行';

  @override
  String get cancel => 'キャンセル';

  @override
  String get confirm => '確認';

  @override
  String get pleaseWait => 'お待ちください...';

  @override
  String get ok => 'OK';

  @override
  String get compressVideosPrivatelyOnYourDevice => 'デバイス上で、動画をプライベートに圧縮します。';

  @override
  String get welcomeToZumi => 'ズミへようこそ';

  @override
  String get learnHowZumiCompressesYourVideosWithoutEverLeavingYourPhone =>
      'ズミがどのようにして動画を電話を離さずに圧縮するかを学びましょう。';

  @override
  String get signIn => 'サインイン';

  @override
  String get signInToSyncYourPlanAndKeepYourPurchasesAvailableOnEveryDevice =>
      'プランを同期し、すべてのデバイスで購入を利用可能にするにはサインインしてください。';

  @override
  String get chooseAVideo => '動画を選択';

  @override
  String get pickAVideoFromYourGalleryToStartCompressing =>
      '圧縮を開始するにはギャラリーから動画を選んでください。';

  @override
  String get compressionSetup => '圧縮設定';

  @override
  String get chooseResolutionBitrateAndOutputFormatBeforeYouStart =>
      '開始する前に、解像度、ビットレート、出力形式を選択してください。';

  @override
  String get compressing => '圧縮中';

  @override
  String get followTheLiveProgressOfYourCompressionJob =>
      '圧縮作業の進行状況をリアルタイムで確認してください。';

  @override
  String get compressionResult => '圧縮結果';

  @override
  String get compareTheBeforeAndAfterSizeThenSaveOrShareTheResult =>
      'サイズのビフォーアフターを比較し、結果を保存または共有してください。';

  @override
  String get compressionHistory => '圧縮履歴';

  @override
  String get reviewTheVideosYouHaveCompressedOnThisDevice =>
      'このデバイスで圧縮した動画を確認してください。';

  @override
  String get settings => '設定';

  @override
  String get appearance => '外観';

  @override
  String get themeColorSchemeAndMotionPreferences => 'テーマ、カラースキーム、動作の設定。';

  @override
  String get language => '言語';

  @override
  String get appLanguageAndTextDirection => 'アプリの言語とテキスト方向。';

  @override
  String get compressionDefaults => '圧縮のデフォルト';

  @override
  String get defaultResolutionBitrateAndOutputFormat =>
      'デフォルトの解像度、ビットレート、出力形式。';

  @override
  String get storageCleanup => 'ストレージとクリーンアップ';

  @override
  String get storageUsageCacheSizeAndTemporaryFileCleanup =>
      'ストレージ使用量、キャッシュサイズ、一時ファイルのクリーンアップ。';

  @override
  String get notifications => '通知';

  @override
  String get jobCompletionAndProductUpdateNotifications => 'ジョブ完了および製品更新の通知。';

  @override
  String get privacy => 'プライバシー';

  @override
  String get onDeviceProcessingLocalLogsAndOptionalCrashReports =>
      'デバイス上での処理、ローカルログ、および任意のクラッシュレポート。';

  @override
  String get aboutZumi => 'Zumiについて';

  @override
  String get versionBuildNumberAndApplicationDetails =>
      'バージョン、ビルド番号、アプリケーションの詳細。';

  @override
  String get aboutTheDeveloper => '開発者について';

  @override
  String get theDeveloperAndToolsBehindZumi => 'Zumiの開発者と使用されているツール。';

  @override
  String get openSourceLicenses => 'オープンソースライセンス';

  @override
  String get openSourcePackagesBundledWithZumi => 'Zumiに同梱されているオープンソースパッケージ。';

  @override
  String get privacyPolicy => 'プライバシーポリシー';

  @override
  String get howZumiHandlesYourVideosAndData => 'Zumiがあなたのビデオやデータをどのように扱うか。';

  @override
  String get termsOfService => '利用規約';

  @override
  String get theTermsThatApplyToZumiAndItsPurchases => 'Zumiおよびその購入物に適用される規約。';

  @override
  String get dataSafety => 'データ安全性';

  @override
  String get summaryOfTheDataZumiCollectsAndWhy => 'Zumi が収集するデータの概要とその理由。';

  @override
  String get permissions => '権限';

  @override
  String get runtimePermissionsZumiRequestsAndWhyEachIsNeeded =>
      'Zumi が要求する実行時権限とそれぞれの必要な理由。';

  @override
  String get faq => 'FAQ';

  @override
  String get answersToCommonQuestionsAboutCompressionAndBilling =>
      '圧縮や請求に関するよくある質問への回答。';

  @override
  String get support => 'サポート';

  @override
  String get getHelpWithYourAccountOrAPurchase => 'アカウントや購入に関するサポートを受ける。';

  @override
  String get sendFeedback => 'フィードバックを送る';

  @override
  String get reportAProblemOrSuggestAnImprovement => '問題を報告したり、改善を提案したりする。';

  @override
  String get plans => 'プラン';

  @override
  String get comparePlansAndSeeWhatEachOneUnlocks => 'プランを比較し、それぞれが提供する内容を見る。';

  @override
  String get planDetails => 'プランの詳細';

  @override
  String get benefitsLimitsAndPricingForThisPlan => 'このプランの利点、制限、料金。';

  @override
  String get paymentMethods => '支払い方法';

  @override
  String get supportedWaysToPayIncludingStoreBilling =>
      'ストア課金を含む、サポートされている支払い方法。';

  @override
  String get restorePurchases => '購入を復元';

  @override
  String get reApplyAPurchaseMadeOnAnotherDevice => '別のデバイスで行った購入を再適用する。';

  @override
  String get profile => 'プロフィール';

  @override
  String get yourIdentityPlanStatusAndAccountPreferences =>
      'あなたの身元、プランの状況、アカウントの設定。';

  @override
  String get deleteAccount => 'アカウントを削除';

  @override
  String get permanentlyRemoveYourAccountAndItsServerSideData =>
      'アカウントとそのサーバー側データを完全に削除する。';

  @override
  String get rateZumi => 'Zumiを評価';

  @override
  String get tellOthersHowZumiWorkedForYouOnTheStore =>
      'ストアでZumiがどのように役立ったか他の人に伝える。';

  @override
  String get shareZumi => 'Zumiを共有';

  @override
  String get recommendZumiToAFriend => '友達にZumiをおすすめする。';

  @override
  String get appearanceLanguage => '外観と言語';

  @override
  String get compression => '圧縮';

  @override
  String get onDeviceAI => 'デバイス上のAI';

  @override
  String get notificationsPrivacy => '通知とプライバシー';

  @override
  String get plansPurchases => 'プランと購入';

  @override
  String get about => '情報';

  @override
  String get legal => '法的情報';

  @override
  String get helpFeedback => 'ヘルプとフィードバック';

  @override
  String get account => 'アカウント';

  @override
  String get themeAndAppLanguage => 'テーマとアプリの言語';

  @override
  String get appLanguageAndDirection => 'アプリの言語と方向';

  @override
  String get defaultQualityAndFormat => 'デフォルトの品質とフォーマット';

  @override
  String get cacheAndStorageUsage => 'キャッシュとストレージの使用状況';

  @override
  String get aiSettings => 'AI設定';

  @override
  String get zumiAssistant => 'Zumiアシスタント';

  @override
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere =>
      'あなたのビデオのためのプライベートアシスタントがまもなく登場します。ここで圧縮、整理、保存されたビデオについて質問できるようになります。';

  @override
  String get localModelsAndSmartTools => 'ローカルモデルとスマートツール';

  @override
  String get exploreLocalModelsAndFutureAIToolsTheseOptionsAreNotActiveYet =>
      'ローカルモデルや将来のAIツールを探索してください。これらのオプションはまだ有効ではありません。';

  @override
  String get localModels => 'ローカルモデル';

  @override
  String get browseAndDownloadSupportedModels => '対応モデルを閲覧してダウンロード';

  @override
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere =>
      '対応モデルを選択し、このデバイスにダウンロードして、インストール済みモデルをここで管理してください。';

  @override
  String get importAModel => 'モデルをインポート';

  @override
  String get useACompatibleModelFromYourFiles => 'ファイルから互換モデルを使用してください';

  @override
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt =>
      '互換性のあるローカルモデルファイルを選択し、使用前にその要件を確認してください。';

  @override
  String get smartFeatures => 'スマート機能';

  @override
  String get compressionOrganizationAndSearch => '圧縮、整理、検索';

  @override
  String
  get chooseWhichLocalAISuggestionsToUseForVideoCompressionOrganizationNamingAndSearch =>
      '動画の圧縮、整理、命名、および検索に使用するローカルAIの提案を選択してください。';

  @override
  String get modelPerformance => 'モデルのパフォーマンス';

  @override
  String get processingAndResourcePreferences => '処理およびリソースの設定';

  @override
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels =>
      'サポートされているモデルの処理バックエンドとリソース制限を制御します。';

  @override
  String get conversationSettings => '会話の設定';

  @override
  String get streamingThinkingAndResponseLength => 'ストリーミング、思考、応答の長さ';

  @override
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits =>
      'アシスタントの応答方法を設定します。ストリーミング、思考モード、サンプリング、応答制限を含みます。';

  @override
  String get imagesAndAudio => '画像と音声';

  @override
  String get controlMultimodalInputs => 'マルチモーダル入力を制御します。';

  @override
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos =>
      '互換モデルがビデオの選択した画像や音声を分析できるかどうかを選択します。';

  @override
  String get semanticSearch => 'セマンティック検索';

  @override
  String get embeddingsAndLocalIndexing => '埋め込みとローカルインデックス';

  @override
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning =>
      '意味によってビデオや瞬間を見つけるためのローカル埋め込みモデルと検索インデックスを管理します。';

  @override
  String get toolsAndStructuredOutput => 'ツールと構造化出力';

  @override
  String get actionsSchemasAndConfirmations => 'アクション、スキーマ、確認';

  @override
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation =>
      '対応するアシスタントの操作や構造化された応答を管理します。ファイルに影響を与える操作には確認が必要です。';

  @override
  String get models => 'モデル';

  @override
  String get assistantExperience => 'アシスタントの体験';

  @override
  String get smartCapabilities => 'スマート機能';

  @override
  String get performance => 'パフォーマンス';

  @override
  String get yourCompressedVideoHistory => '圧縮されたビデオ履歴';

  @override
  String get completionAndUpdateAlerts => '完了と更新の通知';

  @override
  String get yourDataStaysLocal => 'データはローカルに保存されます';

  @override
  String get comparePlansAndUpgrade => 'プランを比較してアップグレード';

  @override
  String get paymentMethodsAndBilling => '支払い方法と請求';

  @override
  String get restoreYourPreviousPurchase => '以前の購入を復元';

  @override
  String get versionAndBuildDetails => 'バージョンとビルドの詳細';

  @override
  String get theDeveloperBehindZumi => 'Zumiの開発者';

  @override
  String get openSourcePackageLicenses => 'オープンソースパッケージのライセンス';

  @override
  String get howDataIsHandled => 'データの取り扱い方法';

  @override
  String get rulesForUsingZumi => 'Zumi使用のルール';

  @override
  String get whatDataWeCollect => '収集するデータ';

  @override
  String get whyWeNeedPermissions => 'なぜ権限が必要か';

  @override
  String get answersToCommonQuestions => 'よくある質問への回答';

  @override
  String get reachTheDeveloperDirectly => '開発者に直接連絡';

  @override
  String get sendUsYourFeedback => 'フィードバックを送信';

  @override
  String get pickVideo => 'ビデオを選択';

  @override
  String get targetSizeMB => '目標サイズ（MB）';

  @override
  String get startCompression => '圧縮を開始';

  @override
  String get pause => '一時停止';

  @override
  String get resume => '再開';

  @override
  String get viewResult => '結果を表示';

  @override
  String get saveToGallery => 'ギャラリーに保存';

  @override
  String get shareVideo => 'ビデオを共有';

  @override
  String get originalSize => '元のサイズ';

  @override
  String get outputSize => '出力サイズ';

  @override
  String get noCompressedVideosYet => 'まだ圧縮されたビデオはありません';

  @override
  String get savedToGallery => 'ギャラリーに保存されました';

  @override
  String get enterATargetSizeGreaterThanZero => '0より大きい目標サイズを入力してください';

  @override
  String get compressionCancelled => '圧縮がキャンセルされました';

  @override
  String get thisVideoCouldNotReachTheSelectedSizeTryALargerTargetSize =>
      'このビデオは選択したサイズに到達できませんでした。大きい目標サイズを試してください。';

  @override
  String get theSelectedSizeIsTooSmallForThisVideoChooseALargerSize =>
      '選択したサイズはこのビデオには小さすぎます。より大きいサイズを選んでください。';

  @override
  String get originalPreview => '元のプレビュー';

  @override
  String get compressedPreview => '圧縮プレビュー';

  @override
  String get targetPreset => 'ターゲットプリセット';

  @override
  String get customSize => 'カスタムサイズ';

  @override
  String get previewUnavailable => 'プレビューは利用できません';

  @override
  String get advancedControls => '高度なコントロール';

  @override
  String get automatic => '自動';

  @override
  String get maximumResolution => '最大解像度';

  @override
  String get originalResolution => '元の解像度';

  @override
  String get maximumFrameRate => '最大フレームレート';

  @override
  String get audioBitrate => 'オーディオビットレート';

  @override
  String get removeAudio => 'オーディオを削除';

  @override
  String get videoBitrateCeilingKbps => 'ビデオビットレート上限（kbps）';

  @override
  String get hdrHandling => 'HDRの扱い';

  @override
  String get convertToSDR => 'SDRに変換';

  @override
  String get keepHDRWhenSupported => '対応している場合はHDRを保持';

  @override
  String get beforeYouStart => '開始前に';

  @override
  String get calculatingCompressionPlan => '圧縮プランを計算中…';

  @override
  String get plannedResolution => '予定解像度';

  @override
  String get plannedVideoBitrate => '予定ビデオビットレート';

  @override
  String get plannedAudioBitrate => '予定オーディオビットレート';

  @override
  String
  get reEncodingConvertsAudioToAACStereoDolbyAtmosAndDTSSpatialAudioWillNotBePreserved =>
      '再エンコードによりオーディオはAACステレオに変換されます。Dolby AtmosやDTS空間オーディオは保持されません。';

  @override
  String
  get thisTargetIsTooSmallForAUsableVideoIncreaseTheSizeOrLowerOtherLimits =>
      'このターゲットは、使用可能なビデオには小さすぎます。サイズを大きくするか、他の制限を下げてください。';

  @override
  String get theSelectedTargetMayReduceVideoQuality =>
      '選択されたターゲットはビデオの品質を下げる可能性があります。';

  @override
  String get theSourceIsAlreadyWithinTheSizeLimit => 'ソースはすでにサイズ制限内です。';

  @override
  String get enterABitrateOfAtLeast150KbpsOrLeaveBlankForAutomatic =>
      'ビットレートを少なくとも150 kbpsで入力するか、自動にする場合は空白のままにしてください。';

  @override
  String get enterAnEvenResolutionFrom240To16384OrLeaveBlankForAutomatic =>
      '240から16384までの偶数の解像度を入力するか、自動にする場合は空白のままにしてください。';

  @override
  String get videoPosition => 'ビデオの位置';

  @override
  String
  get aPreviousCompressionWasInterruptedItsTemporaryFilesWereCleanedUpYouCanSelectTheVideoAndTryAgain =>
      '以前の圧縮が中断されました。その一時ファイルは削除されました。ビデオを選択してもう一度試すことができます。';

  @override
  String get dismiss => '閉じる';

  @override
  String get clearHistory => '履歴をクリア';

  @override
  String get removeAllHistoryEntriesSavedVideosWillRemainOnYourDevice =>
      'すべての履歴を削除しますか？保存されたビデオはデバイスに残ります。';

  @override
  String get attempts => '試行回数';

  @override
  String get targetSize => '目標サイズ';

  @override
  String get outputResolution => '出力解像度';

  @override
  String get thisVideoCouldNotBeReadChooseAnotherFile =>
      'このビデオは読み取れません。他のファイルを選択してください。';

  @override
  String get theEncodedVideoFailedVerificationYourOriginalVideoWasNotChanged =>
      'エンコードされたビデオは検証に失敗しました。元のビデオは変更されていません。';

  @override
  String
  get thisDeviceCannotEncodeTheSelectedResolutionOrFrameRateLowerThatSettingAndTryAgain =>
      'このデバイスでは選択された解像度やフレームレートをエンコードできません。その設定を下げて再試行してください。';

  @override
  String
  get thisDeviceCannotDecodeThisAudioFormatForCompressionRemoveAudioOrUseASupportedSource =>
      'このデバイスではこのオーディオ形式を圧縮用にデコードできません。オーディオを削除するか、サポートされているソースを使用してください。';

  @override
  String
  get thisDeviceCannotDecodeThisVideoFormatOrProfileForCompressionChooseAnotherSourceOrDevice =>
      'このデバイスではこのビデオ形式または圧縮プロファイルをデコードできません。別のソースまたはデバイスを選択してください。';

  @override
  String get theExportedMP4IsNotReadyForStreamingTryAnotherVideoOrDevice =>
      'エクスポートされたMP4はストリーミングに準備されていません。別のビデオまたはデバイスを試してください。';

  @override
  String get thereIsNotEnoughFreeStorageToCompressThisVideo =>
      'このビデオを圧縮するための十分な空きストレージがありません。';

  @override
  String get thisDeviceCannotProcessTheSelectedHDRModeTryConvertingToSDR =>
      'このデバイスでは選択したHDRモードを処理できません。SDRに変換してみてください。';

  @override
  String get compressionCouldNotBeCompletedTryAnotherSettingOrVideo =>
      '圧縮を完了できませんでした。別の設定またはビデオをお試しください。';

  @override
  String get appIdentity => 'アプリの識別情報';

  @override
  String get appName => 'アプリ名';

  @override
  String get packageName => 'パッケージ名';

  @override
  String get version => 'バージョン';

  @override
  String get buildNumber => 'ビルド番号';

  @override
  String get deviceAndBuild => 'デバイスとビルド';

  @override
  String get operatingSystem => 'オペレーティングシステム';

  @override
  String get osVersion => 'OSバージョン';

  @override
  String get buildMode => 'ビルドモード';

  @override
  String get debug => 'デバッグ';

  @override
  String get release => 'リリース';

  @override
  String get builtWith => 'で構築';

  @override
  String get installation => 'インストール';

  @override
  String get installedFrom => 'からインストール済み';

  @override
  String get installedOn => 'インストール日';

  @override
  String get updatedOn => '更新日';

  @override
  String get unavailable => '利用不可';

  @override
  String get projectAndSupport => 'プロジェクトとサポート';

  @override
  String get githubRepository => 'GitHubリポジトリ';

  @override
  String get viewZumiSourceCode => 'Zumiのソースコードを見る';

  @override
  String get readTheREADME => 'READMEを読む';

  @override
  String get learnAboutZumiOnGitHub => 'GitHubでZumiについて学ぶ';

  @override
  String get reportAnIssue => '問題を報告する';

  @override
  String get viewAndCreateGitHubIssues => 'GitHubの問題を表示・作成する';

  @override
  String get latestRelease => '最新リリース';

  @override
  String get viewReleasesAndDownloads => 'リリースとダウンロードを見る';

  @override
  String get supportZumi => 'Zumiをサポートする';

  @override
  String get openTheOfficialDonationPage => '公式寄付ページを開く';

  @override
  String get couldNotOpenTheLinkPleaseTryAgain => 'リンクを開けませんでした。もう一度お試しください。';

  @override
  String get developer => '開発者';

  @override
  String get mostafaSensei => 'Mostafa Sensei';

  @override
  String get githubProfile => 'GitHubプロフィール';

  @override
  String get seeProjectsAndContactDetails => 'プロジェクトと連絡先の詳細を見る';

  @override
  String get maintenanceInProgress => 'メンテナンス中';

  @override
  String get zumiIsTemporarilyUnavailablePleaseTryAgainLater =>
      'Zumiは一時的に利用できません。後でもう一度お試しください。';

  @override
  String get comingSoon => '近日公開';

  @override
  String get languageName => '日本語';

  @override
  String get countryCode => 'JP';

  @override
  String countryName(String countryCode) {
    String _temp0 = intl.Intl.selectLogic(countryCode, {
      'AE': 'アラブ首長国連邦',
      'AT': 'オーストリア',
      'AU': 'オーストラリア',
      'BE': 'ベルギー',
      'BH': 'バーレーン',
      'BR': 'ブラジル',
      'CA': 'カナダ',
      'CH': 'スイス',
      'CN': '中国',
      'DE': 'ドイツ',
      'DJ': 'ジブチ',
      'DZ': 'アルジェリア',
      'EG': 'エジプト',
      'ES': 'スペイン',
      'FR': 'フランス',
      'GB': 'イギリス',
      'HK': '中華人民共和国香港特別行政区',
      'ID': 'インドネシア',
      'IQ': 'イラク',
      'IT': 'イタリア',
      'JO': 'ヨルダン',
      'JP': '日本',
      'KM': 'コモロ',
      'KR': '韓国',
      'KW': 'クウェート',
      'LB': 'レバノン',
      'LY': 'リビア',
      'MA': 'モロッコ',
      'MR': 'モーリタニア',
      'MX': 'メキシコ',
      'NL': 'オランダ',
      'OM': 'オマーン',
      'PL': 'ポーランド',
      'PS': 'パレスチナ自治区',
      'PT': 'ポルトガル',
      'QA': 'カタール',
      'RU': 'ロシア',
      'SA': 'サウジアラビア',
      'SD': 'スーダン',
      'SE': 'スウェーデン',
      'SG': 'シンガポール',
      'SO': 'ソマリア',
      'SY': 'シリア',
      'TH': 'タイ',
      'TN': 'チュニジア',
      'TR': 'トルコ',
      'TW': '台湾',
      'US': 'アメリカ合衆国',
      'VN': 'ベトナム',
      'YE': 'イエメン',
      'other': '国',
    });
    return '$_temp0';
  }
}
