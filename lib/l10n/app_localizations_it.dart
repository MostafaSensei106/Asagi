// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get zumi => 'Zumi';

  @override
  String get downloadFile => 'Scarica file';

  @override
  String fileOpenedInBrowser(String fileName) {
    return 'File aperto nel browser: $fileName';
  }

  @override
  String fileSavedToDcim(String fileName) {
    return 'File salvato nella galleria: $fileName';
  }

  @override
  String fileSavedToDocuments(String fileName) {
    return 'File salvato nei documenti: $fileName';
  }

  @override
  String get fileAlreadySaved => 'Il file è già salvato';

  @override
  String get error => 'Errore';

  @override
  String get info => 'Informazioni';

  @override
  String get success => 'Successo';

  @override
  String get warning => 'Avviso';

  @override
  String get paid => 'Pagato';

  @override
  String get unpaid => 'Non pagato';

  @override
  String get partial => 'Parziale';

  @override
  String get error_address_line_cant_be_empty =>
      'La riga dell\'indirizzo non può essere vuota';

  @override
  String get error_address_line_too_long =>
      'La riga dell\'indirizzo è troppo lunga';

  @override
  String get error_address_invalid_special_characters =>
      'I caratteri speciali non sono consentiti';

  @override
  String get error_address_emoji_not_allowed => 'Le emoji non sono consentite';

  @override
  String get error_city_cant_be_empty => 'La città non può essere vuota';

  @override
  String get error_city_too_long => 'Il nome della città è troppo lungo';

  @override
  String get error_city_invalid_special_characters =>
      'La città contiene caratteri speciali non validi';

  @override
  String get error_address_label_cant_be_empty =>
      'L\'etichetta dell\'indirizzo non può essere vuota';

  @override
  String get error_address_label_too_long =>
      'L\'etichetta dell\'indirizzo è troppo lunga';

  @override
  String get error_email_cant_be_empty => 'L\'email non può essere vuota';

  @override
  String get error_email_not_invalid_format => 'Formato email non valido';

  @override
  String get error_email_contains_invalid_characters =>
      'L\'email contiene caratteri non validi';

  @override
  String get error_email_must_contain_at_symbol => 'L\'email deve contenere @';

  @override
  String get error_email_must_be_in_lowercase =>
      'L\'email deve essere in minuscolo';

  @override
  String get error_arabic_not_allowed =>
      'I caratteri arabi non sono consentiti';

  @override
  String get error_email_emoji_not_allowed =>
      'Le emoji non sono consentite nell\'email';

  @override
  String get error_phone_number_cant_be_empty =>
      'Il numero di telefono non può essere vuoto';

  @override
  String get error_phone_number_invalid => 'Numero di telefono non valido';

  @override
  String get error_phone_number_min_length =>
      'Il numero di telefono deve contenere almeno 11 cifre';

  @override
  String get error_name_cant_be_empty => 'Il nome non può essere vuoto';

  @override
  String get error_name_invalid => 'Nome non valido';

  @override
  String get error_name_too_short_at_least_3_characters =>
      'Il nome deve contenere almeno 3 caratteri';

  @override
  String get error_name_too_long_maximum_20_characters =>
      'Il nome non può superare i 20 caratteri';

  @override
  String get error_name_invalid_special_characters =>
      'Il nome contiene caratteri speciali non validi';

  @override
  String get error_name_emoji_not_allowed =>
      'Le emoji non sono consentite nel nome';

  @override
  String get error_password_cant_be_empty => 'La password non può essere vuota';

  @override
  String
  get error_password_must_contain_uppercase_lowercase_number_and_special_character =>
      'La password deve contenere maiuscole, minuscole, numeri e caratteri speciali';

  @override
  String get error_password_must_be_at_least_8_characters_long =>
      'La password deve essere lunga almeno 8 caratteri';

  @override
  String get noInternetConnection => 'Nessuna connessione a Internet';

  @override
  String get internetConnectionRestored => 'Connessione Internet ripristinata';

  @override
  String get retry => 'Riprova';

  @override
  String get cancel => 'Annulla';

  @override
  String get confirm => 'Conferma';

  @override
  String get pleaseWait => 'Attendere prego...';

  @override
  String get ok => 'OK';

  @override
  String get compressVideosPrivatelyOnYourDevice =>
      'Comprimi i video in modo privato direttamente sul tuo dispositivo.';

  @override
  String get welcomeToZumi => 'Benvenuto in Zumi';

  @override
  String get learnHowZumiCompressesYourVideosWithoutEverLeavingYourPhone =>
      'Scopri come Zumi comprime i tuoi video senza mai lasciare il tuo telefono.';

  @override
  String get signIn => 'Accedi';

  @override
  String get signInToSyncYourPlanAndKeepYourPurchasesAvailableOnEveryDevice =>
      'Accedi per sincronizzare il tuo piano e mantenere i tuoi acquisti disponibili su ogni dispositivo.';

  @override
  String get chooseAVideo => 'Scegli un video';

  @override
  String get pickAVideoFromYourGalleryToStartCompressing =>
      'Seleziona un video dalla tua galleria per iniziare a comprimerlo.';

  @override
  String get compressionSetup => 'Impostazioni di compressione';

  @override
  String get chooseResolutionBitrateAndOutputFormatBeforeYouStart =>
      'Scegli risoluzione, bitrate e formato di output prima di iniziare.';

  @override
  String get compressing => 'Compressione in corso';

  @override
  String get followTheLiveProgressOfYourCompressionJob =>
      'Segui il progresso in tempo reale del tuo lavoro di compressione.';

  @override
  String get compressionResult => 'Risultato della compressione';

  @override
  String get compareTheBeforeAndAfterSizeThenSaveOrShareTheResult =>
      'Confronta le dimensioni prima e dopo, poi salva o condividi il risultato.';

  @override
  String get compressionHistory => 'Cronologia della compressione';

  @override
  String get reviewTheVideosYouHaveCompressedOnThisDevice =>
      'Rivedi i video che hai compresso su questo dispositivo.';

  @override
  String get settings => 'Impostazioni';

  @override
  String get appearance => 'Aspetto';

  @override
  String get themeColorSchemeAndMotionPreferences =>
      'Tema, schema di colori e preferenze di movimento.';

  @override
  String get language => 'Lingua';

  @override
  String get appLanguageAndTextDirection =>
      'Lingua dell\'app e direzione del testo.';

  @override
  String get compressionDefaults => 'Impostazioni predefinite di compressione';

  @override
  String get defaultResolutionBitrateAndOutputFormat =>
      'Risoluzione, bitrate e formato di output predefiniti.';

  @override
  String get storageCleanup => 'Archiviazione e pulizia';

  @override
  String get storageUsageCacheSizeAndTemporaryFileCleanup =>
      'Utilizzo dello spazio di archiviazione, dimensione della cache e pulizia dei file temporanei.';

  @override
  String get notifications => 'Notifiche';

  @override
  String get jobCompletionAndProductUpdateNotifications =>
      'Notifiche di completamento lavori e aggiornamenti del prodotto.';

  @override
  String get privacy => 'Privacy';

  @override
  String get onDeviceProcessingLocalLogsAndOptionalCrashReports =>
      'Elaborazione sul dispositivo, registri locali e rapporti sugli arresti opzionali.';

  @override
  String get aboutZumi => 'Informazioni su Zumi';

  @override
  String get versionBuildNumberAndApplicationDetails =>
      'Versione, numero di build e dettagli dell\'applicazione.';

  @override
  String get aboutTheDeveloper => 'Informazioni sullo sviluppatore';

  @override
  String get theDeveloperAndToolsBehindZumi =>
      'Lo sviluppatore e gli strumenti dietro Zumi.';

  @override
  String get openSourceLicenses => 'Licenze open-source';

  @override
  String get openSourcePackagesBundledWithZumi =>
      'Pacchetti open-source inclusi con Zumi.';

  @override
  String get privacyPolicy => 'Informativa sulla privacy';

  @override
  String get howZumiHandlesYourVideosAndData =>
      'Come Zumi gestisce i tuoi video e i tuoi dati.';

  @override
  String get termsOfService => 'Termini di servizio';

  @override
  String get theTermsThatApplyToZumiAndItsPurchases =>
      'I termini che si applicano a Zumi e ai suoi acquisti.';

  @override
  String get dataSafety => 'Sicurezza dei dati';

  @override
  String get summaryOfTheDataZumiCollectsAndWhy =>
      'Riepilogo dei dati che Zumi raccoglie e perché.';

  @override
  String get permissions => 'Autorizzazioni';

  @override
  String get runtimePermissionsZumiRequestsAndWhyEachIsNeeded =>
      'Autorizzazioni runtime richieste da Zumi e perché ciascuna è necessaria.';

  @override
  String get faq => 'FAQ';

  @override
  String get answersToCommonQuestionsAboutCompressionAndBilling =>
      'Risposte alle domande comuni su compressione e fatturazione.';

  @override
  String get support => 'Supporto';

  @override
  String get getHelpWithYourAccountOrAPurchase =>
      'Ricevi aiuto con il tuo account o un acquisto.';

  @override
  String get sendFeedback => 'Invia feedback';

  @override
  String get reportAProblemOrSuggestAnImprovement =>
      'Segnala un problema o suggerisci un miglioramento.';

  @override
  String get plans => 'Piani';

  @override
  String get comparePlansAndSeeWhatEachOneUnlocks =>
      'Confronta i piani e scopri cosa sblocca ciascuno.';

  @override
  String get planDetails => 'Dettagli del piano';

  @override
  String get benefitsLimitsAndPricingForThisPlan =>
      'Vantaggi, limiti e prezzi di questo piano.';

  @override
  String get paymentMethods => 'Metodi di pagamento';

  @override
  String get supportedWaysToPayIncludingStoreBilling =>
      'Modalità di pagamento supportate, incluso il pagamento tramite store.';

  @override
  String get restorePurchases => 'Ripristina acquisti';

  @override
  String get reApplyAPurchaseMadeOnAnotherDevice =>
      'Riapplcare un acquisto effettuato su un altro dispositivo.';

  @override
  String get profile => 'Profilo';

  @override
  String get yourIdentityPlanStatusAndAccountPreferences =>
      'La tua identità, lo stato del piano e le preferenze dell\'account.';

  @override
  String get deleteAccount => 'Elimina account';

  @override
  String get permanentlyRemoveYourAccountAndItsServerSideData =>
      'Rimuovi permanentemente il tuo account e i dati lato server.';

  @override
  String get rateZumi => 'Valuta Zumi';

  @override
  String get tellOthersHowZumiWorkedForYouOnTheStore =>
      'Dì agli altri come Zumi ha funzionato per te nel negozio.';

  @override
  String get shareZumi => 'Condividi Zumi';

  @override
  String get recommendZumiToAFriend => 'Consiglia Zumi a un amico.';

  @override
  String get settingsGroupAppearance => 'Aspetto e lingua';

  @override
  String get settingsGroupCompression => 'Compressione';

  @override
  String get settingsGroupAi => 'AI sul dispositivo';

  @override
  String get settingsGroupPrivacy => 'Notifiche e privacy';

  @override
  String get settingsGroupPlans => 'Piani e acquisti';

  @override
  String get settingsGroupAbout => 'Informazioni';

  @override
  String get settingsGroupLegal => 'Legale';

  @override
  String get settingsGroupHelp => 'Aiuto e feedback';

  @override
  String get settingsGroupAccount => 'Account';

  @override
  String get settingsAppearanceSubtitle => 'Tema e lingua dell\'app';

  @override
  String get settingsLanguageSubtitle => 'Lingua e direzione dell\'app';

  @override
  String get settingsCompressionSubtitle => 'Qualità e formato predefiniti';

  @override
  String get settingsStorageSubtitle => 'Uso della cache e dello storage';

  @override
  String get aiSettings => 'Impostazioni AI';

  @override
  String get zumiAssistant => 'Assistente Zumi';

  @override
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere =>
      'Un assistente privato per i tuoi video arriverà presto. Potrai chiedere informazioni su compressione, organizzazione e video salvati qui.';

  @override
  String get settingsAiSubtitle => 'Modelli locali e strumenti intelligenti';

  @override
  String get exploreLocalModelsAndFutureAiToolsTheseOptionsAreNotActiveYet =>
      'Esplora modelli locali e strumenti AI futuri. Queste opzioni non sono ancora attive.';

  @override
  String get localModels => 'Modelli locali';

  @override
  String get aiModelsSubtitle => 'Sfoglia e scarica modelli supportati';

  @override
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere =>
      'Scegli un modello supportato, scaricalo su questo dispositivo e gestisci i modelli installati qui.';

  @override
  String get importAModel => 'Importa un modello';

  @override
  String get aiImportSubtitle => 'Usa un modello compatibile dai tuoi file';

  @override
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt =>
      'Seleziona un file modello locale compatibile e verifica i suoi requisiti prima di utilizzarlo.';

  @override
  String get smartFeatures => 'Funzionalità intelligenti';

  @override
  String get aiFeaturesSubtitle => 'Compressione, organizzazione e ricerca';

  @override
  String
  get chooseWhichLocalAiSuggestionsToUseForVideoCompressionOrganizationNamingAndSearch =>
      'Scegli quali suggerimenti AI locali utilizzare per la compressione dei video, l\'organizzazione, la denominazione e la ricerca.';

  @override
  String get modelPerformance => 'Prestazioni del modello';

  @override
  String get aiRuntimeSubtitle => 'Preferenze di elaborazione e risorse';

  @override
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels =>
      'Controlla il backend di elaborazione e i limiti di risorse per i modelli supportati.';

  @override
  String get conversationSettings => 'Impostazioni della conversazione';

  @override
  String get aiChatSettingsSubtitle =>
      'Streaming, elaborazione e lunghezza della risposta';

  @override
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits =>
      'Configura come risponde l\'assistente, inclusi streaming, modalità di pensiero, campionamento e limiti di risposta.';

  @override
  String get imagesAndAudio => 'Immagini e audio';

  @override
  String get aiMediaSubtitle => 'Controlla gli input multimodali';

  @override
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos =>
      'Scegli se i modelli compatibili possono analizzare immagini e audio selezionati dai tuoi video.';

  @override
  String get semanticSearch => 'Ricerca semantica';

  @override
  String get aiSearchSubtitle => 'Incorporamenti e indicizzazione locale';

  @override
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning =>
      'Gestisci il modello di incorporamento locale e l\'indice di ricerca per trovare video e momenti per significato.';

  @override
  String get toolsAndStructuredOutput => 'Strumenti e output strutturato';

  @override
  String get aiToolsSubtitle => 'Azioni, schemi e conferme';

  @override
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation =>
      'Gestisci le azioni assistente supportate e le risposte strutturate. Le azioni che influenzano i file richiederanno la tua conferma.';

  @override
  String get aiGroupModels => 'Modelli';

  @override
  String get aiGroupExperience => 'Esperienza dell\'assistente';

  @override
  String get aiGroupCapabilities => 'Capacità intelligenti';

  @override
  String get aiGroupPerformance => 'Prestazioni';

  @override
  String get compressionHistorySubtitle => 'La tua cronologia video compressa';

  @override
  String get settingsNotificationsSubtitle =>
      'Avvisi di completamento e aggiornamento';

  @override
  String get settingsPrivacySubtitle => 'I tuoi dati rimangono locali';

  @override
  String get plansSubtitle => 'Confronta piani e aggiorna';

  @override
  String get plansMethodsSubtitle => 'Metodi di pagamento e fatturazione';

  @override
  String get plansRestoreSubtitle => 'Ripristina il tuo acquisto precedente';

  @override
  String get aboutAppSubtitle => 'Dettagli su versione e build';

  @override
  String get aboutDeveloperSubtitle => 'Lo sviluppatore dietro Zumi';

  @override
  String get aboutLicensesSubtitle => 'Licenze dei pacchetti open source';

  @override
  String get legalPrivacySubtitle => 'Come vengono gestiti i dati';

  @override
  String get legalTermsSubtitle => 'Regole per l\'uso di Zumi';

  @override
  String get legalDataSafetySubtitle => 'Quali dati raccogliamo';

  @override
  String get legalPermissionsSubtitle => 'Perché abbiamo bisogno dei permessi';

  @override
  String get helpFaqSubtitle => 'Risposte alle domande comuni';

  @override
  String get helpSupportSubtitle => 'Contatta direttamente lo sviluppatore';

  @override
  String get helpFeedbackSubtitle => 'Inviaci il tuo feedback';

  @override
  String get compressionPickVideo => 'Scegli video';

  @override
  String get compressionTargetMb => 'Dimensione target (MB)';

  @override
  String get compressionStart => 'Avvia compressione';

  @override
  String get compressionPause => 'Pausa';

  @override
  String get compressionResume => 'Riprendi';

  @override
  String get compressionViewResult => 'Visualizza risultato';

  @override
  String get compressionSaveGallery => 'Salva nella galleria';

  @override
  String get compressionShare => 'Condividi video';

  @override
  String get compressionOriginalSize => 'Dimensione originale';

  @override
  String get compressionOutputSize => 'Dimensione output';

  @override
  String get compressionEmptyHistory => 'Nessun video compresso ancora';

  @override
  String get compressionSavedGallery => 'Salvato nella galleria';

  @override
  String get compressionInvalidTarget =>
      'Inserisci una dimensione target maggiore di zero';

  @override
  String get compressionCancelled => 'Compressione annullata';

  @override
  String get compressionTargetExceeded =>
      'Questo video non ha raggiunto la dimensione selezionata. Prova una dimensione target maggiore.';

  @override
  String get compressionTargetInfeasible =>
      'La dimensione selezionata è troppo piccola per questo video. Scegli una dimensione maggiore.';

  @override
  String get compressionPreviewBefore => 'Anteprima originale';

  @override
  String get compressionPreviewAfter => 'Anteprima compressa';

  @override
  String get compressionPreset => 'Preset di destinazione';

  @override
  String get compressionCustom => 'Dimensione personalizzata';

  @override
  String get compressionPreviewUnavailable => 'Anteprima non disponibile';

  @override
  String get compressionAdvanced => 'Controlli avanzati';

  @override
  String get compressionAutomatic => 'Automatico';

  @override
  String get compressionResolutionLimit => 'Risoluzione massima';

  @override
  String get compressionSourceResolution => 'Risoluzione originale';

  @override
  String get compressionFrameRateLimit => 'Frequenza fotogrammi massima';

  @override
  String get compressionAudioQuality => 'Bitrate audio';

  @override
  String get compressionRemoveAudio => 'Rimuovi audio';

  @override
  String get compressionVideoBitrateLimit => 'Tetto del bitrate video (kbps)';

  @override
  String get compressionHdrPolicy => 'Gestione HDR';

  @override
  String get compressionHdrConvert => 'Converti in SDR';

  @override
  String get compressionHdrPreserve => 'Mantieni HDR se supportato';

  @override
  String get compressionPlanPreview => 'Prima di iniziare';

  @override
  String get compressionPlanLoading => 'Calcolo del piano di compressione…';

  @override
  String get compressionPlanResolution => 'Risoluzione pianificata';

  @override
  String get compressionPlanVideoBitrate => 'Bitrate video pianificato';

  @override
  String get compressionPlanAudioBitrate => 'Bitrate audio pianificato';

  @override
  String get compressionAudioConversionNote =>
      'La ricodifica converte l\'audio in AAC stereo. Dolby Atmos e l\'audio spaziale DTS non saranno preservati.';

  @override
  String get compressionPlanTooSmall =>
      'Questo obiettivo è troppo piccolo per un video utilizzabile. Aumenta la dimensione o riduci altri limiti.';

  @override
  String get compressionPlanLowQuality =>
      'L\'obiettivo selezionato potrebbe ridurre la qualità del video.';

  @override
  String get compressionPlanAlreadyWithinLimit =>
      'La sorgente è già entro il limite di dimensione.';

  @override
  String get compressionInvalidBitrate =>
      'Inserisci un bitrate di almeno 150 kbps, oppure lascia vuoto per automatico';

  @override
  String get compressionInvalidResolution =>
      'Inserisci una risoluzione pari da 240 a 16384, oppure lascia vuoto per automatico';

  @override
  String get compressionSeek => 'Posizione del video';

  @override
  String get compressionInterrupted =>
      'Una compressione precedente è stata interrotta. I suoi file temporanei sono stati puliti; puoi selezionare il video e riprovare.';

  @override
  String get compressionDismiss => 'Chiudi';

  @override
  String get compressionClearHistory => 'Cancella cronologia';

  @override
  String get compressionClearHistoryConfirm =>
      'Rimuovere tutte le voci della cronologia? I video salvati rimarranno sul dispositivo.';

  @override
  String get compressionAttempts => 'Tentativi';

  @override
  String get compressionTargetSize => 'Dimensione target';

  @override
  String get compressionOutputResolution => 'Risoluzione di output';

  @override
  String get compressionInvalidVideo =>
      'Impossibile leggere questo video. Scegli un altro file.';

  @override
  String get compressionInvalidOutput =>
      'Il video codificato non ha superato la verifica. Il video originale non è stato modificato.';

  @override
  String get compressionEncoderUnsupported =>
      'Questo dispositivo non può codificare la risoluzione o il frame rate selezionati. Abbassa questa impostazione e riprova.';

  @override
  String get compressionAudioDecoderUnsupported =>
      'Questo dispositivo non può decodificare questo formato audio per la compressione. Rimuovi l\'audio o usa una sorgente supportata.';

  @override
  String get compressionVideoDecoderUnsupported =>
      'Questo dispositivo non può decodificare questo formato video o profilo di compressione. Scegli un\'altra sorgente o dispositivo.';

  @override
  String get compressionMp4NotStreamable =>
      'L\'MP4 esportato non è pronto per lo streaming. Prova un altro video o dispositivo.';

  @override
  String get compressionNoSpace =>
      'Non c\'è abbastanza spazio libero per comprimere questo video.';

  @override
  String get compressionHdrUnsupported =>
      'Questo dispositivo non può elaborare la modalità HDR selezionata. Prova a convertire in SDR.';

  @override
  String get compressionGeneralFailure =>
      'La compressione non può essere completata. Prova un\'altra impostazione o video.';

  @override
  String get aboutIdentitySection => 'Identità dell\'app';

  @override
  String get aboutAppName => 'Nome dell\'app';

  @override
  String get aboutPackageName => 'Nome del pacchetto';

  @override
  String get aboutVersion => 'Versione';

  @override
  String get aboutBuildNumber => 'Numero di build';

  @override
  String get aboutEnvironmentSection => 'Dispositivo e build';

  @override
  String get aboutOperatingSystem => 'Sistema operativo';

  @override
  String get aboutOsVersion => 'Versione OS';

  @override
  String get aboutBuildMode => 'Modalità build';

  @override
  String get aboutDebug => 'Debug';

  @override
  String get aboutRelease => 'Rilascia';

  @override
  String get aboutToolchainSection => 'Costruito con';

  @override
  String get aboutInstallationSection => 'Installazione';

  @override
  String get aboutInstaller => 'Installato da';

  @override
  String get aboutInstalledOn => 'Installato su';

  @override
  String get aboutUpdatedOn => 'Aggiornato il';

  @override
  String get aboutUnavailable => 'Non disponibile';

  @override
  String get aboutProjectSection => 'Progetto e supporto';

  @override
  String get aboutRepository => 'Repository GitHub';

  @override
  String get aboutRepositorySubtitle => 'Visualizza il codice sorgente di Zumi';

  @override
  String get aboutReadme => 'Leggi il README';

  @override
  String get aboutReadmeSubtitle => 'Scopri Zumi su GitHub';

  @override
  String get aboutIssues => 'Segnala un problema';

  @override
  String get aboutIssuesSubtitle => 'Visualizza e crea issue su GitHub';

  @override
  String get aboutLatestRelease => 'Ultima versione';

  @override
  String get aboutLatestReleaseSubtitle => 'Visualizza release e download';

  @override
  String get aboutDonate => 'Supporta Zumi';

  @override
  String get aboutDonateSubtitle => 'Apri la pagina ufficiale delle donazioni';

  @override
  String get aboutLinkError => 'Impossibile aprire il link. Riprova.';

  @override
  String get aboutDeveloperSection => 'Sviluppatore';

  @override
  String get aboutDeveloperName => 'Mostafa Sensei';

  @override
  String get aboutDeveloperProfile => 'Profilo GitHub';

  @override
  String get aboutDeveloperProfileSubtitle =>
      'Vedi progetti e dettagli di contatto';

  @override
  String get maintenanceInProgress => 'Manutenzione in corso';

  @override
  String get maintenanceMessage =>
      'Zumi è temporaneamente non disponibile. Riprova più tardi.';

  @override
  String get comingSoon => 'Prossimamente';

  @override
  String get languageName => 'Italiano';

  @override
  String get countryCode => 'IT';

  @override
  String countryName(String countryCode) {
    String _temp0 = intl.Intl.selectLogic(countryCode, {
      'AE': 'Emirati Arabi Uniti',
      'AT': 'Austria',
      'AU': 'Australia',
      'BE': 'Belgio',
      'BH': 'Bahrein',
      'BR': 'Brasile',
      'CA': 'Canada',
      'CH': 'Svizzera',
      'CN': 'Cina',
      'DE': 'Germania',
      'DJ': 'Gibuti',
      'DZ': 'Algeria',
      'EG': 'Egitto',
      'ES': 'Spagna',
      'FR': 'Francia',
      'GB': 'Regno Unito',
      'HK': 'RAS di Hong Kong',
      'ID': 'Indonesia',
      'IQ': 'Iraq',
      'IT': 'Italia',
      'JO': 'Giordania',
      'JP': 'Giappone',
      'KM': 'Comore',
      'KR': 'Corea del Sud',
      'KW': 'Kuwait',
      'LB': 'Libano',
      'LY': 'Libia',
      'MA': 'Marocco',
      'MR': 'Mauritania',
      'MX': 'Messico',
      'NL': 'Paesi Bassi',
      'OM': 'Oman',
      'PL': 'Polonia',
      'PS': 'Territori Palestinesi',
      'PT': 'Portogallo',
      'QA': 'Qatar',
      'RU': 'Russia',
      'SA': 'Arabia Saudita',
      'SD': 'Sudan',
      'SE': 'Svezia',
      'SG': 'Singapore',
      'SO': 'Somalia',
      'SY': 'Siria',
      'TH': 'Thailandia',
      'TN': 'Tunisia',
      'TR': 'Turchia',
      'TW': 'Taiwan',
      'US': 'Stati Uniti',
      'VN': 'Vietnam',
      'YE': 'Yemen',
      'other': 'Paese',
    });
    return '$_temp0';
  }
}

