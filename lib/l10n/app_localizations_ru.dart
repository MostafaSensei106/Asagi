// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get zumi => 'Zumi';

  @override
  String get downloadFile => 'Скачать файл';

  @override
  String fileOpenedInBrowser(String fileName) {
    return 'Файл открыт в браузере: $fileName';
  }

  @override
  String fileSavedToGallery(String fileName) {
    return 'Файл сохранен в галерею: $fileName';
  }

  @override
  String fileSavedToDocuments(String fileName) {
    return 'Файл сохранен в документы: $fileName';
  }

  @override
  String get fileIsAlreadySaved => 'Файл уже сохранен';

  @override
  String get error => 'Ошибка';

  @override
  String get info => 'Информация';

  @override
  String get success => 'Успех';

  @override
  String get warning => 'Предупреждение';

  @override
  String get paid => 'Оплачено';

  @override
  String get unpaid => 'Неоплачено';

  @override
  String get partial => 'Частично';

  @override
  String get addressLineCannotBeEmpty => 'Строка адреса не может быть пустой';

  @override
  String get addressLineIsTooLong => 'Строка адреса слишком длинная';

  @override
  String get specialCharactersAreNotAllowed =>
      'Специальные символы не допускаются';

  @override
  String get emojisAreNotAllowed => 'Эмодзи не допускаются';

  @override
  String get cityCannotBeEmpty => 'Город не может быть пустым';

  @override
  String get cityNameIsTooLong => 'Название города слишком длинное';

  @override
  String get cityContainsInvalidSpecialCharacters =>
      'Город содержит недопустимые специальные символы';

  @override
  String get addressLabelCannotBeEmpty => 'Метка адреса не может быть пустой';

  @override
  String get addressLabelIsTooLong => 'Метка адреса слишком длинная';

  @override
  String get emailCannotBeEmpty => 'Электронная почта не может быть пустой';

  @override
  String get invalidEmailFormat => 'Недопустимый формат электронной почты';

  @override
  String get emailContainsInvalidCharacters =>
      'Электронная почта содержит недопустимые символы';

  @override
  String get emailMustContain => 'Электронная почта должна содержать @';

  @override
  String get emailMustBeInLowercase =>
      'Электронная почта должна быть в нижнем регистре';

  @override
  String get arabicCharactersAreNotAllowed => 'Арабские символы не допускаются';

  @override
  String get emojisAreNotAllowedInEmail =>
      'Эмодзи в электронной почте не допускаются';

  @override
  String get phoneNumberCannotBeEmpty => 'Номер телефона не может быть пустым';

  @override
  String get invalidPhoneNumber => 'Неверный номер телефона';

  @override
  String get phoneNumberMustBeAtLeast11Digits =>
      'Номер телефона должен содержать не менее 11 цифр';

  @override
  String get nameCannotBeEmpty => 'Имя не может быть пустым';

  @override
  String get invalidName => 'Неверное имя';

  @override
  String get nameMustBeAtLeast3Characters =>
      'Имя должно содержать не менее 3 символов';

  @override
  String get nameCannotExceed20Characters =>
      'Имя не может превышать 20 символов';

  @override
  String get nameContainsInvalidSpecialCharacters =>
      'Имя содержит недопустимые специальные символы';

  @override
  String get emojisAreNotAllowedInName => 'Эмодзи в имени не допускаются';

  @override
  String get passwordCannotBeEmpty => 'Пароль не может быть пустым';

  @override
  String get passwordMustContainUppercaseLowercaseNumberAndSpecialCharacter =>
      'Пароль должен содержать заглавные и строчные буквы, цифру и специальный символ';

  @override
  String get passwordMustBeAtLeast8CharactersLong =>
      'Пароль должен содержать не менее 8 символов';

  @override
  String get noInternetConnection => 'Нет интернет-соединения';

  @override
  String get internetConnectionRestored => 'Интернет-соединение восстановлено';

  @override
  String get retry => 'Повторить';

  @override
  String get cancel => 'Отмена';

  @override
  String get confirm => 'Подтвердить';

  @override
  String get pleaseWait => 'Пожалуйста, подождите...';

  @override
  String get ok => 'ОК';

  @override
  String get compressVideosPrivatelyOnYourDevice =>
      'Сжимайте видео конфиденциально прямо на устройстве.';

  @override
  String get welcomeToZumi => 'Добро пожаловать в Zumi';

  @override
  String get learnHowZumiCompressesYourVideosWithoutEverLeavingYourPhone =>
      'Узнайте, как Zumi сжимает ваши видео, не покидая ваш телефон.';

  @override
  String get signIn => 'Войти';

  @override
  String get signInToSyncYourPlanAndKeepYourPurchasesAvailableOnEveryDevice =>
      'Войдите, чтобы синхронизировать ваш план и сохранить ваши покупки доступными на всех устройствах.';

  @override
  String get chooseAVideo => 'Выберите видео';

  @override
  String get pickAVideoFromYourGalleryToStartCompressing =>
      'Выберите видео из вашей галереи, чтобы начать сжатие.';

  @override
  String get compressionSetup => 'Настройка сжатия';

  @override
  String get chooseResolutionBitrateAndOutputFormatBeforeYouStart =>
      'Выберите разрешение, битрейт и формат вывода перед началом.';

  @override
  String get compressing => 'Сжатие';

  @override
  String get followTheLiveProgressOfYourCompressionJob =>
      'Следите за текущим ходом вашей операции сжатия.';

  @override
  String get compressionResult => 'Результат сжатия';

  @override
  String get compareTheBeforeAndAfterSizeThenSaveOrShareTheResult =>
      'Сравните размеры до и после, затем сохраните или поделитесь результатом.';

  @override
  String get compressionHistory => 'История сжатия';

  @override
  String get reviewTheVideosYouHaveCompressedOnThisDevice =>
      'Просмотрите видео, которые вы сжимали на этом устройстве.';

  @override
  String get settings => 'Настройки';

  @override
  String get appearance => 'Внешний вид';

  @override
  String get themeColorSchemeAndMotionPreferences =>
      'Тема, цветовая схема и предпочтения движения.';

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
  String get language => 'Язык';

  @override
  String get appLanguageAndTextDirection =>
      'Язык приложения и направление текста.';

  @override
  String get compressionDefaults => 'Стандартные настройки сжатия';

  @override
  String get defaultResolutionBitrateAndOutputFormat =>
      'Стандартное разрешение, битрейт и формат вывода.';

  @override
  String get storageCleanup => 'Хранение и очистка';

  @override
  String get storageUsageCacheSizeAndTemporaryFileCleanup =>
      'Использование памяти, размер кэша и очистка временных файлов.';

  @override
  String get notifications => 'Уведомления';

  @override
  String get jobCompletionAndProductUpdateNotifications =>
      'Уведомления о завершении работы и обновлении продукта.';

  @override
  String get privacy => 'Конфиденциальность';

  @override
  String get onDeviceProcessingLocalLogsAndOptionalCrashReports =>
      'Обработка на устройстве, локальные журналы и необязательные отчёты о сбоях.';

  @override
  String get aboutZumi => 'О Zumi';

  @override
  String get versionBuildNumberAndApplicationDetails =>
      'Версия, номер сборки и информация о приложении.';

  @override
  String get aboutTheDeveloper => 'О разработчике';

  @override
  String get theDeveloperAndToolsBehindZumi =>
      'Разработчик и инструменты, использованные для создания Zumi.';

  @override
  String get openSourceLicenses => 'Лицензии с открытым исходным кодом';

  @override
  String get openSourcePackagesBundledWithZumi =>
      'Пакеты с открытым исходным кодом, включённые в Zumi.';

  @override
  String get privacyPolicy => 'Политика конфиденциальности';

  @override
  String get howZumiHandlesYourVideosAndData =>
      'Как Zumi обрабатывает ваши видео и данные.';

  @override
  String get termsOfService => 'Условия использования';

  @override
  String get theTermsThatApplyToZumiAndItsPurchases =>
      'Условия, которые применяются к Zumi и его покупкам.';

  @override
  String get dataSafety => 'Безопасность данных';

  @override
  String get summaryOfTheDataZumiCollectsAndWhy =>
      'Сводка собираемых данных Zumi и причины их сбора.';

  @override
  String get permissions => 'Разрешения';

  @override
  String get runtimePermissionsZumiRequestsAndWhyEachIsNeeded =>
      'Разрешения во время работы, которые запрашивает Zumi, и зачем нужны каждое из них.';

  @override
  String get faq => 'Часто задаваемые вопросы';

  @override
  String get answersToCommonQuestionsAboutCompressionAndBilling =>
      'Ответы на распространенные вопросы о сжатии и оплате.';

  @override
  String get support => 'Поддержка';

  @override
  String get getHelpWithYourAccountOrAPurchase =>
      'Получите помощь с вашим аккаунтом или покупкой.';

  @override
  String get sendFeedback => 'Отправить отзыв';

  @override
  String get reportAProblemOrSuggestAnImprovement =>
      'Сообщить о проблеме или предложить улучшение.';

  @override
  String get plans => 'Тарифные планы';

  @override
  String get comparePlansAndSeeWhatEachOneUnlocks =>
      'Сравните тарифные планы и узнайте, что каждый из них открывает.';

  @override
  String get planDetails => 'Детали плана';

  @override
  String get benefitsLimitsAndPricingForThisPlan =>
      'Преимущества, ограничения и стоимость этого плана.';

  @override
  String get paymentMethods => 'Способы оплаты';

  @override
  String get supportedWaysToPayIncludingStoreBilling =>
      'Поддерживаемые способы оплаты, включая оплату через магазин.';

  @override
  String get restorePurchases => 'Восстановить покупки';

  @override
  String get reApplyAPurchaseMadeOnAnotherDevice =>
      'Повторно применить покупку, сделанную на другом устройстве.';

  @override
  String get profile => 'Профиль';

  @override
  String get yourIdentityPlanStatusAndAccountPreferences =>
      'Ваша личность, статус плана и настройки аккаунта.';

  @override
  String get deleteAccount => 'Удалить аккаунт';

  @override
  String get permanentlyRemoveYourAccountAndItsServerSideData =>
      'Навсегда удалить ваш аккаунт и данные на сервере.';

  @override
  String get rateZumi => 'Оценить Zumi';

  @override
  String get tellOthersHowZumiWorkedForYouOnTheStore =>
      'Расскажите другим, как Zumi работал для вас в магазине.';

  @override
  String get shareZumi => 'Поделиться Zumi';

  @override
  String get recommendZumiToAFriend => 'Порекомендуйте Zumi другу.';

  @override
  String get appearanceLanguage => 'Внешний вид и язык';

  @override
  String get compression => 'Сжатие';

  @override
  String get onDeviceAI => 'ИИ на устройстве';

  @override
  String get notificationsPrivacy => 'Уведомления и конфиденциальность';

  @override
  String get plansPurchases => 'Планы и покупки';

  @override
  String get about => 'О программе';

  @override
  String get legal => 'Юридическая информация';

  @override
  String get helpFeedback => 'Справка и отзывы';

  @override
  String get account => 'Аккаунт';

  @override
  String get themeAndAppLanguage => 'Тема и язык приложения';

  @override
  String get appLanguageAndDirection => 'Язык приложения и направление текста';

  @override
  String get defaultQualityAndFormat => 'Качество и формат по умолчанию';

  @override
  String get cacheAndStorageUsage => 'Использование кеша и хранилища';

  @override
  String get aiSettings => 'Настройки ИИ';

  @override
  String get zumiAssistant => 'Помощник Zumi';

  @override
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere =>
      'Скоро появится личный помощник для ваших видео. Здесь вы сможете задавать вопросы о сжатии, организации и сохранённых видео.';

  @override
  String get localModelsAndSmartTools => 'Локальные модели и умные инструменты';

  @override
  String get exploreLocalModelsAndFutureAIToolsTheseOptionsAreNotActiveYet =>
      'Изучайте локальные модели и будущие инструменты ИИ. Эти опции пока недоступны.';

  @override
  String get localModels => 'Локальные модели';

  @override
  String get browseAndDownloadSupportedModels =>
      'Просматривайте и скачивайте поддерживаемые модели';

  @override
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere =>
      'Выберите поддерживаемую модель, скачайте её на это устройство и управляйте установленными моделями здесь.';

  @override
  String get importAModel => 'Импорт модели';

  @override
  String get useACompatibleModelFromYourFiles =>
      'Используйте совместимую модель из ваших файлов';

  @override
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt =>
      'Выберите совместимый локальный файл модели и ознакомьтесь с его требованиями перед использованием.';

  @override
  String get smartFeatures => 'Умные функции';

  @override
  String get compressionOrganizationAndSearch => 'Сжатие, организация и поиск';

  @override
  String
  get chooseWhichLocalAISuggestionsToUseForVideoCompressionOrganizationNamingAndSearch =>
      'Выберите, какие локальные AI-предложения использовать для сжатия видео, организации, именования и поиска.';

  @override
  String get modelPerformance => 'Производительность модели';

  @override
  String get processingAndResourcePreferences =>
      'Настройки обработки и ресурсов';

  @override
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels =>
      'Контролируйте используемую обработку и лимиты ресурсов для поддерживаемых моделей.';

  @override
  String get conversationSettings => 'Настройки разговора';

  @override
  String get streamingThinkingAndResponseLength =>
      'Потоковая передача, размышления и длина ответа';

  @override
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits =>
      'Настройте, как ассистент отвечает, включая потоковую передачу, режим размышления, выборку и ограничения ответов.';

  @override
  String get imagesAndAudio => 'Изображения и аудио';

  @override
  String get controlMultimodalInputs =>
      'Управление мультимодальными входными данными';

  @override
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos =>
      'Выберите, могут ли совместимые модели анализировать выбранные изображения и аудио из ваших видео.';

  @override
  String get semanticSearch => 'Семантический поиск';

  @override
  String get embeddingsAndLocalIndexing => 'Встраивания и локальная индексация';

  @override
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning =>
      'Управляйте локальной моделью встраивания и индексом поиска для нахождения видео и моментов по смыслу.';

  @override
  String get toolsAndStructuredOutput =>
      'Инструменты и структурированный вывод';

  @override
  String get actionsSchemasAndConfirmations =>
      'Действия, схемы и подтверждения';

  @override
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation =>
      'Управляйте поддерживаемыми действиями помощника и структурированными ответами. Действия, которые влияют на файлы, потребуют вашего подтверждения.';

  @override
  String get models => 'Модели';

  @override
  String get assistantExperience => 'Опыт работы с помощником';

  @override
  String get smartCapabilities => 'Умные возможности';

  @override
  String get performance => 'Производительность';

  @override
  String get yourCompressedVideoHistory => 'Ваша история сжатых видео';

  @override
  String get completionAndUpdateAlerts =>
      'Оповещения о завершении и обновлениях';

  @override
  String get yourDataStaysLocal => 'Ваши данные остаются локальными';

  @override
  String get comparePlansAndUpgrade => 'Сравнить тарифные планы и обновить';

  @override
  String get paymentMethodsAndBilling => 'Способы оплаты и выставления счетов';

  @override
  String get restoreYourPreviousPurchase => 'Восстановить предыдущую покупку';

  @override
  String get versionAndBuildDetails => 'Сведения о версии и сборке';

  @override
  String get theDeveloperBehindZumi => 'Разработчик Zumi';

  @override
  String get openSourcePackageLicenses =>
      'Лицензии на пакеты с открытым исходным кодом';

  @override
  String get howDataIsHandled => 'Как обрабатываются данные';

  @override
  String get rulesForUsingZumi => 'Правила использования Zumi';

  @override
  String get whatDataWeCollect => 'Какие данные мы собираем';

  @override
  String get whyWeNeedPermissions => 'Зачем нам нужны разрешения';

  @override
  String get answersToCommonQuestions => 'Ответы на часто задаваемые вопросы';

  @override
  String get reachTheDeveloperDirectly => 'Связаться с разработчиком напрямую';

  @override
  String get sendUsYourFeedback => 'Отправьте нам свой отзыв';

  @override
  String get pickVideo => 'Выбрать видео';

  @override
  String get targetSizeMB => 'Целевой размер (МБ)';

  @override
  String get startCompression => 'Начать сжатие';

  @override
  String get pause => 'Пауза';

  @override
  String get resume => 'Продолжить';

  @override
  String get viewResult => 'Просмотр результата';

  @override
  String get saveToGallery => 'Сохранить в галерею';

  @override
  String get shareVideo => 'Поделиться видео';

  @override
  String get originalSize => 'Исходный размер';

  @override
  String get outputSize => 'Размер после сжатия';

  @override
  String get noCompressedVideosYet => 'Сжатых видео пока нет';

  @override
  String get savedToGallery => 'Сохранено в галерею';

  @override
  String get enterATargetSizeGreaterThanZero =>
      'Введите целевой размер больше нуля';

  @override
  String get compressionCancelled => 'Сжатие отменено';

  @override
  String get thisVideoCouldNotReachTheSelectedSizeTryALargerTargetSize =>
      'Это видео не достигло выбранного размера. Попробуйте выбрать больший целевой размер.';

  @override
  String get theSelectedSizeIsTooSmallForThisVideoChooseALargerSize =>
      'Выбранный размер слишком мал для этого видео. Выберите больший размер.';

  @override
  String get originalPreview => 'Предварительный просмотр оригинала';

  @override
  String get compressedPreview => 'Сжатый предварительный просмотр';

  @override
  String get targetPreset => 'Целевая предустановка';

  @override
  String get customSize => 'Пользовательский размер';

  @override
  String get previewUnavailable => 'Предварительный просмотр недоступен';

  @override
  String get advancedControls => 'Расширенные настройки';

  @override
  String get automatic => 'Автоматически';

  @override
  String get maximumResolution => 'Максимальное разрешение';

  @override
  String get originalResolution => 'Оригинальное разрешение';

  @override
  String get maximumFrameRate => 'Максимальная частота кадров';

  @override
  String get audioBitrate => 'Битрейт аудио';

  @override
  String get removeAudio => 'Удалить аудио';

  @override
  String get videoBitrateCeilingKbps => 'Потолок битрейта видео (кбит/с)';

  @override
  String get hdrHandling => 'Обработка HDR';

  @override
  String get convertToSDR => 'Преобразовать в SDR';

  @override
  String get keepHDRWhenSupported => 'Сохранять HDR при поддержке';

  @override
  String get beforeYouStart => 'Перед началом';

  @override
  String get calculatingCompressionPlan => 'Вычисление плана сжатия…';

  @override
  String get plannedResolution => 'Планируемое разрешение';

  @override
  String get plannedVideoBitrate => 'Планируемый битрейт видео';

  @override
  String get plannedAudioBitrate => 'Планируемый битрейт аудио';

  @override
  String
  get reEncodingConvertsAudioToAACStereoDolbyAtmosAndDTSSpatialAudioWillNotBePreserved =>
      'Пере-кодирование преобразует аудио в AAC стерео. Dolby Atmos и DTS пространственное аудио не будут сохранены.';

  @override
  String
  get thisTargetIsTooSmallForAUsableVideoIncreaseTheSizeOrLowerOtherLimits =>
      'Эта цель слишком мала для пригодного видео. Увеличьте размер или снизьте другие ограничения.';

  @override
  String get theSelectedTargetMayReduceVideoQuality =>
      'Выбранная цель может снизить качество видео.';

  @override
  String get theSourceIsAlreadyWithinTheSizeLimit =>
      'Источник уже находится в пределах допустимого размера.';

  @override
  String get enterABitrateOfAtLeast150KbpsOrLeaveBlankForAutomatic =>
      'Введите битрейт не менее 150 кбит/с или оставьте поле пустым для автоматического выбора.';

  @override
  String get enterAnEvenResolutionFrom240To16384OrLeaveBlankForAutomatic =>
      'Введите четное разрешение от 240 до 16384, или оставьте поле пустым для автоматического выбора.';

  @override
  String get videoPosition => 'Положение видео';

  @override
  String
  get aPreviousCompressionWasInterruptedItsTemporaryFilesWereCleanedUpYouCanSelectTheVideoAndTryAgain =>
      'Предыдущая компрессия была прервана. Временные файлы были удалены; вы можете выбрать видео и попробовать снова.';

  @override
  String get dismiss => 'Закрыть';

  @override
  String get clearHistory => 'Очистить историю';

  @override
  String get removeAllHistoryEntriesSavedVideosWillRemainOnYourDevice =>
      'Удалить все записи истории? Сохранённые видео останутся на вашем устройстве.';

  @override
  String get attempts => 'Попытки';

  @override
  String get targetSize => 'Целевой размер';

  @override
  String get outputResolution => 'Разрешение вывода';

  @override
  String get thisVideoCouldNotBeReadChooseAnotherFile =>
      'Это видео не удалось прочитать. Выберите другой файл.';

  @override
  String get theEncodedVideoFailedVerificationYourOriginalVideoWasNotChanged =>
      'Закодированное видео не прошло проверку. Ваш оригинальный видеофайл не был изменён.';

  @override
  String
  get thisDeviceCannotEncodeTheSelectedResolutionOrFrameRateLowerThatSettingAndTryAgain =>
      'Это устройство не может кодировать выбранное разрешение или частоту кадров. Уменьшите эту настройку и попробуйте снова.';

  @override
  String
  get thisDeviceCannotDecodeThisAudioFormatForCompressionRemoveAudioOrUseASupportedSource =>
      'Это устройство не может декодировать этот аудиоформат для сжатия. Удалите аудио или используйте поддерживаемый источник.';

  @override
  String
  get thisDeviceCannotDecodeThisVideoFormatOrProfileForCompressionChooseAnotherSourceOrDevice =>
      'Это устройство не может декодировать этот видеоформат или профиль сжатия. Выберите другой источник или устройство.';

  @override
  String get theExportedMP4IsNotReadyForStreamingTryAnotherVideoOrDevice =>
      'Экспортированный MP4 не готов для стриминга. Попробуйте другое видео или устройство.';

  @override
  String get thereIsNotEnoughFreeStorageToCompressThisVideo =>
      'Недостаточно свободного места для сжатия этого видео.';

  @override
  String get thisDeviceCannotProcessTheSelectedHDRModeTryConvertingToSDR =>
      'Это устройство не может обработать выбранный режим HDR. Попробуйте конвертировать в SDR.';

  @override
  String get compressionCouldNotBeCompletedTryAnotherSettingOrVideo =>
      'Не удалось завершить сжатие. Попробуйте другой параметр или видео.';

  @override
  String get appIdentity => 'Идентификатор приложения';

  @override
  String get appName => 'Название приложения';

  @override
  String get packageName => 'Имя пакета';

  @override
  String get version => 'Версия';

  @override
  String get buildNumber => 'Номер сборки';

  @override
  String get deviceAndBuild => 'Устройство и сборка';

  @override
  String get operatingSystem => 'Операционная система';

  @override
  String get osVersion => 'Версия ОС';

  @override
  String get buildMode => 'Режим сборки';

  @override
  String get debug => 'Отладка';

  @override
  String get release => 'Релиз';

  @override
  String get builtWith => 'Создано с помощью';

  @override
  String get installation => 'Установка';

  @override
  String get installedFrom => 'Установлено из';

  @override
  String get installedOn => 'Установлено на';

  @override
  String get updatedOn => 'Обновлено';

  @override
  String get unavailable => 'Недоступно';

  @override
  String get projectAndSupport => 'Проект и поддержка';

  @override
  String get githubRepository => 'Репозиторий на GitHub';

  @override
  String get viewZumiSourceCode => 'Просмотреть исходный код Zumi';

  @override
  String get readTheREADME => 'Прочитать README';

  @override
  String get learnAboutZumiOnGitHub => 'Узнать о Zumi на GitHub';

  @override
  String get reportAnIssue => 'Сообщить о проблеме';

  @override
  String get viewAndCreateGitHubIssues =>
      'Просмотреть и создать задачи на GitHub';

  @override
  String get latestRelease => 'Последний выпуск';

  @override
  String get viewReleasesAndDownloads => 'Просмотреть выпуски и загрузки';

  @override
  String get supportZumi => 'Поддержать Zumi';

  @override
  String get openTheOfficialDonationPage =>
      'Открыть официальную страницу пожертвований';

  @override
  String get couldNotOpenTheLinkPleaseTryAgain =>
      'Не удалось открыть ссылку. Пожалуйста, попробуйте еще раз.';

  @override
  String get developer => 'Разработчик';

  @override
  String get mostafaSensei => 'Mostafa Sensei';

  @override
  String get githubProfile => 'Профиль на GitHub';

  @override
  String get seeProjectsAndContactDetails =>
      'Посмотреть проекты и контактные данные';

  @override
  String get maintenanceInProgress => 'Идёт техническое обслуживание';

  @override
  String get zumiIsTemporarilyUnavailablePleaseTryAgainLater =>
      'Zumi временно недоступен. Пожалуйста, попробуйте позже.';

  @override
  String get comingSoon => 'Скоро';

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
  String get languageName => 'Русский';

  @override
  String get countryCode => 'RU';

  @override
  String countryName(String countryCode) {
    String _temp0 = intl.Intl.selectLogic(countryCode, {
      'AE': 'ОАЭ',
      'AT': 'Австрия',
      'AU': 'Австралия',
      'BE': 'Бельгия',
      'BH': 'Бахрейн',
      'BR': 'Бразилия',
      'CA': 'Канада',
      'CH': 'Швейцария',
      'CN': 'Китай',
      'DE': 'Германия',
      'DJ': 'Джибути',
      'DZ': 'Алжир',
      'EG': 'Египет',
      'ES': 'Испания',
      'FR': 'Франция',
      'GB': 'Великобритания',
      'HK': 'Гонконг (САР)',
      'ID': 'Индонезия',
      'IQ': 'Ирак',
      'IT': 'Италия',
      'JO': 'Иордания',
      'JP': 'Япония',
      'KM': 'Коморы',
      'KR': 'Республика Корея',
      'KW': 'Кувейт',
      'LB': 'Ливан',
      'LY': 'Ливия',
      'MA': 'Марокко',
      'MR': 'Мавритания',
      'MX': 'Мексика',
      'NL': 'Нидерланды',
      'OM': 'Оман',
      'PL': 'Польша',
      'PS': 'Палестинские территории',
      'PT': 'Португалия',
      'QA': 'Катар',
      'RU': 'Россия',
      'SA': 'Саудовская Аравия',
      'SD': 'Судан',
      'SE': 'Швеция',
      'SG': 'Сингапур',
      'SO': 'Сомали',
      'SY': 'Сирия',
      'TH': 'Таиланд',
      'TN': 'Тунис',
      'TR': 'Турция',
      'TW': 'Тайвань',
      'US': 'Соединенные Штаты',
      'VN': 'Вьетнам',
      'YE': 'Йемен',
      'other': 'Страна',
    });
    return '$_temp0';
  }
}

