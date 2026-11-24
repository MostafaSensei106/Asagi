// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get asagi => 'Asagi';

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
  String get confirm => 'Подтвердить';

  @override
  String get ok => 'ОК';

  @override
  String get compressVideosPrivatelyOnYourDevice =>
      'Сжимайте видео конфиденциально прямо на устройстве.';

  @override
  String get welcomeToAsagi => 'Добро пожаловать в Asagi';

  @override
  String get learnHowAsagiCompressesYourVideosWithoutEverLeavingYourPhone =>
      'Узнайте, как Asagi сжимает ваши видео, не покидая ваш телефон.';

  @override
  String get signIn => 'Войти';

  @override
  String get chooseAVideo => 'Выберите видео';

  @override
  String get preparingSelectedVideo => 'Getting your video ready';

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
  String get aboutAsagi => 'О Asagi';

  @override
  String get versionBuildNumberAndApplicationDetails =>
      'Версия, номер сборки и информация о приложении.';

  @override
  String get aboutTheDeveloper => 'О разработчике';

  @override
  String get theDeveloperAndToolsBehindAsagi =>
      'Разработчик и инструменты, использованные для создания Asagi.';

  @override
  String get openSourcePackagesBundledWithAsagi =>
      'Пакеты с открытым исходным кодом, включённые в Asagi.';

  @override
  String get privacyPolicy => 'Политика конфиденциальности';

  @override
  String get howAsagiHandlesYourVideosAndData =>
      'Как Asagi обрабатывает ваши видео и данные.';

  @override
  String get termsOfService => 'Условия использования';

  @override
  String get dataSafety => 'Безопасность данных';

  @override
  String get summaryOfTheDataAsagiCollectsAndWhy =>
      'Сводка собираемых данных Asagi и причины их сбора.';

  @override
  String get permissions => 'Разрешения';

  @override
  String get runtimePermissionsAsagiRequestsAndWhyEachIsNeeded =>
      'Разрешения во время работы, которые запрашивает Asagi, и зачем нужны каждое из них.';

  @override
  String get faq => 'Часто задаваемые вопросы';

  @override
  String get support => 'Поддержка';

  @override
  String get sendFeedback => 'Отправить отзыв';

  @override
  String get reportAProblemOrSuggestAnImprovement =>
      'Сообщить о проблеме или предложить улучшение.';

  @override
  String get profile => 'Профиль';

  @override
  String get deleteAccount => 'Удалить аккаунт';

  @override
  String get permanentlyRemoveYourAccountAndItsServerSideData =>
      'Навсегда удалить ваш аккаунт и данные на сервере.';

  @override
  String get rateAsagi => 'Оценить Asagi';

  @override
  String get tellOthersHowAsagiWorkedForYouOnTheStore =>
      'Расскажите другим, как Asagi работал для вас в магазине.';

  @override
  String get shareAsagi => 'Поделиться Asagi';

  @override
  String get recommendAsagiToAFriend => 'Порекомендуйте Asagi другу.';

  @override
  String get appearanceLanguage => 'Внешний вид и язык';

  @override
  String get compression => 'Сжатие';

  @override
  String get onDeviceAI => 'ИИ на устройстве';

  @override
  String get notificationsPrivacy => 'Уведомления и конфиденциальность';

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
  String get asagiAssistant => 'Помощник Asagi';

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
  String get versionAndBuildDetails => 'Сведения о версии и сборке';

  @override
  String get theDeveloperBehindAsagi => 'Разработчик Asagi';

  @override
  String get openSourcePackageLicenses =>
      'Лицензии на пакеты с открытым исходным кодом';

  @override
  String get howDataIsHandled => 'Как обрабатываются данные';

  @override
  String get rulesForUsingAsagi => 'Правила использования Asagi';

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
  String get viewAsagiSourceCode => 'Просмотреть исходный код Asagi';

  @override
  String get readTheREADME => 'Прочитать README';

  @override
  String get learnAboutAsagiOnGitHub => 'Узнать о Asagi на GitHub';

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
  String get supportAsagi => 'Поддержать Asagi';

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
  String get asagiIsTemporarilyUnavailablePleaseTryAgainLater =>
      'Asagi временно недоступен. Пожалуйста, попробуйте позже.';

  @override
  String get comingSoon => 'Скоро';

  @override
  String get loading => 'Loading…';

  @override
  String get pleaseWait => 'Пожалуйста, подождите...';

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
  String get cancel => 'Отмена';

  @override
  String get clean => 'Clean';

  @override
  String get openSourceLicenses => 'Лицензии с открытым исходным кодом';

  @override
  String get storageJobsLoadFailed => 'Interrupted jobs could not be loaded.';

  @override
  String get cleanupInterruptedJobsFailed =>
      'The interrupted files could not be cleaned.';

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
  String get nativeEngineSpeed => 'Native compression engine';

  @override
  String get nativeEngineDescription =>
      'Uses Android’s native media engine to compress videos on your device.';

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
      'Asagi is free and open source. Video processing runs on your device. You retain ownership of your content. The app is provided without a guarantee of any particular output size or quality.';

  @override
  String get termsCopiedToClipboard => 'Terms copied to clipboard';

  @override
  String get termsAcceptanceLicenseTitle => '1. Acceptance & License';

  @override
  String get termsAcceptanceLicenseBody =>
      'Asagi is free and open source. All features are available to everyone, and video processing runs locally on your devices.';

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
  String get megabytesShort => 'MB';

  @override
  String percentSmaller(Object percent) {
    return '$percent% smaller';
  }

  @override
  String percentSaved(Object percent) {
    return '-$percent%';
  }

  @override
  String get encodingHardwareLive =>
      'Encoding and optimizing video with native hardware…';

  @override
  String get verifyingCompressedVideo =>
      'Checking the compressed video and its audio…';

  @override
  String get retryingCompression =>
      'Adjusting settings for another compression pass…';

  @override
  String targetSizeNotReachedOutputIs(String size) {
    return 'Could not reach the target size. Output size: $size MB.';
  }

  @override
  String get targetMayNotBeReachedBestEffort =>
      'The selected size may not be reachable. The export will use the best available settings, and its final size will be shown.';

  @override
  String requestedSettingsUnavailableBestQualityIs(
    String width,
    String height,
  ) {
    return 'The requested settings cannot be applied. Best available quality is $width × $height; the final file size will be shown after compression.';
  }

  @override
  String get savingCompressedVideo =>
      'Saving the compressed video on this device…';

  @override
  String get compressionCompletedSuccessfully =>
      'Compression finished successfully!';

  @override
  String get compressionStrictness => 'Compression Strictness';

  @override
  String get strictnessDefault => 'Default (93%)';

  @override
  String get strictnessSafe => 'Safe (90%)';

  @override
  String get strictnessAggressive => 'Aggressive (96%)';

  @override
  String historySummarySubtitle(Object count, Object savedMb) {
    return '$count videos compressed • $savedMb MB saved';
  }

  @override
  String get compressionHelpDescription =>
      'Answers to common questions about video compression.';

  @override
  String get appSupportDescription => 'Get help using Asagi.';

  @override
  String get appTermsDescription =>
      'Terms for using the free, open source Asagi app.';

  @override
  String get compressionAndroidOnly =>
      'Сжатие видео сейчас доступно только на Android.';

  @override
  String get notificationPermissionTitle => 'Enable notifications';

  @override
  String get notificationPermissionBody =>
      'Tap to allow compression alerts and updates.';

  @override
  String get notificationPermissionSettingsBody =>
      'Notifications are blocked. Tap to open system settings.';

  @override
  String get notificationUnavailable =>
      'Notifications are currently supported on Android.';

  @override
  String get notificationSetupFailed =>
      'Notification settings could not be applied. Tap to retry.';

  @override
  String get notificationChannelBlocked =>
      'A notification channel is blocked in system settings.';

  @override
  String get notificationProgressDetails =>
      'Show progress details in the background. A basic service notification remains while compression runs.';

  @override
  String get notificationProgressTitle => 'Compressing video';

  @override
  String get notificationProgressBody => 'Tap to view your compression job.';

  @override
  String get notificationPausedTitle => 'Compression paused';

  @override
  String get notificationSavingTitle => 'Saving compressed video';

  @override
  String get notificationCompletedTitle => 'Video ready';

  @override
  String notificationCompletedBody(String name, String size, String saved) {
    return '$name · $size MB · Saved $saved MB';
  }

  @override
  String notificationCompletedWarningBody(String name, String size) {
    return '$name · $size MB · Review the result warning';
  }

  @override
  String get notificationFailedTitle => 'Compression interrupted';

  @override
  String notificationInterruptedBody(String count) {
    return '$count interrupted jobs are available to review.';
  }

  @override
  String notificationReleaseTitle(String version) {
    return 'Asagi $version is available';
  }

  @override
  String get notificationSavingsTitle => 'Your weekly storage savings';

  @override
  String notificationSavingsBody(String count, String saved) {
    return '$count videos · $saved MB saved';
  }

  @override
  String get hapticsButtons => 'Buttons and taps';

  @override
  String get hapticsButtonsDescription =>
      'Plays a light pulse when you press an action button. This setting applies across the app; selection changes and swipe gestures have their own controls.';

  @override
  String get hapticsSelections => 'Selection changes';

  @override
  String get hapticsSelectionsDescription =>
      'Plays a brief tick when you change a switch, checkbox, or selected value. Disable it to adjust preferences without vibration while keeping button feedback unchanged.';

  @override
  String get hapticsGestures => 'Gestures';

  @override
  String get hapticsGesturesDescription =>
      'Plays a light pulse when a swipe reaches the point that reveals or triggers an action. It helps you feel the action threshold without vibrating throughout the drag.';

  @override
  String get hapticsSuccess => 'Successful completion';

  @override
  String get hapticsSuccessDescription =>
      'Plays a confirmation pulse when video compression finishes. In the background the completion notification provides the vibration, so the same result does not vibrate twice. Sound on completion is controlled separately.';

  @override
  String get hapticsErrors => 'Errors and interruptions';

  @override
  String get hapticsErrorsDescription =>
      'Plays a stronger pulse if compression fails or is interrupted. In the background this follows the error notification. Cancelling a job yourself does not trigger an error pulse.';

  @override
  String get notificationJobUnavailable =>
      'This job is no longer available. Your history is shown instead.';

  @override
  String get notificationRecoveryHint =>
      'Review interrupted jobs from the home screen.';

  @override
  String get notificationProgressChannel => 'Compression status';

  @override
  String get notificationCompletionChannel => 'Completed videos';

  @override
  String get notificationErrorChannel => 'Compression problems';

  @override
  String get notificationReleaseChannel => 'App releases';

  @override
  String get notificationSavingsChannel => 'Storage savings';

  @override
  String get automaticColorSchemeDescription =>
      'Auto uses a vivid Asagi palette. Each option previews its own accent colors.';

  @override
  String get colorSchemeTonalSpot => 'Tonal spot';

  @override
  String get colorSchemeFidelity => 'Fidelity';

  @override
  String get colorSchemeContent => 'Content';

  @override
  String get colorSchemeExpressive => 'Expressive';

  @override
  String get colorSchemeFruitSalad => 'Fruit salad';

  @override
  String get colorSchemeMonochrome => 'Monochrome';

  @override
  String get colorSchemeNeutral => 'Neutral';

  @override
  String get colorSchemeRainbow => 'Rainbow';

  @override
  String get colorSchemeVibrant => 'Vibrant';

  @override
  String get hapticsButtonsShort => 'Button press feedback';

  @override
  String get hapticsSelectionsShort => 'Feedback when choices change';

  @override
  String get hapticsGesturesShort => 'Swipe action feedback';

  @override
  String get hapticsSuccessShort => 'A pulse when a video is ready';

  @override
  String get hapticsErrorsShort => 'Feedback when a job fails';
}