/// The translations for Italian, as used in Italy (`it_IT`).
class AppLocalizationsItIt extends AppLocalizationsIt {
  AppLocalizationsItIt() : super('it_IT');

  @override
  String get zumi => 'Zumi';

  @override
  String get downloadFile => 'Scarica file';

  @override
  String fileOpenedInBrowser(String fileName) {
    return 'File aperto nel browser: $fileName';
  }

  @override
  String fileSavedToDcim(String fileName) {
    return 'File salvato nella galleria: $fileName';
  }

  @override
  String fileSavedToDocuments(String fileName) {
    return 'File salvato nei documenti: $fileName';
  }

  @override
  String get fileAlreadySaved => 'Il file è già salvato';

  @override
  String get error => 'Errore';

  @override
  String get info => 'Informazioni';

  @override
  String get success => 'Successo';

  @override
  String get warning => 'Avviso';

  @override
  String get paid => 'Pagato';

  @override
  String get unpaid => 'Non pagato';

  @override
  String get partial => 'Parziale';

  @override
  String get error_address_line_cant_be_empty =>
      'La riga dell\'indirizzo non può essere vuota';

  @override
  String get error_address_line_too_long =>
      'La riga dell\'indirizzo è troppo lunga';

  @override
  String get error_address_invalid_special_characters =>
      'I caratteri speciali non sono consentiti';

