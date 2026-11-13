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
  String fileSavedToDcim(String fileName) {
    return 'Plik zapisany w galerii: $fileName';
  }

  @override
  String fileSavedToDocuments(String fileName) {
    return 'Plik zapisany w dokumentach: $fileName';
  }

  @override
  String get fileAlreadySaved => 'Plik jest już zapisany';

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
  String get error_address_line_cant_be_empty =>
      'Linia adresu nie może być pusta';

  @override
  String get error_address_line_too_long => 'Linia adresu jest za długa';

  @override
  String get error_address_invalid_special_characters =>
      'Znaki specjalne są niedozwolone';

  @override
  String get error_address_emoji_not_allowed => 'Emotikony są niedozwolone';

  @override
  String get error_city_cant_be_empty => 'Miasto nie może być puste';

  @override
  String get error_city_too_long => 'Nazwa miasta jest za długa';

  @override
  String get error_city_invalid_special_characters =>
      'Miasto zawiera niedozwolone znaki specjalne';

  @override
  String get error_address_label_cant_be_empty =>
      'Etykieta adresu nie może być pusta';

  @override
  String get error_address_label_too_long => 'Etykieta adresu jest za długa';

  @override
  String get error_email_cant_be_empty => 'Email nie może być pusty';

  @override
  String get error_email_not_invalid_format => 'Nieprawidłowy format emaila';

  @override
  String get error_email_contains_invalid_characters =>
      'Email zawiera nieprawidłowe znaki';

  @override
  String get error_email_must_contain_at_symbol => 'Email musi zawierać @';

  @override
  String get error_email_must_be_in_lowercase =>
      'Email musi być napisany małymi literami';

  @override
  String get error_arabic_not_allowed => 'Znaki arabskie nie są dozwolone';

  @override
  String get error_email_emoji_not_allowed => 'Emoji nie są dozwolone w emailu';

  @override
  String get error_phone_number_cant_be_empty =>
      'Numer telefonu nie może być pusty';

  @override
  String get error_phone_number_invalid => 'Nieprawidłowy numer telefonu';

  @override
  String get error_phone_number_min_length =>
      'Numer telefonu musi zawierać co najmniej 11 cyfr';

  @override
  String get error_name_cant_be_empty => 'Imię nie może być puste';

  @override
  String get error_name_invalid => 'Nieprawidłowe imię';

  @override
  String get error_name_too_short_at_least_3_characters =>
      'Imię musi mieć co najmniej 3 znaki';

  @override
  String get error_name_too_long_maximum_20_characters =>
      'Imię nie może mieć więcej niż 20 znaków';

  @override
  String get error_name_invalid_special_characters =>
      'Imię zawiera nieprawidłowe znaki specjalne';

  @override
  String get error_name_emoji_not_allowed => 'Emoji nie są dozwolone w imieniu';

  @override
  String get error_password_cant_be_empty => 'Hasło nie może być puste';

  @override
  String
  get error_password_must_contain_uppercase_lowercase_number_and_special_character =>
      'Hasło musi zawierać wielką literę, małą literę, cyfrę i znak specjalny';

  @override
  String get error_password_must_be_at_least_8_characters_long =>
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
  String get settingsGroupAppearance => 'Wygląd i język';

  @override
  String get settingsGroupCompression => 'Kompresja';

  @override
  String get settingsGroupAi => 'AI na urządzeniu';

  @override
  String get settingsGroupPrivacy => 'Powiadomienia i prywatność';

  @override
  String get settingsGroupPlans => 'Plany i zakupy';

  @override
  String get settingsGroupAbout => 'O aplikacji';

  @override
  String get settingsGroupLegal => 'Prawne';

  @override
  String get settingsGroupHelp => 'Pomoc i opinie';

  @override
  String get settingsGroupAccount => 'Konto';

  @override
  String get settingsAppearanceSubtitle => 'Motyw i język aplikacji';

  @override
  String get settingsLanguageSubtitle => 'Język aplikacji i kierunek';

  @override
  String get settingsCompressionSubtitle => 'Domyślna jakość i format';

  @override
  String get settingsStorageSubtitle => 'Użycie pamięci podręcznej i magazynu';

  @override
  String get aiSettings => 'Ustawienia AI';

  @override
  String get zumiAssistant => 'Asystent Zumi';

  @override
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere =>
      'Wkrótce pojawi się prywatny asystent dla Twoich filmów. Będziesz mógł pytać tutaj o kompresję, organizację i zapisane filmy.';

  @override
  String get settingsAiSubtitle => 'Modele lokalne i inteligentne narzędzia';

  @override
  String get exploreLocalModelsAndFutureAiToolsTheseOptionsAreNotActiveYet =>
      'Eksploruj modele lokalne i przyszłe narzędzia AI. Te opcje nie są jeszcze aktywne.';

  @override
  String get localModels => 'Modele lokalne';

  @override
  String get aiModelsSubtitle => 'Przeglądaj i pobieraj obsługiwane modele';

  @override
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere =>
      'Wybierz obsługiwany model, pobierz go na to urządzenie i zarządzaj tutaj zainstalowanymi modelami.';

  @override
  String get importAModel => 'Importuj model';

  @override
  String get aiImportSubtitle => 'Użyj zgodnego modelu z Twoich plików';

  @override
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt =>
      'Wybierz kompatybilny lokalny plik modelu i sprawdź jego wymagania przed użyciem.';

  @override
  String get smartFeatures => 'Inteligentne funkcje';

  @override
  String get aiFeaturesSubtitle => 'Kompresja, organizacja i wyszukiwanie';

  @override
  String
  get chooseWhichLocalAiSuggestionsToUseForVideoCompressionOrganizationNamingAndSearch =>
      'Wybierz, których lokalnych sugestii AI używać do kompresji wideo, organizacji, nazywania i wyszukiwania.';

  @override
  String get modelPerformance => 'Wydajność modelu';

  @override
  String get aiRuntimeSubtitle => 'Preferencje przetwarzania i zasobów';

  @override
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels =>
      'Kontroluj zaplecze przetwarzania i limity zasobów dla obsługiwanych modeli.';

  @override
  String get conversationSettings => 'Ustawienia rozmowy';

  @override
  String get aiChatSettingsSubtitle =>
      'Transmisja, przemyślenia i długość odpowiedzi';

  @override
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits =>
      'Skonfiguruj, jak asystent odpowiada, w tym transmisję strumieniową, tryb myślenia, próbkowanie i limity odpowiedzi.';

  @override
  String get imagesAndAudio => 'Obrazy i dźwięk';

  @override
  String get aiMediaSubtitle => 'Kontroluj multimodalne wejścia';

  @override
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos =>
      'Wybierz, czy kompatybilne modele mogą analizować wybrane obrazy i dźwięki z Twoich filmów.';

  @override
  String get semanticSearch => 'Wyszukiwanie semantyczne';

  @override
  String get aiSearchSubtitle => 'Embeddings i lokalne indeksowanie';

  @override
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning =>
      'Zarządzaj lokalnym modelem embedding i indeksem wyszukiwania w celu znajdowania filmów i momentów według znaczenia.';

  @override
  String get toolsAndStructuredOutput => 'Narzędzia i strukturalne wyniki';

  @override
  String get aiToolsSubtitle => 'Działania, schematy i potwierdzenia';

  @override
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation =>
      'Zarządzaj obsługiwanymi działaniami asystenta i uporządkowanymi odpowiedziami. Działania wpływające na pliki będą wymagały Twojego potwierdzenia.';

  @override
  String get aiGroupModels => 'Modele';

  @override
  String get aiGroupExperience => 'Doświadczenie asystenta';

  @override
  String get aiGroupCapabilities => 'Inteligentne funkcje';

  @override
  String get aiGroupPerformance => 'Wydajność';

  @override
  String get compressionHistorySubtitle => 'Twoja skompresowana historia wideo';

  @override
  String get settingsNotificationsSubtitle =>
      'Powiadomienia o ukończeniu i aktualizacjach';

  @override
  String get settingsPrivacySubtitle => 'Twoje dane pozostają lokalne';

  @override
  String get plansSubtitle => 'Porównaj plany i ulepsz';

  @override
  String get plansMethodsSubtitle => 'Metody płatności i rozliczenia';

  @override
  String get plansRestoreSubtitle => 'Przywróć wcześniejszy zakup';

  @override
  String get aboutAppSubtitle => 'Szczegóły wersji i kompilacji';

  @override
  String get aboutDeveloperSubtitle => 'Twórca stojący za Zumi';

  @override
  String get aboutLicensesSubtitle => 'Licencje pakietów open source';

  @override
  String get legalPrivacySubtitle => 'Jak przetwarzane są dane';

  @override
  String get legalTermsSubtitle => 'Zasady korzystania z Zumi';

  @override
  String get legalDataSafetySubtitle => 'Jakie dane zbieramy';

  @override
  String get legalPermissionsSubtitle => 'Dlaczego potrzebujemy uprawnień';

  @override
  String get helpFaqSubtitle => 'Odpowiedzi na często zadawane pytania';

  @override
  String get helpSupportSubtitle => 'Skontaktuj się bezpośrednio z deweloperem';

  @override
  String get helpFeedbackSubtitle => 'Wyślij nam swoją opinię';

  @override
  String get compressionPickVideo => 'Wybierz wideo';

  @override
  String get compressionTargetMb => 'Docelowy rozmiar (MB)';

  @override
  String get compressionStart => 'Rozpocznij kompresję';

  @override
  String get compressionPause => 'Wstrzymaj';

  @override
  String get compressionResume => 'Wznów';

  @override
  String get compressionViewResult => 'Zobacz wynik';

  @override
  String get compressionSaveGallery => 'Zapisz w galerii';

  @override
  String get compressionShare => 'Udostępnij wideo';

  @override
  String get compressionOriginalSize => 'Rozmiar oryginalny';

  @override
  String get compressionOutputSize => 'Rozmiar wyjściowy';

  @override
  String get compressionEmptyHistory => 'Brak skompresowanych wideo';

  @override
  String get compressionSavedGallery => 'Zapisano w galerii';

  @override
  String get compressionInvalidTarget =>
      'Wprowadź docelowy rozmiar większy od zera';

  @override
  String get compressionCancelled => 'Kompresja anulowana';

  @override
  String get compressionTargetExceeded =>
      'To wideo nie osiągnęło wybranego rozmiaru. Spróbuj większego docelowego rozmiaru.';

  @override
  String get compressionTargetInfeasible =>
      'Wybrany rozmiar jest za mały dla tego wideo. Wybierz większy rozmiar.';

  @override
  String get compressionPreviewBefore => 'Podgląd oryginalny';

  @override
  String get compressionPreviewAfter => 'Skompresowany podgląd';

  @override
  String get compressionPreset => 'Docelowy preset';

  @override
  String get compressionCustom => 'Rozmiar niestandardowy';

  @override
  String get compressionPreviewUnavailable => 'Podgląd niedostępny';

  @override
  String get compressionAdvanced => 'Zaawansowane sterowanie';

  @override
  String get compressionAutomatic => 'Automatyczny';

  @override
  String get compressionResolutionLimit => 'Maksymalna rozdzielczość';

  @override
  String get compressionSourceResolution => 'Oryginalna rozdzielczość';

  @override
  String get compressionFrameRateLimit => 'Maksymalna liczba klatek na sekundę';

  @override
  String get compressionAudioQuality => 'Prędkość transmisji dźwięku';

  @override
  String get compressionRemoveAudio => 'Usuń dźwięk';

  @override
  String get compressionVideoBitrateLimit =>
      'Maksymalna przepływność wideo (kbps)';

  @override
  String get compressionHdrPolicy => 'Obsługa HDR';

  @override
  String get compressionHdrConvert => 'Konwersja do SDR';

  @override
  String get compressionHdrPreserve => 'Zachowaj HDR, jeśli jest obsługiwany';

  @override
  String get compressionPlanPreview => 'Zanim zaczniesz';

  @override
  String get compressionPlanLoading => 'Obliczanie planu kompresji…';

  @override
  String get compressionPlanResolution => 'Planowana rozdzielczość';

  @override
  String get compressionPlanVideoBitrate => 'Planowana przepływność wideo';

  @override
  String get compressionPlanAudioBitrate => 'Planowana przepływność dźwięku';

  @override
  String get compressionAudioConversionNote =>
      'Ponowne kodowanie zmienia dźwięk na AAC stereo. Dolby Atmos i przestrzenny dźwięk DTS nie zostaną zachowane.';

  @override
  String get compressionPlanTooSmall =>
      'Ten cel jest zbyt mały, aby uzyskać użyteczne wideo. Zwiększ rozmiar lub obniż inne limity.';

  @override
  String get compressionPlanLowQuality =>
      'Wybrany cel może pogorszyć jakość wideo.';

  @override
  String get compressionPlanAlreadyWithinLimit =>
      'Źródło już mieści się w limicie rozmiaru.';

  @override
  String get compressionInvalidBitrate =>
      'Wprowadź bitrate przynajmniej 150 kbps lub pozostaw puste, aby ustawić automatycznie.';

  @override
  String get compressionInvalidResolution =>
      'Wprowadź parzystą rozdzielczość od 240 do 16384 lub pozostaw puste, aby ustawić automatycznie.';

  @override
  String get compressionSeek => 'Pozycja wideo';

  @override
  String get compressionInterrupted =>
      'Poprzednia kompresja została przerwana. Jej pliki tymczasowe zostały usunięte; możesz wybrać wideo i spróbować ponownie.';

  @override
  String get compressionDismiss => 'Odrzuć';

  @override
  String get compressionClearHistory => 'Wyczyść historię';

  @override
  String get compressionClearHistoryConfirm =>
      'Usunąć wszystkie wpisy historii? Zapisane filmy pozostaną na twoim urządzeniu.';

  @override
  String get compressionAttempts => 'Próby';

  @override
  String get compressionTargetSize => 'Docelowy rozmiar';

  @override
  String get compressionOutputResolution => 'Rozdzielczość wyjściowa';

  @override
  String get compressionInvalidVideo =>
      'Nie można odczytać tego wideo. Wybierz inny plik.';

  @override
  String get compressionInvalidOutput =>
      'Skompresowane wideo nie przeszło weryfikacji. Twój oryginalny film nie został zmieniony.';

  @override
  String get compressionEncoderUnsupported =>
      'To urządzenie nie może zakodować wybranej rozdzielczości lub liczby klatek na sekundę. Zmniejsz to ustawienie i spróbuj ponownie.';

  @override
  String get compressionAudioDecoderUnsupported =>
      'To urządzenie nie może dekodować tego formatu audio do kompresji. Usuń audio lub użyj obsługiwanego źródła.';

  @override
  String get compressionVideoDecoderUnsupported =>
      'To urządzenie nie może dekodować tego formatu wideo ani profilu kompresji. Wybierz inne źródło lub urządzenie.';

  @override
  String get compressionMp4NotStreamable =>
      'Wyeksportowany plik MP4 nie jest gotowy do streamingu. Spróbuj innego wideo lub urządzenia.';

  @override
  String get compressionNoSpace =>
      'Nie ma wystarczającej ilości wolnego miejsca, aby skompresować to wideo.';

  @override
  String get compressionHdrUnsupported =>
      'To urządzenie nie może przetworzyć wybranego trybu HDR. Spróbuj konwersji do SDR.';

  @override
  String get compressionGeneralFailure =>
      'Nie udało się zakończyć kompresji. Spróbuj innych ustawień lub wideo.';

  @override
  String get aboutIdentitySection => 'Tożsamość aplikacji';

  @override
  String get aboutAppName => 'Nazwa aplikacji';

  @override
  String get aboutPackageName => 'Nazwa pakietu';

  @override
  String get aboutVersion => 'Wersja';

  @override
  String get aboutBuildNumber => 'Numer kompilacji';

  @override
  String get aboutEnvironmentSection => 'Urządzenie i kompilacja';

  @override
  String get aboutOperatingSystem => 'System operacyjny';

  @override
  String get aboutOsVersion => 'Wersja systemu';

  @override
  String get aboutBuildMode => 'Tryb kompilacji';

  @override
  String get aboutDebug => 'Debugowanie';

  @override
  String get aboutRelease => 'Wersja produkcyjna';

  @override
  String get aboutToolchainSection => 'Zbudowano z';

  @override
  String get aboutInstallationSection => 'Instalacja';

  @override
  String get aboutInstaller => 'Zainstalowano z';

  @override
  String get aboutInstalledOn => 'Zainstalowano na';

  @override
  String get aboutUpdatedOn => 'Zaktualizowano dnia';

  @override
  String get aboutUnavailable => 'Niedostępne';

  @override
  String get aboutProjectSection => 'Projekt i wsparcie';

  @override
  String get aboutRepository => 'Repozytorium GitHub';

  @override
  String get aboutRepositorySubtitle => 'Wyświetl kod źródłowy Zumi';

  @override
  String get aboutReadme => 'Przeczytaj README';

  @override
  String get aboutReadmeSubtitle => 'Dowiedz się o Zumi na GitHub';

  @override
  String get aboutIssues => 'Zgłoś problem';

  @override
  String get aboutIssuesSubtitle => 'Wyświetlaj i twórz zgłoszenia na GitHub';

  @override
  String get aboutLatestRelease => 'Najnowsze wydanie';

  @override
  String get aboutLatestReleaseSubtitle => 'Wyświetl wydania i pobierz';

  @override
  String get aboutDonate => 'Wsparcie Zumi';

  @override
  String get aboutDonateSubtitle => 'Otwórz oficjalną stronę darowizn';

  @override
  String get aboutLinkError => 'Nie można otworzyć linku. Spróbuj ponownie.';

  @override
  String get aboutDeveloperSection => 'Deweloper';

  @override
  String get aboutDeveloperName => 'Mostafa Sensei';

  @override
  String get aboutDeveloperProfile => 'Profil GitHub';

  @override
  String get aboutDeveloperProfileSubtitle =>
      'Zobacz projekty i dane kontaktowe';

  @override
  String get maintenanceInProgress => 'Konserwacja w toku';

  @override
  String get maintenanceMessage =>
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
  String fileSavedToDcim(String fileName) {
    return 'Plik zapisany w galerii: $fileName';
  }

  @override
  String fileSavedToDocuments(String fileName) {
    return 'Plik zapisany w dokumentach: $fileName';
  }

  @override
  String get fileAlreadySaved => 'Plik jest już zapisany';

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
  String get error_address_line_cant_be_empty =>
      'Linia adresu nie może być pusta';

  @override
  String get error_address_line_too_long => 'Linia adresu jest za długa';

  @override
  String get error_address_invalid_special_characters =>
      'Znaki specjalne są niedozwolone';

  @override
  String get error_address_emoji_not_allowed => 'Emotikony są niedozwolone';

  @override
  String get error_city_cant_be_empty => 'Miasto nie może być puste';

  @override
  String get error_city_too_long => 'Nazwa miasta jest za długa';

  @override
  String get error_city_invalid_special_characters =>
      'Miasto zawiera niedozwolone znaki specjalne';

  @override
  String get error_address_label_cant_be_empty =>
      'Etykieta adresu nie może być pusta';

  @override
  String get error_address_label_too_long => 'Etykieta adresu jest za długa';

  @override
  String get error_email_cant_be_empty => 'Email nie może być pusty';

  @override
  String get error_email_not_invalid_format => 'Nieprawidłowy format emaila';

  @override
  String get error_email_contains_invalid_characters =>
      'Email zawiera nieprawidłowe znaki';

  @override
  String get error_email_must_contain_at_symbol => 'Email musi zawierać @';

  @override
  String get error_email_must_be_in_lowercase =>
      'Email musi być napisany małymi literami';

  @override
  String get error_arabic_not_allowed => 'Znaki arabskie nie są dozwolone';

  @override
  String get error_email_emoji_not_allowed => 'Emoji nie są dozwolone w emailu';

  @override
  String get error_phone_number_cant_be_empty =>
      'Numer telefonu nie może być pusty';

  @override
  String get error_phone_number_invalid => 'Nieprawidłowy numer telefonu';

  @override
  String get error_phone_number_min_length =>
      'Numer telefonu musi zawierać co najmniej 11 cyfr';

  @override
  String get error_name_cant_be_empty => 'Imię nie może być puste';

  @override
  String get error_name_invalid => 'Nieprawidłowe imię';

  @override
  String get error_name_too_short_at_least_3_characters =>
      'Imię musi mieć co najmniej 3 znaki';

  @override
  String get error_name_too_long_maximum_20_characters =>
      'Imię nie może mieć więcej niż 20 znaków';

  @override
  String get error_name_invalid_special_characters =>
      'Imię zawiera nieprawidłowe znaki specjalne';

  @override
  String get error_name_emoji_not_allowed => 'Emoji nie są dozwolone w imieniu';

  @override
  String get error_password_cant_be_empty => 'Hasło nie może być puste';

  @override
  String
  get error_password_must_contain_uppercase_lowercase_number_and_special_character =>
      'Hasło musi zawierać wielką literę, małą literę, cyfrę i znak specjalny';

  @override
  String get error_password_must_be_at_least_8_characters_long =>
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
  String get settingsGroupAppearance => 'Wygląd i język';

  @override
  String get settingsGroupCompression => 'Kompresja';

  @override
  String get settingsGroupAi => 'AI na urządzeniu';

  @override
  String get settingsGroupPrivacy => 'Powiadomienia i prywatność';

  @override
  String get settingsGroupPlans => 'Plany i zakupy';

  @override
  String get settingsGroupAbout => 'O aplikacji';

  @override
  String get settingsGroupLegal => 'Prawne';

  @override
  String get settingsGroupHelp => 'Pomoc i opinie';

  @override
  String get settingsGroupAccount => 'Konto';

  @override
  String get settingsAppearanceSubtitle => 'Motyw i język aplikacji';

  @override
  String get settingsLanguageSubtitle => 'Język aplikacji i kierunek';

  @override
  String get settingsCompressionSubtitle => 'Domyślna jakość i format';

  @override
  String get settingsStorageSubtitle => 'Użycie pamięci podręcznej i magazynu';

  @override
  String get aiSettings => 'Ustawienia AI';

  @override
  String get zumiAssistant => 'Asystent Zumi';

  @override
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere =>
      'Wkrótce pojawi się prywatny asystent dla Twoich filmów. Będziesz mógł pytać tutaj o kompresję, organizację i zapisane filmy.';

  @override
  String get settingsAiSubtitle => 'Modele lokalne i inteligentne narzędzia';

  @override
  String get exploreLocalModelsAndFutureAiToolsTheseOptionsAreNotActiveYet =>
      'Eksploruj modele lokalne i przyszłe narzędzia AI. Te opcje nie są jeszcze aktywne.';

  @override
  String get localModels => 'Modele lokalne';

  @override
  String get aiModelsSubtitle => 'Przeglądaj i pobieraj obsługiwane modele';

  @override
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere =>
      'Wybierz obsługiwany model, pobierz go na to urządzenie i zarządzaj tutaj zainstalowanymi modelami.';

  @override
  String get importAModel => 'Importuj model';

  @override
  String get aiImportSubtitle => 'Użyj zgodnego modelu z Twoich plików';

  @override
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt =>
      'Wybierz kompatybilny lokalny plik modelu i sprawdź jego wymagania przed użyciem.';

  @override
  String get smartFeatures => 'Inteligentne funkcje';

  @override
  String get aiFeaturesSubtitle => 'Kompresja, organizacja i wyszukiwanie';

  @override
  String
  get chooseWhichLocalAiSuggestionsToUseForVideoCompressionOrganizationNamingAndSearch =>
      'Wybierz, których lokalnych sugestii AI używać do kompresji wideo, organizacji, nazywania i wyszukiwania.';

  @override
  String get modelPerformance => 'Wydajność modelu';

  @override
  String get aiRuntimeSubtitle => 'Preferencje przetwarzania i zasobów';

  @override
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels =>
      'Kontroluj zaplecze przetwarzania i limity zasobów dla obsługiwanych modeli.';

  @override
  String get conversationSettings => 'Ustawienia rozmowy';

  @override
  String get aiChatSettingsSubtitle =>
      'Transmisja, przemyślenia i długość odpowiedzi';

  @override
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits =>
      'Skonfiguruj, jak asystent odpowiada, w tym transmisję strumieniową, tryb myślenia, próbkowanie i limity odpowiedzi.';

  @override
  String get imagesAndAudio => 'Obrazy i dźwięk';

  @override
  String get aiMediaSubtitle => 'Kontroluj multimodalne wejścia';

  @override
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos =>
      'Wybierz, czy kompatybilne modele mogą analizować wybrane obrazy i dźwięki z Twoich filmów.';

  @override
  String get semanticSearch => 'Wyszukiwanie semantyczne';

  @override
  String get aiSearchSubtitle => 'Embeddings i lokalne indeksowanie';

  @override
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning =>
      'Zarządzaj lokalnym modelem embedding i indeksem wyszukiwania w celu znajdowania filmów i momentów według znaczenia.';

  @override
  String get toolsAndStructuredOutput => 'Narzędzia i strukturalne wyniki';

  @override
  String get aiToolsSubtitle => 'Działania, schematy i potwierdzenia';

  @override
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation =>
      'Zarządzaj obsługiwanymi działaniami asystenta i uporządkowanymi odpowiedziami. Działania wpływające na pliki będą wymagały Twojego potwierdzenia.';

  @override
  String get aiGroupModels => 'Modele';

  @override
  String get aiGroupExperience => 'Doświadczenie asystenta';

  @override
  String get aiGroupCapabilities => 'Inteligentne funkcje';

  @override
  String get aiGroupPerformance => 'Wydajność';

  @override
  String get compressionHistorySubtitle => 'Twoja skompresowana historia wideo';

  @override
  String get settingsNotificationsSubtitle =>
      'Powiadomienia o ukończeniu i aktualizacjach';

  @override
  String get settingsPrivacySubtitle => 'Twoje dane pozostają lokalne';

  @override
  String get plansSubtitle => 'Porównaj plany i ulepsz';

  @override
  String get plansMethodsSubtitle => 'Metody płatności i rozliczenia';

  @override
  String get plansRestoreSubtitle => 'Przywróć wcześniejszy zakup';

  @override
  String get aboutAppSubtitle => 'Szczegóły wersji i kompilacji';

  @override
  String get aboutDeveloperSubtitle => 'Twórca stojący za Zumi';

  @override
  String get aboutLicensesSubtitle => 'Licencje pakietów open source';

  @override
  String get legalPrivacySubtitle => 'Jak przetwarzane są dane';

  @override
  String get legalTermsSubtitle => 'Zasady korzystania z Zumi';

  @override
  String get legalDataSafetySubtitle => 'Jakie dane zbieramy';

  @override
  String get legalPermissionsSubtitle => 'Dlaczego potrzebujemy uprawnień';

  @override
  String get helpFaqSubtitle => 'Odpowiedzi na często zadawane pytania';

  @override
  String get helpSupportSubtitle => 'Skontaktuj się bezpośrednio z deweloperem';

  @override
  String get helpFeedbackSubtitle => 'Wyślij nam swoją opinię';

  @override
  String get compressionPickVideo => 'Wybierz wideo';

  @override
  String get compressionTargetMb => 'Docelowy rozmiar (MB)';

  @override
  String get compressionStart => 'Rozpocznij kompresję';

  @override
  String get compressionPause => 'Wstrzymaj';

  @override
  String get compressionResume => 'Wznów';

  @override
  String get compressionViewResult => 'Zobacz wynik';

  @override
  String get compressionSaveGallery => 'Zapisz w galerii';

  @override
  String get compressionShare => 'Udostępnij wideo';

  @override
  String get compressionOriginalSize => 'Rozmiar oryginalny';

  @override
  String get compressionOutputSize => 'Rozmiar wyjściowy';

  @override
  String get compressionEmptyHistory => 'Brak skompresowanych wideo';

  @override
  String get compressionSavedGallery => 'Zapisano w galerii';

  @override
  String get compressionInvalidTarget =>
      'Wprowadź docelowy rozmiar większy od zera';

  @override
  String get compressionCancelled => 'Kompresja anulowana';

  @override
  String get compressionTargetExceeded =>
      'To wideo nie osiągnęło wybranego rozmiaru. Spróbuj większego docelowego rozmiaru.';

  @override
  String get compressionTargetInfeasible =>
      'Wybrany rozmiar jest za mały dla tego wideo. Wybierz większy rozmiar.';

  @override
  String get compressionPreviewBefore => 'Podgląd oryginalny';

  @override
  String get compressionPreviewAfter => 'Skompresowany podgląd';

  @override
  String get compressionPreset => 'Docelowy preset';

  @override
  String get compressionCustom => 'Rozmiar niestandardowy';

  @override
  String get compressionPreviewUnavailable => 'Podgląd niedostępny';

  @override
  String get compressionAdvanced => 'Zaawansowane sterowanie';

  @override
  String get compressionAutomatic => 'Automatyczny';

  @override
  String get compressionResolutionLimit => 'Maksymalna rozdzielczość';

  @override
  String get compressionSourceResolution => 'Oryginalna rozdzielczość';

  @override
  String get compressionFrameRateLimit => 'Maksymalna liczba klatek na sekundę';

  @override
  String get compressionAudioQuality => 'Prędkość transmisji dźwięku';

  @override
  String get compressionRemoveAudio => 'Usuń dźwięk';

  @override
  String get compressionVideoBitrateLimit =>
      'Maksymalna przepływność wideo (kbps)';

  @override
  String get compressionHdrPolicy => 'Obsługa HDR';

  @override
  String get compressionHdrConvert => 'Konwersja do SDR';

  @override
  String get compressionHdrPreserve => 'Zachowaj HDR, jeśli jest obsługiwany';

  @override
  String get compressionPlanPreview => 'Zanim zaczniesz';

  @override
  String get compressionPlanLoading => 'Obliczanie planu kompresji…';

  @override
  String get compressionPlanResolution => 'Planowana rozdzielczość';

  @override
  String get compressionPlanVideoBitrate => 'Planowana przepływność wideo';

  @override
  String get compressionPlanAudioBitrate => 'Planowana przepływność dźwięku';

  @override
  String get compressionAudioConversionNote =>
      'Ponowne kodowanie zmienia dźwięk na AAC stereo. Dolby Atmos i przestrzenny dźwięk DTS nie zostaną zachowane.';

  @override
  String get compressionPlanTooSmall =>
      'Ten cel jest zbyt mały, aby uzyskać użyteczne wideo. Zwiększ rozmiar lub obniż inne limity.';

  @override
  String get compressionPlanLowQuality =>
      'Wybrany cel może pogorszyć jakość wideo.';

  @override
  String get compressionPlanAlreadyWithinLimit =>
      'Źródło już mieści się w limicie rozmiaru.';

  @override
  String get compressionInvalidBitrate =>
      'Wprowadź bitrate przynajmniej 150 kbps lub pozostaw puste, aby ustawić automatycznie.';

  @override
  String get compressionInvalidResolution =>
      'Wprowadź parzystą rozdzielczość od 240 do 16384 lub pozostaw puste, aby ustawić automatycznie.';

  @override
  String get compressionSeek => 'Pozycja wideo';

  @override
  String get compressionInterrupted =>
      'Poprzednia kompresja została przerwana. Jej pliki tymczasowe zostały usunięte; możesz wybrać wideo i spróbować ponownie.';

  @override
  String get compressionDismiss => 'Odrzuć';

  @override
  String get compressionClearHistory => 'Wyczyść historię';

  @override
  String get compressionClearHistoryConfirm =>
      'Usunąć wszystkie wpisy historii? Zapisane filmy pozostaną na twoim urządzeniu.';

  @override
  String get compressionAttempts => 'Próby';

  @override
  String get compressionTargetSize => 'Docelowy rozmiar';

  @override
  String get compressionOutputResolution => 'Rozdzielczość wyjściowa';

  @override
  String get compressionInvalidVideo =>
      'Nie można odczytać tego wideo. Wybierz inny plik.';

  @override
  String get compressionInvalidOutput =>
      'Skompresowane wideo nie przeszło weryfikacji. Twój oryginalny film nie został zmieniony.';

  @override
  String get compressionEncoderUnsupported =>
      'To urządzenie nie może zakodować wybranej rozdzielczości lub liczby klatek na sekundę. Zmniejsz to ustawienie i spróbuj ponownie.';

  @override
  String get compressionAudioDecoderUnsupported =>
      'To urządzenie nie może dekodować tego formatu audio do kompresji. Usuń audio lub użyj obsługiwanego źródła.';

  @override
  String get compressionVideoDecoderUnsupported =>
      'To urządzenie nie może dekodować tego formatu wideo ani profilu kompresji. Wybierz inne źródło lub urządzenie.';

  @override
  String get compressionMp4NotStreamable =>
      'Wyeksportowany plik MP4 nie jest gotowy do streamingu. Spróbuj innego wideo lub urządzenia.';

  @override
  String get compressionNoSpace =>
      'Nie ma wystarczającej ilości wolnego miejsca, aby skompresować to wideo.';

  @override
  String get compressionHdrUnsupported =>
      'To urządzenie nie może przetworzyć wybranego trybu HDR. Spróbuj konwersji do SDR.';

  @override
  String get compressionGeneralFailure =>
      'Nie udało się zakończyć kompresji. Spróbuj innych ustawień lub wideo.';

  @override
  String get aboutIdentitySection => 'Tożsamość aplikacji';

  @override
  String get aboutAppName => 'Nazwa aplikacji';

  @override
  String get aboutPackageName => 'Nazwa pakietu';

  @override
  String get aboutVersion => 'Wersja';

  @override
  String get aboutBuildNumber => 'Numer kompilacji';

  @override
  String get aboutEnvironmentSection => 'Urządzenie i kompilacja';

  @override
  String get aboutOperatingSystem => 'System operacyjny';

  @override
  String get aboutOsVersion => 'Wersja systemu';

  @override
  String get aboutBuildMode => 'Tryb kompilacji';

  @override
  String get aboutDebug => 'Debugowanie';

  @override
  String get aboutRelease => 'Wersja produkcyjna';

  @override
  String get aboutToolchainSection => 'Zbudowano z';

  @override
  String get aboutInstallationSection => 'Instalacja';

  @override
  String get aboutInstaller => 'Zainstalowano z';

  @override
  String get aboutInstalledOn => 'Zainstalowano na';

  @override
  String get aboutUpdatedOn => 'Zaktualizowano dnia';

  @override
  String get aboutUnavailable => 'Niedostępne';

  @override
  String get aboutProjectSection => 'Projekt i wsparcie';

  @override
  String get aboutRepository => 'Repozytorium GitHub';

  @override
  String get aboutRepositorySubtitle => 'Wyświetl kod źródłowy Zumi';

  @override
  String get aboutReadme => 'Przeczytaj README';

  @override
  String get aboutReadmeSubtitle => 'Dowiedz się o Zumi na GitHub';

  @override
  String get aboutIssues => 'Zgłoś problem';

  @override
  String get aboutIssuesSubtitle => 'Wyświetlaj i twórz zgłoszenia na GitHub';

  @override
  String get aboutLatestRelease => 'Najnowsze wydanie';

  @override
  String get aboutLatestReleaseSubtitle => 'Wyświetl wydania i pobierz';

  @override
  String get aboutDonate => 'Wsparcie Zumi';

  @override
  String get aboutDonateSubtitle => 'Otwórz oficjalną stronę darowizn';

  @override
  String get aboutLinkError => 'Nie można otworzyć linku. Spróbuj ponownie.';

  @override
  String get aboutDeveloperSection => 'Deweloper';

  @override
  String get aboutDeveloperName => 'Mostafa Sensei';

  @override
  String get aboutDeveloperProfile => 'Profil GitHub';

  @override
  String get aboutDeveloperProfileSubtitle =>
      'Zobacz projekty i dane kontaktowe';

  @override
  String get maintenanceInProgress => 'Konserwacja w toku';

  @override
  String get maintenanceMessage =>
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