/// The translations for Russian, as used in Russian Federation (`ru_RU`).
class AppLocalizationsRuRu extends AppLocalizationsRu {
  AppLocalizationsRuRu() : super('ru_RU');

  @override
  String get asagi => 'Asagi';

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
  String get confirm => 'Подтвердить';

  @override
  String get ok => 'ОК';

  @override
  String get compressVideosPrivatelyOnYourDevice =>
      'Сжимайте видео конфиденциально прямо на устройстве.';

  @override
  String get welcomeToAsagi => 'Добро пожаловать в Asagi';

  @override
  String get learnHowAsagiCompressesYourVideosWithoutEverLeavingYourPhone =>
      'Узнайте, как Asagi сжимает ваши видео, не покидая ваш телефон.';

  @override
  String get signIn => 'Войти';

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
  String get aboutAsagi => 'О Asagi';

  @override
  String get versionBuildNumberAndApplicationDetails =>
      'Версия, номер сборки и информация о приложении.';

  @override
  String get aboutTheDeveloper => 'О разработчике';

  @override
  String get theDeveloperAndToolsBehindAsagi =>
      'Разработчик и инструменты, использованные для создания Asagi.';

  @override
  String get openSourcePackagesBundledWithAsagi =>
      'Пакеты с открытым исходным кодом, включённые в Asagi.';