  @override
  String get error_address_emoji_not_allowed => 'Le emoji non sono consentite';

  @override
  String get error_city_cant_be_empty => 'La città non può essere vuota';

  @override
  String get error_city_too_long => 'Il nome della città è troppo lungo';

  @override
  String get error_city_invalid_special_characters =>
      'La città contiene caratteri speciali non validi';

  @override
  String get error_address_label_cant_be_empty =>
      'L\'etichetta dell\'indirizzo non può essere vuota';

  @override
  String get error_address_label_too_long =>
      'L\'etichetta dell\'indirizzo è troppo lunga';

  @override
  String get error_email_cant_be_empty => 'L\'email non può essere vuota';

  @override
  String get error_email_not_invalid_format => 'Formato email non valido';

  @override
  String get error_email_contains_invalid_characters =>
      'L\'email contiene caratteri non validi';

  @override
  String get error_email_must_contain_at_symbol => 'L\'email deve contenere @';

  @override
  String get error_email_must_be_in_lowercase =>
      'L\'email deve essere in minuscolo';

  @override
  String get error_arabic_not_allowed =>
      'I caratteri arabi non sono consentiti';

  @override
  String get error_email_emoji_not_allowed =>
      'Le emoji non sono consentite nell\'email';

  @override
  String get error_phone_number_cant_be_empty =>
      'Il numero di telefono non può essere vuoto';