/// The translations for Russian, as used in Russian Federation (`ru_RU`).
class AppLocalizationsRuRu extends AppLocalizationsRu {
  AppLocalizationsRuRu() : super('ru_RU');

  @override
  String get zumi => 'Zumi';

  @override
  String get downloadFile => 'Скачать файл';

  @override
  String fileOpenedInBrowser(String fileName) {
    return 'Файл открыт в браузере: $fileName';
  }

  @override
  String fileSavedToGallery(String fileName) {
    return 'Файл сохранен в галерею: $fileName';
  }

  @override
  String fileSavedToDocuments(String fileName) {
    return 'Файл сохранен в документы: $fileName';
  }

  @override
  String get fileIsAlreadySaved => 'Файл уже сохранен';

  @override
  String get error => 'Ошибка';

  @override
  String get info => 'Информация';

  @override
  String get success => 'Успех';

  @override
  String get warning => 'Предупреждение';

  @override
  String get paid => 'Оплачено';

  @override
  String get unpaid => 'Неоплачено';

  @override
  String get partial => 'Частично';

  @override
  String get addressLineCannotBeEmpty => 'Строка адреса не может быть пустой';

  @override
  String get addressLineIsTooLong => 'Строка адреса слишком длинная';

  @override
  String get specialCharactersAreNotAllowed =>
      'Специальные символы не допускаются';