  @override
  String get privacyPolicy => 'Политика конфиденциальности';

  @override
  String get howAsagiHandlesYourVideosAndData =>
      'Как Asagi обрабатывает ваши видео и данные.';

  @override
  String get termsOfService => 'Условия использования';

  @override
  String get dataSafety => 'Безопасность данных';

  @override
  String get summaryOfTheDataAsagiCollectsAndWhy =>
      'Сводка собираемых данных Asagi и причины их сбора.';

  @override
  String get permissions => 'Разрешения';

  @override
  String get runtimePermissionsAsagiRequestsAndWhyEachIsNeeded =>
      'Разрешения во время работы, которые запрашивает Asagi, и зачем нужны каждое из них.';

  @override
  String get faq => 'Часто задаваемые вопросы';

  @override
  String get support => 'Поддержка';

  @override
  String get sendFeedback => 'Отправить отзыв';

  @override
  String get reportAProblemOrSuggestAnImprovement =>
      'Сообщить о проблеме или предложить улучшение.';

  @override
  String get profile => 'Профиль';

  @override
  String get deleteAccount => 'Удалить аккаунт';

  @override
  String get permanentlyRemoveYourAccountAndItsServerSideData =>
      'Навсегда удалить ваш аккаунт и данные на сервере.';

  @override
  String get rateAsagi => 'Оценить Asagi';

