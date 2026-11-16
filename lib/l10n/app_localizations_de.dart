// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get zumi => 'Zumi';

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
  String get cancel => 'Abbrechen';

  @override
  String get confirm => 'Bestätigen';

  @override
  String get pleaseWait => 'Bitte warten...';

  @override
  String get ok => 'OK';

  @override
  String get compressVideosPrivatelyOnYourDevice =>
      'Videos privat auf Ihrem Gerät komprimieren.';

  @override
  String get welcomeToZumi => 'Willkommen bei Zumi';

  @override
  String get learnHowZumiCompressesYourVideosWithoutEverLeavingYourPhone =>
      'Erfahren Sie, wie Zumi Ihre Videos komprimiert, ohne dass sie jemals Ihr Handy verlassen.';

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
  String get aboutZumi => 'Über Zumi';

  @override
  String get versionBuildNumberAndApplicationDetails =>
      'Version, Build-Nummer und Anwendungsdetails.';

  @override
  String get aboutTheDeveloper => 'Über den Entwickler';

  @override
  String get theDeveloperAndToolsBehindZumi =>
      'Der Entwickler und die Werkzeuge hinter Zumi.';

  @override
  String get openSourceLicenses => 'Open-Source-Lizenzen';

  @override
  String get openSourcePackagesBundledWithZumi =>
      'Open-Source-Pakete, die mit Zumi gebündelt sind.';

  @override
  String get privacyPolicy => 'Datenschutzrichtlinie';

  @override
  String get howZumiHandlesYourVideosAndData =>
      'Wie Zumi Ihre Videos und Daten verarbeitet.';

  @override
  String get termsOfService => 'Nutzungsbedingungen';

  @override
  String get theTermsThatApplyToZumiAndItsPurchases =>
      'Die Bedingungen, die für Zumi und seine Käufe gelten.';

  @override
  String get dataSafety => 'Datensicherheit';

  @override
  String get summaryOfTheDataZumiCollectsAndWhy =>
      'Zusammenfassung der Daten, die Zumi sammelt, und warum.  ';

  @override
  String get permissions => 'Berechtigungen  ';

  @override
  String get runtimePermissionsZumiRequestsAndWhyEachIsNeeded =>
      'Laufzeit-Berechtigungen, die Zumi anfordert, und warum jede benötigt wird.  ';

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
  String get rateZumi => 'Zumi bewerten';

  @override
  String get tellOthersHowZumiWorkedForYouOnTheStore =>
      'Anderen mitteilen, wie Zumi für Sie im Store funktioniert hat.';

  @override
  String get shareZumi => 'Zumi teilen';

  @override
  String get recommendZumiToAFriend => 'Empfehlen Sie Zumi einem Freund.';

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
  String get zumiAssistant => 'Zumi-Assistent';

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
  String get theDeveloperBehindZumi => 'Der Entwickler hinter Zumi';

  @override
  String get openSourcePackageLicenses => 'Open-Source-Paketlizenzen';

  @override
  String get howDataIsHandled => 'Wie Daten verarbeitet werden';

  @override
  String get rulesForUsingZumi => 'Regeln für die Nutzung von Zumi';

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
  String get viewZumiSourceCode => 'Zumi-Quellcode anzeigen';

  @override
  String get readTheREADME => 'README lesen';

  @override
  String get learnAboutZumiOnGitHub => 'Mehr über Zumi auf GitHub erfahren';

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
  String get supportZumi => 'Zumi unterstützen';

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
  String get zumiIsTemporarilyUnavailablePleaseTryAgainLater =>
      'Zumi ist vorübergehend nicht verfügbar. Bitte versuchen Sie es später erneut.';

  @override
  String get comingSoon => 'Demnächst verfügbar';

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
}

/// The translations for German, as used in Germany (`de_DE`).
class AppLocalizationsDeDe extends AppLocalizationsDe {
  AppLocalizationsDeDe() : super('de_DE');

  @override
  String get zumi => 'Zumi';

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
  String get cancel => 'Abbrechen';

  @override
  String get confirm => 'Bestätigen';

  @override
  String get pleaseWait => 'Bitte warten...';

  @override
  String get ok => 'OK';

  @override
  String get compressVideosPrivatelyOnYourDevice =>
      'Videos privat auf Ihrem Gerät komprimieren.';

  @override
  String get welcomeToZumi => 'Willkommen bei Zumi';

  @override
  String get learnHowZumiCompressesYourVideosWithoutEverLeavingYourPhone =>
      'Erfahren Sie, wie Zumi Ihre Videos komprimiert, ohne dass sie jemals Ihr Handy verlassen.';

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
  String get aboutZumi => 'Über Zumi';

  @override
  String get versionBuildNumberAndApplicationDetails =>
      'Version, Build-Nummer und Anwendungsdetails.';

  @override
  String get aboutTheDeveloper => 'Über den Entwickler';

  @override
  String get theDeveloperAndToolsBehindZumi =>
      'Der Entwickler und die Werkzeuge hinter Zumi.';

  @override
  String get openSourceLicenses => 'Open-Source-Lizenzen';

  @override
  String get openSourcePackagesBundledWithZumi =>
      'Open-Source-Pakete, die mit Zumi gebündelt sind.';

  @override
  String get privacyPolicy => 'Datenschutzrichtlinie';

  @override
  String get howZumiHandlesYourVideosAndData =>
      'Wie Zumi Ihre Videos und Daten verarbeitet.';

  @override
  String get termsOfService => 'Nutzungsbedingungen';

  @override
  String get theTermsThatApplyToZumiAndItsPurchases =>
      'Die Bedingungen, die für Zumi und seine Käufe gelten.';

  @override
  String get dataSafety => 'Datensicherheit';

  @override
  String get summaryOfTheDataZumiCollectsAndWhy =>
      'Zusammenfassung der Daten, die Zumi sammelt, und warum.  ';

  @override
  String get permissions => 'Berechtigungen  ';

  @override
  String get runtimePermissionsZumiRequestsAndWhyEachIsNeeded =>
      'Laufzeit-Berechtigungen, die Zumi anfordert, und warum jede benötigt wird.  ';

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
  String get rateZumi => 'Zumi bewerten';

  @override
  String get tellOthersHowZumiWorkedForYouOnTheStore =>
      'Anderen mitteilen, wie Zumi für Sie im Store funktioniert hat.';

  @override
  String get shareZumi => 'Zumi teilen';

  @override
  String get recommendZumiToAFriend => 'Empfehlen Sie Zumi einem Freund.';

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
  String get zumiAssistant => 'Zumi-Assistent';

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
  String get theDeveloperBehindZumi => 'Der Entwickler hinter Zumi';

  @override
  String get openSourcePackageLicenses => 'Open-Source-Paketlizenzen';

  @override
  String get howDataIsHandled => 'Wie Daten verarbeitet werden';

  @override
  String get rulesForUsingZumi => 'Regeln für die Nutzung von Zumi';

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
  String get viewZumiSourceCode => 'Zumi-Quellcode anzeigen';

  @override
  String get readTheREADME => 'README lesen';

  @override
  String get learnAboutZumiOnGitHub => 'Mehr über Zumi auf GitHub erfahren';

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
  String get supportZumi => 'Zumi unterstützen';

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
  String get zumiIsTemporarilyUnavailablePleaseTryAgainLater =>
      'Zumi ist vorübergehend nicht verfügbar. Bitte versuchen Sie es später erneut.';

  @override
  String get comingSoon => 'Demnächst verfügbar';

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