  @override
  String get error_phone_number_invalid => 'Numero di telefono non valido';

  @override
  String get error_phone_number_min_length =>
      'Il numero di telefono deve contenere almeno 11 cifre';

  @override
  String get error_name_cant_be_empty => 'Il nome non può essere vuoto';

  @override
  String get error_name_invalid => 'Nome non valido';

  @override
  String get error_name_too_short_at_least_3_characters =>
      'Il nome deve contenere almeno 3 caratteri';

  @override
  String get error_name_too_long_maximum_20_characters =>
      'Il nome non può superare i 20 caratteri';

  @override
  String get error_name_invalid_special_characters =>
      'Il nome contiene caratteri speciali non validi';

  @override
  String get error_name_emoji_not_allowed =>
      'Le emoji non sono consentite nel nome';

  @override
  String get error_password_cant_be_empty => 'La password non può essere vuota';

  @override
  String
  get error_password_must_contain_uppercase_lowercase_number_and_special_character =>
      'La password deve contenere maiuscole, minuscole, numeri e caratteri speciali';

  @override
  String get error_password_must_be_at_least_8_characters_long =>
      'La password deve essere lunga almeno 8 caratteri';

  @override
  String get noInternetConnection => 'Nessuna connessione a Internet';

  @override
  String get internetConnectionRestored => 'Connessione Internet ripristinata';