  @override
  String get emojisAreNotAllowed => 'Эмодзи не допускаются';

  @override
  String get cityCannotBeEmpty => 'Город не может быть пустым';

  @override
  String get cityNameIsTooLong => 'Название города слишком длинное';

  @override
  String get cityContainsInvalidSpecialCharacters =>
      'Город содержит недопустимые специальные символы';

  @override
  String get addressLabelCannotBeEmpty => 'Метка адреса не может быть пустой';

  @override
  String get addressLabelIsTooLong => 'Метка адреса слишком длинная';

  @override
  String get emailCannotBeEmpty => 'Электронная почта не может быть пустой';

  @override
  String get invalidEmailFormat => 'Недопустимый формат электронной почты';

  @override
  String get emailContainsInvalidCharacters =>
      'Электронная почта содержит недопустимые символы';

  @override
  String get emailMustContain => 'Электронная почта должна содержать @';

  @override
  String get emailMustBeInLowercase =>
      'Электронная почта должна быть в нижнем регистре';

  @override
  String get arabicCharactersAreNotAllowed => 'Арабские символы не допускаются';

  @override
  String get emojisAreNotAllowedInEmail =>
      'Эмодзи в электронной почте не допускаются';

  @override
  String get phoneNumberCannotBeEmpty => 'Номер телефона не может быть пустым';

