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
  String fileSavedToDcim(String fileName) {
    return 'Datei in Galerie gespeichert: $fileName';
  }

  @override
  String fileSavedToDocuments(String fileName) {
    return 'Datei in Dokumente gespeichert: $fileName';
  }

  @override
  String get fileAlreadySaved => 'Datei ist bereits gespeichert';

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
  String get error_address_line_cant_be_empty =>
      'Adresszeile darf nicht leer sein';

  @override
  String get error_address_line_too_long => 'Adresszeile ist zu lang';

  @override
  String get error_address_invalid_special_characters =>
      'Sonderzeichen sind nicht erlaubt';

  @override
  String get error_address_emoji_not_allowed => 'Emojis sind nicht erlaubt';

  @override
  String get error_city_cant_be_empty => 'Stadt darf nicht leer sein';

  @override
  String get error_city_too_long => 'Stadtname ist zu lang';

  @override
  String get error_city_invalid_special_characters =>
      'Stadt enthält ungültige Sonderzeichen';

  @override
  String get error_address_label_cant_be_empty =>
      'Adressbezeichnung darf nicht leer sein';

  @override
  String get error_address_label_too_long => 'Adressbezeichnung ist zu lang';

  @override
  String get error_email_cant_be_empty => 'E-Mail darf nicht leer sein';

  @override
  String get error_email_not_invalid_format => 'Ungültiges E-Mail-Format';

  @override
  String get error_email_contains_invalid_characters =>
      'E-Mail enthält ungültige Zeichen';

  @override
  String get error_email_must_contain_at_symbol => 'E-Mail muss @ enthalten';

  @override
  String get error_email_must_be_in_lowercase =>
      'E-Mail muss in Kleinbuchstaben sein';

  @override
  String get error_arabic_not_allowed => 'Arabische Zeichen sind nicht erlaubt';

  @override
  String get error_email_emoji_not_allowed =>
      'Emojis sind in der E-Mail nicht erlaubt';

  @override
  String get error_phone_number_cant_be_empty =>
      'Telefonnummer darf nicht leer sein';

  @override
  String get error_phone_number_invalid => 'Ungültige Telefonnummer';

  @override
  String get error_phone_number_min_length =>
      'Telefonnummer muss mindestens 11 Ziffern haben';

  @override
  String get error_name_cant_be_empty => 'Name darf nicht leer sein';

  @override
  String get error_name_invalid => 'Ungültiger Name';

  @override
  String get error_name_too_short_at_least_3_characters =>
      'Name muss mindestens 3 Zeichen haben';

  @override
  String get error_name_too_long_maximum_20_characters =>
      'Name darf 20 Zeichen nicht überschreiten';

  @override
  String get error_name_invalid_special_characters =>
      'Name enthält ungültige Sonderzeichen';

  @override
  String get error_name_emoji_not_allowed =>
      'Emojis sind im Namen nicht erlaubt';

  @override
  String get error_password_cant_be_empty => 'Passwort darf nicht leer sein';

  @override
  String
  get error_password_must_contain_uppercase_lowercase_number_and_special_character =>
      'Passwort muss Großbuchstaben, Kleinbuchstaben, Zahl und Sonderzeichen enthalten';

  @override
  String get error_password_must_be_at_least_8_characters_long =>
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
  String get settingsGroupAppearance => 'Darstellung & Sprache';

  @override
  String get settingsGroupCompression => 'Kompression';

  @override
  String get settingsGroupAi => 'KI auf dem Gerät';

  @override
  String get settingsGroupPrivacy => 'Benachrichtigungen & Datenschutz';

  @override
  String get settingsGroupPlans => 'Pläne & Käufe';

  @override
  String get settingsGroupAbout => 'Über';

  @override
  String get settingsGroupLegal => 'Rechtliches';

  @override
  String get settingsGroupHelp => 'Hilfe & Feedback';

  @override
  String get settingsGroupAccount => 'Konto';

  @override
  String get settingsAppearanceSubtitle => 'Design und App-Sprache';

  @override
  String get settingsLanguageSubtitle => 'App-Sprache und Richtung';

  @override
  String get settingsCompressionSubtitle => 'Standardqualität und Format';

  @override
  String get settingsStorageSubtitle => 'Cache- und Speicherverbrauch';

  @override
  String get aiSettings => 'KI-Einstellungen';

  @override
  String get zumiAssistant => 'Zumi-Assistent';

  @override
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere =>
      'Ein privater Assistent für Ihre Videos kommt bald. Sie werden hier Fragen zur Komprimierung, Organisation und gespeicherten Videos stellen können.';

  @override
  String get settingsAiSubtitle => 'Lokale Modelle und intelligente Werkzeuge';

  @override
  String get exploreLocalModelsAndFutureAiToolsTheseOptionsAreNotActiveYet =>
      'Erkunden Sie lokale Modelle und zukünftige KI-Tools. Diese Optionen sind noch nicht aktiv.';

  @override
  String get localModels => 'Lokale Modelle';

  @override
  String get aiModelsSubtitle =>
      'Durchsuchen und herunterladen unterstützter Modelle';

  @override
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere =>
      'Wählen Sie ein unterstütztes Modell aus, laden Sie es auf dieses Gerät herunter und verwalten Sie hier installierte Modelle.';

  @override
  String get importAModel => 'Ein Modell importieren';

  @override
  String get aiImportSubtitle =>
      'Verwenden Sie ein kompatibles Modell aus Ihren Dateien';

  @override
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt =>
      'Wählen Sie eine kompatible lokale Modell-Datei aus und überprüfen Sie deren Anforderungen, bevor Sie sie verwenden.  ';

  @override
  String get smartFeatures => 'Intelligente Funktionen  ';

  @override
  String get aiFeaturesSubtitle => 'Komprimierung, Organisation und Suche  ';

  @override
  String
  get chooseWhichLocalAiSuggestionsToUseForVideoCompressionOrganizationNamingAndSearch =>
      'Wählen Sie aus, welche lokalen KI-Vorschläge für Video-Komprimierung, Organisation, Benennung und Suche verwendet werden sollen.  ';

  @override
  String get modelPerformance => 'Modellleistung  ';

  @override
  String get aiRuntimeSubtitle =>
      'Verarbeitungs- und Ressourceneinstellungen  ';

  @override
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels =>
      'Steuern Sie das Verarbeitungs-Backend und die Ressourcenlimits für unterstützte Modelle.  ';

  @override
  String get conversationSettings => 'Konversationseinstellungen  ';

  @override
  String get aiChatSettingsSubtitle => 'Streaming, Denken und Antwortlänge';

  @override
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits =>
      'Konfigurieren Sie, wie der Assistent reagiert, einschließlich Streaming, Denkmodus, Sampling und Antwortlimits. ';

  @override
  String get imagesAndAudio => 'Bilder und Audio ';

  @override
  String get aiMediaSubtitle => 'Multimodale Eingaben steuern ';

  @override
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos =>
      'Wählen Sie, ob kompatible Modelle ausgewählte Bilder und Audio aus Ihren Videos analysieren können.';

  @override
  String get semanticSearch => 'Semantische Suche ';

  @override
  String get aiSearchSubtitle => 'Einbettungen und lokale Indexierung ';

  @override
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning =>
      'Verwalten Sie das lokale Einbettungsmodell und den Suchindex, um Videos und Momente nach Bedeutung zu finden.';

  @override
  String get toolsAndStructuredOutput => 'Werkzeuge und strukturierte Ausgabe ';

  @override
  String get aiToolsSubtitle => 'Aktionen, Schemata und Bestätigungen';

  @override
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation =>
      'Verwalten Sie unterstützte Assistentenaktionen und strukturierte Antworten. Aktionen, die Dateien betreffen, erfordern Ihre Bestätigung.';

  @override
  String get aiGroupModels => 'Modelle';

  @override
  String get aiGroupExperience => 'Assistenzerfahrung';

  @override
  String get aiGroupCapabilities => 'Intelligente Funktionen';

  @override
  String get aiGroupPerformance => 'Leistung';

  @override
  String get compressionHistorySubtitle => 'Ihr komprimierter Videoverlauf';

  @override
  String get settingsNotificationsSubtitle =>
      'Benachrichtigungen zu Abschlüssen und Updates';

  @override
  String get settingsPrivacySubtitle => 'Ihre Daten bleiben lokal';

  @override
  String get plansSubtitle => 'Pläne vergleichen und upgraden';

  @override
  String get plansMethodsSubtitle => 'Zahlungsmethoden und Abrechnung';

  @override
  String get plansRestoreSubtitle => 'Ihre vorherigen Käufe wiederherstellen';

  @override
  String get aboutAppSubtitle => 'Versions- und Build-Details';

  @override
  String get aboutDeveloperSubtitle => 'Der Entwickler hinter Zumi';

  @override
  String get aboutLicensesSubtitle => 'Open-Source-Paketlizenzen';

  @override
  String get legalPrivacySubtitle => 'Wie Daten verarbeitet werden';

  @override
  String get legalTermsSubtitle => 'Regeln für die Nutzung von Zumi';

  @override
  String get legalDataSafetySubtitle => 'Welche Daten wir sammeln';

  @override
  String get legalPermissionsSubtitle => 'Warum wir Berechtigungen benötigen';

  @override
  String get helpFaqSubtitle => 'Antworten auf häufige Fragen';

  @override
  String get helpSupportSubtitle => 'Den Entwickler direkt erreichen';

  @override
  String get helpFeedbackSubtitle => 'Senden Sie uns Ihr Feedback';

  @override
  String get compressionPickVideo => 'Video auswählen';

  @override
  String get compressionTargetMb => 'Zielgröße (MB)';

  @override
  String get compressionStart => 'Komprimierung starten';

  @override
  String get compressionPause => 'Pause';

  @override
  String get compressionResume => 'Fortsetzen';

  @override
  String get compressionViewResult => 'Ergebnis anzeigen';

  @override
  String get compressionSaveGallery => 'In Galerie speichern';

  @override
  String get compressionShare => 'Video teilen';

  @override
  String get compressionOriginalSize => 'Originalgröße';

  @override
  String get compressionOutputSize => 'Ausgabegröße';

  @override
  String get compressionEmptyHistory => 'Noch keine komprimierten Videos';

  @override
  String get compressionSavedGallery => 'In Galerie gespeichert';

  @override
  String get compressionInvalidTarget =>
      'Geben Sie eine Zielgröße größer als null ein';

  @override
  String get compressionCancelled => 'Komprimierung abgebrochen';

  @override
  String get compressionTargetExceeded =>
      'Dieses Video konnte die ausgewählte Größe nicht erreichen. Versuchen Sie eine größere Zielgröße.';

  @override
  String get compressionTargetInfeasible =>
      'Die ausgewählte Größe ist für dieses Video zu klein. Wählen Sie eine größere Größe.';

  @override
  String get compressionPreviewBefore => 'Originalvorschau';

  @override
  String get compressionPreviewAfter => 'Komprimierte Vorschau';

  @override
  String get compressionPreset => 'Zielvorgabe';

  @override
  String get compressionCustom => 'Benutzerdefinierte Größe';

  @override
  String get compressionPreviewUnavailable => 'Vorschau nicht verfügbar';

  @override
  String get compressionAdvanced => 'Erweiterte Steuerung';

  @override
  String get compressionAutomatic => 'Automatisch';

  @override
  String get compressionResolutionLimit => 'Maximale Auflösung';

  @override
  String get compressionSourceResolution => 'Ursprüngliche Auflösung';

  @override
  String get compressionFrameRateLimit => 'Maximale Bildrate';

  @override
  String get compressionAudioQuality => 'Audio-Bitrate';

  @override
  String get compressionRemoveAudio => 'Audio entfernen';

  @override
  String get compressionVideoBitrateLimit => 'Maximale Video-Bitrate (kbps)';

  @override
  String get compressionHdrPolicy => 'HDR-Verarbeitung';

  @override
  String get compressionHdrConvert => 'In SDR konvertieren';

  @override
  String get compressionHdrPreserve => 'HDR behalten, wenn unterstützt';

  @override
  String get compressionPlanPreview => 'Bevor Sie starten';

  @override
  String get compressionPlanLoading => 'Kompressionsplan wird berechnet…';

  @override
  String get compressionPlanResolution => 'Geplante Auflösung';

  @override
  String get compressionPlanVideoBitrate => 'Geplante Video-Bitrate';

  @override
  String get compressionPlanAudioBitrate => 'Geplante Audio-Bitrate';

  @override
  String get compressionAudioConversionNote =>
      'Beim Rekodieren wird das Audio in AAC Stereo konvertiert. Dolby Atmos und DTS räumliches Audio werden nicht beibehalten.';

  @override
  String get compressionPlanTooSmall =>
      'Dieses Ziel ist zu klein für ein brauchbares Video. Erhöhen Sie die Größe oder senken Sie andere Limits.';

  @override
  String get compressionPlanLowQuality =>
      'Das ausgewählte Ziel kann die Videoqualität verringern.';

  @override
  String get compressionPlanAlreadyWithinLimit =>
      'Die Quelle liegt bereits innerhalb des Größenlimits.';

  @override
  String get compressionInvalidBitrate =>
      'Geben Sie eine Bitrate von mindestens 150 kbps ein oder lassen Sie das Feld für automatische Werte leer.';

  @override
  String get compressionInvalidResolution =>
      'Geben Sie eine gerade Auflösung von 240 bis 16384 ein oder lassen Sie das Feld für automatische Werte leer.';

  @override
  String get compressionSeek => 'Videoposition';

  @override
  String get compressionInterrupted =>
      'Eine vorherige Kompression wurde unterbrochen. Ihre temporären Dateien wurden bereinigt; Sie können das Video auswählen und es erneut versuchen.';

  @override
  String get compressionDismiss => 'Schließen';

  @override
  String get compressionClearHistory => 'Verlauf löschen';

  @override
  String get compressionClearHistoryConfirm =>
      'Alle Verlaufseinträge entfernen? Gespeicherte Videos bleiben auf Ihrem Gerät. ';

  @override
  String get compressionAttempts => 'Versuche ';

  @override
  String get compressionTargetSize => 'Zielgröße ';

  @override
  String get compressionOutputResolution => 'Ausgabeauflösung ';

  @override
  String get compressionInvalidVideo =>
      'Dieses Video konnte nicht gelesen werden. Wählen Sie eine andere Datei. ';

  @override
  String get compressionInvalidOutput =>
      'Das codierte Video hat die Überprüfung nicht bestanden. Ihr ursprüngliches Video wurde nicht geändert. ';

  @override
  String get compressionEncoderUnsupported =>
      'Dieses Gerät kann die ausgewählte Auflösung oder Bildrate nicht codieren. Verringern Sie diese Einstellung und versuchen Sie es erneut. ';

  @override
  String get compressionAudioDecoderUnsupported =>
      'Dieses Gerät kann dieses Audioformat für die Komprimierung nicht decodieren. Entfernen Sie den Ton oder verwenden Sie eine unterstützte Quelle.';

  @override
  String get compressionVideoDecoderUnsupported =>
      'Dieses Gerät kann dieses Videoformat oder Profil für die Kompression nicht decodieren. Wählen Sie eine andere Quelle oder ein anderes Gerät. ';

  @override
  String get compressionMp4NotStreamable =>
      'Die exportierte MP4-Datei ist nicht zum Streaming bereit. Versuchen Sie ein anderes Video oder Gerät. ';

  @override
  String get compressionNoSpace =>
      'Es ist nicht genügend freier Speicher vorhanden, um dieses Video zu komprimieren. ';

  @override
  String get compressionHdrUnsupported =>
      'Dieses Gerät kann den ausgewählten HDR-Modus nicht verarbeiten. Versuchen Sie, in SDR zu konvertieren. ';

  @override
  String get compressionGeneralFailure =>
      'Die Kompression konnte nicht abgeschlossen werden. Versuchen Sie eine andere Einstellung oder ein anderes Video. ';

  @override
  String get aboutIdentitySection => 'App-Identität ';

  @override
  String get aboutAppName => 'App-Name ';

  @override
  String get aboutPackageName => 'Paketname ';

  @override
  String get aboutVersion => 'Version ';

  @override
  String get aboutBuildNumber => 'Build-Nummer ';

  @override
  String get aboutEnvironmentSection => 'Gerät und Build ';

  @override
  String get aboutOperatingSystem => 'Betriebssystem ';

  @override
  String get aboutOsVersion => 'OS-Version ';

  @override
  String get aboutBuildMode => 'Build-Modus ';

  @override
  String get aboutDebug => 'Debug ';

  @override
  String get aboutRelease => 'Release';

  @override
  String get aboutToolchainSection => 'Erstellt mit';

  @override
  String get aboutInstallationSection => 'Installation';

  @override
  String get aboutInstaller => 'Installiert von';

  @override
  String get aboutInstalledOn => 'Installiert am';

  @override
  String get aboutUpdatedOn => 'Aktualisiert am';

  @override
  String get aboutUnavailable => 'Nicht verfügbar';

  @override
  String get aboutProjectSection => 'Projekt und Unterstützung';

  @override
  String get aboutRepository => 'GitHub-Repository';

  @override
  String get aboutRepositorySubtitle => 'Zumi-Quellcode anzeigen';

  @override
  String get aboutReadme => 'README lesen';

  @override
  String get aboutReadmeSubtitle => 'Mehr über Zumi auf GitHub erfahren';

  @override
  String get aboutIssues => 'Ein Problem melden';

  @override
  String get aboutIssuesSubtitle => 'GitHub-Issues anzeigen und erstellen';

  @override
  String get aboutLatestRelease => 'Neueste Version';

  @override
  String get aboutLatestReleaseSubtitle => 'Versionen und Downloads anzeigen';

  @override
  String get aboutDonate => 'Zumi unterstützen';

  @override
  String get aboutDonateSubtitle => 'Offizielle Spendenseite öffnen';

  @override
  String get aboutLinkError =>
      'Der Link konnte nicht geöffnet werden. Bitte versuchen Sie es erneut.';

  @override
  String get aboutDeveloperSection => 'Entwickler';

  @override
  String get aboutDeveloperName => 'Mostafa Sensei';

  @override
  String get aboutDeveloperProfile => 'GitHub-Profil';

  @override
  String get aboutDeveloperProfileSubtitle =>
      'Projekte und Kontaktdaten ansehen';

  @override
  String get maintenanceInProgress => 'Wartung läuft';

  @override
  String get maintenanceMessage =>
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
      'DZ': 'Algerien',
      'BH': 'Bahrain',
      'KM': 'Komoren',
      'DJ': 'Dschibuti',
      'EG': 'Ägypten',
      'IQ': 'Irak',
      'JO': 'Jordanien',
      'KW': 'Kuwait',
      'LB': 'Libanon',
      'LY': 'Libyen',
      'MR': 'Mauretanien',
      'MA': 'Marokko',
      'OM': 'Oman',
      'PS': 'Palästinensische Autonomiegebiete',
      'QA': 'Katar',
      'SA': 'Saudi-Arabien',
      'SO': 'Somalia',
      'SD': 'Sudan',
      'SY': 'Syrien',
      'TN': 'Tunesien',
      'AE': 'Vereinigte Arabische Emirate',
      'YE': 'Jemen',
      'US': 'Vereinigte Staaten',
      'GB': 'Vereinigtes Königreich',
      'JP': 'Japan',
      'FR': 'Frankreich',
      'DE': 'Deutschland',
      'ES': 'Spanien',
      'TR': 'Türkei',
      'NL': 'Niederlande',
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
  String fileSavedToDcim(String fileName) {
    return 'Datei in Galerie gespeichert: $fileName';
  }

  @override
  String fileSavedToDocuments(String fileName) {
    return 'Datei in Dokumente gespeichert: $fileName';
  }

  @override
  String get fileAlreadySaved => 'Datei ist bereits gespeichert';

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
  String get error_address_line_cant_be_empty =>
      'Adresszeile darf nicht leer sein';

  @override
  String get error_address_line_too_long => 'Adresszeile ist zu lang';

  @override
  String get error_address_invalid_special_characters =>
      'Sonderzeichen sind nicht erlaubt';

  @override
  String get error_address_emoji_not_allowed => 'Emojis sind nicht erlaubt';

  @override
  String get error_city_cant_be_empty => 'Stadt darf nicht leer sein';

  @override
  String get error_city_too_long => 'Stadtname ist zu lang';

  @override
  String get error_city_invalid_special_characters =>
      'Stadt enthält ungültige Sonderzeichen';

  @override
  String get error_address_label_cant_be_empty =>
      'Adressbezeichnung darf nicht leer sein';

  @override
  String get error_address_label_too_long => 'Adressbezeichnung ist zu lang';

  @override
  String get error_email_cant_be_empty => 'E-Mail darf nicht leer sein';

  @override
  String get error_email_not_invalid_format => 'Ungültiges E-Mail-Format';

  @override
  String get error_email_contains_invalid_characters =>
      'E-Mail enthält ungültige Zeichen';

  @override
  String get error_email_must_contain_at_symbol => 'E-Mail muss @ enthalten';

  @override
  String get error_email_must_be_in_lowercase =>
      'E-Mail muss in Kleinbuchstaben sein';

  @override
  String get error_arabic_not_allowed => 'Arabische Zeichen sind nicht erlaubt';

  @override
  String get error_email_emoji_not_allowed =>
      'Emojis sind in der E-Mail nicht erlaubt';

  @override
  String get error_phone_number_cant_be_empty =>
      'Telefonnummer darf nicht leer sein';

  @override
  String get error_phone_number_invalid => 'Ungültige Telefonnummer';

  @override
  String get error_phone_number_min_length =>
      'Telefonnummer muss mindestens 11 Ziffern haben';

  @override
  String get error_name_cant_be_empty => 'Name darf nicht leer sein';

  @override
  String get error_name_invalid => 'Ungültiger Name';

  @override
  String get error_name_too_short_at_least_3_characters =>
      'Name muss mindestens 3 Zeichen haben';

  @override
  String get error_name_too_long_maximum_20_characters =>
      'Name darf 20 Zeichen nicht überschreiten';

  @override
  String get error_name_invalid_special_characters =>
      'Name enthält ungültige Sonderzeichen';

  @override
  String get error_name_emoji_not_allowed =>
      'Emojis sind im Namen nicht erlaubt';

  @override
  String get error_password_cant_be_empty => 'Passwort darf nicht leer sein';

  @override
  String
  get error_password_must_contain_uppercase_lowercase_number_and_special_character =>
      'Passwort muss Großbuchstaben, Kleinbuchstaben, Zahl und Sonderzeichen enthalten';

  @override
  String get error_password_must_be_at_least_8_characters_long =>
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
  String get settingsGroupAppearance => 'Darstellung & Sprache';

  @override
  String get settingsGroupCompression => 'Kompression';

  @override
  String get settingsGroupAi => 'KI auf dem Gerät';

  @override
  String get settingsGroupPrivacy => 'Benachrichtigungen & Datenschutz';

  @override
  String get settingsGroupPlans => 'Pläne & Käufe';

  @override
  String get settingsGroupAbout => 'Über';

  @override
  String get settingsGroupLegal => 'Rechtliches';

  @override
  String get settingsGroupHelp => 'Hilfe & Feedback';

  @override
  String get settingsGroupAccount => 'Konto';

  @override
  String get settingsAppearanceSubtitle => 'Design und App-Sprache';

  @override
  String get settingsLanguageSubtitle => 'App-Sprache und Richtung';

  @override
  String get settingsCompressionSubtitle => 'Standardqualität und Format';

  @override
  String get settingsStorageSubtitle => 'Cache- und Speicherverbrauch';

  @override
  String get aiSettings => 'KI-Einstellungen';

  @override
  String get zumiAssistant => 'Zumi-Assistent';

  @override
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere =>
      'Ein privater Assistent für Ihre Videos kommt bald. Sie werden hier Fragen zur Komprimierung, Organisation und gespeicherten Videos stellen können.';

  @override
  String get settingsAiSubtitle => 'Lokale Modelle und intelligente Werkzeuge';

  @override
  String get exploreLocalModelsAndFutureAiToolsTheseOptionsAreNotActiveYet =>
      'Erkunden Sie lokale Modelle und zukünftige KI-Tools. Diese Optionen sind noch nicht aktiv.';

  @override
  String get localModels => 'Lokale Modelle';

  @override
  String get aiModelsSubtitle =>
      'Durchsuchen und herunterladen unterstützter Modelle';

  @override
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere =>
      'Wählen Sie ein unterstütztes Modell aus, laden Sie es auf dieses Gerät herunter und verwalten Sie hier installierte Modelle.';

  @override
  String get importAModel => 'Ein Modell importieren';

  @override
  String get aiImportSubtitle =>
      'Verwenden Sie ein kompatibles Modell aus Ihren Dateien';

  @override
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt =>
      'Wählen Sie eine kompatible lokale Modell-Datei aus und überprüfen Sie deren Anforderungen, bevor Sie sie verwenden.  ';

  @override
  String get smartFeatures => 'Intelligente Funktionen  ';

  @override
  String get aiFeaturesSubtitle => 'Komprimierung, Organisation und Suche  ';

  @override
  String
  get chooseWhichLocalAiSuggestionsToUseForVideoCompressionOrganizationNamingAndSearch =>
      'Wählen Sie aus, welche lokalen KI-Vorschläge für Video-Komprimierung, Organisation, Benennung und Suche verwendet werden sollen.  ';

  @override
  String get modelPerformance => 'Modellleistung  ';

  @override
  String get aiRuntimeSubtitle =>
      'Verarbeitungs- und Ressourceneinstellungen  ';

  @override
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels =>
      'Steuern Sie das Verarbeitungs-Backend und die Ressourcenlimits für unterstützte Modelle.  ';

  @override
  String get conversationSettings => 'Konversationseinstellungen  ';

  @override
  String get aiChatSettingsSubtitle => 'Streaming, Denken und Antwortlänge';

  @override
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits =>
      'Konfigurieren Sie, wie der Assistent reagiert, einschließlich Streaming, Denkmodus, Sampling und Antwortlimits. ';

  @override
  String get imagesAndAudio => 'Bilder und Audio ';

  @override
  String get aiMediaSubtitle => 'Multimodale Eingaben steuern ';

  @override
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos =>
      'Wählen Sie, ob kompatible Modelle ausgewählte Bilder und Audio aus Ihren Videos analysieren können.';

  @override
  String get semanticSearch => 'Semantische Suche ';

  @override
  String get aiSearchSubtitle => 'Einbettungen und lokale Indexierung ';

  @override
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning =>
      'Verwalten Sie das lokale Einbettungsmodell und den Suchindex, um Videos und Momente nach Bedeutung zu finden.';

  @override
  String get toolsAndStructuredOutput => 'Werkzeuge und strukturierte Ausgabe ';

  @override
  String get aiToolsSubtitle => 'Aktionen, Schemata und Bestätigungen';

  @override
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation =>
      'Verwalten Sie unterstützte Assistentenaktionen und strukturierte Antworten. Aktionen, die Dateien betreffen, erfordern Ihre Bestätigung.';

  @override
  String get aiGroupModels => 'Modelle';

  @override
  String get aiGroupExperience => 'Assistenzerfahrung';

  @override
  String get aiGroupCapabilities => 'Intelligente Funktionen';

  @override
  String get aiGroupPerformance => 'Leistung';

  @override
  String get compressionHistorySubtitle => 'Ihr komprimierter Videoverlauf';

  @override
  String get settingsNotificationsSubtitle =>
      'Benachrichtigungen zu Abschlüssen und Updates';

  @override
  String get settingsPrivacySubtitle => 'Ihre Daten bleiben lokal';

  @override
  String get plansSubtitle => 'Pläne vergleichen und upgraden';

  @override
  String get plansMethodsSubtitle => 'Zahlungsmethoden und Abrechnung';

  @override
  String get plansRestoreSubtitle => 'Ihre vorherigen Käufe wiederherstellen';

  @override
  String get aboutAppSubtitle => 'Versions- und Build-Details';

  @override
  String get aboutDeveloperSubtitle => 'Der Entwickler hinter Zumi';

  @override
  String get aboutLicensesSubtitle => 'Open-Source-Paketlizenzen';

  @override
  String get legalPrivacySubtitle => 'Wie Daten verarbeitet werden';

  @override
  String get legalTermsSubtitle => 'Regeln für die Nutzung von Zumi';

  @override
  String get legalDataSafetySubtitle => 'Welche Daten wir sammeln';

  @override
  String get legalPermissionsSubtitle => 'Warum wir Berechtigungen benötigen';

  @override
  String get helpFaqSubtitle => 'Antworten auf häufige Fragen';

  @override
  String get helpSupportSubtitle => 'Den Entwickler direkt erreichen';

  @override
  String get helpFeedbackSubtitle => 'Senden Sie uns Ihr Feedback';

  @override
  String get compressionPickVideo => 'Video auswählen';

  @override
  String get compressionTargetMb => 'Zielgröße (MB)';

  @override
  String get compressionStart => 'Komprimierung starten';

  @override
  String get compressionPause => 'Pause';

  @override
  String get compressionResume => 'Fortsetzen';

  @override
  String get compressionViewResult => 'Ergebnis anzeigen';

  @override
  String get compressionSaveGallery => 'In Galerie speichern';

  @override
  String get compressionShare => 'Video teilen';

  @override
  String get compressionOriginalSize => 'Originalgröße';

  @override
  String get compressionOutputSize => 'Ausgabegröße';

  @override
  String get compressionEmptyHistory => 'Noch keine komprimierten Videos';

  @override
  String get compressionSavedGallery => 'In Galerie gespeichert';

  @override
  String get compressionInvalidTarget =>
      'Geben Sie eine Zielgröße größer als null ein';

  @override
  String get compressionCancelled => 'Komprimierung abgebrochen';

  @override
  String get compressionTargetExceeded =>
      'Dieses Video konnte die ausgewählte Größe nicht erreichen. Versuchen Sie eine größere Zielgröße.';

  @override
  String get compressionTargetInfeasible =>
      'Die ausgewählte Größe ist für dieses Video zu klein. Wählen Sie eine größere Größe.';

  @override
  String get compressionPreviewBefore => 'Originalvorschau';

  @override
  String get compressionPreviewAfter => 'Komprimierte Vorschau';

  @override
  String get compressionPreset => 'Zielvorgabe';

  @override
  String get compressionCustom => 'Benutzerdefinierte Größe';

  @override
  String get compressionPreviewUnavailable => 'Vorschau nicht verfügbar';

  @override
  String get compressionAdvanced => 'Erweiterte Steuerung';

  @override
  String get compressionAutomatic => 'Automatisch';

  @override
  String get compressionResolutionLimit => 'Maximale Auflösung';

  @override
  String get compressionSourceResolution => 'Ursprüngliche Auflösung';

  @override
  String get compressionFrameRateLimit => 'Maximale Bildrate';

  @override
  String get compressionAudioQuality => 'Audio-Bitrate';

  @override
  String get compressionRemoveAudio => 'Audio entfernen';

  @override
  String get compressionVideoBitrateLimit => 'Maximale Video-Bitrate (kbps)';

  @override
  String get compressionHdrPolicy => 'HDR-Verarbeitung';

  @override
  String get compressionHdrConvert => 'In SDR konvertieren';

  @override
  String get compressionHdrPreserve => 'HDR behalten, wenn unterstützt';

  @override
  String get compressionPlanPreview => 'Bevor Sie starten';

  @override
  String get compressionPlanLoading => 'Kompressionsplan wird berechnet…';

  @override
  String get compressionPlanResolution => 'Geplante Auflösung';

  @override
  String get compressionPlanVideoBitrate => 'Geplante Video-Bitrate';

  @override
  String get compressionPlanAudioBitrate => 'Geplante Audio-Bitrate';

  @override
  String get compressionAudioConversionNote =>
      'Beim Rekodieren wird das Audio in AAC Stereo konvertiert. Dolby Atmos und DTS räumliches Audio werden nicht beibehalten.';

  @override
  String get compressionPlanTooSmall =>
      'Dieses Ziel ist zu klein für ein brauchbares Video. Erhöhen Sie die Größe oder senken Sie andere Limits.';

  @override
  String get compressionPlanLowQuality =>
      'Das ausgewählte Ziel kann die Videoqualität verringern.';

  @override
  String get compressionPlanAlreadyWithinLimit =>
      'Die Quelle liegt bereits innerhalb des Größenlimits.';

  @override
  String get compressionInvalidBitrate =>
      'Geben Sie eine Bitrate von mindestens 150 kbps ein oder lassen Sie das Feld für automatische Werte leer.';

  @override
  String get compressionInvalidResolution =>
      'Geben Sie eine gerade Auflösung von 240 bis 16384 ein oder lassen Sie das Feld für automatische Werte leer.';

  @override
  String get compressionSeek => 'Videoposition';

  @override
  String get compressionInterrupted =>
      'Eine vorherige Kompression wurde unterbrochen. Ihre temporären Dateien wurden bereinigt; Sie können das Video auswählen und es erneut versuchen.';

  @override
  String get compressionDismiss => 'Schließen';

  @override
  String get compressionClearHistory => 'Verlauf löschen';

  @override
  String get compressionClearHistoryConfirm =>
      'Alle Verlaufseinträge entfernen? Gespeicherte Videos bleiben auf Ihrem Gerät. ';

  @override
  String get compressionAttempts => 'Versuche ';

  @override
  String get compressionTargetSize => 'Zielgröße ';

  @override
  String get compressionOutputResolution => 'Ausgabeauflösung ';

  @override
  String get compressionInvalidVideo =>
      'Dieses Video konnte nicht gelesen werden. Wählen Sie eine andere Datei. ';

  @override
  String get compressionInvalidOutput =>
      'Das codierte Video hat die Überprüfung nicht bestanden. Ihr ursprüngliches Video wurde nicht geändert. ';

  @override
  String get compressionEncoderUnsupported =>
      'Dieses Gerät kann die ausgewählte Auflösung oder Bildrate nicht codieren. Verringern Sie diese Einstellung und versuchen Sie es erneut. ';

  @override
  String get compressionAudioDecoderUnsupported =>
      'Dieses Gerät kann dieses Audioformat für die Komprimierung nicht decodieren. Entfernen Sie den Ton oder verwenden Sie eine unterstützte Quelle.';

  @override
  String get compressionVideoDecoderUnsupported =>
      'Dieses Gerät kann dieses Videoformat oder Profil für die Kompression nicht decodieren. Wählen Sie eine andere Quelle oder ein anderes Gerät. ';

  @override
  String get compressionMp4NotStreamable =>
      'Die exportierte MP4-Datei ist nicht zum Streaming bereit. Versuchen Sie ein anderes Video oder Gerät. ';

  @override
  String get compressionNoSpace =>
      'Es ist nicht genügend freier Speicher vorhanden, um dieses Video zu komprimieren. ';

  @override
  String get compressionHdrUnsupported =>
      'Dieses Gerät kann den ausgewählten HDR-Modus nicht verarbeiten. Versuchen Sie, in SDR zu konvertieren. ';

  @override
  String get compressionGeneralFailure =>
      'Die Kompression konnte nicht abgeschlossen werden. Versuchen Sie eine andere Einstellung oder ein anderes Video. ';

  @override
  String get aboutIdentitySection => 'App-Identität ';

  @override
  String get aboutAppName => 'App-Name ';

  @override
  String get aboutPackageName => 'Paketname ';

  @override
  String get aboutVersion => 'Version ';

  @override
  String get aboutBuildNumber => 'Build-Nummer ';

  @override
  String get aboutEnvironmentSection => 'Gerät und Build ';

  @override
  String get aboutOperatingSystem => 'Betriebssystem ';

  @override
  String get aboutOsVersion => 'OS-Version ';

  @override
  String get aboutBuildMode => 'Build-Modus ';

  @override
  String get aboutDebug => 'Debug ';

  @override
  String get aboutRelease => 'Release';

  @override
  String get aboutToolchainSection => 'Erstellt mit';

  @override
  String get aboutInstallationSection => 'Installation';

  @override
  String get aboutInstaller => 'Installiert von';

  @override
  String get aboutInstalledOn => 'Installiert am';

  @override
  String get aboutUpdatedOn => 'Aktualisiert am';

  @override
  String get aboutUnavailable => 'Nicht verfügbar';

  @override
  String get aboutProjectSection => 'Projekt und Unterstützung';

  @override
  String get aboutRepository => 'GitHub-Repository';

  @override
  String get aboutRepositorySubtitle => 'Zumi-Quellcode anzeigen';

  @override
  String get aboutReadme => 'README lesen';

  @override
  String get aboutReadmeSubtitle => 'Mehr über Zumi auf GitHub erfahren';

  @override
  String get aboutIssues => 'Ein Problem melden';

  @override
  String get aboutIssuesSubtitle => 'GitHub-Issues anzeigen und erstellen';

  @override
  String get aboutLatestRelease => 'Neueste Version';

  @override
  String get aboutLatestReleaseSubtitle => 'Versionen und Downloads anzeigen';

  @override
  String get aboutDonate => 'Zumi unterstützen';

  @override
  String get aboutDonateSubtitle => 'Offizielle Spendenseite öffnen';

  @override
  String get aboutLinkError =>
      'Der Link konnte nicht geöffnet werden. Bitte versuchen Sie es erneut.';

  @override
  String get aboutDeveloperSection => 'Entwickler';

  @override
  String get aboutDeveloperName => 'Mostafa Sensei';

  @override
  String get aboutDeveloperProfile => 'GitHub-Profil';

  @override
  String get aboutDeveloperProfileSubtitle =>
      'Projekte und Kontaktdaten ansehen';

  @override
  String get maintenanceInProgress => 'Wartung läuft';

  @override
  String get maintenanceMessage =>
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
      'DZ': 'Algerien',
      'BH': 'Bahrain',
      'KM': 'Komoren',
      'DJ': 'Dschibuti',
      'EG': 'Ägypten',
      'IQ': 'Irak',
      'JO': 'Jordanien',
      'KW': 'Kuwait',
      'LB': 'Libanon',
      'LY': 'Libyen',
      'MR': 'Mauretanien',
      'MA': 'Marokko',
      'OM': 'Oman',
      'PS': 'Palästinensische Autonomiegebiete',
      'QA': 'Katar',
      'SA': 'Saudi-Arabien',
      'SO': 'Somalia',
      'SD': 'Sudan',
      'SY': 'Syrien',
      'TN': 'Tunesien',
      'AE': 'Vereinigte Arabische Emirate',
      'YE': 'Jemen',
      'US': 'Vereinigte Staaten',
      'GB': 'Vereinigtes Königreich',
      'JP': 'Japan',
      'FR': 'Frankreich',
      'DE': 'Deutschland',
      'ES': 'Spanien',
      'TR': 'Türkei',
      'NL': 'Niederlande',
      'other': 'Land',
    });
    return '$_temp0';
  }
}