  @override
  String get retry => 'Riprova';

  @override
  String get cancel => 'Annulla';

  @override
  String get confirm => 'Conferma';

  @override
  String get pleaseWait => 'Attendere prego...';

  @override
  String get ok => 'OK';

  @override
  String get compressVideosPrivatelyOnYourDevice =>
      'Comprimi i video in modo privato direttamente sul tuo dispositivo.';

  @override
  String get welcomeToZumi => 'Benvenuto in Zumi';

  @override
  String get learnHowZumiCompressesYourVideosWithoutEverLeavingYourPhone =>
      'Scopri come Zumi comprime i tuoi video senza mai lasciare il tuo telefono.';

  @override
  String get signIn => 'Accedi';

  @override
  String get signInToSyncYourPlanAndKeepYourPurchasesAvailableOnEveryDevice =>
      'Accedi per sincronizzare il tuo piano e mantenere i tuoi acquisti disponibili su ogni dispositivo.';

  @override
  String get chooseAVideo => 'Scegli un video';

  @override
  String get pickAVideoFromYourGalleryToStartCompressing =>
      'Seleziona un video dalla tua galleria per iniziare a comprimerlo.';

  @override
  String get compressionSetup => 'Impostazioni di compressione';

  @override
  String get chooseResolutionBitrateAndOutputFormatBeforeYouStart =>
      'Scegli risoluzione, bitrate e formato di output prima di iniziare.';

  @override
  String get compressing => 'Compressione in corso';

  @override
  String get followTheLiveProgressOfYourCompressionJob =>
      'Segui il progresso in tempo reale del tuo lavoro di compressione.';

  @override
  String get compressionResult => 'Risultato della compressione';

  @override
  String get compareTheBeforeAndAfterSizeThenSaveOrShareTheResult =>
      'Confronta le dimensioni prima e dopo, poi salva o condividi il risultato.';

  @override
  String get compressionHistory => 'Cronologia della compressione';

  @override
  String get reviewTheVideosYouHaveCompressedOnThisDevice =>
      'Rivedi i video che hai compresso su questo dispositivo.';

  @override
  String get settings => 'Impostazioni';

  @override
  String get appearance => 'Aspetto';

  @override
  String get themeColorSchemeAndMotionPreferences =>
      'Tema, schema di colori e preferenze di movimento.';

  @override
  String get language => 'Lingua';

  @override
  String get appLanguageAndTextDirection =>
      'Lingua dell\'app e direzione del testo.';

  @override
  String get compressionDefaults => 'Impostazioni predefinite di compressione';

  @override
  String get defaultResolutionBitrateAndOutputFormat =>
      'Risoluzione, bitrate e formato di output predefiniti.';

  @override
  String get storageCleanup => 'Archiviazione e pulizia';

  @override
  String get storageUsageCacheSizeAndTemporaryFileCleanup =>
      'Utilizzo dello spazio di archiviazione, dimensione della cache e pulizia dei file temporanei.';

