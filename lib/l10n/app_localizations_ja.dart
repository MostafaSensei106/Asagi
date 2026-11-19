// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get asagi => 'Asagi';

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
  String get confirm => '確認';

  @override
  String get ok => 'OK';

  @override
  String get compressVideosPrivatelyOnYourDevice => 'デバイス上で、動画をプライベートに圧縮します。';

  @override
  String get welcomeToAsagi => 'ズミへようこそ';

  @override
  String get learnHowAsagiCompressesYourVideosWithoutEverLeavingYourPhone =>
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
  String get aboutAsagi => 'Asagiについて';

  @override
  String get versionBuildNumberAndApplicationDetails =>
      'バージョン、ビルド番号、アプリケーションの詳細。';

  @override
  String get aboutTheDeveloper => '開発者について';

  @override
  String get theDeveloperAndToolsBehindAsagi => 'Asagiの開発者と使用されているツール。';

  @override
  String get openSourcePackagesBundledWithAsagi => 'Asagiに同梱されているオープンソースパッケージ。';

  @override
  String get privacyPolicy => 'プライバシーポリシー';

  @override
  String get howAsagiHandlesYourVideosAndData => 'Asagiがあなたのビデオやデータをどのように扱うか。';

  @override
  String get termsOfService => '利用規約';

  @override
  String get theTermsThatApplyToAsagiAndItsPurchases =>
      'Asagiおよびその購入物に適用される規約。';

  @override
  String get dataSafety => 'データ安全性';

  @override
  String get summaryOfTheDataAsagiCollectsAndWhy => 'Asagi が収集するデータの概要とその理由。';

  @override
  String get permissions => '権限';

  @override
  String get runtimePermissionsAsagiRequestsAndWhyEachIsNeeded =>
      'Asagi が要求する実行時権限とそれぞれの必要な理由。';

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
  String get rateAsagi => 'Asagiを評価';

  @override
  String get tellOthersHowAsagiWorkedForYouOnTheStore =>
      'ストアでAsagiがどのように役立ったか他の人に伝える。';

  @override
  String get shareAsagi => 'Asagiを共有';

  @override
  String get recommendAsagiToAFriend => '友達にAsagiをおすすめする。';

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
  String get asagiAssistant => 'Asagiアシスタント';

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
  String get theDeveloperBehindAsagi => 'Asagiの開発者';

  @override
  String get openSourcePackageLicenses => 'オープンソースパッケージのライセンス';

  @override
  String get howDataIsHandled => 'データの取り扱い方法';

  @override
  String get rulesForUsingAsagi => 'Asagi使用のルール';

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
  String get viewAsagiSourceCode => 'Asagiのソースコードを見る';

  @override
  String get readTheREADME => 'READMEを読む';

  @override
  String get learnAboutAsagiOnGitHub => 'GitHubでAsagiについて学ぶ';

  @override
  String get reportAnIssue => '問題を報告する';

  @override
  String get viewAndCreateGitHubIssues => 'GitHubの問題を表示・作成する';

  @override
  String get latestRelease => '最新リリース';

  @override
  String get viewReleasesAndDownloads => 'リリースとダウンロードを見る';

  @override
  String get supportAsagi => 'Asagiをサポートする';

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
  String get asagiIsTemporarilyUnavailablePleaseTryAgainLater =>
      'Asagiは一時的に利用できません。後でもう一度お試しください。';

  @override
  String get comingSoon => '近日公開';

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
  String get pleaseWait => 'お待ちください...';

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
  String get cancel => 'キャンセル';

  @override
  String get clean => 'Clean';

  @override
  String get openSourceLicenses => 'オープンソースライセンス';

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

/// The translations for Japanese, as used in Japan (`ja_JP`).
class AppLocalizationsJaJp extends AppLocalizationsJa {
  AppLocalizationsJaJp() : super('ja_JP');

  @override
  String get asagi => 'Asagi';

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
  String get confirm => '確認';

  @override
  String get ok => 'OK';

  @override
  String get compressVideosPrivatelyOnYourDevice => 'デバイス上で、動画をプライベートに圧縮します。';

  @override
  String get welcomeToAsagi => 'ズミへようこそ';

  @override
  String get learnHowAsagiCompressesYourVideosWithoutEverLeavingYourPhone =>
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
  String get aboutAsagi => 'Asagiについて';

  @override
  String get versionBuildNumberAndApplicationDetails =>
      'バージョン、ビルド番号、アプリケーションの詳細。';

  @override
  String get aboutTheDeveloper => '開発者について';

  @override
  String get theDeveloperAndToolsBehindAsagi => 'Asagiの開発者と使用されているツール。';

  @override
  String get openSourcePackagesBundledWithAsagi => 'Asagiに同梱されているオープンソースパッケージ。';

  @override
  String get privacyPolicy => 'プライバシーポリシー';

  @override
  String get howAsagiHandlesYourVideosAndData => 'Asagiがあなたのビデオやデータをどのように扱うか。';

  @override
  String get termsOfService => '利用規約';

  @override
  String get theTermsThatApplyToAsagiAndItsPurchases =>
      'Asagiおよびその購入物に適用される規約。';

  @override
  String get dataSafety => 'データ安全性';

  @override
  String get summaryOfTheDataAsagiCollectsAndWhy => 'Asagi が収集するデータの概要とその理由。';

  @override
  String get permissions => '権限';

  @override
  String get runtimePermissionsAsagiRequestsAndWhyEachIsNeeded =>
      'Asagi が要求する実行時権限とそれぞれの必要な理由。';

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
  String get rateAsagi => 'Asagiを評価';

  @override
  String get tellOthersHowAsagiWorkedForYouOnTheStore =>
      'ストアでAsagiがどのように役立ったか他の人に伝える。';

  @override
  String get shareAsagi => 'Asagiを共有';

  @override
  String get recommendAsagiToAFriend => '友達にAsagiをおすすめする。';

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
  String get asagiAssistant => 'Asagiアシスタント';

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
  String get theDeveloperBehindAsagi => 'Asagiの開発者';

  @override
  String get openSourcePackageLicenses => 'オープンソースパッケージのライセンス';

  @override
  String get howDataIsHandled => 'データの取り扱い方法';

  @override
  String get rulesForUsingAsagi => 'Asagi使用のルール';

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
  String get viewAsagiSourceCode => 'Asagiのソースコードを見る';

  @override
  String get readTheREADME => 'READMEを読む';

  @override
  String get learnAboutAsagiOnGitHub => 'GitHubでAsagiについて学ぶ';

  @override
  String get reportAnIssue => '問題を報告する';

  @override
  String get viewAndCreateGitHubIssues => 'GitHubの問題を表示・作成する';

  @override
  String get latestRelease => '最新リリース';

  @override
  String get viewReleasesAndDownloads => 'リリースとダウンロードを見る';

  @override
  String get supportAsagi => 'Asagiをサポートする';

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
  String get asagiIsTemporarilyUnavailablePleaseTryAgainLater =>
      'Asagiは一時的に利用できません。後でもう一度お試しください。';

  @override
  String get comingSoon => '近日公開';

  @override
  String get pleaseWait => 'お待ちください...';

  @override
  String get cancel => 'キャンセル';

  @override
  String get openSourceLicenses => 'オープンソースライセンス';

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