  @override
  String get tellOthersHowAsagiWorkedForYouOnTheStore =>
      'Расскажите другим, как Asagi работал для вас в магазине.';

  @override
  String get shareAsagi => 'Поделиться Asagi';

  @override
  String get recommendAsagiToAFriend => 'Порекомендуйте Asagi другу.';

  @override
  String get appearanceLanguage => 'Внешний вид и язык';

  @override
  String get compression => 'Сжатие';

  @override
  String get onDeviceAI => 'ИИ на устройстве';

  @override
  String get notificationsPrivacy => 'Уведомления и конфиденциальность';

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
  String get asagiAssistant => 'Помощник Asagi';

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
  String get versionAndBuildDetails => 'Сведения о версии и сборке';

  @override
  String get theDeveloperBehindAsagi => 'Разработчик Asagi';

  @override
  String get openSourcePackageLicenses =>
      'Лицензии на пакеты с открытым исходным кодом';

  @override
  String get howDataIsHandled => 'Как обрабатываются данные';

  @override
  String get rulesForUsingAsagi => 'Правила использования Asagi';

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
  String get viewAsagiSourceCode => 'Просмотреть исходный код Asagi';

  @override
  String get readTheREADME => 'Прочитать README';

  @override
  String get learnAboutAsagiOnGitHub => 'Узнать о Asagi на GitHub';

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
  String get supportAsagi => 'Поддержать Asagi';

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
  String get asagiIsTemporarilyUnavailablePleaseTryAgainLater =>
      'Asagi временно недоступен. Пожалуйста, попробуйте позже.';

  @override
  String get comingSoon => 'Скоро';

  @override
  String get pleaseWait => 'Пожалуйста, подождите...';

  @override
  String get cancel => 'Отмена';

  @override
  String get openSourceLicenses => 'Лицензии с открытым исходным кодом';

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

  @override
  String get termsOfServiceFullText =>
      'Asagi is free and open source. Video processing runs on your device. You retain ownership of your content. The app is provided without a guarantee of any particular output size or quality.';

  @override
  String get termsAcceptanceLicenseBody =>
      'Asagi is free and open source. All features are available to everyone, and video processing runs locally on your devices.';

  @override
  String get compressionHelpDescription =>
      'Answers to common questions about video compression.';

  @override
  String get appSupportDescription => 'Get help using Asagi.';

  @override
  String get appTermsDescription =>
      'Terms for using the free, open source Asagi app.';

  @override
  String get compressionAndroidOnly =>
      'Сжатие видео сейчас доступно только на Android.';
}