  @override
  String get notifications => 'Notifiche';

  @override
  String get jobCompletionAndProductUpdateNotifications =>
      'Notifiche di completamento lavori e aggiornamenti del prodotto.';

  @override
  String get privacy => 'Privacy';

  @override
  String get onDeviceProcessingLocalLogsAndOptionalCrashReports =>
      'Elaborazione sul dispositivo, registri locali e rapporti sugli arresti opzionali.';

  @override
  String get aboutZumi => 'Informazioni su Zumi';

  @override
  String get versionBuildNumberAndApplicationDetails =>
      'Versione, numero di build e dettagli dell\'applicazione.';

  @override
  String get aboutTheDeveloper => 'Informazioni sullo sviluppatore';

  @override
  String get theDeveloperAndToolsBehindZumi =>
      'Lo sviluppatore e gli strumenti dietro Zumi.';

  @override
  String get openSourceLicenses => 'Licenze open-source';

  @override
  String get openSourcePackagesBundledWithZumi =>
      'Pacchetti open-source inclusi con Zumi.';

  @override
  String get privacyPolicy => 'Informativa sulla privacy';

  @override
  String get howZumiHandlesYourVideosAndData =>
      'Come Zumi gestisce i tuoi video e i tuoi dati.';

  @override
  String get termsOfService => 'Termini di servizio';

  @override
  String get theTermsThatApplyToZumiAndItsPurchases =>
      'I termini che si applicano a Zumi e ai suoi acquisti.';

  @override
  String get dataSafety => 'Sicurezza dei dati';

  @override
  String get summaryOfTheDataZumiCollectsAndWhy =>
      'Riepilogo dei dati che Zumi raccoglie e perché.';

  @override
  String get permissions => 'Autorizzazioni';

  @override
  String get runtimePermissionsZumiRequestsAndWhyEachIsNeeded =>
      'Autorizzazioni runtime richieste da Zumi e perché ciascuna è necessaria.';

  @override
  String get faq => 'FAQ';

  @override
  String get answersToCommonQuestionsAboutCompressionAndBilling =>
      'Risposte alle domande comuni su compressione e fatturazione.';

  @override
  String get support => 'Supporto';

  @override
  String get getHelpWithYourAccountOrAPurchase =>
      'Ricevi aiuto con il tuo account o un acquisto.';

  @override
  String get sendFeedback => 'Invia feedback';

  @override
  String get reportAProblemOrSuggestAnImprovement =>
      'Segnala un problema o suggerisci un miglioramento.';

  @override
  String get plans => 'Piani';

  @override
  String get comparePlansAndSeeWhatEachOneUnlocks =>
      'Confronta i piani e scopri cosa sblocca ciascuno.';

  @override
  String get planDetails => 'Dettagli del piano';

  @override
  String get benefitsLimitsAndPricingForThisPlan =>
      'Vantaggi, limiti e prezzi di questo piano.';

  @override
  String get paymentMethods => 'Metodi di pagamento';

  @override
  String get supportedWaysToPayIncludingStoreBilling =>
      'Modalità di pagamento supportate, incluso il pagamento tramite store.';

  @override
  String get restorePurchases => 'Ripristina acquisti';

  @override
  String get reApplyAPurchaseMadeOnAnotherDevice =>
      'Riapplcare un acquisto effettuato su un altro dispositivo.';

  @override
  String get profile => 'Profilo';

  @override
  String get yourIdentityPlanStatusAndAccountPreferences =>
      'La tua identità, lo stato del piano e le preferenze dell\'account.';

  @override
  String get deleteAccount => 'Elimina account';

  @override
  String get permanentlyRemoveYourAccountAndItsServerSideData =>
      'Rimuovi permanentemente il tuo account e i dati lato server.';

  @override
  String get rateZumi => 'Valuta Zumi';

  @override
  String get tellOthersHowZumiWorkedForYouOnTheStore =>
      'Dì agli altri come Zumi ha funzionato per te nel negozio.';

  @override
  String get shareZumi => 'Condividi Zumi';

  @override
  String get recommendZumiToAFriend => 'Consiglia Zumi a un amico.';

  @override
  String get settingsGroupAppearance => 'Aspetto e lingua';

  @override
  String get settingsGroupCompression => 'Compressione';

  @override
  String get settingsGroupAi => 'AI sul dispositivo';

  @override
  String get settingsGroupPrivacy => 'Notifiche e privacy';

  @override
  String get settingsGroupPlans => 'Piani e acquisti';

  @override
  String get settingsGroupAbout => 'Informazioni';

  @override
  String get settingsGroupLegal => 'Legale';

  @override
  String get settingsGroupHelp => 'Aiuto e feedback';

  @override
  String get settingsGroupAccount => 'Account';

  @override
  String get settingsAppearanceSubtitle => 'Tema e lingua dell\'app';

  @override
  String get settingsLanguageSubtitle => 'Lingua e direzione dell\'app';

  @override
  String get settingsCompressionSubtitle => 'Qualità e formato predefiniti';

  @override
  String get settingsStorageSubtitle => 'Uso della cache e dello storage';

  @override
  String get aiSettings => 'Impostazioni AI';

  @override
  String get zumiAssistant => 'Assistente Zumi';

  @override
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere =>
      'Un assistente privato per i tuoi video arriverà presto. Potrai chiedere informazioni su compressione, organizzazione e video salvati qui.';

  @override
  String get settingsAiSubtitle => 'Modelli locali e strumenti intelligenti';

  @override
  String get exploreLocalModelsAndFutureAiToolsTheseOptionsAreNotActiveYet =>
      'Esplora modelli locali e strumenti AI futuri. Queste opzioni non sono ancora attive.';

  @override
  String get localModels => 'Modelli locali';

  @override
  String get aiModelsSubtitle => 'Sfoglia e scarica modelli supportati';

  @override
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere =>
      'Scegli un modello supportato, scaricalo su questo dispositivo e gestisci i modelli installati qui.';

  @override
  String get importAModel => 'Importa un modello';

  @override
  String get aiImportSubtitle => 'Usa un modello compatibile dai tuoi file';

  @override
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt =>
      'Seleziona un file modello locale compatibile e verifica i suoi requisiti prima di utilizzarlo.';

  @override
  String get smartFeatures => 'Funzionalità intelligenti';

  @override
  String get aiFeaturesSubtitle => 'Compressione, organizzazione e ricerca';

  @override
  String
  get chooseWhichLocalAiSuggestionsToUseForVideoCompressionOrganizationNamingAndSearch =>
      'Scegli quali suggerimenti AI locali utilizzare per la compressione dei video, l\'organizzazione, la denominazione e la ricerca.';

  @override
  String get modelPerformance => 'Prestazioni del modello';