  @override
  String get invalidPhoneNumber => 'Неверный номер телефона';

  @override
  String get phoneNumberMustBeAtLeast11Digits =>
      'Номер телефона должен содержать не менее 11 цифр';

  @override
  String get nameCannotBeEmpty => 'Имя не может быть пустым';

  @override
  String get invalidName => 'Неверное имя';

  @override
  String get nameMustBeAtLeast3Characters =>
      'Имя должно содержать не менее 3 символов';

  @override
  String get nameCannotExceed20Characters =>
      'Имя не может превышать 20 символов';

  @override
  String get nameContainsInvalidSpecialCharacters =>
      'Имя содержит недопустимые специальные символы';

  @override
  String get emojisAreNotAllowedInName => 'Эмодзи в имени не допускаются';

  @override
  String get passwordCannotBeEmpty => 'Пароль не может быть пустым';

  @override
  String get passwordMustContainUppercaseLowercaseNumberAndSpecialCharacter =>
      'Пароль должен содержать заглавные и строчные буквы, цифру и специальный символ';

  @override
  String get passwordMustBeAtLeast8CharactersLong =>
      'Пароль должен содержать не менее 8 символов';

  @override
  String get noInternetConnection => 'Нет интернет-соединения';

  @override
  String get internetConnectionRestored => 'Интернет-соединение восстановлено';

