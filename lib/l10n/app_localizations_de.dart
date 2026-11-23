// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get asagi => 'Asagi';

  @override
  String get downloadFile => 'Datei herunterladen';

  @override
  String fileOpenedInBrowser(String fileName) {
    return 'Datei im Browser geöffnet: $fileName';
  }

  @override
  String fileSavedToGallery(String fileName) {
    return 'Datei in Galerie gespeichert: $fileName';
  }

  @override
  String fileSavedToDocuments(String fileName) {
    return 'Datei in Dokumente gespeichert: $fileName';
  }

  @override
  String get fileIsAlreadySaved => 'Datei ist bereits gespeichert';

  @override
  String get error => 'Fehler';

  @override
  String get info => 'Info';

  @override
  String get success => 'Erfolg';

  @override
  String get warning => 'Warnung';

  @override
  String get paid => 'Bezahlt';

  @override
  String get unpaid => 'Unbezahlt';

  @override
  String get partial => 'Teilweise';

  @override
  String get addressLineCannotBeEmpty => 'Adresszeile darf nicht leer sein';

  @override
  String get addressLineIsTooLong => 'Adresszeile ist zu lang';

  @override
  String get specialCharactersAreNotAllowed =>
      'Sonderzeichen sind nicht erlaubt';

  @override
  String get emojisAreNotAllowed => 'Emojis sind nicht erlaubt';

  @override
  String get cityCannotBeEmpty => 'Stadt darf nicht leer sein';

  @override
  String get cityNameIsTooLong => 'Stadtname ist zu lang';

  @override
  String get cityContainsInvalidSpecialCharacters =>
      'Stadt enthält ungültige Sonderzeichen';

  @override
  String get addressLabelCannotBeEmpty =>
      'Adressbezeichnung darf nicht leer sein';

  @override
  String get addressLabelIsTooLong => 'Adressbezeichnung ist zu lang';

  @override
  String get emailCannotBeEmpty => 'E-Mail darf nicht leer sein';

  @override
  String get invalidEmailFormat => 'Ungültiges E-Mail-Format';

  @override
  String get emailContainsInvalidCharacters =>
      'E-Mail enthält ungültige Zeichen';

  @override
  String get emailMustContain => 'E-Mail muss @ enthalten';

  @override
  String get emailMustBeInLowercase => 'E-Mail muss in Kleinbuchstaben sein';

  @override
  String get arabicCharactersAreNotAllowed =>
      'Arabische Zeichen sind nicht erlaubt';

  @override
  String get emojisAreNotAllowedInEmail =>
      'Emojis sind in der E-Mail nicht erlaubt';

  @override
  String get phoneNumberCannotBeEmpty => 'Telefonnummer darf nicht leer sein';

  @override
  String get invalidPhoneNumber => 'Ungültige Telefonnummer';

  @override
  String get phoneNumberMustBeAtLeast11Digits =>
      'Telefonnummer muss mindestens 11 Ziffern haben';

  @override
  String get nameCannotBeEmpty => 'Name darf nicht leer sein';

  @override
  String get invalidName => 'Ungültiger Name';

  @override
  String get nameMustBeAtLeast3Characters =>
      'Name muss mindestens 3 Zeichen haben';

  @override
  String get nameCannotExceed20Characters =>
      'Name darf 20 Zeichen nicht überschreiten';

  @override
  String get nameContainsInvalidSpecialCharacters =>
      'Name enthält ungültige Sonderzeichen';

  @override
  String get emojisAreNotAllowedInName => 'Emojis sind im Namen nicht erlaubt';

  @override
  String get passwordCannotBeEmpty => 'Passwort darf nicht leer sein';

  @override
  String get passwordMustContainUppercaseLowercaseNumberAndSpecialCharacter =>
      'Passwort muss Großbuchstaben, Kleinbuchstaben, Zahl und Sonderzeichen enthalten';

  @override
  String get passwordMustBeAtLeast8CharactersLong =>
      'Passwort muss mindestens 8 Zeichen lang sein';

  @override
  String get noInternetConnection => 'Keine Internetverbindung';

  @override
  String get internetConnectionRestored =>
      'Internetverbindung wiederhergestellt';

  @override
  String get retry => 'Erneut versuchen';

  @override
  String get confirm => 'Bestätigen';

  @override
  String get ok => 'OK';

  @override
  String get compressVideosPrivatelyOnYourDevice =>
      'Videos privat auf Ihrem Gerät komprimieren.';

  @override
  String get welcomeToAsagi => 'Willkommen bei Asagi';

  @override
  String get learnHowAsagiCompressesYourVideosWithoutEverLeavingYourPhone =>
      'Erfahren Sie, wie Asagi Ihre Videos komprimiert, ohne dass sie jemals Ihr Handy verlassen.';

  @override
  String get signIn => 'Anmelden';

  @override
  String get signInToSyncYourPlanAndKeepYourPurchasesAvailableOnEveryDevice =>
      'Melden Sie sich an, um Ihren Plan zu synchronisieren und Ihre Käufe auf jedem Gerät verfügbar zu halten.';

  @override
  String get chooseAVideo => 'Wählen Sie ein Video';

  @override
  String get preparingSelectedVideo => 'Getting your video ready';

  @override
  String get pickAVideoFromYourGalleryToStartCompressing =>
      'Wählen Sie ein Video aus Ihrer Galerie aus, um mit der Komprimierung zu beginnen.';

  @override
  String get compressionSetup => 'Komprimierungseinstellungen';

  @override
  String get chooseResolutionBitrateAndOutputFormatBeforeYouStart =>
      'Wählen Sie Auflösung, Bitrate und Ausgabeformat, bevor Sie beginnen.';

  @override
  String get compressing => 'Komprimieren';

  @override
  String get followTheLiveProgressOfYourCompressionJob =>
      'Verfolgen Sie den Live-Fortschritt Ihres Komprimierungsauftrags.';

  @override
  String get compressionResult => 'Komprimierungsergebnis';

  @override
  String get compareTheBeforeAndAfterSizeThenSaveOrShareTheResult =>
      'Vergleichen Sie die Größe vor und nach der Komprimierung und speichern oder teilen Sie das Ergebnis.';

  @override
  String get compressionHistory => 'Komprimierungshistorie';

  @override
  String get reviewTheVideosYouHaveCompressedOnThisDevice =>
      'Überprüfen Sie die Videos, die Sie auf diesem Gerät komprimiert haben.';

  @override
  String get settings => 'Einstellungen';

  @override
  String get appearance => 'Aussehen';

  @override
  String get themeColorSchemeAndMotionPreferences =>
      'Thema, Farbschema und Bewegungseinstellungen.';

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
  String get language => 'Sprache';

  @override
  String get appLanguageAndTextDirection => 'App-Sprache und Textausrichtung.';

  @override
  String get compressionDefaults => 'Standardwerte für Komprimierung';

  @override
  String get defaultResolutionBitrateAndOutputFormat =>
      'Standardauflösung, Bitrate und Ausgabeformat.';

  @override
  String get storageCleanup => 'Speicher & Bereinigung';

  @override
  String get storageUsageCacheSizeAndTemporaryFileCleanup =>
      'Speichernutzung, Cache-Größe und Bereinigung temporärer Dateien.';

  @override
  String get notifications => 'Benachrichtigungen';

  @override
  String get jobCompletionAndProductUpdateNotifications =>
      'Benachrichtigungen über Auftragsabschluss und Produktupdates.';

  @override
  String get privacy => 'Datenschutz';

  @override
  String get onDeviceProcessingLocalLogsAndOptionalCrashReports =>
      'Verarbeitung auf dem Gerät, lokale Protokolle und optionale Absturzberichte.';

  @override
  String get aboutAsagi => 'Über Asagi';

  @override
  String get versionBuildNumberAndApplicationDetails =>
      'Version, Build-Nummer und Anwendungsdetails.';

  @override
  String get aboutTheDeveloper => 'Über den Entwickler';

  @override
  String get theDeveloperAndToolsBehindAsagi =>
      'Der Entwickler und die Werkzeuge hinter Asagi.';

  @override
  String get openSourcePackagesBundledWithAsagi =>
      'Open-Source-Pakete, die mit Asagi gebündelt sind.';

  @override
  String get privacyPolicy => 'Datenschutzrichtlinie';

  @override
  String get howAsagiHandlesYourVideosAndData =>
      'Wie Asagi Ihre Videos und Daten verarbeitet.';

  @override
  String get termsOfService => 'Nutzungsbedingungen';

  @override
  String get theTermsThatApplyToAsagiAndItsPurchases =>
      'Die Bedingungen, die für Asagi und seine Käufe gelten.';

  @override
  String get dataSafety => 'Datensicherheit';

  @override
  String get summaryOfTheDataAsagiCollectsAndWhy =>
      'Zusammenfassung der Daten, die Asagi sammelt, und warum.  ';

  @override
  String get permissions => 'Berechtigungen  ';

  @override
  String get runtimePermissionsAsagiRequestsAndWhyEachIsNeeded =>
      'Laufzeit-Berechtigungen, die Asagi anfordert, und warum jede benötigt wird.  ';

  @override
  String get faq => 'FAQ  ';

  @override
  String get answersToCommonQuestionsAboutCompressionAndBilling =>
      'Antworten auf häufig gestellte Fragen zu Komprimierung und Abrechnung.  ';

  @override
  String get support => 'Support  ';

  @override
  String get getHelpWithYourAccountOrAPurchase =>
      'Hilfe zu Ihrem Konto oder einem Kauf erhalten.  ';

  @override
  String get sendFeedback => 'Feedback senden  ';

  @override
  String get reportAProblemOrSuggestAnImprovement =>
      'Ein Problem melden oder eine Verbesserung vorschlagen.  ';

  @override
  String get plans => 'Pläne  ';

  @override
  String get comparePlansAndSeeWhatEachOneUnlocks =>
      'Pläne vergleichen und sehen, was jeder freischaltet.  ';

  @override
  String get planDetails => 'Details zum Plan  ';

  @override
  String get benefitsLimitsAndPricingForThisPlan =>
      'Vorteile, Limits und Preise dieses Plans.  ';

  @override
  String get paymentMethods => 'Zahlungsmethoden  ';

  @override
  String get supportedWaysToPayIncludingStoreBilling =>
      'Unterstützte Zahlungsmethoden, einschließlich Abrechnung über den Store.  ';

  @override
  String get restorePurchases => 'Käufe wiederherstellen';

  @override
  String get reApplyAPurchaseMadeOnAnotherDevice =>
      'Kauf, der auf einem anderen Gerät getätigt wurde, erneut anwenden.';

  @override
  String get profile => 'Profil';

  @override
  String get yourIdentityPlanStatusAndAccountPreferences =>
      'Ihre Identität, Planstatus und Kontoeinstellungen.';

  @override
  String get deleteAccount => 'Konto löschen';

  @override
  String get permanentlyRemoveYourAccountAndItsServerSideData =>
      'Ihr Konto und seine serverseitigen Daten dauerhaft entfernen.';

  @override
  String get rateAsagi => 'Asagi bewerten';

  @override
  String get tellOthersHowAsagiWorkedForYouOnTheStore =>
      'Anderen mitteilen, wie Asagi für Sie im Store funktioniert hat.';

  @override
  String get shareAsagi => 'Asagi teilen';

  @override
  String get recommendAsagiToAFriend => 'Empfehlen Sie Asagi einem Freund.';

  @override
  String get appearanceLanguage => 'Darstellung & Sprache';

  @override
  String get compression => 'Kompression';

  @override
  String get onDeviceAI => 'KI auf dem Gerät';

  @override
  String get notificationsPrivacy => 'Benachrichtigungen & Datenschutz';

  @override
  String get plansPurchases => 'Pläne & Käufe';

  @override
  String get about => 'Über';

  @override
  String get legal => 'Rechtliches';

  @override
  String get helpFeedback => 'Hilfe & Feedback';

  @override
  String get account => 'Konto';

  @override
  String get themeAndAppLanguage => 'Design und App-Sprache';

  @override
  String get appLanguageAndDirection => 'App-Sprache und Richtung';

  @override
  String get defaultQualityAndFormat => 'Standardqualität und Format';

  @override
  String get cacheAndStorageUsage => 'Cache- und Speicherverbrauch';

  @override
  String get aiSettings => 'KI-Einstellungen';

  @override
  String get asagiAssistant => 'Asagi-Assistent';

  @override
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere =>
      'Ein privater Assistent für Ihre Videos kommt bald. Sie werden hier Fragen zur Komprimierung, Organisation und gespeicherten Videos stellen können.';

  @override
  String get localModelsAndSmartTools =>
      'Lokale Modelle und intelligente Werkzeuge';

  @override
  String get exploreLocalModelsAndFutureAIToolsTheseOptionsAreNotActiveYet =>
      'Erkunden Sie lokale Modelle und zukünftige KI-Tools. Diese Optionen sind noch nicht aktiv.';

  @override
  String get localModels => 'Lokale Modelle';

  @override
  String get browseAndDownloadSupportedModels =>
      'Durchsuchen und herunterladen unterstützter Modelle';

  @override
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere =>
      'Wählen Sie ein unterstütztes Modell aus, laden Sie es auf dieses Gerät herunter und verwalten Sie hier installierte Modelle.';

  @override
  String get importAModel => 'Ein Modell importieren';

  @override
  String get useACompatibleModelFromYourFiles =>
      'Verwenden Sie ein kompatibles Modell aus Ihren Dateien';

  @override
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt =>
      'Wählen Sie eine kompatible lokale Modell-Datei aus und überprüfen Sie deren Anforderungen, bevor Sie sie verwenden.  ';

  @override
  String get smartFeatures => 'Intelligente Funktionen  ';

  @override
  String get compressionOrganizationAndSearch =>
      'Komprimierung, Organisation und Suche  ';

  @override
  String
  get chooseWhichLocalAISuggestionsToUseForVideoCompressionOrganizationNamingAndSearch =>
      'Wählen Sie aus, welche lokalen KI-Vorschläge für Video-Komprimierung, Organisation, Benennung und Suche verwendet werden sollen.  ';

  @override
  String get modelPerformance => 'Modellleistung  ';

  @override
  String get processingAndResourcePreferences =>
      'Verarbeitungs- und Ressourceneinstellungen  ';

  @override
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels =>
      'Steuern Sie das Verarbeitungs-Backend und die Ressourcenlimits für unterstützte Modelle.  ';

  @override
  String get conversationSettings => 'Konversationseinstellungen  ';

  @override
  String get streamingThinkingAndResponseLength =>
      'Streaming, Denken und Antwortlänge';

  @override
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits =>
      'Konfigurieren Sie, wie der Assistent reagiert, einschließlich Streaming, Denkmodus, Sampling und Antwortlimits. ';

  @override
  String get imagesAndAudio => 'Bilder und Audio ';

  @override
  String get controlMultimodalInputs => 'Multimodale Eingaben steuern ';

  @override
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos =>
      'Wählen Sie, ob kompatible Modelle ausgewählte Bilder und Audio aus Ihren Videos analysieren können.';

  @override
  String get semanticSearch => 'Semantische Suche ';

  @override
  String get embeddingsAndLocalIndexing =>
      'Einbettungen und lokale Indexierung ';

  @override
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning =>
      'Verwalten Sie das lokale Einbettungsmodell und den Suchindex, um Videos und Momente nach Bedeutung zu finden.';

  @override
  String get toolsAndStructuredOutput => 'Werkzeuge und strukturierte Ausgabe ';

  @override
  String get actionsSchemasAndConfirmations =>
      'Aktionen, Schemata und Bestätigungen';

  @override
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation =>
      'Verwalten Sie unterstützte Assistentenaktionen und strukturierte Antworten. Aktionen, die Dateien betreffen, erfordern Ihre Bestätigung.';

  @override
  String get models => 'Modelle';

  @override
  String get assistantExperience => 'Assistenzerfahrung';

  @override
  String get smartCapabilities => 'Intelligente Funktionen';

  @override
  String get performance => 'Leistung';

  @override
  String get yourCompressedVideoHistory => 'Ihr komprimierter Videoverlauf';

  @override
  String get completionAndUpdateAlerts =>
      'Benachrichtigungen zu Abschlüssen und Updates';

  @override
  String get yourDataStaysLocal => 'Ihre Daten bleiben lokal';

  @override
  String get comparePlansAndUpgrade => 'Pläne vergleichen und upgraden';

  @override
  String get paymentMethodsAndBilling => 'Zahlungsmethoden und Abrechnung';

  @override
  String get restoreYourPreviousPurchase =>
      'Ihre vorherigen Käufe wiederherstellen';

  @override
  String get versionAndBuildDetails => 'Versions- und Build-Details';

  @override
  String get theDeveloperBehindAsagi => 'Der Entwickler hinter Asagi';

  @override
  String get openSourcePackageLicenses => 'Open-Source-Paketlizenzen';

  @override
  String get howDataIsHandled => 'Wie Daten verarbeitet werden';

  @override
  String get rulesForUsingAsagi => 'Regeln für die Nutzung von Asagi';

  @override
  String get whatDataWeCollect => 'Welche Daten wir sammeln';

  @override
  String get whyWeNeedPermissions => 'Warum wir Berechtigungen benötigen';

  @override
  String get answersToCommonQuestions => 'Antworten auf häufige Fragen';

  @override
  String get reachTheDeveloperDirectly => 'Den Entwickler direkt erreichen';

  @override
  String get sendUsYourFeedback => 'Senden Sie uns Ihr Feedback';

  @override
  String get pickVideo => 'Video auswählen';

  @override
  String get targetSizeMB => 'Zielgröße (MB)';

  @override
  String get startCompression => 'Komprimierung starten';

  @override
  String get pause => 'Pause';

  @override
  String get resume => 'Fortsetzen';

  @override
  String get viewResult => 'Ergebnis anzeigen';

  @override
  String get saveToGallery => 'In Galerie speichern';

  @override
  String get shareVideo => 'Video teilen';

  @override
  String get originalSize => 'Originalgröße';

  @override
  String get outputSize => 'Ausgabegröße';

  @override
  String get noCompressedVideosYet => 'Noch keine komprimierten Videos';

  @override
  String get savedToGallery => 'In Galerie gespeichert';

  @override
  String get enterATargetSizeGreaterThanZero =>
      'Geben Sie eine Zielgröße größer als null ein';

  @override
  String get compressionCancelled => 'Komprimierung abgebrochen';

  @override
  String get thisVideoCouldNotReachTheSelectedSizeTryALargerTargetSize =>
      'Dieses Video konnte die ausgewählte Größe nicht erreichen. Versuchen Sie eine größere Zielgröße.';

  @override
  String get theSelectedSizeIsTooSmallForThisVideoChooseALargerSize =>
      'Die ausgewählte Größe ist für dieses Video zu klein. Wählen Sie eine größere Größe.';

  @override
  String get originalPreview => 'Originalvorschau';

  @override
  String get compressedPreview => 'Komprimierte Vorschau';

  @override
  String get targetPreset => 'Zielvorgabe';

  @override
  String get customSize => 'Benutzerdefinierte Größe';

  @override
  String get previewUnavailable => 'Vorschau nicht verfügbar';

  @override
  String get advancedControls => 'Erweiterte Steuerung';

  @override
  String get automatic => 'Automatisch';

  @override
  String get maximumResolution => 'Maximale Auflösung';

  @override
  String get originalResolution => 'Ursprüngliche Auflösung';

  @override
  String get maximumFrameRate => 'Maximale Bildrate';

  @override
  String get audioBitrate => 'Audio-Bitrate';

  @override
  String get removeAudio => 'Audio entfernen';

  @override
  String get videoBitrateCeilingKbps => 'Maximale Video-Bitrate (kbps)';

  @override
  String get hdrHandling => 'HDR-Verarbeitung';

  @override
  String get convertToSDR => 'In SDR konvertieren';

  @override
  String get keepHDRWhenSupported => 'HDR behalten, wenn unterstützt';

  @override
  String get beforeYouStart => 'Bevor Sie starten';

  @override
  String get calculatingCompressionPlan => 'Kompressionsplan wird berechnet…';

  @override
  String get plannedResolution => 'Geplante Auflösung';

  @override
  String get plannedVideoBitrate => 'Geplante Video-Bitrate';

  @override
  String get plannedAudioBitrate => 'Geplante Audio-Bitrate';

  @override
  String
  get reEncodingConvertsAudioToAACStereoDolbyAtmosAndDTSSpatialAudioWillNotBePreserved =>
      'Beim Rekodieren wird das Audio in AAC Stereo konvertiert. Dolby Atmos und DTS räumliches Audio werden nicht beibehalten.';

  @override
  String
  get thisTargetIsTooSmallForAUsableVideoIncreaseTheSizeOrLowerOtherLimits =>
      'Dieses Ziel ist zu klein für ein brauchbares Video. Erhöhen Sie die Größe oder senken Sie andere Limits.';

  @override
  String get theSelectedTargetMayReduceVideoQuality =>
      'Das ausgewählte Ziel kann die Videoqualität verringern.';

  @override
  String get theSourceIsAlreadyWithinTheSizeLimit =>
      'Die Quelle liegt bereits innerhalb des Größenlimits.';

  @override
  String get enterABitrateOfAtLeast150KbpsOrLeaveBlankForAutomatic =>
      'Geben Sie eine Bitrate von mindestens 150 kbps ein oder lassen Sie das Feld für automatische Werte leer.';

  @override
  String get enterAnEvenResolutionFrom240To16384OrLeaveBlankForAutomatic =>
      'Geben Sie eine gerade Auflösung von 240 bis 16384 ein oder lassen Sie das Feld für automatische Werte leer.';

  @override
  String get videoPosition => 'Videoposition';

  @override
  String
  get aPreviousCompressionWasInterruptedItsTemporaryFilesWereCleanedUpYouCanSelectTheVideoAndTryAgain =>
      'Eine vorherige Kompression wurde unterbrochen. Ihre temporären Dateien wurden bereinigt; Sie können das Video auswählen und es erneut versuchen.';

  @override
  String get dismiss => 'Schließen';

  @override
  String get clearHistory => 'Verlauf löschen';

  @override
  String get removeAllHistoryEntriesSavedVideosWillRemainOnYourDevice =>
      'Alle Verlaufseinträge entfernen? Gespeicherte Videos bleiben auf Ihrem Gerät. ';

  @override
  String get attempts => 'Versuche ';

  @override
  String get targetSize => 'Zielgröße ';

  @override
  String get outputResolution => 'Ausgabeauflösung ';

  @override
  String get thisVideoCouldNotBeReadChooseAnotherFile =>
      'Dieses Video konnte nicht gelesen werden. Wählen Sie eine andere Datei. ';

  @override
  String get theEncodedVideoFailedVerificationYourOriginalVideoWasNotChanged =>
      'Das codierte Video hat die Überprüfung nicht bestanden. Ihr ursprüngliches Video wurde nicht geändert. ';

  @override
  String
  get thisDeviceCannotEncodeTheSelectedResolutionOrFrameRateLowerThatSettingAndTryAgain =>
      'Dieses Gerät kann die ausgewählte Auflösung oder Bildrate nicht codieren. Verringern Sie diese Einstellung und versuchen Sie es erneut. ';

  @override
  String
  get thisDeviceCannotDecodeThisAudioFormatForCompressionRemoveAudioOrUseASupportedSource =>
      'Dieses Gerät kann dieses Audioformat für die Komprimierung nicht decodieren. Entfernen Sie den Ton oder verwenden Sie eine unterstützte Quelle.';

  @override
  String
  get thisDeviceCannotDecodeThisVideoFormatOrProfileForCompressionChooseAnotherSourceOrDevice =>
      'Dieses Gerät kann dieses Videoformat oder Profil für die Kompression nicht decodieren. Wählen Sie eine andere Quelle oder ein anderes Gerät. ';

  @override
  String get theExportedMP4IsNotReadyForStreamingTryAnotherVideoOrDevice =>
      'Die exportierte MP4-Datei ist nicht zum Streaming bereit. Versuchen Sie ein anderes Video oder Gerät. ';

  @override
  String get thereIsNotEnoughFreeStorageToCompressThisVideo =>
      'Es ist nicht genügend freier Speicher vorhanden, um dieses Video zu komprimieren. ';

  @override
  String get thisDeviceCannotProcessTheSelectedHDRModeTryConvertingToSDR =>
      'Dieses Gerät kann den ausgewählten HDR-Modus nicht verarbeiten. Versuchen Sie, in SDR zu konvertieren. ';

  @override
  String get compressionCouldNotBeCompletedTryAnotherSettingOrVideo =>
      'Die Kompression konnte nicht abgeschlossen werden. Versuchen Sie eine andere Einstellung oder ein anderes Video. ';

  @override
  String get appIdentity => 'App-Identität ';

  @override
  String get appName => 'App-Name ';

  @override
  String get packageName => 'Paketname ';

  @override
  String get version => 'Version ';

  @override
  String get buildNumber => 'Build-Nummer ';

  @override
  String get deviceAndBuild => 'Gerät und Build ';

  @override
  String get operatingSystem => 'Betriebssystem ';

  @override
  String get osVersion => 'OS-Version ';

  @override
  String get buildMode => 'Build-Modus ';

  @override
  String get debug => 'Debug ';

  @override
  String get release => 'Release';

  @override
  String get builtWith => 'Erstellt mit';

  @override
  String get installation => 'Installation';

  @override
  String get installedFrom => 'Installiert von';

  @override
  String get installedOn => 'Installiert am';

  @override
  String get updatedOn => 'Aktualisiert am';

  @override
  String get unavailable => 'Nicht verfügbar';

  @override
  String get projectAndSupport => 'Projekt und Unterstützung';

  @override
  String get githubRepository => 'GitHub-Repository';

  @override
  String get viewAsagiSourceCode => 'Asagi-Quellcode anzeigen';

  @override
  String get readTheREADME => 'README lesen';

  @override
  String get learnAboutAsagiOnGitHub => 'Mehr über Asagi auf GitHub erfahren';

  @override
  String get reportAnIssue => 'Ein Problem melden';

  @override
  String get viewAndCreateGitHubIssues =>
      'GitHub-Issues anzeigen und erstellen';

  @override
  String get latestRelease => 'Neueste Version';

  @override
  String get viewReleasesAndDownloads => 'Versionen und Downloads anzeigen';

  @override
  String get supportAsagi => 'Asagi unterstützen';

  @override
  String get openTheOfficialDonationPage => 'Offizielle Spendenseite öffnen';

  @override
  String get couldNotOpenTheLinkPleaseTryAgain =>
      'Der Link konnte nicht geöffnet werden. Bitte versuchen Sie es erneut.';

  @override
  String get developer => 'Entwickler';

  @override
  String get mostafaSensei => 'Mostafa Sensei';

  @override
  String get githubProfile => 'GitHub-Profil';

  @override
  String get seeProjectsAndContactDetails =>
      'Projekte und Kontaktdaten ansehen';

  @override
  String get maintenanceInProgress => 'Wartung läuft';

  @override
  String get asagiIsTemporarilyUnavailablePleaseTryAgainLater =>
      'Asagi ist vorübergehend nicht verfügbar. Bitte versuchen Sie es später erneut.';

  @override
  String get comingSoon => 'Demnächst verfügbar';

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
  String get pleaseWait => 'Bitte warten...';

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
  String get cancel => 'Abbrechen';

  @override
  String get clean => 'Clean';

  @override
  String get openSourceLicenses => 'Open-Source-Lizenzen';

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
  String get languageName => 'Deutsch';

  @override
  String get countryCode => 'DE';

  @override
  String countryName(String countryCode) {
    String _temp0 = intl.Intl.selectLogic(countryCode, {
      'AE': 'Vereinigte Arabische Emirate',
      'AT': 'Österreich',
      'AU': 'Australien',
      'BE': 'Belgien',
      'BH': 'Bahrain',
      'BR': 'Brasilien',
      'CA': 'Kanada',
      'CH': 'Schweiz',
      'CN': 'China',
      'DE': 'Deutschland',
      'DJ': 'Dschibuti',
      'DZ': 'Algerien',
      'EG': 'Ägypten',
      'ES': 'Spanien',
      'FR': 'Frankreich',
      'GB': 'Vereinigtes Königreich',
      'HK': 'Sonderverwaltungsregion Hongkong',
      'ID': 'Indonesien',
      'IQ': 'Irak',
      'IT': 'Italien',
      'JO': 'Jordanien',
      'JP': 'Japan',
      'KM': 'Komoren',
      'KR': 'Südkorea',
      'KW': 'Kuwait',
      'LB': 'Libanon',
      'LY': 'Libyen',
      'MA': 'Marokko',
      'MR': 'Mauretanien',
      'MX': 'Mexiko',
      'NL': 'Niederlande',
      'OM': 'Oman',
      'PL': 'Polen',
      'PS': 'Palästinensische Autonomiegebiete',
      'PT': 'Portugal',
      'QA': 'Katar',
      'RU': 'Russland',
      'SA': 'Saudi-Arabien',
      'SD': 'Sudan',
      'SE': 'Schweden',
      'SG': 'Singapur',
      'SO': 'Somalia',
      'SY': 'Syrien',
      'TH': 'Thailand',
      'TN': 'Tunesien',
      'TR': 'Türkei',
      'TW': 'Taiwan',
      'US': 'Vereinigte Staaten',
      'VN': 'Vietnam',
      'YE': 'Jemen',
      'other': 'Land',
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
  String get verifyingCompressedVideo =>
      'Checking the compressed video and its audio…';

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
}

/// The translations for German, as used in Germany (`de_DE`).
class AppLocalizationsDeDe extends AppLocalizationsDe {
  AppLocalizationsDeDe() : super('de_DE');

  @override
  String get asagi => 'Asagi';

  @override
  String get downloadFile => 'Datei herunterladen';

  @override
  String fileOpenedInBrowser(String fileName) {
    return 'Datei im Browser geöffnet: $fileName';
  }

  @override
  String fileSavedToGallery(String fileName) {
    return 'Datei in Galerie gespeichert: $fileName';
  }

  @override
  String fileSavedToDocuments(String fileName) {
    return 'Datei in Dokumente gespeichert: $fileName';
  }

  @override
  String get fileIsAlreadySaved => 'Datei ist bereits gespeichert';

  @override
  String get error => 'Fehler';

  @override
  String get info => 'Info';

  @override
  String get success => 'Erfolg';

  @override
  String get warning => 'Warnung';

  @override
  String get paid => 'Bezahlt';

  @override
  String get unpaid => 'Unbezahlt';

  @override
  String get partial => 'Teilweise';

  @override
  String get addressLineCannotBeEmpty => 'Adresszeile darf nicht leer sein';

  @override
  String get addressLineIsTooLong => 'Adresszeile ist zu lang';

  @override
  String get specialCharactersAreNotAllowed =>
      'Sonderzeichen sind nicht erlaubt';

  @override
  String get emojisAreNotAllowed => 'Emojis sind nicht erlaubt';

  @override
  String get cityCannotBeEmpty => 'Stadt darf nicht leer sein';

  @override
  String get cityNameIsTooLong => 'Stadtname ist zu lang';

  @override
  String get cityContainsInvalidSpecialCharacters =>
      'Stadt enthält ungültige Sonderzeichen';

  @override
  String get addressLabelCannotBeEmpty =>
      'Adressbezeichnung darf nicht leer sein';

  @override
  String get addressLabelIsTooLong => 'Adressbezeichnung ist zu lang';

  @override
  String get emailCannotBeEmpty => 'E-Mail darf nicht leer sein';

  @override
  String get invalidEmailFormat => 'Ungültiges E-Mail-Format';

  @override
  String get emailContainsInvalidCharacters =>
      'E-Mail enthält ungültige Zeichen';

  @override
  String get emailMustContain => 'E-Mail muss @ enthalten';

  @override
  String get emailMustBeInLowercase => 'E-Mail muss in Kleinbuchstaben sein';

  @override
  String get arabicCharactersAreNotAllowed =>
      'Arabische Zeichen sind nicht erlaubt';

  @override
  String get emojisAreNotAllowedInEmail =>
      'Emojis sind in der E-Mail nicht erlaubt';

  @override
  String get phoneNumberCannotBeEmpty => 'Telefonnummer darf nicht leer sein';

  @override
  String get invalidPhoneNumber => 'Ungültige Telefonnummer';

  @override
  String get phoneNumberMustBeAtLeast11Digits =>
      'Telefonnummer muss mindestens 11 Ziffern haben';

  @override
  String get nameCannotBeEmpty => 'Name darf nicht leer sein';

  @override
  String get invalidName => 'Ungültiger Name';

  @override
  String get nameMustBeAtLeast3Characters =>
      'Name muss mindestens 3 Zeichen haben';

  @override
  String get nameCannotExceed20Characters =>
      'Name darf 20 Zeichen nicht überschreiten';

  @override
  String get nameContainsInvalidSpecialCharacters =>
      'Name enthält ungültige Sonderzeichen';

  @override
  String get emojisAreNotAllowedInName => 'Emojis sind im Namen nicht erlaubt';

  @override
  String get passwordCannotBeEmpty => 'Passwort darf nicht leer sein';

  @override
  String get passwordMustContainUppercaseLowercaseNumberAndSpecialCharacter =>
      'Passwort muss Großbuchstaben, Kleinbuchstaben, Zahl und Sonderzeichen enthalten';

  @override
  String get passwordMustBeAtLeast8CharactersLong =>
      'Passwort muss mindestens 8 Zeichen lang sein';

  @override
  String get noInternetConnection => 'Keine Internetverbindung';

  @override
  String get internetConnectionRestored =>
      'Internetverbindung wiederhergestellt';

  @override
  String get retry => 'Erneut versuchen';

  @override
  String get confirm => 'Bestätigen';

  @override
  String get ok => 'OK';

  @override
  String get compressVideosPrivatelyOnYourDevice =>
      'Videos privat auf Ihrem Gerät komprimieren.';

  @override
  String get welcomeToAsagi => 'Willkommen bei Asagi';

  @override
  String get learnHowAsagiCompressesYourVideosWithoutEverLeavingYourPhone =>
      'Erfahren Sie, wie Asagi Ihre Videos komprimiert, ohne dass sie jemals Ihr Handy verlassen.';

  @override
  String get signIn => 'Anmelden';

  @override
  String get signInToSyncYourPlanAndKeepYourPurchasesAvailableOnEveryDevice =>
      'Melden Sie sich an, um Ihren Plan zu synchronisieren und Ihre Käufe auf jedem Gerät verfügbar zu halten.';

  @override
  String get chooseAVideo => 'Wählen Sie ein Video';

  @override
  String get pickAVideoFromYourGalleryToStartCompressing =>
      'Wählen Sie ein Video aus Ihrer Galerie aus, um mit der Komprimierung zu beginnen.';

  @override
  String get compressionSetup => 'Komprimierungseinstellungen';

  @override
  String get chooseResolutionBitrateAndOutputFormatBeforeYouStart =>
      'Wählen Sie Auflösung, Bitrate und Ausgabeformat, bevor Sie beginnen.';

  @override
  String get compressing => 'Komprimieren';

  @override
  String get followTheLiveProgressOfYourCompressionJob =>
      'Verfolgen Sie den Live-Fortschritt Ihres Komprimierungsauftrags.';

  @override
  String get compressionResult => 'Komprimierungsergebnis';

  @override
  String get compareTheBeforeAndAfterSizeThenSaveOrShareTheResult =>
      'Vergleichen Sie die Größe vor und nach der Komprimierung und speichern oder teilen Sie das Ergebnis.';

  @override
  String get compressionHistory => 'Komprimierungshistorie';

  @override
  String get reviewTheVideosYouHaveCompressedOnThisDevice =>
      'Überprüfen Sie die Videos, die Sie auf diesem Gerät komprimiert haben.';

  @override
  String get settings => 'Einstellungen';

  @override
  String get appearance => 'Aussehen';

  @override
  String get themeColorSchemeAndMotionPreferences =>
      'Thema, Farbschema und Bewegungseinstellungen.';

  @override
  String get language => 'Sprache';

  @override
  String get appLanguageAndTextDirection => 'App-Sprache und Textausrichtung.';

  @override
  String get compressionDefaults => 'Standardwerte für Komprimierung';

  @override
  String get defaultResolutionBitrateAndOutputFormat =>
      'Standardauflösung, Bitrate und Ausgabeformat.';

  @override
  String get storageCleanup => 'Speicher & Bereinigung';

  @override
  String get storageUsageCacheSizeAndTemporaryFileCleanup =>
      'Speichernutzung, Cache-Größe und Bereinigung temporärer Dateien.';

  @override
  String get notifications => 'Benachrichtigungen';

  @override
  String get jobCompletionAndProductUpdateNotifications =>
      'Benachrichtigungen über Auftragsabschluss und Produktupdates.';

  @override
  String get privacy => 'Datenschutz';

  @override
  String get onDeviceProcessingLocalLogsAndOptionalCrashReports =>
      'Verarbeitung auf dem Gerät, lokale Protokolle und optionale Absturzberichte.';

  @override
  String get aboutAsagi => 'Über Asagi';

  @override
  String get versionBuildNumberAndApplicationDetails =>
      'Version, Build-Nummer und Anwendungsdetails.';

  @override
  String get aboutTheDeveloper => 'Über den Entwickler';

  @override
  String get theDeveloperAndToolsBehindAsagi =>
      'Der Entwickler und die Werkzeuge hinter Asagi.';

  @override
  String get openSourcePackagesBundledWithAsagi =>
      'Open-Source-Pakete, die mit Asagi gebündelt sind.';

  @override
  String get privacyPolicy => 'Datenschutzrichtlinie';

  @override
  String get howAsagiHandlesYourVideosAndData =>
      'Wie Asagi Ihre Videos und Daten verarbeitet.';

  @override
  String get termsOfService => 'Nutzungsbedingungen';

  @override
  String get theTermsThatApplyToAsagiAndItsPurchases =>
      'Die Bedingungen, die für Asagi und seine Käufe gelten.';

  @override
  String get dataSafety => 'Datensicherheit';

  @override
  String get summaryOfTheDataAsagiCollectsAndWhy =>
      'Zusammenfassung der Daten, die Asagi sammelt, und warum.  ';

  @override
  String get permissions => 'Berechtigungen  ';

  @override
  String get runtimePermissionsAsagiRequestsAndWhyEachIsNeeded =>
      'Laufzeit-Berechtigungen, die Asagi anfordert, und warum jede benötigt wird.  ';

  @override
  String get faq => 'FAQ  ';

  @override
  String get answersToCommonQuestionsAboutCompressionAndBilling =>
      'Antworten auf häufig gestellte Fragen zu Komprimierung und Abrechnung.  ';

  @override
  String get support => 'Support  ';

  @override
  String get getHelpWithYourAccountOrAPurchase =>
      'Hilfe zu Ihrem Konto oder einem Kauf erhalten.  ';

  @override
  String get sendFeedback => 'Feedback senden  ';

  @override
  String get reportAProblemOrSuggestAnImprovement =>
      'Ein Problem melden oder eine Verbesserung vorschlagen.  ';

  @override
  String get plans => 'Pläne  ';

  @override
  String get comparePlansAndSeeWhatEachOneUnlocks =>
      'Pläne vergleichen und sehen, was jeder freischaltet.  ';

  @override
  String get planDetails => 'Details zum Plan  ';

  @override
  String get benefitsLimitsAndPricingForThisPlan =>
      'Vorteile, Limits und Preise dieses Plans.  ';

  @override
  String get paymentMethods => 'Zahlungsmethoden  ';

  @override
  String get supportedWaysToPayIncludingStoreBilling =>
      'Unterstützte Zahlungsmethoden, einschließlich Abrechnung über den Store.  ';

  @override
  String get restorePurchases => 'Käufe wiederherstellen';

  @override
  String get reApplyAPurchaseMadeOnAnotherDevice =>
      'Kauf, der auf einem anderen Gerät getätigt wurde, erneut anwenden.';

  @override
  String get profile => 'Profil';

  @override
  String get yourIdentityPlanStatusAndAccountPreferences =>
      'Ihre Identität, Planstatus und Kontoeinstellungen.';

  @override
  String get deleteAccount => 'Konto löschen';

  @override
  String get permanentlyRemoveYourAccountAndItsServerSideData =>
      'Ihr Konto und seine serverseitigen Daten dauerhaft entfernen.';

  @override
  String get rateAsagi => 'Asagi bewerten';

  @override
  String get tellOthersHowAsagiWorkedForYouOnTheStore =>
      'Anderen mitteilen, wie Asagi für Sie im Store funktioniert hat.';

  @override
  String get shareAsagi => 'Asagi teilen';

  @override
  String get recommendAsagiToAFriend => 'Empfehlen Sie Asagi einem Freund.';

  @override
  String get appearanceLanguage => 'Darstellung & Sprache';

  @override
  String get compression => 'Kompression';

  @override
  String get onDeviceAI => 'KI auf dem Gerät';

  @override
  String get notificationsPrivacy => 'Benachrichtigungen & Datenschutz';

  @override
  String get plansPurchases => 'Pläne & Käufe';

  @override
  String get about => 'Über';

  @override
  String get legal => 'Rechtliches';

  @override
  String get helpFeedback => 'Hilfe & Feedback';

  @override
  String get account => 'Konto';

  @override
  String get themeAndAppLanguage => 'Design und App-Sprache';

  @override
  String get appLanguageAndDirection => 'App-Sprache und Richtung';

  @override
  String get defaultQualityAndFormat => 'Standardqualität und Format';

  @override
  String get cacheAndStorageUsage => 'Cache- und Speicherverbrauch';

  @override
  String get aiSettings => 'KI-Einstellungen';

  @override
  String get asagiAssistant => 'Asagi-Assistent';

  @override
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere =>
      'Ein privater Assistent für Ihre Videos kommt bald. Sie werden hier Fragen zur Komprimierung, Organisation und gespeicherten Videos stellen können.';

  @override
  String get localModelsAndSmartTools =>
      'Lokale Modelle und intelligente Werkzeuge';

  @override
  String get exploreLocalModelsAndFutureAIToolsTheseOptionsAreNotActiveYet =>
      'Erkunden Sie lokale Modelle und zukünftige KI-Tools. Diese Optionen sind noch nicht aktiv.';

  @override
  String get localModels => 'Lokale Modelle';

  @override
  String get browseAndDownloadSupportedModels =>
      'Durchsuchen und herunterladen unterstützter Modelle';

  @override
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere =>
      'Wählen Sie ein unterstütztes Modell aus, laden Sie es auf dieses Gerät herunter und verwalten Sie hier installierte Modelle.';

  @override
  String get importAModel => 'Ein Modell importieren';

  @override
  String get useACompatibleModelFromYourFiles =>
      'Verwenden Sie ein kompatibles Modell aus Ihren Dateien';

  @override
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt =>
      'Wählen Sie eine kompatible lokale Modell-Datei aus und überprüfen Sie deren Anforderungen, bevor Sie sie verwenden.  ';

  @override
  String get smartFeatures => 'Intelligente Funktionen  ';

  @override
  String get compressionOrganizationAndSearch =>
      'Komprimierung, Organisation und Suche  ';

  @override
  String
  get chooseWhichLocalAISuggestionsToUseForVideoCompressionOrganizationNamingAndSearch =>
      'Wählen Sie aus, welche lokalen KI-Vorschläge für Video-Komprimierung, Organisation, Benennung und Suche verwendet werden sollen.  ';

  @override
  String get modelPerformance => 'Modellleistung  ';

  @override
  String get processingAndResourcePreferences =>
      'Verarbeitungs- und Ressourceneinstellungen  ';

  @override
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels =>
      'Steuern Sie das Verarbeitungs-Backend und die Ressourcenlimits für unterstützte Modelle.  ';

  @override
  String get conversationSettings => 'Konversationseinstellungen  ';

  @override
  String get streamingThinkingAndResponseLength =>
      'Streaming, Denken und Antwortlänge';

  @override
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits =>
      'Konfigurieren Sie, wie der Assistent reagiert, einschließlich Streaming, Denkmodus, Sampling und Antwortlimits. ';

  @override
  String get imagesAndAudio => 'Bilder und Audio ';

  @override
  String get controlMultimodalInputs => 'Multimodale Eingaben steuern ';

  @override
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos =>
      'Wählen Sie, ob kompatible Modelle ausgewählte Bilder und Audio aus Ihren Videos analysieren können.';

  @override
  String get semanticSearch => 'Semantische Suche ';

  @override
  String get embeddingsAndLocalIndexing =>
      'Einbettungen und lokale Indexierung ';

  @override
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning =>
      'Verwalten Sie das lokale Einbettungsmodell und den Suchindex, um Videos und Momente nach Bedeutung zu finden.';

  @override
  String get toolsAndStructuredOutput => 'Werkzeuge und strukturierte Ausgabe ';

  @override
  String get actionsSchemasAndConfirmations =>
      'Aktionen, Schemata und Bestätigungen';

  @override
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation =>
      'Verwalten Sie unterstützte Assistentenaktionen und strukturierte Antworten. Aktionen, die Dateien betreffen, erfordern Ihre Bestätigung.';

  @override
  String get models => 'Modelle';

  @override
  String get assistantExperience => 'Assistenzerfahrung';

  @override
  String get smartCapabilities => 'Intelligente Funktionen';

  @override
  String get performance => 'Leistung';

  @override
  String get yourCompressedVideoHistory => 'Ihr komprimierter Videoverlauf';

  @override
  String get completionAndUpdateAlerts =>
      'Benachrichtigungen zu Abschlüssen und Updates';

  @override
  String get yourDataStaysLocal => 'Ihre Daten bleiben lokal';

  @override
  String get comparePlansAndUpgrade => 'Pläne vergleichen und upgraden';

  @override
  String get paymentMethodsAndBilling => 'Zahlungsmethoden und Abrechnung';

  @override
  String get restoreYourPreviousPurchase =>
      'Ihre vorherigen Käufe wiederherstellen';

  @override
  String get versionAndBuildDetails => 'Versions- und Build-Details';

  @override
  String get theDeveloperBehindAsagi => 'Der Entwickler hinter Asagi';

  @override
  String get openSourcePackageLicenses => 'Open-Source-Paketlizenzen';

  @override
  String get howDataIsHandled => 'Wie Daten verarbeitet werden';

  @override
  String get rulesForUsingAsagi => 'Regeln für die Nutzung von Asagi';

  @override
  String get whatDataWeCollect => 'Welche Daten wir sammeln';

  @override
  String get whyWeNeedPermissions => 'Warum wir Berechtigungen benötigen';

  @override
  String get answersToCommonQuestions => 'Antworten auf häufige Fragen';

  @override
  String get reachTheDeveloperDirectly => 'Den Entwickler direkt erreichen';

  @override
  String get sendUsYourFeedback => 'Senden Sie uns Ihr Feedback';

  @override
  String get pickVideo => 'Video auswählen';

  @override
  String get targetSizeMB => 'Zielgröße (MB)';

  @override
  String get startCompression => 'Komprimierung starten';

  @override
  String get pause => 'Pause';

  @override
  String get resume => 'Fortsetzen';

  @override
  String get viewResult => 'Ergebnis anzeigen';

  @override
  String get saveToGallery => 'In Galerie speichern';

  @override
  String get shareVideo => 'Video teilen';

  @override
  String get originalSize => 'Originalgröße';

  @override
  String get outputSize => 'Ausgabegröße';

  @override
  String get noCompressedVideosYet => 'Noch keine komprimierten Videos';

  @override
  String get savedToGallery => 'In Galerie gespeichert';

  @override
  String get enterATargetSizeGreaterThanZero =>
      'Geben Sie eine Zielgröße größer als null ein';

  @override
  String get compressionCancelled => 'Komprimierung abgebrochen';

  @override
  String get thisVideoCouldNotReachTheSelectedSizeTryALargerTargetSize =>
      'Dieses Video konnte die ausgewählte Größe nicht erreichen. Versuchen Sie eine größere Zielgröße.';

  @override
  String get theSelectedSizeIsTooSmallForThisVideoChooseALargerSize =>
      'Die ausgewählte Größe ist für dieses Video zu klein. Wählen Sie eine größere Größe.';

  @override
  String get originalPreview => 'Originalvorschau';

  @override
  String get compressedPreview => 'Komprimierte Vorschau';

  @override
  String get targetPreset => 'Zielvorgabe';

  @override
  String get customSize => 'Benutzerdefinierte Größe';

  @override
  String get previewUnavailable => 'Vorschau nicht verfügbar';

  @override
  String get advancedControls => 'Erweiterte Steuerung';

  @override
  String get automatic => 'Automatisch';

  @override
  String get maximumResolution => 'Maximale Auflösung';

  @override
  String get originalResolution => 'Ursprüngliche Auflösung';

  @override
  String get maximumFrameRate => 'Maximale Bildrate';

  @override
  String get audioBitrate => 'Audio-Bitrate';

  @override
  String get removeAudio => 'Audio entfernen';

  @override
  String get videoBitrateCeilingKbps => 'Maximale Video-Bitrate (kbps)';

  @override
  String get hdrHandling => 'HDR-Verarbeitung';

  @override
  String get convertToSDR => 'In SDR konvertieren';

  @override
  String get keepHDRWhenSupported => 'HDR behalten, wenn unterstützt';

  @override
  String get beforeYouStart => 'Bevor Sie starten';

  @override
  String get calculatingCompressionPlan => 'Kompressionsplan wird berechnet…';

  @override
  String get plannedResolution => 'Geplante Auflösung';

  @override
  String get plannedVideoBitrate => 'Geplante Video-Bitrate';

  @override
  String get plannedAudioBitrate => 'Geplante Audio-Bitrate';

  @override
  String
  get reEncodingConvertsAudioToAACStereoDolbyAtmosAndDTSSpatialAudioWillNotBePreserved =>
      'Beim Rekodieren wird das Audio in AAC Stereo konvertiert. Dolby Atmos und DTS räumliches Audio werden nicht beibehalten.';

  @override
  String
  get thisTargetIsTooSmallForAUsableVideoIncreaseTheSizeOrLowerOtherLimits =>
      'Dieses Ziel ist zu klein für ein brauchbares Video. Erhöhen Sie die Größe oder senken Sie andere Limits.';

  @override
  String get theSelectedTargetMayReduceVideoQuality =>
      'Das ausgewählte Ziel kann die Videoqualität verringern.';

  @override
  String get theSourceIsAlreadyWithinTheSizeLimit =>
      'Die Quelle liegt bereits innerhalb des Größenlimits.';

  @override
  String get enterABitrateOfAtLeast150KbpsOrLeaveBlankForAutomatic =>
      'Geben Sie eine Bitrate von mindestens 150 kbps ein oder lassen Sie das Feld für automatische Werte leer.';

  @override
  String get enterAnEvenResolutionFrom240To16384OrLeaveBlankForAutomatic =>
      'Geben Sie eine gerade Auflösung von 240 bis 16384 ein oder lassen Sie das Feld für automatische Werte leer.';

  @override
  String get videoPosition => 'Videoposition';

  @override
  String
  get aPreviousCompressionWasInterruptedItsTemporaryFilesWereCleanedUpYouCanSelectTheVideoAndTryAgain =>
      'Eine vorherige Kompression wurde unterbrochen. Ihre temporären Dateien wurden bereinigt; Sie können das Video auswählen und es erneut versuchen.';

  @override
  String get dismiss => 'Schließen';

  @override
  String get clearHistory => 'Verlauf löschen';

  @override
  String get removeAllHistoryEntriesSavedVideosWillRemainOnYourDevice =>
      'Alle Verlaufseinträge entfernen? Gespeicherte Videos bleiben auf Ihrem Gerät. ';

  @override
  String get attempts => 'Versuche ';

  @override
  String get targetSize => 'Zielgröße ';

  @override
  String get outputResolution => 'Ausgabeauflösung ';

  @override
  String get thisVideoCouldNotBeReadChooseAnotherFile =>
      'Dieses Video konnte nicht gelesen werden. Wählen Sie eine andere Datei. ';

  @override
  String get theEncodedVideoFailedVerificationYourOriginalVideoWasNotChanged =>
      'Das codierte Video hat die Überprüfung nicht bestanden. Ihr ursprüngliches Video wurde nicht geändert. ';

  @override
  String
  get thisDeviceCannotEncodeTheSelectedResolutionOrFrameRateLowerThatSettingAndTryAgain =>
      'Dieses Gerät kann die ausgewählte Auflösung oder Bildrate nicht codieren. Verringern Sie diese Einstellung und versuchen Sie es erneut. ';

  @override
  String
  get thisDeviceCannotDecodeThisAudioFormatForCompressionRemoveAudioOrUseASupportedSource =>
      'Dieses Gerät kann dieses Audioformat für die Komprimierung nicht decodieren. Entfernen Sie den Ton oder verwenden Sie eine unterstützte Quelle.';

  @override
  String
  get thisDeviceCannotDecodeThisVideoFormatOrProfileForCompressionChooseAnotherSourceOrDevice =>
      'Dieses Gerät kann dieses Videoformat oder Profil für die Kompression nicht decodieren. Wählen Sie eine andere Quelle oder ein anderes Gerät. ';

  @override
  String get theExportedMP4IsNotReadyForStreamingTryAnotherVideoOrDevice =>
      'Die exportierte MP4-Datei ist nicht zum Streaming bereit. Versuchen Sie ein anderes Video oder Gerät. ';

  @override
  String get thereIsNotEnoughFreeStorageToCompressThisVideo =>
      'Es ist nicht genügend freier Speicher vorhanden, um dieses Video zu komprimieren. ';

  @override
  String get thisDeviceCannotProcessTheSelectedHDRModeTryConvertingToSDR =>
      'Dieses Gerät kann den ausgewählten HDR-Modus nicht verarbeiten. Versuchen Sie, in SDR zu konvertieren. ';

  @override
  String get compressionCouldNotBeCompletedTryAnotherSettingOrVideo =>
      'Die Kompression konnte nicht abgeschlossen werden. Versuchen Sie eine andere Einstellung oder ein anderes Video. ';

  @override
  String get appIdentity => 'App-Identität ';

  @override
  String get appName => 'App-Name ';

  @override
  String get packageName => 'Paketname ';

  @override
  String get version => 'Version ';

  @override
  String get buildNumber => 'Build-Nummer ';

  @override
  String get deviceAndBuild => 'Gerät und Build ';

  @override
  String get operatingSystem => 'Betriebssystem ';

  @override
  String get osVersion => 'OS-Version ';

  @override
  String get buildMode => 'Build-Modus ';

  @override
  String get debug => 'Debug ';

  @override
  String get release => 'Release';

  @override
  String get builtWith => 'Erstellt mit';

  @override
  String get installation => 'Installation';

  @override
  String get installedFrom => 'Installiert von';

  @override
  String get installedOn => 'Installiert am';

  @override
  String get updatedOn => 'Aktualisiert am';

  @override
  String get unavailable => 'Nicht verfügbar';

  @override
  String get projectAndSupport => 'Projekt und Unterstützung';

  @override
  String get githubRepository => 'GitHub-Repository';

  @override
  String get viewAsagiSourceCode => 'Asagi-Quellcode anzeigen';

  @override
  String get readTheREADME => 'README lesen';

  @override
  String get learnAboutAsagiOnGitHub => 'Mehr über Asagi auf GitHub erfahren';

  @override
  String get reportAnIssue => 'Ein Problem melden';

  @override
  String get viewAndCreateGitHubIssues =>
      'GitHub-Issues anzeigen und erstellen';

  @override
  String get latestRelease => 'Neueste Version';

  @override
  String get viewReleasesAndDownloads => 'Versionen und Downloads anzeigen';

  @override
  String get supportAsagi => 'Asagi unterstützen';

  @override
  String get openTheOfficialDonationPage => 'Offizielle Spendenseite öffnen';

  @override
  String get couldNotOpenTheLinkPleaseTryAgain =>
      'Der Link konnte nicht geöffnet werden. Bitte versuchen Sie es erneut.';

  @override
  String get developer => 'Entwickler';

  @override
  String get mostafaSensei => 'Mostafa Sensei';

  @override
  String get githubProfile => 'GitHub-Profil';

  @override
  String get seeProjectsAndContactDetails =>
      'Projekte und Kontaktdaten ansehen';

  @override
  String get maintenanceInProgress => 'Wartung läuft';

  @override
  String get asagiIsTemporarilyUnavailablePleaseTryAgainLater =>
      'Asagi ist vorübergehend nicht verfügbar. Bitte versuchen Sie es später erneut.';

  @override
  String get comingSoon => 'Demnächst verfügbar';

  @override
  String get pleaseWait => 'Bitte warten...';

  @override
  String get cancel => 'Abbrechen';

  @override
  String get openSourceLicenses => 'Open-Source-Lizenzen';

  @override
  String get languageName => 'Deutsch';

  @override
  String get countryCode => 'DE';

  @override
  String countryName(String countryCode) {
    String _temp0 = intl.Intl.selectLogic(countryCode, {
      'AE': 'Vereinigte Arabische Emirate',
      'AT': 'Österreich',
      'AU': 'Australien',
      'BE': 'Belgien',
      'BH': 'Bahrain',
      'BR': 'Brasilien',
      'CA': 'Kanada',
      'CH': 'Schweiz',
      'CN': 'China',
      'DE': 'Deutschland',
      'DJ': 'Dschibuti',
      'DZ': 'Algerien',
      'EG': 'Ägypten',
      'ES': 'Spanien',
      'FR': 'Frankreich',
      'GB': 'Vereinigtes Königreich',
      'HK': 'Sonderverwaltungsregion Hongkong',
      'ID': 'Indonesien',
      'IQ': 'Irak',
      'IT': 'Italien',
      'JO': 'Jordanien',
      'JP': 'Japan',
      'KM': 'Komoren',
      'KR': 'Südkorea',
      'KW': 'Kuwait',
      'LB': 'Libanon',
      'LY': 'Libyen',
      'MA': 'Marokko',
      'MR': 'Mauretanien',
      'MX': 'Mexiko',
      'NL': 'Niederlande',
      'OM': 'Oman',
      'PL': 'Polen',
      'PS': 'Palästinensische Autonomiegebiete',
      'PT': 'Portugal',
      'QA': 'Katar',
      'RU': 'Russland',
      'SA': 'Saudi-Arabien',
      'SD': 'Sudan',
      'SE': 'Schweden',
      'SG': 'Singapur',
      'SO': 'Somalia',
      'SY': 'Syrien',
      'TH': 'Thailand',
      'TN': 'Tunesien',
      'TR': 'Türkei',
      'TW': 'Taiwan',
      'US': 'Vereinigte Staaten',
      'VN': 'Vietnam',
      'YE': 'Jemen',
      'other': 'Land',
    });
    return '$_temp0';
  }
}
