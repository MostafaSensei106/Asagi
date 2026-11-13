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
  String fileSavedToDcim(String fileName) {
    return 'ギャラリーにファイルを保存しました: $fileName';
  }

  @override
  String fileSavedToDocuments(String fileName) {
    return 'ドキュメントにファイルを保存しました: $fileName';
  }

  @override
  String get fileAlreadySaved => 'ファイルは既に保存されています';

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
  String get error_address_line_cant_be_empty => '住所行を空にすることはできません';

  @override
  String get error_address_line_too_long => '住所行が長すぎます';

  @override
  String get error_address_invalid_special_characters => '特殊文字は使用できません';

  @override
  String get error_address_emoji_not_allowed => '絵文字は使用できません';

  @override
  String get error_city_cant_be_empty => '市区町村を空にすることはできません';

  @override
  String get error_city_too_long => '市区町村名が長すぎます';

  @override
  String get error_city_invalid_special_characters => '市区町村に無効な特殊文字が含まれています';

  @override
  String get error_address_label_cant_be_empty => '住所ラベルを空にすることはできません';

  @override
  String get error_address_label_too_long => '住所ラベルが長すぎます';

  @override
  String get error_email_cant_be_empty => 'メールを空にすることはできません';

  @override
  String get error_email_not_invalid_format => '無効なメール形式';

  @override
  String get error_email_contains_invalid_characters => 'メールに無効な文字が含まれています';

  @override
  String get error_email_must_contain_at_symbol => 'メールに@を含める必要があります';

  @override
  String get error_email_must_be_in_lowercase => 'メールは小文字でなければなりません';

  @override
  String get error_arabic_not_allowed => 'アラビア文字は使用できません';

  @override
  String get error_email_emoji_not_allowed => 'メールに絵文字は使用できません';

  @override
  String get error_phone_number_cant_be_empty => '電話番号を空にすることはできません';

  @override
  String get error_phone_number_invalid => '無効な電話番号';

  @override
  String get error_phone_number_min_length => '電話番号は少なくとも11桁である必要があります';

  @override
  String get error_name_cant_be_empty => '名前を空にすることはできません';

  @override
  String get error_name_invalid => '無効な名前';

  @override
  String get error_name_too_short_at_least_3_characters =>
      '名前は少なくとも3文字である必要があります';

  @override
  String get error_name_too_long_maximum_20_characters => '名前は20文字を超えることはできません';

  @override
  String get error_name_invalid_special_characters => '名前に無効な特殊文字が含まれています';

  @override
  String get error_name_emoji_not_allowed => '名前に絵文字は使用できません';

  @override
  String get error_password_cant_be_empty => 'パスワードを空にすることはできません';

  @override
  String
  get error_password_must_contain_uppercase_lowercase_number_and_special_character =>
      'パスワードには大文字、小文字、数字、特殊文字を含める必要があります';

  @override
  String get error_password_must_be_at_least_8_characters_long =>
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
  String get settingsGroupAppearance => '外観と言語';

  @override
  String get settingsGroupCompression => '圧縮';

  @override
  String get settingsGroupAi => 'デバイス上のAI';

  @override
  String get settingsGroupPrivacy => '通知とプライバシー';

  @override
  String get settingsGroupPlans => 'プランと購入';

  @override
  String get settingsGroupAbout => '情報';

  @override
  String get settingsGroupLegal => '法的情報';

  @override
  String get settingsGroupHelp => 'ヘルプとフィードバック';

  @override
  String get settingsGroupAccount => 'アカウント';

  @override
  String get settingsAppearanceSubtitle => 'テーマとアプリの言語';

  @override
  String get settingsLanguageSubtitle => 'アプリの言語と方向';

  @override
  String get settingsCompressionSubtitle => 'デフォルトの品質とフォーマット';

  @override
  String get settingsStorageSubtitle => 'キャッシュとストレージの使用状況';

  @override
  String get aiSettings => 'AI設定';

  @override
  String get zumiAssistant => 'Zumiアシスタント';

  @override
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere =>
      'あなたのビデオのためのプライベートアシスタントがまもなく登場します。ここで圧縮、整理、保存されたビデオについて質問できるようになります。';

  @override
  String get settingsAiSubtitle => 'ローカルモデルとスマートツール';

  @override
  String get exploreLocalModelsAndFutureAiToolsTheseOptionsAreNotActiveYet =>
      'ローカルモデルや将来のAIツールを探索してください。これらのオプションはまだ有効ではありません。';

  @override
  String get localModels => 'ローカルモデル';

  @override
  String get aiModelsSubtitle => '対応モデルを閲覧してダウンロード';

  @override
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere =>
      '対応モデルを選択し、このデバイスにダウンロードして、インストール済みモデルをここで管理してください。';

  @override
  String get importAModel => 'モデルをインポート';

  @override
  String get aiImportSubtitle => 'ファイルから互換モデルを使用してください';

  @override
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt =>
      '互換性のあるローカルモデルファイルを選択し、使用前にその要件を確認してください。';

  @override
  String get smartFeatures => 'スマート機能';

  @override
  String get aiFeaturesSubtitle => '圧縮、整理、検索';

  @override
  String
  get chooseWhichLocalAiSuggestionsToUseForVideoCompressionOrganizationNamingAndSearch =>
      '動画の圧縮、整理、命名、および検索に使用するローカルAIの提案を選択してください。';

  @override
  String get modelPerformance => 'モデルのパフォーマンス';

  @override
  String get aiRuntimeSubtitle => '処理およびリソースの設定';

  @override
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels =>
      'サポートされているモデルの処理バックエンドとリソース制限を制御します。';

  @override
  String get conversationSettings => '会話の設定';

  @override
  String get aiChatSettingsSubtitle => 'ストリーミング、思考、応答の長さ';

  @override
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits =>
      'アシスタントの応答方法を設定します。ストリーミング、思考モード、サンプリング、応答制限を含みます。';

  @override
  String get imagesAndAudio => '画像と音声';

  @override
  String get aiMediaSubtitle => 'マルチモーダル入力を制御します。';

  @override
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos =>
      '互換モデルがビデオの選択した画像や音声を分析できるかどうかを選択します。';

  @override
  String get semanticSearch => 'セマンティック検索';

  @override
  String get aiSearchSubtitle => '埋め込みとローカルインデックス';

  @override
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning =>
      '意味によってビデオや瞬間を見つけるためのローカル埋め込みモデルと検索インデックスを管理します。';

  @override
  String get toolsAndStructuredOutput => 'ツールと構造化出力';

  @override
  String get aiToolsSubtitle => 'アクション、スキーマ、確認';

  @override
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation =>
      '対応するアシスタントの操作や構造化された応答を管理します。ファイルに影響を与える操作には確認が必要です。';

  @override
  String get aiGroupModels => 'モデル';

  @override
  String get aiGroupExperience => 'アシスタントの体験';

  @override
  String get aiGroupCapabilities => 'スマート機能';

  @override
  String get aiGroupPerformance => 'パフォーマンス';

  @override
  String get compressionHistorySubtitle => '圧縮されたビデオ履歴';

  @override
  String get settingsNotificationsSubtitle => '完了と更新の通知';

  @override
  String get settingsPrivacySubtitle => 'データはローカルに保存されます';

  @override
  String get plansSubtitle => 'プランを比較してアップグレード';

  @override
  String get plansMethodsSubtitle => '支払い方法と請求';

  @override
  String get plansRestoreSubtitle => '以前の購入を復元';

  @override
  String get aboutAppSubtitle => 'バージョンとビルドの詳細';

  @override
  String get aboutDeveloperSubtitle => 'Zumiの開発者';

  @override
  String get aboutLicensesSubtitle => 'オープンソースパッケージのライセンス';

  @override
  String get legalPrivacySubtitle => 'データの取り扱い方法';

  @override
  String get legalTermsSubtitle => 'Zumi使用のルール';

  @override
  String get legalDataSafetySubtitle => '収集するデータ';

  @override
  String get legalPermissionsSubtitle => 'なぜ権限が必要か';

  @override
  String get helpFaqSubtitle => 'よくある質問への回答';

  @override
  String get helpSupportSubtitle => '開発者に直接連絡';

  @override
  String get helpFeedbackSubtitle => 'フィードバックを送信';

  @override
  String get compressionPickVideo => 'ビデオを選択';

  @override
  String get compressionTargetMb => '目標サイズ（MB）';

  @override
  String get compressionStart => '圧縮を開始';

  @override
  String get compressionPause => '一時停止';

  @override
  String get compressionResume => '再開';

  @override
  String get compressionViewResult => '結果を表示';

  @override
  String get compressionSaveGallery => 'ギャラリーに保存';

  @override
  String get compressionShare => 'ビデオを共有';

  @override
  String get compressionOriginalSize => '元のサイズ';

  @override
  String get compressionOutputSize => '出力サイズ';

  @override
  String get compressionEmptyHistory => 'まだ圧縮されたビデオはありません';

  @override
  String get compressionSavedGallery => 'ギャラリーに保存されました';

  @override
  String get compressionInvalidTarget => '0より大きい目標サイズを入力してください';

  @override
  String get compressionCancelled => '圧縮がキャンセルされました';

  @override
  String get compressionTargetExceeded =>
      'このビデオは選択したサイズに到達できませんでした。大きい目標サイズを試してください。';

  @override
  String get compressionTargetInfeasible =>
      '選択したサイズはこのビデオには小さすぎます。より大きいサイズを選んでください。';

  @override
  String get compressionPreviewBefore => '元のプレビュー';

  @override
  String get compressionPreviewAfter => '圧縮プレビュー';

  @override
  String get compressionPreset => 'ターゲットプリセット';

  @override
  String get compressionCustom => 'カスタムサイズ';

  @override
  String get compressionPreviewUnavailable => 'プレビューは利用できません';

  @override
  String get compressionAdvanced => '高度なコントロール';

  @override
  String get compressionAutomatic => '自動';

  @override
  String get compressionResolutionLimit => '最大解像度';

  @override
  String get compressionSourceResolution => '元の解像度';

  @override
  String get compressionFrameRateLimit => '最大フレームレート';

  @override
  String get compressionAudioQuality => 'オーディオビットレート';

  @override
  String get compressionRemoveAudio => 'オーディオを削除';

  @override
  String get compressionVideoBitrateLimit => 'ビデオビットレート上限（kbps）';

  @override
  String get compressionHdrPolicy => 'HDRの扱い';

  @override
  String get compressionHdrConvert => 'SDRに変換';

  @override
  String get compressionHdrPreserve => '対応している場合はHDRを保持';

  @override
  String get compressionPlanPreview => '開始前に';

  @override
  String get compressionPlanLoading => '圧縮プランを計算中…';

  @override
  String get compressionPlanResolution => '予定解像度';

  @override
  String get compressionPlanVideoBitrate => '予定ビデオビットレート';

  @override
  String get compressionPlanAudioBitrate => '予定オーディオビットレート';

  @override
  String get compressionAudioConversionNote =>
      '再エンコードによりオーディオはAACステレオに変換されます。Dolby AtmosやDTS空間オーディオは保持されません。';

  @override
  String get compressionPlanTooSmall =>
      'このターゲットは、使用可能なビデオには小さすぎます。サイズを大きくするか、他の制限を下げてください。';

  @override
  String get compressionPlanLowQuality => '選択されたターゲットはビデオの品質を下げる可能性があります。';

  @override
  String get compressionPlanAlreadyWithinLimit => 'ソースはすでにサイズ制限内です。';

  @override
  String get compressionInvalidBitrate =>
      'ビットレートを少なくとも150 kbpsで入力するか、自動にする場合は空白のままにしてください。';

  @override
  String get compressionInvalidResolution =>
      '240から16384までの偶数の解像度を入力するか、自動にする場合は空白のままにしてください。';

  @override
  String get compressionSeek => 'ビデオの位置';

  @override
  String get compressionInterrupted =>
      '以前の圧縮が中断されました。その一時ファイルは削除されました。ビデオを選択してもう一度試すことができます。';

  @override
  String get compressionDismiss => '閉じる';

  @override
  String get compressionClearHistory => '履歴をクリア';

  @override
  String get compressionClearHistoryConfirm =>
      'すべての履歴を削除しますか？保存されたビデオはデバイスに残ります。';

  @override
  String get compressionAttempts => '試行回数';

  @override
  String get compressionTargetSize => '目標サイズ';

  @override
  String get compressionOutputResolution => '出力解像度';

  @override
  String get compressionInvalidVideo => 'このビデオは読み取れません。他のファイルを選択してください。';

  @override
  String get compressionInvalidOutput =>
      'エンコードされたビデオは検証に失敗しました。元のビデオは変更されていません。';

  @override
  String get compressionEncoderUnsupported =>
      'このデバイスでは選択された解像度やフレームレートをエンコードできません。その設定を下げて再試行してください。';

  @override
  String get compressionAudioDecoderUnsupported =>
      'このデバイスではこのオーディオ形式を圧縮用にデコードできません。オーディオを削除するか、サポートされているソースを使用してください。';

  @override
  String get compressionVideoDecoderUnsupported =>
      'このデバイスではこのビデオ形式または圧縮プロファイルをデコードできません。別のソースまたはデバイスを選択してください。';

  @override
  String get compressionMp4NotStreamable =>
      'エクスポートされたMP4はストリーミングに準備されていません。別のビデオまたはデバイスを試してください。';

  @override
  String get compressionNoSpace => 'このビデオを圧縮するための十分な空きストレージがありません。';

  @override
  String get compressionHdrUnsupported =>
      'このデバイスでは選択したHDRモードを処理できません。SDRに変換してみてください。';

  @override
  String get compressionGeneralFailure => '圧縮を完了できませんでした。別の設定またはビデオをお試しください。';

  @override
  String get aboutIdentitySection => 'アプリの識別情報';

  @override
  String get aboutAppName => 'アプリ名';

  @override
  String get aboutPackageName => 'パッケージ名';

  @override
  String get aboutVersion => 'バージョン';

  @override
  String get aboutBuildNumber => 'ビルド番号';

  @override
  String get aboutEnvironmentSection => 'デバイスとビルド';

  @override
  String get aboutOperatingSystem => 'オペレーティングシステム';

  @override
  String get aboutOsVersion => 'OSバージョン';

  @override
  String get aboutBuildMode => 'ビルドモード';

  @override
  String get aboutDebug => 'デバッグ';

  @override
  String get aboutRelease => 'リリース';

  @override
  String get aboutToolchainSection => 'で構築';

  @override
  String get aboutInstallationSection => 'インストール';

  @override
  String get aboutInstaller => 'からインストール済み';

  @override
  String get aboutInstalledOn => 'インストール日';

  @override
  String get aboutUpdatedOn => '更新日';

  @override
  String get aboutUnavailable => '利用不可';

  @override
  String get aboutProjectSection => 'プロジェクトとサポート';

  @override
  String get aboutRepository => 'GitHubリポジトリ';

  @override
  String get aboutRepositorySubtitle => 'Zumiのソースコードを見る';

  @override
  String get aboutReadme => 'READMEを読む';

  @override
  String get aboutReadmeSubtitle => 'GitHubでZumiについて学ぶ';

  @override
  String get aboutIssues => '問題を報告する';

  @override
  String get aboutIssuesSubtitle => 'GitHubの問題を表示・作成する';

  @override
  String get aboutLatestRelease => '最新リリース';

  @override
  String get aboutLatestReleaseSubtitle => 'リリースとダウンロードを見る';

  @override
  String get aboutDonate => 'Zumiをサポートする';

  @override
  String get aboutDonateSubtitle => '公式寄付ページを開く';

  @override
  String get aboutLinkError => 'リンクを開けませんでした。もう一度お試しください。';

  @override
  String get aboutDeveloperSection => '開発者';

  @override
  String get aboutDeveloperName => 'Mostafa Sensei';

  @override
  String get aboutDeveloperProfile => 'GitHubプロフィール';

  @override
  String get aboutDeveloperProfileSubtitle => 'プロジェクトと連絡先の詳細を見る';

  @override
  String get maintenanceInProgress => 'メンテナンス中';

  @override
  String get maintenanceMessage => 'Zumiは一時的に利用できません。後でもう一度お試しください。';

  @override
  String get comingSoon => '近日公開';

  @override
  String get languageName => '日本語';

  @override
  String get countryCode => 'JP';

  @override
  String countryName(String countryCode) {
    String _temp0 = intl.Intl.selectLogic(countryCode, {
      'DZ': 'アルジェリア',
      'BH': 'バーレーン',
      'KM': 'コモロ',
      'DJ': 'ジブチ',
      'EG': 'エジプト',
      'IQ': 'イラク',
      'JO': 'ヨルダン',
      'KW': 'クウェート',
      'LB': 'レバノン',
      'LY': 'リビア',
      'MR': 'モーリタニア',
      'MA': 'モロッコ',
      'OM': 'オマーン',
      'PS': 'パレスチナ自治区',
      'QA': 'カタール',
      'SA': 'サウジアラビア',
      'SO': 'ソマリア',
      'SD': 'スーダン',
      'SY': 'シリア',
      'TN': 'チュニジア',
      'AE': 'アラブ首長国連邦',
      'YE': 'イエメン',
      'US': 'アメリカ合衆国',
      'GB': 'イギリス',
      'JP': '日本',
      'FR': 'フランス',
      'DE': 'ドイツ',
      'ES': 'スペイン',
      'TR': 'トルコ',
      'NL': 'オランダ',
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
  String fileSavedToDcim(String fileName) {
    return 'ギャラリーにファイルを保存しました: $fileName';
  }

  @override
  String fileSavedToDocuments(String fileName) {
    return 'ドキュメントにファイルを保存しました: $fileName';
  }

  @override
  String get fileAlreadySaved => 'ファイルは既に保存されています';

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
  String get error_address_line_cant_be_empty => '住所行を空にすることはできません';

  @override
  String get error_address_line_too_long => '住所行が長すぎます';

  @override
  String get error_address_invalid_special_characters => '特殊文字は使用できません';

  @override
  String get error_address_emoji_not_allowed => '絵文字は使用できません';

  @override
  String get error_city_cant_be_empty => '市区町村を空にすることはできません';

  @override
  String get error_city_too_long => '市区町村名が長すぎます';

  @override
  String get error_city_invalid_special_characters => '市区町村に無効な特殊文字が含まれています';

  @override
  String get error_address_label_cant_be_empty => '住所ラベルを空にすることはできません';

  @override
  String get error_address_label_too_long => '住所ラベルが長すぎます';

  @override
  String get error_email_cant_be_empty => 'メールを空にすることはできません';

  @override
  String get error_email_not_invalid_format => '無効なメール形式';

  @override
  String get error_email_contains_invalid_characters => 'メールに無効な文字が含まれています';

  @override
  String get error_email_must_contain_at_symbol => 'メールに@を含める必要があります';

  @override
  String get error_email_must_be_in_lowercase => 'メールは小文字でなければなりません';

  @override
  String get error_arabic_not_allowed => 'アラビア文字は使用できません';

  @override
  String get error_email_emoji_not_allowed => 'メールに絵文字は使用できません';

  @override
  String get error_phone_number_cant_be_empty => '電話番号を空にすることはできません';

  @override
  String get error_phone_number_invalid => '無効な電話番号';

  @override
  String get error_phone_number_min_length => '電話番号は少なくとも11桁である必要があります';

  @override
  String get error_name_cant_be_empty => '名前を空にすることはできません';

  @override
  String get error_name_invalid => '無効な名前';

  @override
  String get error_name_too_short_at_least_3_characters =>
      '名前は少なくとも3文字である必要があります';

  @override
  String get error_name_too_long_maximum_20_characters => '名前は20文字を超えることはできません';

  @override
  String get error_name_invalid_special_characters => '名前に無効な特殊文字が含まれています';

  @override
  String get error_name_emoji_not_allowed => '名前に絵文字は使用できません';

  @override
  String get error_password_cant_be_empty => 'パスワードを空にすることはできません';

  @override
  String
  get error_password_must_contain_uppercase_lowercase_number_and_special_character =>
      'パスワードには大文字、小文字、数字、特殊文字を含める必要があります';

  @override
  String get error_password_must_be_at_least_8_characters_long =>
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
  String get settingsGroupAppearance => '外観と言語';

  @override
  String get settingsGroupCompression => '圧縮';

  @override
  String get settingsGroupAi => 'デバイス上のAI';

  @override
  String get settingsGroupPrivacy => '通知とプライバシー';

  @override
  String get settingsGroupPlans => 'プランと購入';

  @override
  String get settingsGroupAbout => '情報';

  @override
  String get settingsGroupLegal => '法的情報';

  @override
  String get settingsGroupHelp => 'ヘルプとフィードバック';

  @override
  String get settingsGroupAccount => 'アカウント';

  @override
  String get settingsAppearanceSubtitle => 'テーマとアプリの言語';

  @override
  String get settingsLanguageSubtitle => 'アプリの言語と方向';

  @override
  String get settingsCompressionSubtitle => 'デフォルトの品質とフォーマット';

  @override
  String get settingsStorageSubtitle => 'キャッシュとストレージの使用状況';

  @override
  String get aiSettings => 'AI設定';

  @override
  String get zumiAssistant => 'Zumiアシスタント';

  @override
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere =>
      'あなたのビデオのためのプライベートアシスタントがまもなく登場します。ここで圧縮、整理、保存されたビデオについて質問できるようになります。';

  @override
  String get settingsAiSubtitle => 'ローカルモデルとスマートツール';

  @override
  String get exploreLocalModelsAndFutureAiToolsTheseOptionsAreNotActiveYet =>
      'ローカルモデルや将来のAIツールを探索してください。これらのオプションはまだ有効ではありません。';

  @override
  String get localModels => 'ローカルモデル';

  @override
  String get aiModelsSubtitle => '対応モデルを閲覧してダウンロード';

  @override
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere =>
      '対応モデルを選択し、このデバイスにダウンロードして、インストール済みモデルをここで管理してください。';

  @override
  String get importAModel => 'モデルをインポート';

  @override
  String get aiImportSubtitle => 'ファイルから互換モデルを使用してください';

  @override
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt =>
      '互換性のあるローカルモデルファイルを選択し、使用前にその要件を確認してください。';

  @override
  String get smartFeatures => 'スマート機能';

  @override
  String get aiFeaturesSubtitle => '圧縮、整理、検索';

  @override
  String
  get chooseWhichLocalAiSuggestionsToUseForVideoCompressionOrganizationNamingAndSearch =>
      '動画の圧縮、整理、命名、および検索に使用するローカルAIの提案を選択してください。';

  @override
  String get modelPerformance => 'モデルのパフォーマンス';

  @override
  String get aiRuntimeSubtitle => '処理およびリソースの設定';

  @override
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels =>
      'サポートされているモデルの処理バックエンドとリソース制限を制御します。';

  @override
  String get conversationSettings => '会話の設定';

  @override
  String get aiChatSettingsSubtitle => 'ストリーミング、思考、応答の長さ';

  @override
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits =>
      'アシスタントの応答方法を設定します。ストリーミング、思考モード、サンプリング、応答制限を含みます。';

  @override
  String get imagesAndAudio => '画像と音声';

  @override
  String get aiMediaSubtitle => 'マルチモーダル入力を制御します。';

  @override
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos =>
      '互換モデルがビデオの選択した画像や音声を分析できるかどうかを選択します。';

  @override
  String get semanticSearch => 'セマンティック検索';

  @override
  String get aiSearchSubtitle => '埋め込みとローカルインデックス';

  @override
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning =>
      '意味によってビデオや瞬間を見つけるためのローカル埋め込みモデルと検索インデックスを管理します。';

  @override
  String get toolsAndStructuredOutput => 'ツールと構造化出力';

  @override
  String get aiToolsSubtitle => 'アクション、スキーマ、確認';

  @override
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation =>
      '対応するアシスタントの操作や構造化された応答を管理します。ファイルに影響を与える操作には確認が必要です。';

  @override
  String get aiGroupModels => 'モデル';

  @override
  String get aiGroupExperience => 'アシスタントの体験';

  @override
  String get aiGroupCapabilities => 'スマート機能';

  @override
  String get aiGroupPerformance => 'パフォーマンス';

  @override
  String get compressionHistorySubtitle => '圧縮されたビデオ履歴';

  @override
  String get settingsNotificationsSubtitle => '完了と更新の通知';

  @override
  String get settingsPrivacySubtitle => 'データはローカルに保存されます';

  @override
  String get plansSubtitle => 'プランを比較してアップグレード';

  @override
  String get plansMethodsSubtitle => '支払い方法と請求';

  @override
  String get plansRestoreSubtitle => '以前の購入を復元';

  @override
  String get aboutAppSubtitle => 'バージョンとビルドの詳細';

  @override
  String get aboutDeveloperSubtitle => 'Zumiの開発者';

  @override
  String get aboutLicensesSubtitle => 'オープンソースパッケージのライセンス';

  @override
  String get legalPrivacySubtitle => 'データの取り扱い方法';

  @override
  String get legalTermsSubtitle => 'Zumi使用のルール';

  @override
  String get legalDataSafetySubtitle => '収集するデータ';

  @override
  String get legalPermissionsSubtitle => 'なぜ権限が必要か';

  @override
  String get helpFaqSubtitle => 'よくある質問への回答';

  @override
  String get helpSupportSubtitle => '開発者に直接連絡';

  @override
  String get helpFeedbackSubtitle => 'フィードバックを送信';

  @override
  String get compressionPickVideo => 'ビデオを選択';

  @override
  String get compressionTargetMb => '目標サイズ（MB）';

  @override
  String get compressionStart => '圧縮を開始';

  @override
  String get compressionPause => '一時停止';

  @override
  String get compressionResume => '再開';

  @override
  String get compressionViewResult => '結果を表示';

  @override
  String get compressionSaveGallery => 'ギャラリーに保存';

  @override
  String get compressionShare => 'ビデオを共有';

  @override
  String get compressionOriginalSize => '元のサイズ';

  @override
  String get compressionOutputSize => '出力サイズ';

  @override
  String get compressionEmptyHistory => 'まだ圧縮されたビデオはありません';

  @override
  String get compressionSavedGallery => 'ギャラリーに保存されました';

  @override
  String get compressionInvalidTarget => '0より大きい目標サイズを入力してください';

  @override
  String get compressionCancelled => '圧縮がキャンセルされました';

  @override
  String get compressionTargetExceeded =>
      'このビデオは選択したサイズに到達できませんでした。大きい目標サイズを試してください。';

  @override
  String get compressionTargetInfeasible =>
      '選択したサイズはこのビデオには小さすぎます。より大きいサイズを選んでください。';

  @override
  String get compressionPreviewBefore => '元のプレビュー';

  @override
  String get compressionPreviewAfter => '圧縮プレビュー';

  @override
  String get compressionPreset => 'ターゲットプリセット';

  @override
  String get compressionCustom => 'カスタムサイズ';

  @override
  String get compressionPreviewUnavailable => 'プレビューは利用できません';

  @override
  String get compressionAdvanced => '高度なコントロール';

  @override
  String get compressionAutomatic => '自動';

  @override
  String get compressionResolutionLimit => '最大解像度';

  @override
  String get compressionSourceResolution => '元の解像度';

  @override
  String get compressionFrameRateLimit => '最大フレームレート';

  @override
  String get compressionAudioQuality => 'オーディオビットレート';

  @override
  String get compressionRemoveAudio => 'オーディオを削除';

  @override
  String get compressionVideoBitrateLimit => 'ビデオビットレート上限（kbps）';

  @override
  String get compressionHdrPolicy => 'HDRの扱い';

  @override
  String get compressionHdrConvert => 'SDRに変換';

  @override
  String get compressionHdrPreserve => '対応している場合はHDRを保持';

  @override
  String get compressionPlanPreview => '開始前に';

  @override
  String get compressionPlanLoading => '圧縮プランを計算中…';

  @override
  String get compressionPlanResolution => '予定解像度';

  @override
  String get compressionPlanVideoBitrate => '予定ビデオビットレート';

  @override
  String get compressionPlanAudioBitrate => '予定オーディオビットレート';

  @override
  String get compressionAudioConversionNote =>
      '再エンコードによりオーディオはAACステレオに変換されます。Dolby AtmosやDTS空間オーディオは保持されません。';

  @override
  String get compressionPlanTooSmall =>
      'このターゲットは、使用可能なビデオには小さすぎます。サイズを大きくするか、他の制限を下げてください。';

  @override
  String get compressionPlanLowQuality => '選択されたターゲットはビデオの品質を下げる可能性があります。';

  @override
  String get compressionPlanAlreadyWithinLimit => 'ソースはすでにサイズ制限内です。';

  @override
  String get compressionInvalidBitrate =>
      'ビットレートを少なくとも150 kbpsで入力するか、自動にする場合は空白のままにしてください。';

  @override
  String get compressionInvalidResolution =>
      '240から16384までの偶数の解像度を入力するか、自動にする場合は空白のままにしてください。';

  @override
  String get compressionSeek => 'ビデオの位置';

  @override
  String get compressionInterrupted =>
      '以前の圧縮が中断されました。その一時ファイルは削除されました。ビデオを選択してもう一度試すことができます。';

  @override
  String get compressionDismiss => '閉じる';

  @override
  String get compressionClearHistory => '履歴をクリア';

  @override
  String get compressionClearHistoryConfirm =>
      'すべての履歴を削除しますか？保存されたビデオはデバイスに残ります。';

  @override
  String get compressionAttempts => '試行回数';

  @override
  String get compressionTargetSize => '目標サイズ';

  @override
  String get compressionOutputResolution => '出力解像度';

  @override
  String get compressionInvalidVideo => 'このビデオは読み取れません。他のファイルを選択してください。';

  @override
  String get compressionInvalidOutput =>
      'エンコードされたビデオは検証に失敗しました。元のビデオは変更されていません。';

  @override
  String get compressionEncoderUnsupported =>
      'このデバイスでは選択された解像度やフレームレートをエンコードできません。その設定を下げて再試行してください。';

  @override
  String get compressionAudioDecoderUnsupported =>
      'このデバイスではこのオーディオ形式を圧縮用にデコードできません。オーディオを削除するか、サポートされているソースを使用してください。';

  @override
  String get compressionVideoDecoderUnsupported =>
      'このデバイスではこのビデオ形式または圧縮プロファイルをデコードできません。別のソースまたはデバイスを選択してください。';

  @override
  String get compressionMp4NotStreamable =>
      'エクスポートされたMP4はストリーミングに準備されていません。別のビデオまたはデバイスを試してください。';

  @override
  String get compressionNoSpace => 'このビデオを圧縮するための十分な空きストレージがありません。';

  @override
  String get compressionHdrUnsupported =>
      'このデバイスでは選択したHDRモードを処理できません。SDRに変換してみてください。';

  @override
  String get compressionGeneralFailure => '圧縮を完了できませんでした。別の設定またはビデオをお試しください。';

  @override
  String get aboutIdentitySection => 'アプリの識別情報';

  @override
  String get aboutAppName => 'アプリ名';

  @override
  String get aboutPackageName => 'パッケージ名';

  @override
  String get aboutVersion => 'バージョン';

  @override
  String get aboutBuildNumber => 'ビルド番号';

  @override
  String get aboutEnvironmentSection => 'デバイスとビルド';

  @override
  String get aboutOperatingSystem => 'オペレーティングシステム';

  @override
  String get aboutOsVersion => 'OSバージョン';

  @override
  String get aboutBuildMode => 'ビルドモード';

  @override
  String get aboutDebug => 'デバッグ';

  @override
  String get aboutRelease => 'リリース';

  @override
  String get aboutToolchainSection => 'で構築';

  @override
  String get aboutInstallationSection => 'インストール';

  @override
  String get aboutInstaller => 'からインストール済み';

  @override
  String get aboutInstalledOn => 'インストール日';

  @override
  String get aboutUpdatedOn => '更新日';

  @override
  String get aboutUnavailable => '利用不可';

  @override
  String get aboutProjectSection => 'プロジェクトとサポート';

  @override
  String get aboutRepository => 'GitHubリポジトリ';

  @override
  String get aboutRepositorySubtitle => 'Zumiのソースコードを見る';

  @override
  String get aboutReadme => 'READMEを読む';

  @override
  String get aboutReadmeSubtitle => 'GitHubでZumiについて学ぶ';

  @override
  String get aboutIssues => '問題を報告する';

  @override
  String get aboutIssuesSubtitle => 'GitHubの問題を表示・作成する';

  @override
  String get aboutLatestRelease => '最新リリース';

  @override
  String get aboutLatestReleaseSubtitle => 'リリースとダウンロードを見る';

  @override
  String get aboutDonate => 'Zumiをサポートする';

  @override
  String get aboutDonateSubtitle => '公式寄付ページを開く';

  @override
  String get aboutLinkError => 'リンクを開けませんでした。もう一度お試しください。';

  @override
  String get aboutDeveloperSection => '開発者';

  @override
  String get aboutDeveloperName => 'Mostafa Sensei';

  @override
  String get aboutDeveloperProfile => 'GitHubプロフィール';

  @override
  String get aboutDeveloperProfileSubtitle => 'プロジェクトと連絡先の詳細を見る';

  @override
  String get maintenanceInProgress => 'メンテナンス中';

  @override
  String get maintenanceMessage => 'Zumiは一時的に利用できません。後でもう一度お試しください。';

  @override
  String get comingSoon => '近日公開';

  @override
  String get languageName => '日本語';

  @override
  String get countryCode => 'JP';

  @override
  String countryName(String countryCode) {
    String _temp0 = intl.Intl.selectLogic(countryCode, {
      'DZ': 'アルジェリア',
      'BH': 'バーレーン',
      'KM': 'コモロ',
      'DJ': 'ジブチ',
      'EG': 'エジプト',
      'IQ': 'イラク',
      'JO': 'ヨルダン',
      'KW': 'クウェート',
      'LB': 'レバノン',
      'LY': 'リビア',
      'MR': 'モーリタニア',
      'MA': 'モロッコ',
      'OM': 'オマーン',
      'PS': 'パレスチナ自治区',
      'QA': 'カタール',
      'SA': 'サウジアラビア',
      'SO': 'ソマリア',
      'SD': 'スーダン',
      'SY': 'シリア',
      'TN': 'チュニジア',
      'AE': 'アラブ首長国連邦',
      'YE': 'イエメン',
      'US': 'アメリカ合衆国',
      'GB': 'イギリス',
      'JP': '日本',
      'FR': 'フランス',
      'DE': 'ドイツ',
      'ES': 'スペイン',
      'TR': 'トルコ',
      'NL': 'オランダ',
      'other': '国',
    });
    return '$_temp0';
  }
}