  @override
  String get aiRuntimeSubtitle => 'Preferenze di elaborazione e risorse';

  @override
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels =>
      'Controlla il backend di elaborazione e i limiti di risorse per i modelli supportati.';

  @override
  String get conversationSettings => 'Impostazioni della conversazione';

  @override
  String get aiChatSettingsSubtitle =>
      'Streaming, elaborazione e lunghezza della risposta';

  @override
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits =>
      'Configura come risponde l\'assistente, inclusi streaming, modalità di pensiero, campionamento e limiti di risposta.';

  @override
  String get imagesAndAudio => 'Immagini e audio';

  @override
  String get aiMediaSubtitle => 'Controlla gli input multimodali';

  @override
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos =>
      'Scegli se i modelli compatibili possono analizzare immagini e audio selezionati dai tuoi video.';

  @override
  String get semanticSearch => 'Ricerca semantica';

  @override
  String get aiSearchSubtitle => 'Incorporamenti e indicizzazione locale';

  @override
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning =>
      'Gestisci il modello di incorporamento locale e l\'indice di ricerca per trovare video e momenti per significato.';

  @override
  String get toolsAndStructuredOutput => 'Strumenti e output strutturato';

  @override
  String get aiToolsSubtitle => 'Azioni, schemi e conferme';

  @override
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation =>
      'Gestisci le azioni assistente supportate e le risposte strutturate. Le azioni che influenzano i file richiederanno la tua conferma.';

  @override
  String get aiGroupModels => 'Modelli';

  @override
  String get aiGroupExperience => 'Esperienza dell\'assistente';

  @override
  String get aiGroupCapabilities => 'Capacità intelligenti';

  @override
  String get aiGroupPerformance => 'Prestazioni';

  @override
  String get compressionHistorySubtitle => 'La tua cronologia video compressa';

  @override
  String get settingsNotificationsSubtitle =>
      'Avvisi di completamento e aggiornamento';

  @override
  String get settingsPrivacySubtitle => 'I tuoi dati rimangono locali';

  @override
  String get plansSubtitle => 'Confronta piani e aggiorna';

  @override
  String get plansMethodsSubtitle => 'Metodi di pagamento e fatturazione';

  @override
  String get plansRestoreSubtitle => 'Ripristina il tuo acquisto precedente';

  @override
  String get aboutAppSubtitle => 'Dettagli su versione e build';

  @override
  String get aboutDeveloperSubtitle => 'Lo sviluppatore dietro Zumi';

  @override
  String get aboutLicensesSubtitle => 'Licenze dei pacchetti open source';

  @override
  String get legalPrivacySubtitle => 'Come vengono gestiti i dati';

  @override
  String get legalTermsSubtitle => 'Regole per l\'uso di Zumi';

  @override
  String get legalDataSafetySubtitle => 'Quali dati raccogliamo';

  @override
  String get legalPermissionsSubtitle => 'Perché abbiamo bisogno dei permessi';

  @override
  String get helpFaqSubtitle => 'Risposte alle domande comuni';

  @override
  String get helpSupportSubtitle => 'Contatta direttamente lo sviluppatore';

  @override
  String get helpFeedbackSubtitle => 'Inviaci il tuo feedback';

  @override
  String get compressionPickVideo => 'Scegli video';

  @override
  String get compressionTargetMb => 'Dimensione target (MB)';

  @override
  String get compressionStart => 'Avvia compressione';

  @override
  String get compressionPause => 'Pausa';

  @override
  String get compressionResume => 'Riprendi';

  @override
  String get compressionViewResult => 'Visualizza risultato';

  @override
  String get compressionSaveGallery => 'Salva nella galleria';

  @override
  String get compressionShare => 'Condividi video';

  @override
  String get compressionOriginalSize => 'Dimensione originale';

  @override
  String get compressionOutputSize => 'Dimensione output';

  @override
  String get compressionEmptyHistory => 'Nessun video compresso ancora';

  @override
  String get compressionSavedGallery => 'Salvato nella galleria';

  @override
  String get compressionInvalidTarget =>
      'Inserisci una dimensione target maggiore di zero';

  @override
  String get compressionCancelled => 'Compressione annullata';

  @override
  String get compressionTargetExceeded =>
      'Questo video non ha raggiunto la dimensione selezionata. Prova una dimensione target maggiore.';

  @override
  String get compressionTargetInfeasible =>
      'La dimensione selezionata è troppo piccola per questo video. Scegli una dimensione maggiore.';

  @override
  String get compressionPreviewBefore => 'Anteprima originale';

  @override
  String get compressionPreviewAfter => 'Anteprima compressa';

  @override
  String get compressionPreset => 'Preset di destinazione';

  @override
  String get compressionCustom => 'Dimensione personalizzata';

  @override
  String get compressionPreviewUnavailable => 'Anteprima non disponibile';

  @override
  String get compressionAdvanced => 'Controlli avanzati';

  @override
  String get compressionAutomatic => 'Automatico';

  @override
  String get compressionResolutionLimit => 'Risoluzione massima';

  @override
  String get compressionSourceResolution => 'Risoluzione originale';

  @override
  String get compressionFrameRateLimit => 'Frequenza fotogrammi massima';

  @override
  String get compressionAudioQuality => 'Bitrate audio';

  @override
  String get compressionRemoveAudio => 'Rimuovi audio';

  @override
  String get compressionVideoBitrateLimit => 'Tetto del bitrate video (kbps)';

  @override
  String get compressionHdrPolicy => 'Gestione HDR';

  @override
  String get compressionHdrConvert => 'Converti in SDR';

  @override
  String get compressionHdrPreserve => 'Mantieni HDR se supportato';

  @override
  String get compressionPlanPreview => 'Prima di iniziare';

  @override
  String get compressionPlanLoading => 'Calcolo del piano di compressione…';

  @override
  String get compressionPlanResolution => 'Risoluzione pianificata';

  @override
  String get compressionPlanVideoBitrate => 'Bitrate video pianificato';

  @override
  String get compressionPlanAudioBitrate => 'Bitrate audio pianificato';

  @override
  String get compressionAudioConversionNote =>
      'La ricodifica converte l\'audio in AAC stereo. Dolby Atmos e l\'audio spaziale DTS non saranno preservati.';

  @override
  String get compressionPlanTooSmall =>
      'Questo obiettivo è troppo piccolo per un video utilizzabile. Aumenta la dimensione o riduci altri limiti.';

  @override
  String get compressionPlanLowQuality =>
      'L\'obiettivo selezionato potrebbe ridurre la qualità del video.';

  @override
  String get compressionPlanAlreadyWithinLimit =>
      'La sorgente è già entro il limite di dimensione.';

  @override
  String get compressionInvalidBitrate =>
      'Inserisci un bitrate di almeno 150 kbps, oppure lascia vuoto per automatico';

