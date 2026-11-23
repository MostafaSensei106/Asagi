// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class AppLocalizationsPl extends AppLocalizations {
  AppLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String get asagi => 'Asagi';

  @override
  String get downloadFile => 'Pobierz plik';

  @override
  String fileOpenedInBrowser(String fileName) {
    return 'Plik otwarty w przeglądarce: $fileName';
  }

  @override
  String fileSavedToGallery(String fileName) {
    return 'Plik zapisany w galerii: $fileName';
  }

  @override
  String fileSavedToDocuments(String fileName) {
    return 'Plik zapisany w dokumentach: $fileName';
  }

  @override
  String get fileIsAlreadySaved => 'Plik jest już zapisany';

  @override
  String get error => 'Błąd';

  @override
  String get info => 'Informacja';

  @override
  String get success => 'Sukces';

  @override
  String get warning => 'Ostrzeżenie';

  @override
  String get paid => 'Opłacone';

  @override
  String get unpaid => 'Nieopłacone';

  @override
  String get partial => 'Częściowo';

  @override
  String get addressLineCannotBeEmpty => 'Linia adresu nie może być pusta';

  @override
  String get addressLineIsTooLong => 'Linia adresu jest za długa';

  @override
  String get specialCharactersAreNotAllowed =>
      'Znaki specjalne są niedozwolone';

  @override
  String get emojisAreNotAllowed => 'Emotikony są niedozwolone';

  @override
  String get cityCannotBeEmpty => 'Miasto nie może być puste';

  @override
  String get cityNameIsTooLong => 'Nazwa miasta jest za długa';

  @override
  String get cityContainsInvalidSpecialCharacters =>
      'Miasto zawiera niedozwolone znaki specjalne';

  @override
  String get addressLabelCannotBeEmpty => 'Etykieta adresu nie może być pusta';

  @override
  String get addressLabelIsTooLong => 'Etykieta adresu jest za długa';

  @override
  String get emailCannotBeEmpty => 'Email nie może być pusty';

  @override
  String get invalidEmailFormat => 'Nieprawidłowy format emaila';

  @override
  String get emailContainsInvalidCharacters =>
      'Email zawiera nieprawidłowe znaki';

  @override
  String get emailMustContain => 'Email musi zawierać @';

  @override
  String get emailMustBeInLowercase =>
      'Email musi być napisany małymi literami';

  @override
  String get arabicCharactersAreNotAllowed => 'Znaki arabskie nie są dozwolone';

  @override
  String get emojisAreNotAllowedInEmail => 'Emoji nie są dozwolone w emailu';

  @override
  String get phoneNumberCannotBeEmpty => 'Numer telefonu nie może być pusty';

  @override
  String get invalidPhoneNumber => 'Nieprawidłowy numer telefonu';

  @override
  String get phoneNumberMustBeAtLeast11Digits =>
      'Numer telefonu musi zawierać co najmniej 11 cyfr';

  @override
  String get nameCannotBeEmpty => 'Imię nie może być puste';

  @override
  String get invalidName => 'Nieprawidłowe imię';

  @override
  String get nameMustBeAtLeast3Characters =>
      'Imię musi mieć co najmniej 3 znaki';

  @override
  String get nameCannotExceed20Characters =>
      'Imię nie może mieć więcej niż 20 znaków';

  @override
  String get nameContainsInvalidSpecialCharacters =>
      'Imię zawiera nieprawidłowe znaki specjalne';

  @override
  String get emojisAreNotAllowedInName => 'Emoji nie są dozwolone w imieniu';

  @override
  String get passwordCannotBeEmpty => 'Hasło nie może być puste';

  @override
  String get passwordMustContainUppercaseLowercaseNumberAndSpecialCharacter =>
      'Hasło musi zawierać wielką literę, małą literę, cyfrę i znak specjalny';

  @override
  String get passwordMustBeAtLeast8CharactersLong =>
      'Hasło musi mieć co najmniej 8 znaków';

  @override
  String get noInternetConnection => 'Brak połączenia z internetem';

  @override
  String get internetConnectionRestored =>
      'Połączenie z internetem przywrócone';

  @override
  String get retry => 'Ponów próbę';

  @override
  String get confirm => 'Potwierdź';

  @override
  String get ok => 'OK';

  @override
  String get compressVideosPrivatelyOnYourDevice =>
      'Kompresuj filmy prywatnie na swoim urządzeniu.';

  @override
  String get welcomeToAsagi => 'Witamy w Asagi';

  @override
  String get learnHowAsagiCompressesYourVideosWithoutEverLeavingYourPhone =>
      'Dowiedz się, jak Asagi kompresuje Twoje filmy, nie opuszczając telefonu.';

  @override
  String get signIn => 'Zaloguj się';

  @override
  String get signInToSyncYourPlanAndKeepYourPurchasesAvailableOnEveryDevice =>
      'Zaloguj się, aby zsynchronizować swój plan i mieć dostęp do zakupów na każdym urządzeniu.';

  @override
  String get chooseAVideo => 'Wybierz wideo';

  @override
  String get pickAVideoFromYourGalleryToStartCompressing =>
      'Wybierz wideo z galerii, aby rozpocząć kompresję.';

  @override
  String get compressionSetup => 'Ustawienia kompresji';

  @override
  String get chooseResolutionBitrateAndOutputFormatBeforeYouStart =>
      'Wybierz rozdzielczość, bitrate i format wyjściowy zanim zaczniesz.';

  @override
  String get compressing => 'Kompresja';

  @override
  String get followTheLiveProgressOfYourCompressionJob =>
      'Śledź na żywo postęp swojego zadania kompresji.';

  @override
  String get compressionResult => 'Wynik kompresji';

  @override
  String get compareTheBeforeAndAfterSizeThenSaveOrShareTheResult =>
      'Porównaj rozmiar przed i po, a następnie zapisz lub udostępnij wynik.';

  @override
  String get compressionHistory => 'Historia kompresji';

  @override
  String get reviewTheVideosYouHaveCompressedOnThisDevice =>
      'Przejrzyj filmy, które skompresowałeś na tym urządzeniu.';

  @override
  String get settings => 'Ustawienia';

  @override
  String get appearance => 'Wygląd';

  @override
  String get themeColorSchemeAndMotionPreferences =>
      'Motyw, schemat kolorów i preferencje ruchu.';

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
  String get language => 'Język';

  @override
  String get appLanguageAndTextDirection =>
      'Język aplikacji i kierunek tekstu.';

  @override
  String get compressionDefaults => 'Domyślne ustawienia kompresji';

  @override
  String get defaultResolutionBitrateAndOutputFormat =>
      'Domyślna rozdzielczość, bitrate i format wyjściowy.';

  @override
  String get storageCleanup => 'Pamięć i czyszczenie';

  @override
  String get storageUsageCacheSizeAndTemporaryFileCleanup =>
      'Użycie pamięci, rozmiar pamięci podręcznej i czyszczenie plików tymczasowych.';

  @override
  String get notifications => 'Powiadomienia';

  @override
  String get jobCompletionAndProductUpdateNotifications =>
      'Powiadomienia o zakończeniu pracy i aktualizacjach produktu.';

  @override
  String get privacy => 'Prywatność';

  @override
  String get onDeviceProcessingLocalLogsAndOptionalCrashReports =>
      'Przetwarzanie na urządzeniu, lokalne dzienniki i opcjonalne raporty o awariach.';

  @override
  String get aboutAsagi => 'O Asagi';

  @override
  String get versionBuildNumberAndApplicationDetails =>
      'Wersja, numer kompilacji i szczegóły aplikacji.';

  @override
  String get aboutTheDeveloper => 'O deweloperze';

  @override
  String get theDeveloperAndToolsBehindAsagi =>
      'Deweloper i narzędzia stojące zan Asagi.';

  @override
  String get openSourcePackagesBundledWithAsagi =>
      'Pakiety open-source dołączone do Asagi.';

  @override
  String get privacyPolicy => 'Polityka prywatności';

  @override
  String get howAsagiHandlesYourVideosAndData =>
      'Jak Asagi obsługuje Twoje filmy i dane.';

  @override
  String get termsOfService => 'Warunki świadczenia usług';

  @override
  String get theTermsThatApplyToAsagiAndItsPurchases =>
      'Warunki, które obowiązują w Asagi i przy jego zakupach.';

  @override
  String get dataSafety => 'Bezpieczeństwo danych';

  @override
  String get summaryOfTheDataAsagiCollectsAndWhy =>
      'Podsumowanie danych, które Asagi zbiera i dlaczego.';

  @override
  String get permissions => 'Uprawnienia';

  @override
  String get runtimePermissionsAsagiRequestsAndWhyEachIsNeeded =>
      'Uprawnienia w czasie działania, o które prosi Asagi i dlaczego każde jest potrzebne.';

  @override
  String get faq => 'FAQ';

  @override
  String get answersToCommonQuestionsAboutCompressionAndBilling =>
      'Odpowiedzi na często zadawane pytania dotyczące kompresji i rozliczeń.';

  @override
  String get support => 'Wsparcie';

  @override
  String get getHelpWithYourAccountOrAPurchase =>
      'Uzyskaj pomoc dotyczącą konta lub zakupu.';

  @override
  String get sendFeedback => 'Wyślij opinię';

  @override
  String get reportAProblemOrSuggestAnImprovement =>
      'Zgłoś problem lub zasugeruj poprawkę.';

  @override
  String get plans => 'Plany';

  @override
  String get comparePlansAndSeeWhatEachOneUnlocks =>
      'Porównaj plany i zobacz, co każdy odblokowuje.';

  @override
  String get planDetails => 'Szczegóły planu';

  @override
  String get benefitsLimitsAndPricingForThisPlan =>
      'Korzyści, limity i ceny dla tego planu.';

  @override
  String get paymentMethods => 'Metody płatności';

  @override
  String get supportedWaysToPayIncludingStoreBilling =>
      'Obsługiwane sposoby płatności, w tym rozliczenia w sklepie.';

  @override
  String get restorePurchases => 'Przywróć zakupy';

  @override
  String get reApplyAPurchaseMadeOnAnotherDevice =>
      'Ponownie zastosuj zakup dokonany na innym urządzeniu.';

  @override
  String get profile => 'Profil';

  @override
  String get yourIdentityPlanStatusAndAccountPreferences =>
      'Twoja tożsamość, status planu i ustawienia konta.';

  @override
  String get deleteAccount => 'Usuń konto';

  @override
  String get permanentlyRemoveYourAccountAndItsServerSideData =>
      'Trwale usuń swoje konto i jego dane po stronie serwera.';

  @override
  String get rateAsagi => 'Oceń Asagi';

  @override
  String get tellOthersHowAsagiWorkedForYouOnTheStore =>
      'Powiedz innym, jak Asagi działał dla Ciebie w sklepie.';

  @override
  String get shareAsagi => 'Udostępnij Asagi';

  @override
  String get recommendAsagiToAFriend => 'Poleć Asagi znajomemu.';

  @override
  String get appearanceLanguage => 'Wygląd i język';

  @override
  String get compression => 'Kompresja';

  @override
  String get onDeviceAI => 'AI na urządzeniu';

  @override
  String get notificationsPrivacy => 'Powiadomienia i prywatność';

  @override
  String get plansPurchases => 'Plany i zakupy';

  @override
  String get about => 'O aplikacji';

  @override
  String get legal => 'Prawne';

  @override
  String get helpFeedback => 'Pomoc i opinie';

  @override
  String get account => 'Konto';

  @override
  String get themeAndAppLanguage => 'Motyw i język aplikacji';

  @override
  String get appLanguageAndDirection => 'Język aplikacji i kierunek';

  @override
  String get defaultQualityAndFormat => 'Domyślna jakość i format';

  @override
  String get cacheAndStorageUsage => 'Użycie pamięci podręcznej i magazynu';

  @override
  String get aiSettings => 'Ustawienia AI';

  @override
  String get asagiAssistant => 'Asystent Asagi';

  @override
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere =>
      'Wkrótce pojawi się prywatny asystent dla Twoich filmów. Będziesz mógł pytać tutaj o kompresję, organizację i zapisane filmy.';

  @override
  String get localModelsAndSmartTools =>
      'Modele lokalne i inteligentne narzędzia';

  @override
  String get exploreLocalModelsAndFutureAIToolsTheseOptionsAreNotActiveYet =>
      'Eksploruj modele lokalne i przyszłe narzędzia AI. Te opcje nie są jeszcze aktywne.';

  @override
  String get localModels => 'Modele lokalne';

  @override
  String get browseAndDownloadSupportedModels =>
      'Przeglądaj i pobieraj obsługiwane modele';

  @override
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere =>
      'Wybierz obsługiwany model, pobierz go na to urządzenie i zarządzaj tutaj zainstalowanymi modelami.';

  @override
  String get importAModel => 'Importuj model';

  @override
  String get useACompatibleModelFromYourFiles =>
      'Użyj zgodnego modelu z Twoich plików';

  @override
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt =>
      'Wybierz kompatybilny lokalny plik modelu i sprawdź jego wymagania przed użyciem.';

  @override
  String get smartFeatures => 'Inteligentne funkcje';

  @override
  String get compressionOrganizationAndSearch =>
      'Kompresja, organizacja i wyszukiwanie';

  @override
  String
  get chooseWhichLocalAISuggestionsToUseForVideoCompressionOrganizationNamingAndSearch =>
      'Wybierz, których lokalnych sugestii AI używać do kompresji wideo, organizacji, nazywania i wyszukiwania.';

  @override
  String get modelPerformance => 'Wydajność modelu';

  @override
  String get processingAndResourcePreferences =>
      'Preferencje przetwarzania i zasobów';

  @override
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels =>
      'Kontroluj zaplecze przetwarzania i limity zasobów dla obsługiwanych modeli.';

  @override
  String get conversationSettings => 'Ustawienia rozmowy';

  @override
  String get streamingThinkingAndResponseLength =>
      'Transmisja, przemyślenia i długość odpowiedzi';

  @override
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits =>
      'Skonfiguruj, jak asystent odpowiada, w tym transmisję strumieniową, tryb myślenia, próbkowanie i limity odpowiedzi.';

  @override
  String get imagesAndAudio => 'Obrazy i dźwięk';

  @override
  String get controlMultimodalInputs => 'Kontroluj multimodalne wejścia';

  @override
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos =>
      'Wybierz, czy kompatybilne modele mogą analizować wybrane obrazy i dźwięki z Twoich filmów.';

  @override
  String get semanticSearch => 'Wyszukiwanie semantyczne';

  @override
  String get embeddingsAndLocalIndexing => 'Embeddings i lokalne indeksowanie';

  @override
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning =>
      'Zarządzaj lokalnym modelem embedding i indeksem wyszukiwania w celu znajdowania filmów i momentów według znaczenia.';

  @override
  String get toolsAndStructuredOutput => 'Narzędzia i strukturalne wyniki';

  @override
  String get actionsSchemasAndConfirmations =>
      'Działania, schematy i potwierdzenia';

  @override
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation =>
      'Zarządzaj obsługiwanymi działaniami asystenta i uporządkowanymi odpowiedziami. Działania wpływające na pliki będą wymagały Twojego potwierdzenia.';

  @override
  String get models => 'Modele';

  @override
  String get assistantExperience => 'Doświadczenie asystenta';

  @override
  String get smartCapabilities => 'Inteligentne funkcje';

  @override
  String get performance => 'Wydajność';

  @override
  String get yourCompressedVideoHistory => 'Twoja skompresowana historia wideo';

  @override
  String get completionAndUpdateAlerts =>
      'Powiadomienia o ukończeniu i aktualizacjach';

  @override
  String get yourDataStaysLocal => 'Twoje dane pozostają lokalne';

  @override
  String get comparePlansAndUpgrade => 'Porównaj plany i ulepsz';

  @override
  String get paymentMethodsAndBilling => 'Metody płatności i rozliczenia';

  @override
  String get restoreYourPreviousPurchase => 'Przywróć wcześniejszy zakup';

  @override
  String get versionAndBuildDetails => 'Szczegóły wersji i kompilacji';

  @override
  String get theDeveloperBehindAsagi => 'Twórca stojący zan Asagi';

  @override
  String get openSourcePackageLicenses => 'Licencje pakietów open source';

  @override
  String get howDataIsHandled => 'Jak przetwarzane są dane';

  @override
  String get rulesForUsingAsagi => 'Zasady korzystania z Asagi';

  @override
  String get whatDataWeCollect => 'Jakie dane zbieramy';

  @override
  String get whyWeNeedPermissions => 'Dlaczego potrzebujemy uprawnień';

  @override
  String get answersToCommonQuestions =>
      'Odpowiedzi na często zadawane pytania';

  @override
  String get reachTheDeveloperDirectly =>
      'Skontaktuj się bezpośrednio z deweloperem';

  @override
  String get sendUsYourFeedback => 'Wyślij nam swoją opinię';

  @override
  String get pickVideo => 'Wybierz wideo';

  @override
  String get targetSizeMB => 'Docelowy rozmiar (MB)';

  @override
  String get startCompression => 'Rozpocznij kompresję';

  @override
  String get pause => 'Wstrzymaj';

  @override
  String get resume => 'Wznów';

  @override
  String get viewResult => 'Zobacz wynik';

  @override
  String get saveToGallery => 'Zapisz w galerii';

  @override
  String get shareVideo => 'Udostępnij wideo';

  @override
  String get originalSize => 'Rozmiar oryginalny';

  @override
  String get outputSize => 'Rozmiar wyjściowy';

  @override
  String get noCompressedVideosYet => 'Brak skompresowanych wideo';

  @override
  String get savedToGallery => 'Zapisano w galerii';

  @override
  String get enterATargetSizeGreaterThanZero =>
      'Wprowadź docelowy rozmiar większy od zera';

  @override
  String get compressionCancelled => 'Kompresja anulowana';

  @override
  String get thisVideoCouldNotReachTheSelectedSizeTryALargerTargetSize =>
      'To wideo nie osiągnęło wybranego rozmiaru. Spróbuj większego docelowego rozmiaru.';

  @override
  String get theSelectedSizeIsTooSmallForThisVideoChooseALargerSize =>
      'Wybrany rozmiar jest za mały dla tego wideo. Wybierz większy rozmiar.';

  @override
  String get originalPreview => 'Podgląd oryginalny';

  @override
  String get compressedPreview => 'Skompresowany podgląd';

  @override
  String get targetPreset => 'Docelowy preset';

  @override
  String get customSize => 'Rozmiar niestandardowy';

  @override
  String get previewUnavailable => 'Podgląd niedostępny';

  @override
  String get advancedControls => 'Zaawansowane sterowanie';

  @override
  String get automatic => 'Automatyczny';

  @override
  String get maximumResolution => 'Maksymalna rozdzielczość';

  @override
  String get originalResolution => 'Oryginalna rozdzielczość';

  @override
  String get maximumFrameRate => 'Maksymalna liczba klatek na sekundę';

  @override
  String get audioBitrate => 'Prędkość transmisji dźwięku';

  @override
  String get removeAudio => 'Usuń dźwięk';

  @override
  String get videoBitrateCeilingKbps => 'Maksymalna przepływność wideo (kbps)';

  @override
  String get hdrHandling => 'Obsługa HDR';

  @override
  String get convertToSDR => 'Konwersja do SDR';

  @override
  String get keepHDRWhenSupported => 'Zachowaj HDR, jeśli jest obsługiwany';

  @override
  String get beforeYouStart => 'Zanim zaczniesz';

  @override
  String get calculatingCompressionPlan => 'Obliczanie planu kompresji…';

  @override
  String get plannedResolution => 'Planowana rozdzielczość';

  @override
  String get plannedVideoBitrate => 'Planowana przepływność wideo';

  @override
  String get plannedAudioBitrate => 'Planowana przepływność dźwięku';

  @override
  String
  get reEncodingConvertsAudioToAACStereoDolbyAtmosAndDTSSpatialAudioWillNotBePreserved =>
      'Ponowne kodowanie zmienia dźwięk na AAC stereo. Dolby Atmos i przestrzenny dźwięk DTS nie zostaną zachowane.';

  @override
  String
  get thisTargetIsTooSmallForAUsableVideoIncreaseTheSizeOrLowerOtherLimits =>
      'Ten cel jest zbyt mały, aby uzyskać użyteczne wideo. Zwiększ rozmiar lub obniż inne limity.';

  @override
  String get theSelectedTargetMayReduceVideoQuality =>
      'Wybrany cel może pogorszyć jakość wideo.';

  @override
  String get theSourceIsAlreadyWithinTheSizeLimit =>
      'Źródło już mieści się w limicie rozmiaru.';

  @override
  String get enterABitrateOfAtLeast150KbpsOrLeaveBlankForAutomatic =>
      'Wprowadź bitrate przynajmniej 150 kbps lub pozostaw puste, aby ustawić automatycznie.';

  @override
  String get enterAnEvenResolutionFrom240To16384OrLeaveBlankForAutomatic =>
      'Wprowadź parzystą rozdzielczość od 240 do 16384 lub pozostaw puste, aby ustawić automatycznie.';

  @override
  String get videoPosition => 'Pozycja wideo';

  @override
  String
  get aPreviousCompressionWasInterruptedItsTemporaryFilesWereCleanedUpYouCanSelectTheVideoAndTryAgain =>
      'Poprzednia kompresja została przerwana. Jej pliki tymczasowe zostały usunięte; możesz wybrać wideo i spróbować ponownie.';

  @override
  String get dismiss => 'Odrzuć';

  @override
  String get clearHistory => 'Wyczyść historię';

  @override
  String get removeAllHistoryEntriesSavedVideosWillRemainOnYourDevice =>
      'Usunąć wszystkie wpisy historii? Zapisane filmy pozostaną na twoim urządzeniu.';

  @override
  String get attempts => 'Próby';

  @override
  String get targetSize => 'Docelowy rozmiar';

  @override
  String get outputResolution => 'Rozdzielczość wyjściowa';

  @override
  String get thisVideoCouldNotBeReadChooseAnotherFile =>
      'Nie można odczytać tego wideo. Wybierz inny plik.';

  @override
  String get theEncodedVideoFailedVerificationYourOriginalVideoWasNotChanged =>
      'Skompresowane wideo nie przeszło weryfikacji. Twój oryginalny film nie został zmieniony.';

  @override
  String
  get thisDeviceCannotEncodeTheSelectedResolutionOrFrameRateLowerThatSettingAndTryAgain =>
      'To urządzenie nie może zakodować wybranej rozdzielczości lub liczby klatek na sekundę. Zmniejsz to ustawienie i spróbuj ponownie.';

  @override
  String
  get thisDeviceCannotDecodeThisAudioFormatForCompressionRemoveAudioOrUseASupportedSource =>
      'To urządzenie nie może dekodować tego formatu audio do kompresji. Usuń audio lub użyj obsługiwanego źródła.';

  @override
  String
  get thisDeviceCannotDecodeThisVideoFormatOrProfileForCompressionChooseAnotherSourceOrDevice =>
      'To urządzenie nie może dekodować tego formatu wideo ani profilu kompresji. Wybierz inne źródło lub urządzenie.';

  @override
  String get theExportedMP4IsNotReadyForStreamingTryAnotherVideoOrDevice =>
      'Wyeksportowany plik MP4 nie jest gotowy do streamingu. Spróbuj innego wideo lub urządzenia.';

  @override
  String get thereIsNotEnoughFreeStorageToCompressThisVideo =>
      'Nie ma wystarczającej ilości wolnego miejsca, aby skompresować to wideo.';

  @override
  String get thisDeviceCannotProcessTheSelectedHDRModeTryConvertingToSDR =>
      'To urządzenie nie może przetworzyć wybranego trybu HDR. Spróbuj konwersji do SDR.';

  @override
  String get compressionCouldNotBeCompletedTryAnotherSettingOrVideo =>
      'Nie udało się zakończyć kompresji. Spróbuj innych ustawień lub wideo.';

  @override
  String get appIdentity => 'Tożsamość aplikacji';

  @override
  String get appName => 'Nazwa aplikacji';

  @override
  String get packageName => 'Nazwa pakietu';

  @override
  String get version => 'Wersja';

  @override
  String get buildNumber => 'Numer kompilacji';

  @override
  String get deviceAndBuild => 'Urządzenie i kompilacja';

  @override
  String get operatingSystem => 'System operacyjny';

  @override
  String get osVersion => 'Wersja systemu';

  @override
  String get buildMode => 'Tryb kompilacji';

  @override
  String get debug => 'Debugowanie';

  @override
  String get release => 'Wersja produkcyjna';

  @override
  String get builtWith => 'Zbudowano z';

  @override
  String get installation => 'Instalacja';

  @override
  String get installedFrom => 'Zainstalowano z';

  @override
  String get installedOn => 'Zainstalowano na';

  @override
  String get updatedOn => 'Zaktualizowano dnia';

  @override
  String get unavailable => 'Niedostępne';

  @override
  String get projectAndSupport => 'Projekt i wsparcie';

  @override
  String get githubRepository => 'Repozytorium GitHub';

  @override
  String get viewAsagiSourceCode => 'Wyświetl kod źródłowy Asagi';

  @override
  String get readTheREADME => 'Przeczytaj README';

  @override
  String get learnAboutAsagiOnGitHub => 'Dowiedz się o Asagi na GitHub';

  @override
  String get reportAnIssue => 'Zgłoś problem';

  @override
  String get viewAndCreateGitHubIssues =>
      'Wyświetlaj i twórz zgłoszenia na GitHub';

  @override
  String get latestRelease => 'Najnowsze wydanie';

  @override
  String get viewReleasesAndDownloads => 'Wyświetl wydania i pobierz';

  @override
  String get supportAsagi => 'Wsparcie Asagi';

  @override
  String get openTheOfficialDonationPage => 'Otwórz oficjalną stronę darowizn';

  @override
  String get couldNotOpenTheLinkPleaseTryAgain =>
      'Nie można otworzyć linku. Spróbuj ponownie.';

  @override
  String get developer => 'Deweloper';

  @override
  String get mostafaSensei => 'Mostafa Sensei';

  @override
  String get githubProfile => 'Profil GitHub';

  @override
  String get seeProjectsAndContactDetails =>
      'Zobacz projekty i dane kontaktowe';

  @override
  String get maintenanceInProgress => 'Konserwacja w toku';

  @override
  String get asagiIsTemporarilyUnavailablePleaseTryAgainLater =>
      'Asagi jest tymczasowo niedostępny. Spróbuj ponownie później.';

  @override
  String get comingSoon => 'Wkrótce';

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
  String get pleaseWait => 'Proszę czekać...';

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
  String get cancel => 'Anuluj';

  @override
  String get clean => 'Clean';

  @override
  String get openSourceLicenses => 'Licencje open-source';

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
  String get languageName => 'Polski';

  @override
  String get countryCode => 'PL';

  @override
  String countryName(String countryCode) {
    String _temp0 = intl.Intl.selectLogic(countryCode, {
      'AE': 'Zjednoczone Emiraty Arabskie',
      'AT': 'Austria',
      'AU': 'Australia',
      'BE': 'Belgia',
      'BH': 'Bahrajn',
      'BR': 'Brazylia',
      'CA': 'Kanada',
      'CH': 'Szwajcaria',
      'CN': 'Chiny',
      'DE': 'Niemcy',
      'DJ': 'Dżibuti',
      'DZ': 'Algieria',
      'EG': 'Egipt',
      'ES': 'Hiszpania',
      'FR': 'Francja',
      'GB': 'Wielka Brytania',
      'HK': 'SRA Hongkong (Chiny)',
      'ID': 'Indonezja',
      'IQ': 'Irak',
      'IT': 'Włochy',
      'JO': 'Jordania',
      'JP': 'Japonia',
      'KM': 'Komory',
      'KR': 'Korea Południowa',
      'KW': 'Kuwejt',
      'LB': 'Liban',
      'LY': 'Libia',
      'MA': 'Maroko',
      'MR': 'Mauretania',
      'MX': 'Meksyk',
      'NL': 'Holandia',
      'OM': 'Oman',
      'PL': 'Polska',
      'PS': 'Terytoria Palestyńskie',
      'PT': 'Portugalia',
      'QA': 'Katar',
      'RU': 'Rosja',
      'SA': 'Arabia Saudyjska',
      'SD': 'Sudan',
      'SE': 'Szwecja',
      'SG': 'Singapur',
      'SO': 'Somalia',
      'SY': 'Syria',
      'TH': 'Tajlandia',
      'TN': 'Tunezja',
      'TR': 'Turcja',
      'TW': 'Tajwan',
      'US': 'Stany Zjednoczone',
      'VN': 'Wietnam',
      'YE': 'Jemen',
      'other': 'Kraj',
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
}

/// The translations for Polish, as used in Poland (`pl_PL`).
class AppLocalizationsPlPl extends AppLocalizationsPl {
  AppLocalizationsPlPl() : super('pl_PL');

  @override
  String get asagi => 'Asagi';

  @override
  String get downloadFile => 'Pobierz plik';

  @override
  String fileOpenedInBrowser(String fileName) {
    return 'Plik otwarty w przeglądarce: $fileName';
  }

  @override
  String fileSavedToGallery(String fileName) {
    return 'Plik zapisany w galerii: $fileName';
  }

  @override
  String fileSavedToDocuments(String fileName) {
    return 'Plik zapisany w dokumentach: $fileName';
  }

  @override
  String get fileIsAlreadySaved => 'Plik jest już zapisany';

  @override
  String get error => 'Błąd';

  @override
  String get info => 'Informacja';

  @override
  String get success => 'Sukces';

  @override
  String get warning => 'Ostrzeżenie';

  @override
  String get paid => 'Opłacone';

  @override
  String get unpaid => 'Nieopłacone';

  @override
  String get partial => 'Częściowo';

  @override
  String get addressLineCannotBeEmpty => 'Linia adresu nie może być pusta';

  @override
  String get addressLineIsTooLong => 'Linia adresu jest za długa';

  @override
  String get specialCharactersAreNotAllowed =>
      'Znaki specjalne są niedozwolone';

  @override
  String get emojisAreNotAllowed => 'Emotikony są niedozwolone';

  @override
  String get cityCannotBeEmpty => 'Miasto nie może być puste';

  @override
  String get cityNameIsTooLong => 'Nazwa miasta jest za długa';

  @override
  String get cityContainsInvalidSpecialCharacters =>
      'Miasto zawiera niedozwolone znaki specjalne';

  @override
  String get addressLabelCannotBeEmpty => 'Etykieta adresu nie może być pusta';

  @override
  String get addressLabelIsTooLong => 'Etykieta adresu jest za długa';

  @override
  String get emailCannotBeEmpty => 'Email nie może być pusty';

  @override
  String get invalidEmailFormat => 'Nieprawidłowy format emaila';

  @override
  String get emailContainsInvalidCharacters =>
      'Email zawiera nieprawidłowe znaki';

  @override
  String get emailMustContain => 'Email musi zawierać @';

  @override
  String get emailMustBeInLowercase =>
      'Email musi być napisany małymi literami';

  @override
  String get arabicCharactersAreNotAllowed => 'Znaki arabskie nie są dozwolone';

  @override
  String get emojisAreNotAllowedInEmail => 'Emoji nie są dozwolone w emailu';

  @override
  String get phoneNumberCannotBeEmpty => 'Numer telefonu nie może być pusty';

  @override
  String get invalidPhoneNumber => 'Nieprawidłowy numer telefonu';

  @override
  String get phoneNumberMustBeAtLeast11Digits =>
      'Numer telefonu musi zawierać co najmniej 11 cyfr';

  @override
  String get nameCannotBeEmpty => 'Imię nie może być puste';

  @override
  String get invalidName => 'Nieprawidłowe imię';

  @override
  String get nameMustBeAtLeast3Characters =>
      'Imię musi mieć co najmniej 3 znaki';

  @override
  String get nameCannotExceed20Characters =>
      'Imię nie może mieć więcej niż 20 znaków';

  @override
  String get nameContainsInvalidSpecialCharacters =>
      'Imię zawiera nieprawidłowe znaki specjalne';

  @override
  String get emojisAreNotAllowedInName => 'Emoji nie są dozwolone w imieniu';

  @override
  String get passwordCannotBeEmpty => 'Hasło nie może być puste';

  @override
  String get passwordMustContainUppercaseLowercaseNumberAndSpecialCharacter =>
      'Hasło musi zawierać wielką literę, małą literę, cyfrę i znak specjalny';

  @override
  String get passwordMustBeAtLeast8CharactersLong =>
      'Hasło musi mieć co najmniej 8 znaków';

  @override
  String get noInternetConnection => 'Brak połączenia z internetem';

  @override
  String get internetConnectionRestored =>
      'Połączenie z internetem przywrócone';

  @override
  String get retry => 'Ponów próbę';

  @override
  String get confirm => 'Potwierdź';

  @override
  String get ok => 'OK';

  @override
  String get compressVideosPrivatelyOnYourDevice =>
      'Kompresuj filmy prywatnie na swoim urządzeniu.';

  @override
  String get welcomeToAsagi => 'Witamy w Asagi';

  @override
  String get learnHowAsagiCompressesYourVideosWithoutEverLeavingYourPhone =>
      'Dowiedz się, jak Asagi kompresuje Twoje filmy, nie opuszczając telefonu.';

  @override
  String get signIn => 'Zaloguj się';

  @override
  String get signInToSyncYourPlanAndKeepYourPurchasesAvailableOnEveryDevice =>
      'Zaloguj się, aby zsynchronizować swój plan i mieć dostęp do zakupów na każdym urządzeniu.';

  @override
  String get chooseAVideo => 'Wybierz wideo';

  @override
  String get pickAVideoFromYourGalleryToStartCompressing =>
      'Wybierz wideo z galerii, aby rozpocząć kompresję.';

  @override
  String get compressionSetup => 'Ustawienia kompresji';

  @override
  String get chooseResolutionBitrateAndOutputFormatBeforeYouStart =>
      'Wybierz rozdzielczość, bitrate i format wyjściowy zanim zaczniesz.';

  @override
  String get compressing => 'Kompresja';

  @override
  String get followTheLiveProgressOfYourCompressionJob =>
      'Śledź na żywo postęp swojego zadania kompresji.';

  @override
  String get compressionResult => 'Wynik kompresji';

  @override
  String get compareTheBeforeAndAfterSizeThenSaveOrShareTheResult =>
      'Porównaj rozmiar przed i po, a następnie zapisz lub udostępnij wynik.';

  @override
  String get compressionHistory => 'Historia kompresji';

  @override
  String get reviewTheVideosYouHaveCompressedOnThisDevice =>
      'Przejrzyj filmy, które skompresowałeś na tym urządzeniu.';

  @override
  String get settings => 'Ustawienia';

  @override
  String get appearance => 'Wygląd';

  @override
  String get themeColorSchemeAndMotionPreferences =>
      'Motyw, schemat kolorów i preferencje ruchu.';

  @override
  String get language => 'Język';

  @override
  String get appLanguageAndTextDirection =>
      'Język aplikacji i kierunek tekstu.';

  @override
  String get compressionDefaults => 'Domyślne ustawienia kompresji';

  @override
  String get defaultResolutionBitrateAndOutputFormat =>
      'Domyślna rozdzielczość, bitrate i format wyjściowy.';

  @override
  String get storageCleanup => 'Pamięć i czyszczenie';

  @override
  String get storageUsageCacheSizeAndTemporaryFileCleanup =>
      'Użycie pamięci, rozmiar pamięci podręcznej i czyszczenie plików tymczasowych.';

  @override
  String get notifications => 'Powiadomienia';

  @override
  String get jobCompletionAndProductUpdateNotifications =>
      'Powiadomienia o zakończeniu pracy i aktualizacjach produktu.';

  @override
  String get privacy => 'Prywatność';

  @override
  String get onDeviceProcessingLocalLogsAndOptionalCrashReports =>
      'Przetwarzanie na urządzeniu, lokalne dzienniki i opcjonalne raporty o awariach.';

  @override
  String get aboutAsagi => 'O Asagi';

  @override
  String get versionBuildNumberAndApplicationDetails =>
      'Wersja, numer kompilacji i szczegóły aplikacji.';

  @override
  String get aboutTheDeveloper => 'O deweloperze';

  @override
  String get theDeveloperAndToolsBehindAsagi =>
      'Deweloper i narzędzia stojące zan Asagi.';

  @override
  String get openSourcePackagesBundledWithAsagi =>
      'Pakiety open-source dołączone do Asagi.';

  @override
  String get privacyPolicy => 'Polityka prywatności';

  @override
  String get howAsagiHandlesYourVideosAndData =>
      'Jak Asagi obsługuje Twoje filmy i dane.';

  @override
  String get termsOfService => 'Warunki świadczenia usług';

  @override
  String get theTermsThatApplyToAsagiAndItsPurchases =>
      'Warunki, które obowiązują w Asagi i przy jego zakupach.';

  @override
  String get dataSafety => 'Bezpieczeństwo danych';

  @override
  String get summaryOfTheDataAsagiCollectsAndWhy =>
      'Podsumowanie danych, które Asagi zbiera i dlaczego.';

  @override
  String get permissions => 'Uprawnienia';

  @override
  String get runtimePermissionsAsagiRequestsAndWhyEachIsNeeded =>
      'Uprawnienia w czasie działania, o które prosi Asagi i dlaczego każde jest potrzebne.';

  @override
  String get faq => 'FAQ';

  @override
  String get answersToCommonQuestionsAboutCompressionAndBilling =>
      'Odpowiedzi na często zadawane pytania dotyczące kompresji i rozliczeń.';

  @override
  String get support => 'Wsparcie';

  @override
  String get getHelpWithYourAccountOrAPurchase =>
      'Uzyskaj pomoc dotyczącą konta lub zakupu.';

  @override
  String get sendFeedback => 'Wyślij opinię';

  @override
  String get reportAProblemOrSuggestAnImprovement =>
      'Zgłoś problem lub zasugeruj poprawkę.';

  @override
  String get plans => 'Plany';

  @override
  String get comparePlansAndSeeWhatEachOneUnlocks =>
      'Porównaj plany i zobacz, co każdy odblokowuje.';

  @override
  String get planDetails => 'Szczegóły planu';

  @override
  String get benefitsLimitsAndPricingForThisPlan =>
      'Korzyści, limity i ceny dla tego planu.';

  @override
  String get paymentMethods => 'Metody płatności';

  @override
  String get supportedWaysToPayIncludingStoreBilling =>
      'Obsługiwane sposoby płatności, w tym rozliczenia w sklepie.';

  @override
  String get restorePurchases => 'Przywróć zakupy';

  @override
  String get reApplyAPurchaseMadeOnAnotherDevice =>
      'Ponownie zastosuj zakup dokonany na innym urządzeniu.';

  @override
  String get profile => 'Profil';

  @override
  String get yourIdentityPlanStatusAndAccountPreferences =>
      'Twoja tożsamość, status planu i ustawienia konta.';

  @override
  String get deleteAccount => 'Usuń konto';

  @override
  String get permanentlyRemoveYourAccountAndItsServerSideData =>
      'Trwale usuń swoje konto i jego dane po stronie serwera.';

  @override
  String get rateAsagi => 'Oceń Asagi';

  @override
  String get tellOthersHowAsagiWorkedForYouOnTheStore =>
      'Powiedz innym, jak Asagi działał dla Ciebie w sklepie.';

  @override
  String get shareAsagi => 'Udostępnij Asagi';

  @override
  String get recommendAsagiToAFriend => 'Poleć Asagi znajomemu.';

  @override
  String get appearanceLanguage => 'Wygląd i język';

  @override
  String get compression => 'Kompresja';

  @override
  String get onDeviceAI => 'AI na urządzeniu';

  @override
  String get notificationsPrivacy => 'Powiadomienia i prywatność';

  @override
  String get plansPurchases => 'Plany i zakupy';

  @override
  String get about => 'O aplikacji';

  @override
  String get legal => 'Prawne';

  @override
  String get helpFeedback => 'Pomoc i opinie';

  @override
  String get account => 'Konto';

  @override
  String get themeAndAppLanguage => 'Motyw i język aplikacji';

  @override
  String get appLanguageAndDirection => 'Język aplikacji i kierunek';

  @override
  String get defaultQualityAndFormat => 'Domyślna jakość i format';

  @override
  String get cacheAndStorageUsage => 'Użycie pamięci podręcznej i magazynu';

  @override
  String get aiSettings => 'Ustawienia AI';

  @override
  String get asagiAssistant => 'Asystent Asagi';

  @override
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere =>
      'Wkrótce pojawi się prywatny asystent dla Twoich filmów. Będziesz mógł pytać tutaj o kompresję, organizację i zapisane filmy.';

  @override
  String get localModelsAndSmartTools =>
      'Modele lokalne i inteligentne narzędzia';

  @override
  String get exploreLocalModelsAndFutureAIToolsTheseOptionsAreNotActiveYet =>
      'Eksploruj modele lokalne i przyszłe narzędzia AI. Te opcje nie są jeszcze aktywne.';

  @override
  String get localModels => 'Modele lokalne';

  @override
  String get browseAndDownloadSupportedModels =>
      'Przeglądaj i pobieraj obsługiwane modele';

  @override
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere =>
      'Wybierz obsługiwany model, pobierz go na to urządzenie i zarządzaj tutaj zainstalowanymi modelami.';

  @override
  String get importAModel => 'Importuj model';

  @override
  String get useACompatibleModelFromYourFiles =>
      'Użyj zgodnego modelu z Twoich plików';

  @override
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt =>
      'Wybierz kompatybilny lokalny plik modelu i sprawdź jego wymagania przed użyciem.';

  @override
  String get smartFeatures => 'Inteligentne funkcje';

  @override
  String get compressionOrganizationAndSearch =>
      'Kompresja, organizacja i wyszukiwanie';

  @override
  String
  get chooseWhichLocalAISuggestionsToUseForVideoCompressionOrganizationNamingAndSearch =>
      'Wybierz, których lokalnych sugestii AI używać do kompresji wideo, organizacji, nazywania i wyszukiwania.';

  @override
  String get modelPerformance => 'Wydajność modelu';

  @override
  String get processingAndResourcePreferences =>
      'Preferencje przetwarzania i zasobów';

  @override
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels =>
      'Kontroluj zaplecze przetwarzania i limity zasobów dla obsługiwanych modeli.';

  @override
  String get conversationSettings => 'Ustawienia rozmowy';

  @override
  String get streamingThinkingAndResponseLength =>
      'Transmisja, przemyślenia i długość odpowiedzi';

  @override
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits =>
      'Skonfiguruj, jak asystent odpowiada, w tym transmisję strumieniową, tryb myślenia, próbkowanie i limity odpowiedzi.';

  @override
  String get imagesAndAudio => 'Obrazy i dźwięk';

  @override
  String get controlMultimodalInputs => 'Kontroluj multimodalne wejścia';

  @override
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos =>
      'Wybierz, czy kompatybilne modele mogą analizować wybrane obrazy i dźwięki z Twoich filmów.';

  @override
  String get semanticSearch => 'Wyszukiwanie semantyczne';

  @override
  String get embeddingsAndLocalIndexing => 'Embeddings i lokalne indeksowanie';

  @override
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning =>
      'Zarządzaj lokalnym modelem embedding i indeksem wyszukiwania w celu znajdowania filmów i momentów według znaczenia.';

  @override
  String get toolsAndStructuredOutput => 'Narzędzia i strukturalne wyniki';

  @override
  String get actionsSchemasAndConfirmations =>
      'Działania, schematy i potwierdzenia';

  @override
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation =>
      'Zarządzaj obsługiwanymi działaniami asystenta i uporządkowanymi odpowiedziami. Działania wpływające na pliki będą wymagały Twojego potwierdzenia.';

  @override
  String get models => 'Modele';

  @override
  String get assistantExperience => 'Doświadczenie asystenta';

  @override
  String get smartCapabilities => 'Inteligentne funkcje';

  @override
  String get performance => 'Wydajność';

  @override
  String get yourCompressedVideoHistory => 'Twoja skompresowana historia wideo';

  @override
  String get completionAndUpdateAlerts =>
      'Powiadomienia o ukończeniu i aktualizacjach';

  @override
  String get yourDataStaysLocal => 'Twoje dane pozostają lokalne';

  @override
  String get comparePlansAndUpgrade => 'Porównaj plany i ulepsz';

  @override
  String get paymentMethodsAndBilling => 'Metody płatności i rozliczenia';

  @override
  String get restoreYourPreviousPurchase => 'Przywróć wcześniejszy zakup';

  @override
  String get versionAndBuildDetails => 'Szczegóły wersji i kompilacji';

  @override
  String get theDeveloperBehindAsagi => 'Twórca stojący zan Asagi';

  @override
  String get openSourcePackageLicenses => 'Licencje pakietów open source';

  @override
  String get howDataIsHandled => 'Jak przetwarzane są dane';

  @override
  String get rulesForUsingAsagi => 'Zasady korzystania z Asagi';

  @override
  String get whatDataWeCollect => 'Jakie dane zbieramy';

  @override
  String get whyWeNeedPermissions => 'Dlaczego potrzebujemy uprawnień';

  @override
  String get answersToCommonQuestions =>
      'Odpowiedzi na często zadawane pytania';

  @override
  String get reachTheDeveloperDirectly =>
      'Skontaktuj się bezpośrednio z deweloperem';

  @override
  String get sendUsYourFeedback => 'Wyślij nam swoją opinię';

  @override
  String get pickVideo => 'Wybierz wideo';

  @override
  String get targetSizeMB => 'Docelowy rozmiar (MB)';

  @override
  String get startCompression => 'Rozpocznij kompresję';

  @override
  String get pause => 'Wstrzymaj';

  @override
  String get resume => 'Wznów';

  @override
  String get viewResult => 'Zobacz wynik';

  @override
  String get saveToGallery => 'Zapisz w galerii';

  @override
  String get shareVideo => 'Udostępnij wideo';

  @override
  String get originalSize => 'Rozmiar oryginalny';

  @override
  String get outputSize => 'Rozmiar wyjściowy';

  @override
  String get noCompressedVideosYet => 'Brak skompresowanych wideo';

  @override
  String get savedToGallery => 'Zapisano w galerii';

  @override
  String get enterATargetSizeGreaterThanZero =>
      'Wprowadź docelowy rozmiar większy od zera';

  @override
  String get compressionCancelled => 'Kompresja anulowana';

  @override
  String get thisVideoCouldNotReachTheSelectedSizeTryALargerTargetSize =>
      'To wideo nie osiągnęło wybranego rozmiaru. Spróbuj większego docelowego rozmiaru.';

  @override
  String get theSelectedSizeIsTooSmallForThisVideoChooseALargerSize =>
      'Wybrany rozmiar jest za mały dla tego wideo. Wybierz większy rozmiar.';

  @override
  String get originalPreview => 'Podgląd oryginalny';

  @override
  String get compressedPreview => 'Skompresowany podgląd';

  @override
  String get targetPreset => 'Docelowy preset';

  @override
  String get customSize => 'Rozmiar niestandardowy';

  @override
  String get previewUnavailable => 'Podgląd niedostępny';

  @override
  String get advancedControls => 'Zaawansowane sterowanie';

  @override
  String get automatic => 'Automatyczny';

  @override
  String get maximumResolution => 'Maksymalna rozdzielczość';

  @override
  String get originalResolution => 'Oryginalna rozdzielczość';

  @override
  String get maximumFrameRate => 'Maksymalna liczba klatek na sekundę';

  @override
  String get audioBitrate => 'Prędkość transmisji dźwięku';

  @override
  String get removeAudio => 'Usuń dźwięk';

  @override
  String get videoBitrateCeilingKbps => 'Maksymalna przepływność wideo (kbps)';

  @override
  String get hdrHandling => 'Obsługa HDR';

  @override
  String get convertToSDR => 'Konwersja do SDR';

  @override
  String get keepHDRWhenSupported => 'Zachowaj HDR, jeśli jest obsługiwany';

  @override
  String get beforeYouStart => 'Zanim zaczniesz';

  @override
  String get calculatingCompressionPlan => 'Obliczanie planu kompresji…';

  @override
  String get plannedResolution => 'Planowana rozdzielczość';

  @override
  String get plannedVideoBitrate => 'Planowana przepływność wideo';

  @override
  String get plannedAudioBitrate => 'Planowana przepływność dźwięku';

  @override
  String
  get reEncodingConvertsAudioToAACStereoDolbyAtmosAndDTSSpatialAudioWillNotBePreserved =>
      'Ponowne kodowanie zmienia dźwięk na AAC stereo. Dolby Atmos i przestrzenny dźwięk DTS nie zostaną zachowane.';

  @override
  String
  get thisTargetIsTooSmallForAUsableVideoIncreaseTheSizeOrLowerOtherLimits =>
      'Ten cel jest zbyt mały, aby uzyskać użyteczne wideo. Zwiększ rozmiar lub obniż inne limity.';

  @override
  String get theSelectedTargetMayReduceVideoQuality =>
      'Wybrany cel może pogorszyć jakość wideo.';

  @override
  String get theSourceIsAlreadyWithinTheSizeLimit =>
      'Źródło już mieści się w limicie rozmiaru.';

  @override
  String get enterABitrateOfAtLeast150KbpsOrLeaveBlankForAutomatic =>
      'Wprowadź bitrate przynajmniej 150 kbps lub pozostaw puste, aby ustawić automatycznie.';

  @override
  String get enterAnEvenResolutionFrom240To16384OrLeaveBlankForAutomatic =>
      'Wprowadź parzystą rozdzielczość od 240 do 16384 lub pozostaw puste, aby ustawić automatycznie.';

  @override
  String get videoPosition => 'Pozycja wideo';

  @override
  String
  get aPreviousCompressionWasInterruptedItsTemporaryFilesWereCleanedUpYouCanSelectTheVideoAndTryAgain =>
      'Poprzednia kompresja została przerwana. Jej pliki tymczasowe zostały usunięte; możesz wybrać wideo i spróbować ponownie.';

  @override
  String get dismiss => 'Odrzuć';

  @override
  String get clearHistory => 'Wyczyść historię';

  @override
  String get removeAllHistoryEntriesSavedVideosWillRemainOnYourDevice =>
      'Usunąć wszystkie wpisy historii? Zapisane filmy pozostaną na twoim urządzeniu.';

  @override
  String get attempts => 'Próby';

  @override
  String get targetSize => 'Docelowy rozmiar';

  @override
  String get outputResolution => 'Rozdzielczość wyjściowa';

  @override
  String get thisVideoCouldNotBeReadChooseAnotherFile =>
      'Nie można odczytać tego wideo. Wybierz inny plik.';

  @override
  String get theEncodedVideoFailedVerificationYourOriginalVideoWasNotChanged =>
      'Skompresowane wideo nie przeszło weryfikacji. Twój oryginalny film nie został zmieniony.';

  @override
  String
  get thisDeviceCannotEncodeTheSelectedResolutionOrFrameRateLowerThatSettingAndTryAgain =>
      'To urządzenie nie może zakodować wybranej rozdzielczości lub liczby klatek na sekundę. Zmniejsz to ustawienie i spróbuj ponownie.';

  @override
  String
  get thisDeviceCannotDecodeThisAudioFormatForCompressionRemoveAudioOrUseASupportedSource =>
      'To urządzenie nie może dekodować tego formatu audio do kompresji. Usuń audio lub użyj obsługiwanego źródła.';

  @override
  String
  get thisDeviceCannotDecodeThisVideoFormatOrProfileForCompressionChooseAnotherSourceOrDevice =>
      'To urządzenie nie może dekodować tego formatu wideo ani profilu kompresji. Wybierz inne źródło lub urządzenie.';

  @override
  String get theExportedMP4IsNotReadyForStreamingTryAnotherVideoOrDevice =>
      'Wyeksportowany plik MP4 nie jest gotowy do streamingu. Spróbuj innego wideo lub urządzenia.';

  @override
  String get thereIsNotEnoughFreeStorageToCompressThisVideo =>
      'Nie ma wystarczającej ilości wolnego miejsca, aby skompresować to wideo.';

  @override
  String get thisDeviceCannotProcessTheSelectedHDRModeTryConvertingToSDR =>
      'To urządzenie nie może przetworzyć wybranego trybu HDR. Spróbuj konwersji do SDR.';

  @override
  String get compressionCouldNotBeCompletedTryAnotherSettingOrVideo =>
      'Nie udało się zakończyć kompresji. Spróbuj innych ustawień lub wideo.';

  @override
  String get appIdentity => 'Tożsamość aplikacji';

  @override
  String get appName => 'Nazwa aplikacji';

  @override
  String get packageName => 'Nazwa pakietu';

  @override
  String get version => 'Wersja';

  @override
  String get buildNumber => 'Numer kompilacji';

  @override
  String get deviceAndBuild => 'Urządzenie i kompilacja';

  @override
  String get operatingSystem => 'System operacyjny';

  @override
  String get osVersion => 'Wersja systemu';

  @override
  String get buildMode => 'Tryb kompilacji';

  @override
  String get debug => 'Debugowanie';

  @override
  String get release => 'Wersja produkcyjna';

  @override
  String get builtWith => 'Zbudowano z';

  @override
  String get installation => 'Instalacja';

  @override
  String get installedFrom => 'Zainstalowano z';

  @override
  String get installedOn => 'Zainstalowano na';

  @override
  String get updatedOn => 'Zaktualizowano dnia';

  @override
  String get unavailable => 'Niedostępne';

  @override
  String get projectAndSupport => 'Projekt i wsparcie';

  @override
  String get githubRepository => 'Repozytorium GitHub';

  @override
  String get viewAsagiSourceCode => 'Wyświetl kod źródłowy Asagi';

  @override
  String get readTheREADME => 'Przeczytaj README';

  @override
  String get learnAboutAsagiOnGitHub => 'Dowiedz się o Asagi na GitHub';

  @override
  String get reportAnIssue => 'Zgłoś problem';

  @override
  String get viewAndCreateGitHubIssues =>
      'Wyświetlaj i twórz zgłoszenia na GitHub';

  @override
  String get latestRelease => 'Najnowsze wydanie';

  @override
  String get viewReleasesAndDownloads => 'Wyświetl wydania i pobierz';

  @override
  String get supportAsagi => 'Wsparcie Asagi';

  @override
  String get openTheOfficialDonationPage => 'Otwórz oficjalną stronę darowizn';

  @override
  String get couldNotOpenTheLinkPleaseTryAgain =>
      'Nie można otworzyć linku. Spróbuj ponownie.';

  @override
  String get developer => 'Deweloper';

  @override
  String get mostafaSensei => 'Mostafa Sensei';

  @override
  String get githubProfile => 'Profil GitHub';

  @override
  String get seeProjectsAndContactDetails =>
      'Zobacz projekty i dane kontaktowe';

  @override
  String get maintenanceInProgress => 'Konserwacja w toku';

  @override
  String get asagiIsTemporarilyUnavailablePleaseTryAgainLater =>
      'Asagi jest tymczasowo niedostępny. Spróbuj ponownie później.';

  @override
  String get comingSoon => 'Wkrótce';

  @override
  String get pleaseWait => 'Proszę czekać...';

  @override
  String get cancel => 'Anuluj';

  @override
  String get openSourceLicenses => 'Licencje open-source';

  @override
  String get languageName => 'Polski';

  @override
  String get countryCode => 'PL';

  @override
  String countryName(String countryCode) {
    String _temp0 = intl.Intl.selectLogic(countryCode, {
      'AE': 'Zjednoczone Emiraty Arabskie',
      'AT': 'Austria',
      'AU': 'Australia',
      'BE': 'Belgia',
      'BH': 'Bahrajn',
      'BR': 'Brazylia',
      'CA': 'Kanada',
      'CH': 'Szwajcaria',
      'CN': 'Chiny',
      'DE': 'Niemcy',
      'DJ': 'Dżibuti',
      'DZ': 'Algieria',
      'EG': 'Egipt',
      'ES': 'Hiszpania',
      'FR': 'Francja',
      'GB': 'Wielka Brytania',
      'HK': 'SRA Hongkong (Chiny)',
      'ID': 'Indonezja',
      'IQ': 'Irak',
      'IT': 'Włochy',
      'JO': 'Jordania',
      'JP': 'Japonia',
      'KM': 'Komory',
      'KR': 'Korea Południowa',
      'KW': 'Kuwejt',
      'LB': 'Liban',
      'LY': 'Libia',
      'MA': 'Maroko',
      'MR': 'Mauretania',
      'MX': 'Meksyk',
      'NL': 'Holandia',
      'OM': 'Oman',
      'PL': 'Polska',
      'PS': 'Terytoria Palestyńskie',
      'PT': 'Portugalia',
      'QA': 'Katar',
      'RU': 'Rosja',
      'SA': 'Arabia Saudyjska',
      'SD': 'Sudan',
      'SE': 'Szwecja',
      'SG': 'Singapur',
      'SO': 'Somalia',
      'SY': 'Syria',
      'TH': 'Tajlandia',
      'TN': 'Tunezja',
      'TR': 'Turcja',
      'TW': 'Tajwan',
      'US': 'Stany Zjednoczone',
      'VN': 'Wietnam',
      'YE': 'Jemen',
      'other': 'Kraj',
    });
    return '$_temp0';
  }
}