  @override
  String get retry => 'Повторить';

  @override
  String get cancel => 'Отмена';

  @override
  String get confirm => 'Подтвердить';

  @override
  String get pleaseWait => 'Пожалуйста, подождите...';

  @override
  String get ok => 'ОК';

  @override
  String get compressVideosPrivatelyOnYourDevice =>
      'Сжимайте видео конфиденциально прямо на устройстве.';

  @override
  String get welcomeToZumi => 'Добро пожаловать в Zumi';

  @override
  String get learnHowZumiCompressesYourVideosWithoutEverLeavingYourPhone =>
      'Узнайте, как Zumi сжимает ваши видео, не покидая ваш телефон.';

  @override
  String get signIn => 'Войти';

  @override
  String get signInToSyncYourPlanAndKeepYourPurchasesAvailableOnEveryDevice =>
      'Войдите, чтобы синхронизировать ваш план и сохранить ваши покупки доступными на всех устройствах.';

  @override
  String get chooseAVideo => 'Выберите видео';

  @override
  String get pickAVideoFromYourGalleryToStartCompressing =>
      'Выберите видео из вашей галереи, чтобы начать сжатие.';

  @override
  String get compressionSetup => 'Настройка сжатия';

  @override
  String get chooseResolutionBitrateAndOutputFormatBeforeYouStart =>
      'Выберите разрешение, битрейт и формат вывода перед началом.';

  @override
  String get compressing => 'Сжатие';

  @override
  String get followTheLiveProgressOfYourCompressionJob =>
      'Следите за текущим ходом вашей операции сжатия.';

  @override
  String get compressionResult => 'Результат сжатия';

  @override
  String get compareTheBeforeAndAfterSizeThenSaveOrShareTheResult =>
      'Сравните размеры до и после, затем сохраните или поделитесь результатом.';

  @override
  String get compressionHistory => 'История сжатия';

  @override
  String get reviewTheVideosYouHaveCompressedOnThisDevice =>
      'Просмотрите видео, которые вы сжимали на этом устройстве.';

  @override
  String get settings => 'Настройки';

  @override
  String get appearance => 'Внешний вид';

  @override
  String get themeColorSchemeAndMotionPreferences =>
      'Тема, цветовая схема и предпочтения движения.';

  @override
  String get language => 'Язык';

  @override
  String get appLanguageAndTextDirection =>
      'Язык приложения и направление текста.';

  @override
  String get compressionDefaults => 'Стандартные настройки сжатия';

  @override
  String get defaultResolutionBitrateAndOutputFormat =>
      'Стандартное разрешение, битрейт и формат вывода.';

  @override
  String get storageCleanup => 'Хранение и очистка';

  @override
  String get storageUsageCacheSizeAndTemporaryFileCleanup =>
      'Использование памяти, размер кэша и очистка временных файлов.';

  @override
  String get notifications => 'Уведомления';

  @override
  String get jobCompletionAndProductUpdateNotifications =>
      'Уведомления о завершении работы и обновлении продукта.';

