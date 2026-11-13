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
  String fileSavedToDcim(String fileName) {
    return 'Файл сохранен в галерею: $fileName';
  }

  @override
  String fileSavedToDocuments(String fileName) {
    return 'Файл сохранен в документы: $fileName';
  }

  @override
  String get fileAlreadySaved => 'Файл уже сохранен';

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
  String get error_address_line_cant_be_empty =>
      'Строка адреса не может быть пустой';

  @override
  String get error_address_line_too_long => 'Строка адреса слишком длинная';

  @override
  String get error_address_invalid_special_characters =>
      'Специальные символы не допускаются';

  @override
  String get error_address_emoji_not_allowed => 'Эмодзи не допускаются';

  @override
  String get error_city_cant_be_empty => 'Город не может быть пустым';

  @override
  String get error_city_too_long => 'Название города слишком длинное';

  @override
  String get error_city_invalid_special_characters =>
      'Город содержит недопустимые специальные символы';

  @override
  String get error_address_label_cant_be_empty =>
      'Метка адреса не может быть пустой';

  @override
  String get error_address_label_too_long => 'Метка адреса слишком длинная';

  @override
  String get error_email_cant_be_empty =>
      'Электронная почта не может быть пустой';

  @override
  String get error_email_not_invalid_format =>
      'Недопустимый формат электронной почты';

  @override
  String get error_email_contains_invalid_characters =>
      'Электронная почта содержит недопустимые символы';

  @override
  String get error_email_must_contain_at_symbol =>
      'Электронная почта должна содержать @';

  @override
  String get error_email_must_be_in_lowercase =>
      'Электронная почта должна быть в нижнем регистре';

  @override
  String get error_arabic_not_allowed => 'Арабские символы не допускаются';

  @override
  String get error_email_emoji_not_allowed =>
      'Эмодзи в электронной почте не допускаются';

  @override
  String get error_phone_number_cant_be_empty =>
      'Номер телефона не может быть пустым';

  @override
  String get error_phone_number_invalid => 'Неверный номер телефона';

  @override
  String get error_phone_number_min_length =>
      'Номер телефона должен содержать не менее 11 цифр';

  @override
  String get error_name_cant_be_empty => 'Имя не может быть пустым';

  @override
  String get error_name_invalid => 'Неверное имя';

  @override
  String get error_name_too_short_at_least_3_characters =>
      'Имя должно содержать не менее 3 символов';

  @override
  String get error_name_too_long_maximum_20_characters =>
      'Имя не может превышать 20 символов';

  @override
  String get error_name_invalid_special_characters =>
      'Имя содержит недопустимые специальные символы';

  @override
  String get error_name_emoji_not_allowed => 'Эмодзи в имени не допускаются';

  @override
  String get error_password_cant_be_empty => 'Пароль не может быть пустым';

  @override
  String
  get error_password_must_contain_uppercase_lowercase_number_and_special_character =>
      'Пароль должен содержать заглавные и строчные буквы, цифру и специальный символ';

  @override
  String get error_password_must_be_at_least_8_characters_long =>
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
  String get settingsGroupAppearance => 'Внешний вид и язык';

  @override
  String get settingsGroupCompression => 'Сжатие';

  @override
  String get settingsGroupAi => 'ИИ на устройстве';

  @override
  String get settingsGroupPrivacy => 'Уведомления и конфиденциальность';

  @override
  String get settingsGroupPlans => 'Планы и покупки';

  @override
  String get settingsGroupAbout => 'О программе';

  @override
  String get settingsGroupLegal => 'Юридическая информация';

  @override
  String get settingsGroupHelp => 'Справка и отзывы';

  @override
  String get settingsGroupAccount => 'Аккаунт';

  @override
  String get settingsAppearanceSubtitle => 'Тема и язык приложения';

  @override
  String get settingsLanguageSubtitle => 'Язык приложения и направление текста';

  @override
  String get settingsCompressionSubtitle => 'Качество и формат по умолчанию';

  @override
  String get settingsStorageSubtitle => 'Использование кеша и хранилища';

  @override
  String get aiSettings => 'Настройки ИИ';

  @override
  String get zumiAssistant => 'Помощник Zumi';

  @override
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere =>
      'Скоро появится личный помощник для ваших видео. Здесь вы сможете задавать вопросы о сжатии, организации и сохранённых видео.';

  @override
  String get settingsAiSubtitle => 'Локальные модели и умные инструменты';

  @override
  String get exploreLocalModelsAndFutureAiToolsTheseOptionsAreNotActiveYet =>
      'Изучайте локальные модели и будущие инструменты ИИ. Эти опции пока недоступны.';

  @override
  String get localModels => 'Локальные модели';

  @override
  String get aiModelsSubtitle =>
      'Просматривайте и скачивайте поддерживаемые модели';

  @override
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere =>
      'Выберите поддерживаемую модель, скачайте её на это устройство и управляйте установленными моделями здесь.';

  @override
  String get importAModel => 'Импорт модели';

  @override
  String get aiImportSubtitle =>
      'Используйте совместимую модель из ваших файлов';

  @override
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt =>
      'Выберите совместимый локальный файл модели и ознакомьтесь с его требованиями перед использованием.';

  @override
  String get smartFeatures => 'Умные функции';

  @override
  String get aiFeaturesSubtitle => 'Сжатие, организация и поиск';

  @override
  String
  get chooseWhichLocalAiSuggestionsToUseForVideoCompressionOrganizationNamingAndSearch =>
      'Выберите, какие локальные AI-предложения использовать для сжатия видео, организации, именования и поиска.';

  @override
  String get modelPerformance => 'Производительность модели';

  @override
  String get aiRuntimeSubtitle => 'Настройки обработки и ресурсов';

  @override
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels =>
      'Контролируйте используемую обработку и лимиты ресурсов для поддерживаемых моделей.';

  @override
  String get conversationSettings => 'Настройки разговора';

  @override
  String get aiChatSettingsSubtitle =>
      'Потоковая передача, размышления и длина ответа';

  @override
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits =>
      'Настройте, как ассистент отвечает, включая потоковую передачу, режим размышления, выборку и ограничения ответов.';

  @override
  String get imagesAndAudio => 'Изображения и аудио';

  @override
  String get aiMediaSubtitle => 'Управление мультимодальными входными данными';

  @override
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos =>
      'Выберите, могут ли совместимые модели анализировать выбранные изображения и аудио из ваших видео.';

  @override
  String get semanticSearch => 'Семантический поиск';

  @override
  String get aiSearchSubtitle => 'Встраивания и локальная индексация';

  @override
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning =>
      'Управляйте локальной моделью встраивания и индексом поиска для нахождения видео и моментов по смыслу.';

  @override
  String get toolsAndStructuredOutput =>
      'Инструменты и структурированный вывод';

  @override
  String get aiToolsSubtitle => 'Действия, схемы и подтверждения';

  @override
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation =>
      'Управляйте поддерживаемыми действиями помощника и структурированными ответами. Действия, которые влияют на файлы, потребуют вашего подтверждения.';

  @override
  String get aiGroupModels => 'Модели';

  @override
  String get aiGroupExperience => 'Опыт работы с помощником';

  @override
  String get aiGroupCapabilities => 'Умные возможности';

  @override
  String get aiGroupPerformance => 'Производительность';

  @override
  String get compressionHistorySubtitle => 'Ваша история сжатых видео';

  @override
  String get settingsNotificationsSubtitle =>
      'Оповещения о завершении и обновлениях';

  @override
  String get settingsPrivacySubtitle => 'Ваши данные остаются локальными';

  @override
  String get plansSubtitle => 'Сравнить тарифные планы и обновить';

  @override
  String get plansMethodsSubtitle => 'Способы оплаты и выставления счетов';

  @override
  String get plansRestoreSubtitle => 'Восстановить предыдущую покупку';

  @override
  String get aboutAppSubtitle => 'Сведения о версии и сборке';

  @override
  String get aboutDeveloperSubtitle => 'Разработчик Zumi';

  @override
  String get aboutLicensesSubtitle =>
      'Лицензии на пакеты с открытым исходным кодом';

  @override
  String get legalPrivacySubtitle => 'Как обрабатываются данные';

  @override
  String get legalTermsSubtitle => 'Правила использования Zumi';

  @override
  String get legalDataSafetySubtitle => 'Какие данные мы собираем';

  @override
  String get legalPermissionsSubtitle => 'Зачем нам нужны разрешения';

  @override
  String get helpFaqSubtitle => 'Ответы на часто задаваемые вопросы';

  @override
  String get helpSupportSubtitle => 'Связаться с разработчиком напрямую';

  @override
  String get helpFeedbackSubtitle => 'Отправьте нам свой отзыв';

  @override
  String get compressionPickVideo => 'Выбрать видео';

  @override
  String get compressionTargetMb => 'Целевой размер (МБ)';

  @override
  String get compressionStart => 'Начать сжатие';

  @override
  String get compressionPause => 'Пауза';

  @override
  String get compressionResume => 'Продолжить';

  @override
  String get compressionViewResult => 'Просмотр результата';

  @override
  String get compressionSaveGallery => 'Сохранить в галерею';

  @override
  String get compressionShare => 'Поделиться видео';

  @override
  String get compressionOriginalSize => 'Исходный размер';

  @override
  String get compressionOutputSize => 'Размер после сжатия';

  @override
  String get compressionEmptyHistory => 'Сжатых видео пока нет';

  @override
  String get compressionSavedGallery => 'Сохранено в галерею';

  @override
  String get compressionInvalidTarget => 'Введите целевой размер больше нуля';

  @override
  String get compressionCancelled => 'Сжатие отменено';

  @override
  String get compressionTargetExceeded =>
      'Это видео не достигло выбранного размера. Попробуйте выбрать больший целевой размер.';

  @override
  String get compressionTargetInfeasible =>
      'Выбранный размер слишком мал для этого видео. Выберите больший размер.';

  @override
  String get compressionPreviewBefore => 'Предварительный просмотр оригинала';

  @override
  String get compressionPreviewAfter => 'Сжатый предварительный просмотр';

  @override
  String get compressionPreset => 'Целевая предустановка';

  @override
  String get compressionCustom => 'Пользовательский размер';

  @override
  String get compressionPreviewUnavailable =>
      'Предварительный просмотр недоступен';

  @override
  String get compressionAdvanced => 'Расширенные настройки';

  @override
  String get compressionAutomatic => 'Автоматически';

  @override
  String get compressionResolutionLimit => 'Максимальное разрешение';

  @override
  String get compressionSourceResolution => 'Оригинальное разрешение';

  @override
  String get compressionFrameRateLimit => 'Максимальная частота кадров';

  @override
  String get compressionAudioQuality => 'Битрейт аудио';

  @override
  String get compressionRemoveAudio => 'Удалить аудио';

  @override
  String get compressionVideoBitrateLimit => 'Потолок битрейта видео (кбит/с)';

  @override
  String get compressionHdrPolicy => 'Обработка HDR';

  @override
  String get compressionHdrConvert => 'Преобразовать в SDR';

  @override
  String get compressionHdrPreserve => 'Сохранять HDR при поддержке';

  @override
  String get compressionPlanPreview => 'Перед началом';

  @override
  String get compressionPlanLoading => 'Вычисление плана сжатия…';

  @override
  String get compressionPlanResolution => 'Планируемое разрешение';

  @override
  String get compressionPlanVideoBitrate => 'Планируемый битрейт видео';

  @override
  String get compressionPlanAudioBitrate => 'Планируемый битрейт аудио';

  @override
  String get compressionAudioConversionNote =>
      'Пере-кодирование преобразует аудио в AAC стерео. Dolby Atmos и DTS пространственное аудио не будут сохранены.';

  @override
  String get compressionPlanTooSmall =>
      'Эта цель слишком мала для пригодного видео. Увеличьте размер или снизьте другие ограничения.';

  @override
  String get compressionPlanLowQuality =>
      'Выбранная цель может снизить качество видео.';

  @override
  String get compressionPlanAlreadyWithinLimit =>
      'Источник уже находится в пределах допустимого размера.';

  @override
  String get compressionInvalidBitrate =>
      'Введите битрейт не менее 150 кбит/с или оставьте поле пустым для автоматического выбора.';

  @override
  String get compressionInvalidResolution =>
      'Введите четное разрешение от 240 до 16384, или оставьте поле пустым для автоматического выбора.';

  @override
  String get compressionSeek => 'Положение видео';

  @override
  String get compressionInterrupted =>
      'Предыдущая компрессия была прервана. Временные файлы были удалены; вы можете выбрать видео и попробовать снова.';

  @override
  String get compressionDismiss => 'Закрыть';

  @override
  String get compressionClearHistory => 'Очистить историю';

  @override
  String get compressionClearHistoryConfirm =>
      'Удалить все записи истории? Сохранённые видео останутся на вашем устройстве.';

  @override
  String get compressionAttempts => 'Попытки';

  @override
  String get compressionTargetSize => 'Целевой размер';

  @override
  String get compressionOutputResolution => 'Разрешение вывода';

  @override
  String get compressionInvalidVideo =>
      'Это видео не удалось прочитать. Выберите другой файл.';

  @override
  String get compressionInvalidOutput =>
      'Закодированное видео не прошло проверку. Ваш оригинальный видеофайл не был изменён.';

  @override
  String get compressionEncoderUnsupported =>
      'Это устройство не может кодировать выбранное разрешение или частоту кадров. Уменьшите эту настройку и попробуйте снова.';

  @override
  String get compressionAudioDecoderUnsupported =>
      'Это устройство не может декодировать этот аудиоформат для сжатия. Удалите аудио или используйте поддерживаемый источник.';

  @override
  String get compressionVideoDecoderUnsupported =>
      'Это устройство не может декодировать этот видеоформат или профиль сжатия. Выберите другой источник или устройство.';

  @override
  String get compressionMp4NotStreamable =>
      'Экспортированный MP4 не готов для стриминга. Попробуйте другое видео или устройство.';

  @override
  String get compressionNoSpace =>
      'Недостаточно свободного места для сжатия этого видео.';

  @override
  String get compressionHdrUnsupported =>
      'Это устройство не может обработать выбранный режим HDR. Попробуйте конвертировать в SDR.';

  @override
  String get compressionGeneralFailure =>
      'Не удалось завершить сжатие. Попробуйте другой параметр или видео.';

  @override
  String get aboutIdentitySection => 'Идентификатор приложения';

  @override
  String get aboutAppName => 'Название приложения';

  @override
  String get aboutPackageName => 'Имя пакета';

  @override
  String get aboutVersion => 'Версия';

  @override
  String get aboutBuildNumber => 'Номер сборки';

  @override
  String get aboutEnvironmentSection => 'Устройство и сборка';

  @override
  String get aboutOperatingSystem => 'Операционная система';

  @override
  String get aboutOsVersion => 'Версия ОС';

  @override
  String get aboutBuildMode => 'Режим сборки';

  @override
  String get aboutDebug => 'Отладка';

  @override
  String get aboutRelease => 'Релиз';

  @override
  String get aboutToolchainSection => 'Создано с помощью';

  @override
  String get aboutInstallationSection => 'Установка';

  @override
  String get aboutInstaller => 'Установлено из';

  @override
  String get aboutInstalledOn => 'Установлено на';

  @override
  String get aboutUpdatedOn => 'Обновлено';

  @override
  String get aboutUnavailable => 'Недоступно';

  @override
  String get aboutProjectSection => 'Проект и поддержка';

  @override
  String get aboutRepository => 'Репозиторий на GitHub';

  @override
  String get aboutRepositorySubtitle => 'Просмотреть исходный код Zumi';

  @override
  String get aboutReadme => 'Прочитать README';

  @override
  String get aboutReadmeSubtitle => 'Узнать о Zumi на GitHub';

  @override
  String get aboutIssues => 'Сообщить о проблеме';

  @override
  String get aboutIssuesSubtitle => 'Просмотреть и создать задачи на GitHub';

  @override
  String get aboutLatestRelease => 'Последний выпуск';

  @override
  String get aboutLatestReleaseSubtitle => 'Просмотреть выпуски и загрузки';

  @override
  String get aboutDonate => 'Поддержать Zumi';

  @override
  String get aboutDonateSubtitle =>
      'Открыть официальную страницу пожертвований';

  @override
  String get aboutLinkError =>
      'Не удалось открыть ссылку. Пожалуйста, попробуйте еще раз.';

  @override
  String get aboutDeveloperSection => 'Разработчик';

  @override
  String get aboutDeveloperName => 'Mostafa Sensei';

  @override
  String get aboutDeveloperProfile => 'Профиль на GitHub';

  @override
  String get aboutDeveloperProfileSubtitle =>
      'Посмотреть проекты и контактные данные';

  @override
  String get maintenanceInProgress => 'Идёт техническое обслуживание';

  @override
  String get maintenanceMessage =>
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
  String fileSavedToDcim(String fileName) {
    return 'Файл сохранен в галерею: $fileName';
  }

  @override
  String fileSavedToDocuments(String fileName) {
    return 'Файл сохранен в документы: $fileName';
  }

  @override
  String get fileAlreadySaved => 'Файл уже сохранен';

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
  String get error_address_line_cant_be_empty =>
      'Строка адреса не может быть пустой';

  @override
  String get error_address_line_too_long => 'Строка адреса слишком длинная';

  @override
  String get error_address_invalid_special_characters =>
      'Специальные символы не допускаются';

  @override
  String get error_address_emoji_not_allowed => 'Эмодзи не допускаются';

  @override
  String get error_city_cant_be_empty => 'Город не может быть пустым';

  @override
  String get error_city_too_long => 'Название города слишком длинное';

  @override
  String get error_city_invalid_special_characters =>
      'Город содержит недопустимые специальные символы';

  @override
  String get error_address_label_cant_be_empty =>
      'Метка адреса не может быть пустой';

  @override
  String get error_address_label_too_long => 'Метка адреса слишком длинная';

  @override
  String get error_email_cant_be_empty =>
      'Электронная почта не может быть пустой';

  @override
  String get error_email_not_invalid_format =>
      'Недопустимый формат электронной почты';

  @override
  String get error_email_contains_invalid_characters =>
      'Электронная почта содержит недопустимые символы';

  @override
  String get error_email_must_contain_at_symbol =>
      'Электронная почта должна содержать @';

  @override
  String get error_email_must_be_in_lowercase =>
      'Электронная почта должна быть в нижнем регистре';

  @override
  String get error_arabic_not_allowed => 'Арабские символы не допускаются';

  @override
  String get error_email_emoji_not_allowed =>
      'Эмодзи в электронной почте не допускаются';

  @override
  String get error_phone_number_cant_be_empty =>
      'Номер телефона не может быть пустым';

  @override
  String get error_phone_number_invalid => 'Неверный номер телефона';

  @override
  String get error_phone_number_min_length =>
      'Номер телефона должен содержать не менее 11 цифр';

  @override
  String get error_name_cant_be_empty => 'Имя не может быть пустым';

  @override
  String get error_name_invalid => 'Неверное имя';

  @override
  String get error_name_too_short_at_least_3_characters =>
      'Имя должно содержать не менее 3 символов';

  @override
  String get error_name_too_long_maximum_20_characters =>
      'Имя не может превышать 20 символов';

  @override
  String get error_name_invalid_special_characters =>
      'Имя содержит недопустимые специальные символы';

  @override
  String get error_name_emoji_not_allowed => 'Эмодзи в имени не допускаются';

  @override
  String get error_password_cant_be_empty => 'Пароль не может быть пустым';

  @override
  String
  get error_password_must_contain_uppercase_lowercase_number_and_special_character =>
      'Пароль должен содержать заглавные и строчные буквы, цифру и специальный символ';

  @override
  String get error_password_must_be_at_least_8_characters_long =>
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
  String get settingsGroupAppearance => 'Внешний вид и язык';

  @override
  String get settingsGroupCompression => 'Сжатие';

  @override
  String get settingsGroupAi => 'ИИ на устройстве';

  @override
  String get settingsGroupPrivacy => 'Уведомления и конфиденциальность';

  @override
  String get settingsGroupPlans => 'Планы и покупки';

  @override
  String get settingsGroupAbout => 'О программе';

  @override
  String get settingsGroupLegal => 'Юридическая информация';

  @override
  String get settingsGroupHelp => 'Справка и отзывы';

  @override
  String get settingsGroupAccount => 'Аккаунт';

  @override
  String get settingsAppearanceSubtitle => 'Тема и язык приложения';

  @override
  String get settingsLanguageSubtitle => 'Язык приложения и направление текста';

  @override
  String get settingsCompressionSubtitle => 'Качество и формат по умолчанию';

  @override
  String get settingsStorageSubtitle => 'Использование кеша и хранилища';

  @override
  String get aiSettings => 'Настройки ИИ';

  @override
  String get zumiAssistant => 'Помощник Zumi';

  @override
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere =>
      'Скоро появится личный помощник для ваших видео. Здесь вы сможете задавать вопросы о сжатии, организации и сохранённых видео.';

  @override
  String get settingsAiSubtitle => 'Локальные модели и умные инструменты';

  @override
  String get exploreLocalModelsAndFutureAiToolsTheseOptionsAreNotActiveYet =>
      'Изучайте локальные модели и будущие инструменты ИИ. Эти опции пока недоступны.';

  @override
  String get localModels => 'Локальные модели';

  @override
  String get aiModelsSubtitle =>
      'Просматривайте и скачивайте поддерживаемые модели';

  @override
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere =>
      'Выберите поддерживаемую модель, скачайте её на это устройство и управляйте установленными моделями здесь.';

  @override
  String get importAModel => 'Импорт модели';

  @override
  String get aiImportSubtitle =>
      'Используйте совместимую модель из ваших файлов';

  @override
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt =>
      'Выберите совместимый локальный файл модели и ознакомьтесь с его требованиями перед использованием.';

  @override
  String get smartFeatures => 'Умные функции';

  @override
  String get aiFeaturesSubtitle => 'Сжатие, организация и поиск';

  @override
  String
  get chooseWhichLocalAiSuggestionsToUseForVideoCompressionOrganizationNamingAndSearch =>
      'Выберите, какие локальные AI-предложения использовать для сжатия видео, организации, именования и поиска.';

  @override
  String get modelPerformance => 'Производительность модели';

  @override
  String get aiRuntimeSubtitle => 'Настройки обработки и ресурсов';

  @override
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels =>
      'Контролируйте используемую обработку и лимиты ресурсов для поддерживаемых моделей.';

  @override
  String get conversationSettings => 'Настройки разговора';

  @override
  String get aiChatSettingsSubtitle =>
      'Потоковая передача, размышления и длина ответа';

  @override
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits =>
      'Настройте, как ассистент отвечает, включая потоковую передачу, режим размышления, выборку и ограничения ответов.';

  @override
  String get imagesAndAudio => 'Изображения и аудио';

  @override
  String get aiMediaSubtitle => 'Управление мультимодальными входными данными';

  @override
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos =>
      'Выберите, могут ли совместимые модели анализировать выбранные изображения и аудио из ваших видео.';

  @override
  String get semanticSearch => 'Семантический поиск';

  @override
  String get aiSearchSubtitle => 'Встраивания и локальная индексация';

  @override
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning =>
      'Управляйте локальной моделью встраивания и индексом поиска для нахождения видео и моментов по смыслу.';

  @override
  String get toolsAndStructuredOutput =>
      'Инструменты и структурированный вывод';

  @override
  String get aiToolsSubtitle => 'Действия, схемы и подтверждения';

  @override
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation =>
      'Управляйте поддерживаемыми действиями помощника и структурированными ответами. Действия, которые влияют на файлы, потребуют вашего подтверждения.';

  @override
  String get aiGroupModels => 'Модели';

  @override
  String get aiGroupExperience => 'Опыт работы с помощником';

  @override
  String get aiGroupCapabilities => 'Умные возможности';

  @override
  String get aiGroupPerformance => 'Производительность';

  @override
  String get compressionHistorySubtitle => 'Ваша история сжатых видео';

  @override
  String get settingsNotificationsSubtitle =>
      'Оповещения о завершении и обновлениях';

  @override
  String get settingsPrivacySubtitle => 'Ваши данные остаются локальными';

  @override
  String get plansSubtitle => 'Сравнить тарифные планы и обновить';

  @override
  String get plansMethodsSubtitle => 'Способы оплаты и выставления счетов';

  @override
  String get plansRestoreSubtitle => 'Восстановить предыдущую покупку';

  @override
  String get aboutAppSubtitle => 'Сведения о версии и сборке';

  @override
  String get aboutDeveloperSubtitle => 'Разработчик Zumi';

  @override
  String get aboutLicensesSubtitle =>
      'Лицензии на пакеты с открытым исходным кодом';

  @override
  String get legalPrivacySubtitle => 'Как обрабатываются данные';

  @override
  String get legalTermsSubtitle => 'Правила использования Zumi';

  @override
  String get legalDataSafetySubtitle => 'Какие данные мы собираем';

  @override
  String get legalPermissionsSubtitle => 'Зачем нам нужны разрешения';

  @override
  String get helpFaqSubtitle => 'Ответы на часто задаваемые вопросы';

  @override
  String get helpSupportSubtitle => 'Связаться с разработчиком напрямую';

  @override
  String get helpFeedbackSubtitle => 'Отправьте нам свой отзыв';

  @override
  String get compressionPickVideo => 'Выбрать видео';

  @override
  String get compressionTargetMb => 'Целевой размер (МБ)';

  @override
  String get compressionStart => 'Начать сжатие';

  @override
  String get compressionPause => 'Пауза';

  @override
  String get compressionResume => 'Продолжить';

  @override
  String get compressionViewResult => 'Просмотр результата';

  @override
  String get compressionSaveGallery => 'Сохранить в галерею';

  @override
  String get compressionShare => 'Поделиться видео';

  @override
  String get compressionOriginalSize => 'Исходный размер';

  @override
  String get compressionOutputSize => 'Размер после сжатия';

  @override
  String get compressionEmptyHistory => 'Сжатых видео пока нет';

  @override
  String get compressionSavedGallery => 'Сохранено в галерею';

  @override
  String get compressionInvalidTarget => 'Введите целевой размер больше нуля';

  @override
  String get compressionCancelled => 'Сжатие отменено';

  @override
  String get compressionTargetExceeded =>
      'Это видео не достигло выбранного размера. Попробуйте выбрать больший целевой размер.';

  @override
  String get compressionTargetInfeasible =>
      'Выбранный размер слишком мал для этого видео. Выберите больший размер.';

  @override
  String get compressionPreviewBefore => 'Предварительный просмотр оригинала';

  @override
  String get compressionPreviewAfter => 'Сжатый предварительный просмотр';

  @override
  String get compressionPreset => 'Целевая предустановка';

  @override
  String get compressionCustom => 'Пользовательский размер';

  @override
  String get compressionPreviewUnavailable =>
      'Предварительный просмотр недоступен';

  @override
  String get compressionAdvanced => 'Расширенные настройки';

  @override
  String get compressionAutomatic => 'Автоматически';

  @override
  String get compressionResolutionLimit => 'Максимальное разрешение';

  @override
  String get compressionSourceResolution => 'Оригинальное разрешение';

  @override
  String get compressionFrameRateLimit => 'Максимальная частота кадров';

  @override
  String get compressionAudioQuality => 'Битрейт аудио';

  @override
  String get compressionRemoveAudio => 'Удалить аудио';

  @override
  String get compressionVideoBitrateLimit => 'Потолок битрейта видео (кбит/с)';

  @override
  String get compressionHdrPolicy => 'Обработка HDR';

  @override
  String get compressionHdrConvert => 'Преобразовать в SDR';

  @override
  String get compressionHdrPreserve => 'Сохранять HDR при поддержке';

  @override
  String get compressionPlanPreview => 'Перед началом';

  @override
  String get compressionPlanLoading => 'Вычисление плана сжатия…';

  @override
  String get compressionPlanResolution => 'Планируемое разрешение';

  @override
  String get compressionPlanVideoBitrate => 'Планируемый битрейт видео';

  @override
  String get compressionPlanAudioBitrate => 'Планируемый битрейт аудио';

  @override
  String get compressionAudioConversionNote =>
      'Пере-кодирование преобразует аудио в AAC стерео. Dolby Atmos и DTS пространственное аудио не будут сохранены.';

  @override
  String get compressionPlanTooSmall =>
      'Эта цель слишком мала для пригодного видео. Увеличьте размер или снизьте другие ограничения.';

  @override
  String get compressionPlanLowQuality =>
      'Выбранная цель может снизить качество видео.';

  @override
  String get compressionPlanAlreadyWithinLimit =>
      'Источник уже находится в пределах допустимого размера.';

  @override
  String get compressionInvalidBitrate =>
      'Введите битрейт не менее 150 кбит/с или оставьте поле пустым для автоматического выбора.';

  @override
  String get compressionInvalidResolution =>
      'Введите четное разрешение от 240 до 16384, или оставьте поле пустым для автоматического выбора.';

  @override
  String get compressionSeek => 'Положение видео';

  @override
  String get compressionInterrupted =>
      'Предыдущая компрессия была прервана. Временные файлы были удалены; вы можете выбрать видео и попробовать снова.';

  @override
  String get compressionDismiss => 'Закрыть';

  @override
  String get compressionClearHistory => 'Очистить историю';

  @override
  String get compressionClearHistoryConfirm =>
      'Удалить все записи истории? Сохранённые видео останутся на вашем устройстве.';

  @override
  String get compressionAttempts => 'Попытки';

  @override
  String get compressionTargetSize => 'Целевой размер';

  @override
  String get compressionOutputResolution => 'Разрешение вывода';

  @override
  String get compressionInvalidVideo =>
      'Это видео не удалось прочитать. Выберите другой файл.';

  @override
  String get compressionInvalidOutput =>
      'Закодированное видео не прошло проверку. Ваш оригинальный видеофайл не был изменён.';

  @override
  String get compressionEncoderUnsupported =>
      'Это устройство не может кодировать выбранное разрешение или частоту кадров. Уменьшите эту настройку и попробуйте снова.';

  @override
  String get compressionAudioDecoderUnsupported =>
      'Это устройство не может декодировать этот аудиоформат для сжатия. Удалите аудио или используйте поддерживаемый источник.';

  @override
  String get compressionVideoDecoderUnsupported =>
      'Это устройство не может декодировать этот видеоформат или профиль сжатия. Выберите другой источник или устройство.';

  @override
  String get compressionMp4NotStreamable =>
      'Экспортированный MP4 не готов для стриминга. Попробуйте другое видео или устройство.';

  @override
  String get compressionNoSpace =>
      'Недостаточно свободного места для сжатия этого видео.';

  @override
  String get compressionHdrUnsupported =>
      'Это устройство не может обработать выбранный режим HDR. Попробуйте конвертировать в SDR.';

  @override
  String get compressionGeneralFailure =>
      'Не удалось завершить сжатие. Попробуйте другой параметр или видео.';

  @override
  String get aboutIdentitySection => 'Идентификатор приложения';

  @override
  String get aboutAppName => 'Название приложения';

  @override
  String get aboutPackageName => 'Имя пакета';

  @override
  String get aboutVersion => 'Версия';

  @override
  String get aboutBuildNumber => 'Номер сборки';

  @override
  String get aboutEnvironmentSection => 'Устройство и сборка';

  @override
  String get aboutOperatingSystem => 'Операционная система';

  @override
  String get aboutOsVersion => 'Версия ОС';

  @override
  String get aboutBuildMode => 'Режим сборки';

  @override
  String get aboutDebug => 'Отладка';

  @override
  String get aboutRelease => 'Релиз';

  @override
  String get aboutToolchainSection => 'Создано с помощью';

  @override
  String get aboutInstallationSection => 'Установка';

  @override
  String get aboutInstaller => 'Установлено из';

  @override
  String get aboutInstalledOn => 'Установлено на';

  @override
  String get aboutUpdatedOn => 'Обновлено';

  @override
  String get aboutUnavailable => 'Недоступно';

  @override
  String get aboutProjectSection => 'Проект и поддержка';

  @override
  String get aboutRepository => 'Репозиторий на GitHub';

  @override
  String get aboutRepositorySubtitle => 'Просмотреть исходный код Zumi';

  @override
  String get aboutReadme => 'Прочитать README';

  @override
  String get aboutReadmeSubtitle => 'Узнать о Zumi на GitHub';

  @override
  String get aboutIssues => 'Сообщить о проблеме';

  @override
  String get aboutIssuesSubtitle => 'Просмотреть и создать задачи на GitHub';

  @override
  String get aboutLatestRelease => 'Последний выпуск';

  @override
  String get aboutLatestReleaseSubtitle => 'Просмотреть выпуски и загрузки';

  @override
  String get aboutDonate => 'Поддержать Zumi';

  @override
  String get aboutDonateSubtitle =>
      'Открыть официальную страницу пожертвований';

  @override
  String get aboutLinkError =>
      'Не удалось открыть ссылку. Пожалуйста, попробуйте еще раз.';

  @override
  String get aboutDeveloperSection => 'Разработчик';

  @override
  String get aboutDeveloperName => 'Mostafa Sensei';

  @override
  String get aboutDeveloperProfile => 'Профиль на GitHub';

  @override
  String get aboutDeveloperProfileSubtitle =>
      'Посмотреть проекты и контактные данные';

  @override
  String get maintenanceInProgress => 'Идёт техническое обслуживание';

  @override
  String get maintenanceMessage =>
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
