// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class AppLocalizationsPl extends AppLocalizations {
  AppLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String get zumi => 'Zumi';

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
  String get cancel => 'Anuluj';

  @override
  String get confirm => 'Potwierdź';

  @override
  String get pleaseWait => 'Proszę czekać...';

  @override
  String get ok => 'OK';

  @override
  String get compressVideosPrivatelyOnYourDevice =>
      'Kompresuj filmy prywatnie na swoim urządzeniu.';

  @override
  String get welcomeToZumi => 'Witamy w Zumi';

  @override
  String get learnHowZumiCompressesYourVideosWithoutEverLeavingYourPhone =>
      'Dowiedz się, jak Zumi kompresuje Twoje filmy, nie opuszczając telefonu.';

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
  String get aboutZumi => 'O Zumi';

  @override
  String get versionBuildNumberAndApplicationDetails =>
      'Wersja, numer kompilacji i szczegóły aplikacji.';

  @override
  String get aboutTheDeveloper => 'O deweloperze';

  @override
  String get theDeveloperAndToolsBehindZumi =>
      'Deweloper i narzędzia stojące za Zumi.';

  @override
  String get openSourceLicenses => 'Licencje open-source';

  @override
  String get openSourcePackagesBundledWithZumi =>
      'Pakiety open-source dołączone do Zumi.';

  @override
  String get privacyPolicy => 'Polityka prywatności';

  @override
  String get howZumiHandlesYourVideosAndData =>
      'Jak Zumi obsługuje Twoje filmy i dane.';

  @override
  String get termsOfService => 'Warunki świadczenia usług';

  @override
  String get theTermsThatApplyToZumiAndItsPurchases =>
      'Warunki, które obowiązują w Zumi i przy jego zakupach.';

  @override
  String get dataSafety => 'Bezpieczeństwo danych';

  @override
  String get summaryOfTheDataZumiCollectsAndWhy =>
      'Podsumowanie danych, które Zumi zbiera i dlaczego.';

  @override
  String get permissions => 'Uprawnienia';

  @override
  String get runtimePermissionsZumiRequestsAndWhyEachIsNeeded =>
      'Uprawnienia w czasie działania, o które prosi Zumi i dlaczego każde jest potrzebne.';

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
  String get rateZumi => 'Oceń Zumi';

  @override
  String get tellOthersHowZumiWorkedForYouOnTheStore =>
      'Powiedz innym, jak Zumi działał dla Ciebie w sklepie.';

  @override
  String get shareZumi => 'Udostępnij Zumi';

  @override
  String get recommendZumiToAFriend => 'Poleć Zumi znajomemu.';

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
  String get zumiAssistant => 'Asystent Zumi';

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
  String get theDeveloperBehindZumi => 'Twórca stojący za Zumi';

  @override
  String get openSourcePackageLicenses => 'Licencje pakietów open source';

  @override
  String get howDataIsHandled => 'Jak przetwarzane są dane';

  @override
  String get rulesForUsingZumi => 'Zasady korzystania z Zumi';

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
  String get viewZumiSourceCode => 'Wyświetl kod źródłowy Zumi';

  @override
  String get readTheREADME => 'Przeczytaj README';

  @override
  String get learnAboutZumiOnGitHub => 'Dowiedz się o Zumi na GitHub';

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
  String get supportZumi => 'Wsparcie Zumi';

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
  String get zumiIsTemporarilyUnavailablePleaseTryAgainLater =>
      'Zumi jest tymczasowo niedostępny. Spróbuj ponownie później.';

  @override
  String get comingSoon => 'Wkrótce';

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
  String get cleanupInterruptedJobsFailed =>
      'The interrupted files could not be cleaned.';

  @override
  String get ffmpegBuildMetadataUnavailable =>
      'FFmpeg build metadata is unavailable.';

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

/// The translations for Polish, as used in Poland (`pl_PL`).
class AppLocalizationsPlPl extends AppLocalizationsPl {
  AppLocalizationsPlPl() : super('pl_PL');

  @override
  String get zumi => 'Zumi';

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
  String get cancel => 'Anuluj';

  @override
  String get confirm => 'Potwierdź';

  @override
  String get pleaseWait => 'Proszę czekać...';

  @override
  String get ok => 'OK';

  @override
  String get compressVideosPrivatelyOnYourDevice =>
      'Kompresuj filmy prywatnie na swoim urządzeniu.';

  @override
  String get welcomeToZumi => 'Witamy w Zumi';

  @override
  String get learnHowZumiCompressesYourVideosWithoutEverLeavingYourPhone =>
      'Dowiedz się, jak Zumi kompresuje Twoje filmy, nie opuszczając telefonu.';

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
  String get aboutZumi => 'O Zumi';

  @override
  String get versionBuildNumberAndApplicationDetails =>
      'Wersja, numer kompilacji i szczegóły aplikacji.';

  @override
  String get aboutTheDeveloper => 'O deweloperze';

  @override
  String get theDeveloperAndToolsBehindZumi =>
      'Deweloper i narzędzia stojące za Zumi.';

  @override
  String get openSourceLicenses => 'Licencje open-source';

  @override
  String get openSourcePackagesBundledWithZumi =>
      'Pakiety open-source dołączone do Zumi.';

  @override
  String get privacyPolicy => 'Polityka prywatności';

  @override
  String get howZumiHandlesYourVideosAndData =>
      'Jak Zumi obsługuje Twoje filmy i dane.';

  @override
  String get termsOfService => 'Warunki świadczenia usług';

  @override
  String get theTermsThatApplyToZumiAndItsPurchases =>
      'Warunki, które obowiązują w Zumi i przy jego zakupach.';

  @override
  String get dataSafety => 'Bezpieczeństwo danych';

  @override
  String get summaryOfTheDataZumiCollectsAndWhy =>
      'Podsumowanie danych, które Zumi zbiera i dlaczego.';

  @override
  String get permissions => 'Uprawnienia';

  @override
  String get runtimePermissionsZumiRequestsAndWhyEachIsNeeded =>
      'Uprawnienia w czasie działania, o które prosi Zumi i dlaczego każde jest potrzebne.';

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
  String get rateZumi => 'Oceń Zumi';

  @override
  String get tellOthersHowZumiWorkedForYouOnTheStore =>
      'Powiedz innym, jak Zumi działał dla Ciebie w sklepie.';

  @override
  String get shareZumi => 'Udostępnij Zumi';

  @override
  String get recommendZumiToAFriend => 'Poleć Zumi znajomemu.';

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
  String get zumiAssistant => 'Asystent Zumi';

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
  String get theDeveloperBehindZumi => 'Twórca stojący za Zumi';

  @override
  String get openSourcePackageLicenses => 'Licencje pakietów open source';

  @override
  String get howDataIsHandled => 'Jak przetwarzane są dane';

  @override
  String get rulesForUsingZumi => 'Zasady korzystania z Zumi';

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
  String get viewZumiSourceCode => 'Wyświetl kod źródłowy Zumi';

  @override
  String get readTheREADME => 'Przeczytaj README';

  @override
  String get learnAboutZumiOnGitHub => 'Dowiedz się o Zumi na GitHub';

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
  String get supportZumi => 'Wsparcie Zumi';

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
  String get zumiIsTemporarilyUnavailablePleaseTryAgainLater =>
      'Zumi jest tymczasowo niedostępny. Spróbuj ponownie później.';

  @override
  String get comingSoon => 'Wkrótce';

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