  @override
  String get compressionInvalidResolution =>
      'Inserisci una risoluzione pari da 240 a 16384, oppure lascia vuoto per automatico';

  @override
  String get compressionSeek => 'Posizione del video';

  @override
  String get compressionInterrupted =>
      'Una compressione precedente è stata interrotta. I suoi file temporanei sono stati puliti; puoi selezionare il video e riprovare.';

  @override
  String get compressionDismiss => 'Chiudi';

  @override
  String get compressionClearHistory => 'Cancella cronologia';

  @override
  String get compressionClearHistoryConfirm =>
      'Rimuovere tutte le voci della cronologia? I video salvati rimarranno sul dispositivo.';

  @override
  String get compressionAttempts => 'Tentativi';

  @override
  String get compressionTargetSize => 'Dimensione target';

  @override
  String get compressionOutputResolution => 'Risoluzione di output';

  @override
  String get compressionInvalidVideo =>
      'Impossibile leggere questo video. Scegli un altro file.';

  @override
  String get compressionInvalidOutput =>
      'Il video codificato non ha superato la verifica. Il video originale non è stato modificato.';

  @override
  String get compressionEncoderUnsupported =>
      'Questo dispositivo non può codificare la risoluzione o il frame rate selezionati. Abbassa questa impostazione e riprova.';

  @override
  String get compressionAudioDecoderUnsupported =>
      'Questo dispositivo non può decodificare questo formato audio per la compressione. Rimuovi l\'audio o usa una sorgente supportata.';

  @override
  String get compressionVideoDecoderUnsupported =>
      'Questo dispositivo non può decodificare questo formato video o profilo di compressione. Scegli un\'altra sorgente o dispositivo.';

  @override
  String get compressionMp4NotStreamable =>
      'L\'MP4 esportato non è pronto per lo streaming. Prova un altro video o dispositivo.';

  @override
  String get compressionNoSpace =>
      'Non c\'è abbastanza spazio libero per comprimere questo video.';

  @override
  String get compressionHdrUnsupported =>
      'Questo dispositivo non può elaborare la modalità HDR selezionata. Prova a convertire in SDR.';

  @override
  String get compressionGeneralFailure =>
      'La compressione non può essere completata. Prova un\'altra impostazione o video.';

  @override
  String get aboutIdentitySection => 'Identità dell\'app';

  @override
  String get aboutAppName => 'Nome dell\'app';

  @override
  String get aboutPackageName => 'Nome del pacchetto';

  @override
  String get aboutVersion => 'Versione';

  @override
  String get aboutBuildNumber => 'Numero di build';

  @override
  String get aboutEnvironmentSection => 'Dispositivo e build';

  @override
  String get aboutOperatingSystem => 'Sistema operativo';

  @override
  String get aboutOsVersion => 'Versione OS';

  @override
  String get aboutBuildMode => 'Modalità build';

  @override
  String get aboutDebug => 'Debug';

  @override
  String get aboutRelease => 'Rilascia';

  @override
  String get aboutToolchainSection => 'Costruito con';

  @override
  String get aboutInstallationSection => 'Installazione';

  @override
  String get aboutInstaller => 'Installato da';

  @override
  String get aboutInstalledOn => 'Installato su';

  @override
  String get aboutUpdatedOn => 'Aggiornato il';

  @override
  String get aboutUnavailable => 'Non disponibile';

  @override
  String get aboutProjectSection => 'Progetto e supporto';

  @override
  String get aboutRepository => 'Repository GitHub';

  @override
  String get aboutRepositorySubtitle => 'Visualizza il codice sorgente di Zumi';

  @override
  String get aboutReadme => 'Leggi il README';

  @override
  String get aboutReadmeSubtitle => 'Scopri Zumi su GitHub';

  @override
  String get aboutIssues => 'Segnala un problema';

  @override
  String get aboutIssuesSubtitle => 'Visualizza e crea issue su GitHub';

  @override
  String get aboutLatestRelease => 'Ultima versione';

  @override
  String get aboutLatestReleaseSubtitle => 'Visualizza release e download';

  @override
  String get aboutDonate => 'Supporta Zumi';

  @override
  String get aboutDonateSubtitle => 'Apri la pagina ufficiale delle donazioni';

  @override
  String get aboutLinkError => 'Impossibile aprire il link. Riprova.';

  @override
  String get aboutDeveloperSection => 'Sviluppatore';

  @override
  String get aboutDeveloperName => 'Mostafa Sensei';

  @override
  String get aboutDeveloperProfile => 'Profilo GitHub';

  @override
  String get aboutDeveloperProfileSubtitle =>
      'Vedi progetti e dettagli di contatto';

  @override
  String get maintenanceInProgress => 'Manutenzione in corso';

  @override
  String get maintenanceMessage =>
      'Zumi è temporaneamente non disponibile. Riprova più tardi.';

  @override
  String get comingSoon => 'Prossimamente';

  @override
  String get languageName => 'Italiano';

  @override
  String get countryCode => 'IT';

  @override
  String countryName(String countryCode) {
    String _temp0 = intl.Intl.selectLogic(countryCode, {
      'AE': 'Emirati Arabi Uniti',
      'AT': 'Austria',
      'AU': 'Australia',
      'BE': 'Belgio',
      'BH': 'Bahrein',
      'BR': 'Brasile',
      'CA': 'Canada',
      'CH': 'Svizzera',
      'CN': 'Cina',
      'DE': 'Germania',
      'DJ': 'Gibuti',
      'DZ': 'Algeria',
      'EG': 'Egitto',
      'ES': 'Spagna',
      'FR': 'Francia',
      'GB': 'Regno Unito',
      'HK': 'RAS di Hong Kong',
      'ID': 'Indonesia',
      'IQ': 'Iraq',
      'IT': 'Italia',
      'JO': 'Giordania',
      'JP': 'Giappone',
      'KM': 'Comore',
      'KR': 'Corea del Sud',
      'KW': 'Kuwait',
      'LB': 'Libano',
      'LY': 'Libia',
      'MA': 'Marocco',
      'MR': 'Mauritania',
      'MX': 'Messico',
      'NL': 'Paesi Bassi',
      'OM': 'Oman',
      'PL': 'Polonia',
      'PS': 'Territori Palestinesi',
      'PT': 'Portogallo',
      'QA': 'Qatar',
      'RU': 'Russia',
      'SA': 'Arabia Saudita',
      'SD': 'Sudan',
      'SE': 'Svezia',
      'SG': 'Singapore',
      'SO': 'Somalia',
      'SY': 'Siria',
      'TH': 'Thailandia',
      'TN': 'Tunisia',
      'TR': 'Turchia',
      'TW': 'Taiwan',
      'US': 'Stati Uniti',
      'VN': 'Vietnam',
      'YE': 'Yemen',
      'other': 'Paese',
    });
    return '$_temp0';
  }
}