  @override
  String get privacy => 'Конфиденциальность';

  @override
  String get onDeviceProcessingLocalLogsAndOptionalCrashReports =>
      'Обработка на устройстве, локальные журналы и необязательные отчёты о сбоях.';

  @override
  String get aboutZumi => 'О Zumi';

  @override
  String get versionBuildNumberAndApplicationDetails =>
      'Версия, номер сборки и информация о приложении.';

  @override
  String get aboutTheDeveloper => 'О разработчике';

  @override
  String get theDeveloperAndToolsBehindZumi =>
      'Разработчик и инструменты, использованные для создания Zumi.';

  @override
  String get openSourceLicenses => 'Лицензии с открытым исходным кодом';

  @override
  String get openSourcePackagesBundledWithZumi =>
      'Пакеты с открытым исходным кодом, включённые в Zumi.';

  @override
  String get privacyPolicy => 'Политика конфиденциальности';

  @override
  String get howZumiHandlesYourVideosAndData =>
      'Как Zumi обрабатывает ваши видео и данные.';

  @override
  String get termsOfService => 'Условия использования';

  @override
  String get theTermsThatApplyToZumiAndItsPurchases =>
      'Условия, которые применяются к Zumi и его покупкам.';

  @override
  String get dataSafety => 'Безопасность данных';

  @override
  String get summaryOfTheDataZumiCollectsAndWhy =>
      'Сводка собираемых данных Zumi и причины их сбора.';

  @override
  String get permissions => 'Разрешения';

  @override
  String get runtimePermissionsZumiRequestsAndWhyEachIsNeeded =>
      'Разрешения во время работы, которые запрашивает Zumi, и зачем нужны каждое из них.';

  @override
  String get faq => 'Часто задаваемые вопросы';

  @override
  String get answersToCommonQuestionsAboutCompressionAndBilling =>
      'Ответы на распространенные вопросы о сжатии и оплате.';

  @override
  String get support => 'Поддержка';

  @override
  String get getHelpWithYourAccountOrAPurchase =>
      'Получите помощь с вашим аккаунтом или покупкой.';

  @override
  String get sendFeedback => 'Отправить отзыв';

  @override
  String get reportAProblemOrSuggestAnImprovement =>
      'Сообщить о проблеме или предложить улучшение.';

  @override
  String get plans => 'Тарифные планы';

  @override
  String get comparePlansAndSeeWhatEachOneUnlocks =>
      'Сравните тарифные планы и узнайте, что каждый из них открывает.';

  @override
  String get planDetails => 'Детали плана';

  @override
  String get benefitsLimitsAndPricingForThisPlan =>
      'Преимущества, ограничения и стоимость этого плана.';

  @override
  String get paymentMethods => 'Способы оплаты';

  @override
  String get supportedWaysToPayIncludingStoreBilling =>
      'Поддерживаемые способы оплаты, включая оплату через магазин.';

  @override
  String get restorePurchases => 'Восстановить покупки';

  @override
  String get reApplyAPurchaseMadeOnAnotherDevice =>
      'Повторно применить покупку, сделанную на другом устройстве.';

  @override
  String get profile => 'Профиль';

  @override
  String get yourIdentityPlanStatusAndAccountPreferences =>
      'Ваша личность, статус плана и настройки аккаунта.';

  @override
  String get deleteAccount => 'Удалить аккаунт';

  @override
  String get permanentlyRemoveYourAccountAndItsServerSideData =>
      'Навсегда удалить ваш аккаунт и данные на сервере.';

  @override
  String get rateZumi => 'Оценить Zumi';

  @override
  String get tellOthersHowZumiWorkedForYouOnTheStore =>
      'Расскажите другим, как Zumi работал для вас в магазине.';

  @override
  String get shareZumi => 'Поделиться Zumi';

  @override
  String get recommendZumiToAFriend => 'Порекомендуйте Zumi другу.';

  @override
  String get appearanceLanguage => 'Внешний вид и язык';

  @override
  String get compression => 'Сжатие';

  @override
  String get onDeviceAI => 'ИИ на устройстве';

  @override
  String get notificationsPrivacy => 'Уведомления и конфиденциальность';

  @override
  String get plansPurchases => 'Планы и покупки';

  @override
  String get about => 'О программе';

  @override
  String get legal => 'Юридическая информация';

  @override
  String get helpFeedback => 'Справка и отзывы';

  @override
  String get account => 'Аккаунт';

  @override
  String get themeAndAppLanguage => 'Тема и язык приложения';

  @override
  String get appLanguageAndDirection => 'Язык приложения и направление текста';

  @override
  String get defaultQualityAndFormat => 'Качество и формат по умолчанию';

  @override
  String get cacheAndStorageUsage => 'Использование кеша и хранилища';

  @override
  String get aiSettings => 'Настройки ИИ';

  @override
  String get zumiAssistant => 'Помощник Zumi';

  @override
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere =>
      'Скоро появится личный помощник для ваших видео. Здесь вы сможете задавать вопросы о сжатии, организации и сохранённых видео.';

  @override
  String get localModelsAndSmartTools => 'Локальные модели и умные инструменты';

  @override
  String get exploreLocalModelsAndFutureAIToolsTheseOptionsAreNotActiveYet =>
      'Изучайте локальные модели и будущие инструменты ИИ. Эти опции пока недоступны.';

  @override
  String get localModels => 'Локальные модели';

  @override
  String get browseAndDownloadSupportedModels =>
      'Просматривайте и скачивайте поддерживаемые модели';

  @override
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere =>
      'Выберите поддерживаемую модель, скачайте её на это устройство и управляйте установленными моделями здесь.';

  @override
  String get importAModel => 'Импорт модели';

  @override
  String get useACompatibleModelFromYourFiles =>
      'Используйте совместимую модель из ваших файлов';

  @override
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt =>
      'Выберите совместимый локальный файл модели и ознакомьтесь с его требованиями перед использованием.';

  @override
  String get smartFeatures => 'Умные функции';

  @override
  String get compressionOrganizationAndSearch => 'Сжатие, организация и поиск';

  @override
  String
  get chooseWhichLocalAISuggestionsToUseForVideoCompressionOrganizationNamingAndSearch =>
      'Выберите, какие локальные AI-предложения использовать для сжатия видео, организации, именования и поиска.';

  @override
  String get modelPerformance => 'Производительность модели';

  @override
  String get processingAndResourcePreferences =>
      'Настройки обработки и ресурсов';

  @override
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels =>
      'Контролируйте используемую обработку и лимиты ресурсов для поддерживаемых моделей.';

  @override
  String get conversationSettings => 'Настройки разговора';

  @override
  String get streamingThinkingAndResponseLength =>
      'Потоковая передача, размышления и длина ответа';

  @override
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits =>
      'Настройте, как ассистент отвечает, включая потоковую передачу, режим размышления, выборку и ограничения ответов.';

  @override
  String get imagesAndAudio => 'Изображения и аудио';

  @override
  String get controlMultimodalInputs =>
      'Управление мультимодальными входными данными';

  @override
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos =>
      'Выберите, могут ли совместимые модели анализировать выбранные изображения и аудио из ваших видео.';

  @override
  String get semanticSearch => 'Семантический поиск';

  @override
  String get embeddingsAndLocalIndexing => 'Встраивания и локальная индексация';

  @override
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning =>
      'Управляйте локальной моделью встраивания и индексом поиска для нахождения видео и моментов по смыслу.';

  @override
  String get toolsAndStructuredOutput =>
      'Инструменты и структурированный вывод';

  @override
  String get actionsSchemasAndConfirmations =>
      'Действия, схемы и подтверждения';

  @override
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation =>
      'Управляйте поддерживаемыми действиями помощника и структурированными ответами. Действия, которые влияют на файлы, потребуют вашего подтверждения.';

  @override
  String get models => 'Модели';

  @override
  String get assistantExperience => 'Опыт работы с помощником';

  @override
  String get smartCapabilities => 'Умные возможности';

  @override
  String get performance => 'Производительность';

  @override
  String get yourCompressedVideoHistory => 'Ваша история сжатых видео';

  @override
  String get completionAndUpdateAlerts =>
      'Оповещения о завершении и обновлениях';

  @override
  String get yourDataStaysLocal => 'Ваши данные остаются локальными';

  @override
  String get comparePlansAndUpgrade => 'Сравнить тарифные планы и обновить';

  @override
  String get paymentMethodsAndBilling => 'Способы оплаты и выставления счетов';

  @override
  String get restoreYourPreviousPurchase => 'Восстановить предыдущую покупку';

  @override
  String get versionAndBuildDetails => 'Сведения о версии и сборке';

  @override
  String get theDeveloperBehindZumi => 'Разработчик Zumi';

  @override
  String get openSourcePackageLicenses =>
      'Лицензии на пакеты с открытым исходным кодом';

  @override
  String get howDataIsHandled => 'Как обрабатываются данные';

  @override
  String get rulesForUsingZumi => 'Правила использования Zumi';

  @override
  String get whatDataWeCollect => 'Какие данные мы собираем';

  @override
  String get whyWeNeedPermissions => 'Зачем нам нужны разрешения';

  @override
  String get answersToCommonQuestions => 'Ответы на часто задаваемые вопросы';

  @override
  String get reachTheDeveloperDirectly => 'Связаться с разработчиком напрямую';

  @override
  String get sendUsYourFeedback => 'Отправьте нам свой отзыв';

  @override
  String get pickVideo => 'Выбрать видео';

  @override
  String get targetSizeMB => 'Целевой размер (МБ)';

  @override
  String get startCompression => 'Начать сжатие';

  @override
  String get pause => 'Пауза';

  @override
  String get resume => 'Продолжить';

  @override
  String get viewResult => 'Просмотр результата';

  @override
  String get saveToGallery => 'Сохранить в галерею';

  @override
  String get shareVideo => 'Поделиться видео';

  @override
  String get originalSize => 'Исходный размер';

  @override
  String get outputSize => 'Размер после сжатия';

  @override
  String get noCompressedVideosYet => 'Сжатых видео пока нет';

  @override
  String get savedToGallery => 'Сохранено в галерею';

  @override
  String get enterATargetSizeGreaterThanZero =>
      'Введите целевой размер больше нуля';

  @override
  String get compressionCancelled => 'Сжатие отменено';

  @override
  String get thisVideoCouldNotReachTheSelectedSizeTryALargerTargetSize =>
      'Это видео не достигло выбранного размера. Попробуйте выбрать больший целевой размер.';

  @override
  String get theSelectedSizeIsTooSmallForThisVideoChooseALargerSize =>
      'Выбранный размер слишком мал для этого видео. Выберите больший размер.';

  @override
  String get originalPreview => 'Предварительный просмотр оригинала';

  @override
  String get compressedPreview => 'Сжатый предварительный просмотр';

  @override
  String get targetPreset => 'Целевая предустановка';

  @override
  String get customSize => 'Пользовательский размер';

  @override
  String get previewUnavailable => 'Предварительный просмотр недоступен';

  @override
  String get advancedControls => 'Расширенные настройки';

  @override
  String get automatic => 'Автоматически';

  @override
  String get maximumResolution => 'Максимальное разрешение';

  @override
  String get originalResolution => 'Оригинальное разрешение';

  @override
  String get maximumFrameRate => 'Максимальная частота кадров';

  @override
  String get audioBitrate => 'Битрейт аудио';

  @override
  String get removeAudio => 'Удалить аудио';

  @override
  String get videoBitrateCeilingKbps => 'Потолок битрейта видео (кбит/с)';

  @override
  String get hdrHandling => 'Обработка HDR';

  @override
  String get convertToSDR => 'Преобразовать в SDR';

  @override
  String get keepHDRWhenSupported => 'Сохранять HDR при поддержке';

  @override
  String get beforeYouStart => 'Перед началом';

  @override
  String get calculatingCompressionPlan => 'Вычисление плана сжатия…';

  @override
  String get plannedResolution => 'Планируемое разрешение';

  @override
  String get plannedVideoBitrate => 'Планируемый битрейт видео';

  @override
  String get plannedAudioBitrate => 'Планируемый битрейт аудио';

  @override
  String
  get reEncodingConvertsAudioToAACStereoDolbyAtmosAndDTSSpatialAudioWillNotBePreserved =>
      'Пере-кодирование преобразует аудио в AAC стерео. Dolby Atmos и DTS пространственное аудио не будут сохранены.';

  @override
  String
  get thisTargetIsTooSmallForAUsableVideoIncreaseTheSizeOrLowerOtherLimits =>
      'Эта цель слишком мала для пригодного видео. Увеличьте размер или снизьте другие ограничения.';

  @override
  String get theSelectedTargetMayReduceVideoQuality =>
      'Выбранная цель может снизить качество видео.';

  @override
  String get theSourceIsAlreadyWithinTheSizeLimit =>
      'Источник уже находится в пределах допустимого размера.';

  @override
  String get enterABitrateOfAtLeast150KbpsOrLeaveBlankForAutomatic =>
      'Введите битрейт не менее 150 кбит/с или оставьте поле пустым для автоматического выбора.';

  @override
  String get enterAnEvenResolutionFrom240To16384OrLeaveBlankForAutomatic =>
      'Введите четное разрешение от 240 до 16384, или оставьте поле пустым для автоматического выбора.';

  @override
  String get videoPosition => 'Положение видео';

  @override
  String
  get aPreviousCompressionWasInterruptedItsTemporaryFilesWereCleanedUpYouCanSelectTheVideoAndTryAgain =>
      'Предыдущая компрессия была прервана. Временные файлы были удалены; вы можете выбрать видео и попробовать снова.';

  @override
  String get dismiss => 'Закрыть';

  @override
  String get clearHistory => 'Очистить историю';

  @override
  String get removeAllHistoryEntriesSavedVideosWillRemainOnYourDevice =>
      'Удалить все записи истории? Сохранённые видео останутся на вашем устройстве.';

  @override
  String get attempts => 'Попытки';

  @override
  String get targetSize => 'Целевой размер';

  @override
  String get outputResolution => 'Разрешение вывода';

  @override
  String get thisVideoCouldNotBeReadChooseAnotherFile =>
      'Это видео не удалось прочитать. Выберите другой файл.';

  @override
  String get theEncodedVideoFailedVerificationYourOriginalVideoWasNotChanged =>
      'Закодированное видео не прошло проверку. Ваш оригинальный видеофайл не был изменён.';

  @override
  String
  get thisDeviceCannotEncodeTheSelectedResolutionOrFrameRateLowerThatSettingAndTryAgain =>
      'Это устройство не может кодировать выбранное разрешение или частоту кадров. Уменьшите эту настройку и попробуйте снова.';

  @override
  String
  get thisDeviceCannotDecodeThisAudioFormatForCompressionRemoveAudioOrUseASupportedSource =>
      'Это устройство не может декодировать этот аудиоформат для сжатия. Удалите аудио или используйте поддерживаемый источник.';

  @override
  String
  get thisDeviceCannotDecodeThisVideoFormatOrProfileForCompressionChooseAnotherSourceOrDevice =>
      'Это устройство не может декодировать этот видеоформат или профиль сжатия. Выберите другой источник или устройство.';

  @override
  String get theExportedMP4IsNotReadyForStreamingTryAnotherVideoOrDevice =>
      'Экспортированный MP4 не готов для стриминга. Попробуйте другое видео или устройство.';

  @override
  String get thereIsNotEnoughFreeStorageToCompressThisVideo =>
      'Недостаточно свободного места для сжатия этого видео.';

  @override
  String get thisDeviceCannotProcessTheSelectedHDRModeTryConvertingToSDR =>
      'Это устройство не может обработать выбранный режим HDR. Попробуйте конвертировать в SDR.';

  @override
  String get compressionCouldNotBeCompletedTryAnotherSettingOrVideo =>
      'Не удалось завершить сжатие. Попробуйте другой параметр или видео.';

  @override
  String get appIdentity => 'Идентификатор приложения';

  @override
  String get appName => 'Название приложения';

  @override
  String get packageName => 'Имя пакета';

  @override
  String get version => 'Версия';

  @override
  String get buildNumber => 'Номер сборки';

  @override
  String get deviceAndBuild => 'Устройство и сборка';

  @override
  String get operatingSystem => 'Операционная система';

  @override
  String get osVersion => 'Версия ОС';

  @override
  String get buildMode => 'Режим сборки';

  @override
  String get debug => 'Отладка';

  @override
  String get release => 'Релиз';

  @override
  String get builtWith => 'Создано с помощью';

  @override
  String get installation => 'Установка';

  @override
  String get installedFrom => 'Установлено из';

  @override
  String get installedOn => 'Установлено на';

  @override
  String get updatedOn => 'Обновлено';

  @override
  String get unavailable => 'Недоступно';

  @override
  String get projectAndSupport => 'Проект и поддержка';

  @override
  String get githubRepository => 'Репозиторий на GitHub';

  @override
  String get viewZumiSourceCode => 'Просмотреть исходный код Zumi';

  @override
  String get readTheREADME => 'Прочитать README';

  @override
  String get learnAboutZumiOnGitHub => 'Узнать о Zumi на GitHub';

  @override
  String get reportAnIssue => 'Сообщить о проблеме';

  @override
  String get viewAndCreateGitHubIssues =>
      'Просмотреть и создать задачи на GitHub';

  @override
  String get latestRelease => 'Последний выпуск';

  @override
  String get viewReleasesAndDownloads => 'Просмотреть выпуски и загрузки';

  @override
  String get supportZumi => 'Поддержать Zumi';

  @override
  String get openTheOfficialDonationPage =>
      'Открыть официальную страницу пожертвований';

  @override
  String get couldNotOpenTheLinkPleaseTryAgain =>
      'Не удалось открыть ссылку. Пожалуйста, попробуйте еще раз.';

  @override
  String get developer => 'Разработчик';

  @override
  String get mostafaSensei => 'Mostafa Sensei';

  @override
  String get githubProfile => 'Профиль на GitHub';

  @override
  String get seeProjectsAndContactDetails =>
      'Посмотреть проекты и контактные данные';

  @override
  String get maintenanceInProgress => 'Идёт техническое обслуживание';

  @override
  String get zumiIsTemporarilyUnavailablePleaseTryAgainLater =>
      'Zumi временно недоступен. Пожалуйста, попробуйте позже.';

  @override
  String get comingSoon => 'Скоро';

  @override
  String get languageName => 'Русский';

  @override
  String get countryCode => 'RU';

  @override
  String countryName(String countryCode) {
    String _temp0 = intl.Intl.selectLogic(countryCode, {
      'AE': 'ОАЭ',
      'AT': 'Австрия',
      'AU': 'Австралия',
      'BE': 'Бельгия',
      'BH': 'Бахрейн',
      'BR': 'Бразилия',
      'CA': 'Канада',
      'CH': 'Швейцария',
      'CN': 'Китай',
      'DE': 'Германия',
      'DJ': 'Джибути',
      'DZ': 'Алжир',
      'EG': 'Египет',
      'ES': 'Испания',
      'FR': 'Франция',
      'GB': 'Великобритания',
      'HK': 'Гонконг (САР)',
      'ID': 'Индонезия',
      'IQ': 'Ирак',
      'IT': 'Италия',
      'JO': 'Иордания',
      'JP': 'Япония',
      'KM': 'Коморы',
      'KR': 'Республика Корея',
      'KW': 'Кувейт',
      'LB': 'Ливан',
      'LY': 'Ливия',
      'MA': 'Марокко',
      'MR': 'Мавритания',
      'MX': 'Мексика',
      'NL': 'Нидерланды',
      'OM': 'Оман',
      'PL': 'Польша',
      'PS': 'Палестинские территории',
      'PT': 'Португалия',
      'QA': 'Катар',
      'RU': 'Россия',
      'SA': 'Саудовская Аравия',
      'SD': 'Судан',
      'SE': 'Швеция',
      'SG': 'Сингапур',
      'SO': 'Сомали',
      'SY': 'Сирия',
      'TH': 'Таиланд',
      'TN': 'Тунис',
      'TR': 'Турция',
      'TW': 'Тайвань',
      'US': 'Соединенные Штаты',
      'VN': 'Вьетнам',
      'YE': 'Йемен',
      'other': 'Страна',
    });
    return '$_temp0';
  }
}
