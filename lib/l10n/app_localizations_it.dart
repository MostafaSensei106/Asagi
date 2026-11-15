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
  String fileSavedToGallery(String fileName) {
    return 'File salvato nella galleria: $fileName';
  }

  @override
  String fileSavedToDocuments(String fileName) {
    return 'File salvato nei documenti: $fileName';
  }

  @override
  String get fileIsAlreadySaved => 'Il file è già salvato';

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
  String get addressLineCannotBeEmpty =>
      'La riga dell\'indirizzo non può essere vuota';

  @override
  String get addressLineIsTooLong => 'La riga dell\'indirizzo è troppo lunga';

  @override
  String get specialCharactersAreNotAllowed =>
      'I caratteri speciali non sono consentiti';

  @override
  String get emojisAreNotAllowed => 'Le emoji non sono consentite';

  @override
  String get cityCannotBeEmpty => 'La città non può essere vuota';

  @override
  String get cityNameIsTooLong => 'Il nome della città è troppo lungo';

  @override
  String get cityContainsInvalidSpecialCharacters =>
      'La città contiene caratteri speciali non validi';

  @override
  String get addressLabelCannotBeEmpty =>
      'L\'etichetta dell\'indirizzo non può essere vuota';

  @override
  String get addressLabelIsTooLong =>
      'L\'etichetta dell\'indirizzo è troppo lunga';

  @override
  String get emailCannotBeEmpty => 'L\'email non può essere vuota';

  @override
  String get invalidEmailFormat => 'Formato email non valido';

  @override
  String get emailContainsInvalidCharacters =>
      'L\'email contiene caratteri non validi';

  @override
  String get emailMustContain => 'L\'email deve contenere @';

  @override
  String get emailMustBeInLowercase => 'L\'email deve essere in minuscolo';

  @override
  String get arabicCharactersAreNotAllowed =>
      'I caratteri arabi non sono consentiti';

  @override
  String get emojisAreNotAllowedInEmail =>
      'Le emoji non sono consentite nell\'email';

  @override
  String get phoneNumberCannotBeEmpty =>
      'Il numero di telefono non può essere vuoto';

  @override
  String get invalidPhoneNumber => 'Numero di telefono non valido';

  @override
  String get phoneNumberMustBeAtLeast11Digits =>
      'Il numero di telefono deve contenere almeno 11 cifre';

  @override
  String get nameCannotBeEmpty => 'Il nome non può essere vuoto';

  @override
  String get invalidName => 'Nome non valido';

  @override
  String get nameMustBeAtLeast3Characters =>
      'Il nome deve contenere almeno 3 caratteri';

  @override
  String get nameCannotExceed20Characters =>
      'Il nome non può superare i 20 caratteri';

  @override
  String get nameContainsInvalidSpecialCharacters =>
      'Il nome contiene caratteri speciali non validi';

  @override
  String get emojisAreNotAllowedInName =>
      'Le emoji non sono consentite nel nome';

  @override
  String get passwordCannotBeEmpty => 'La password non può essere vuota';

  @override
  String get passwordMustContainUppercaseLowercaseNumberAndSpecialCharacter =>
      'La password deve contenere maiuscole, minuscole, numeri e caratteri speciali';

  @override
  String get passwordMustBeAtLeast8CharactersLong =>
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
  String get appearanceLanguage => 'Aspetto e lingua';

  @override
  String get compression => 'Compressione';

  @override
  String get onDeviceAI => 'AI sul dispositivo';

  @override
  String get notificationsPrivacy => 'Notifiche e privacy';

  @override
  String get plansPurchases => 'Piani e acquisti';

  @override
  String get about => 'Informazioni';

  @override
  String get legal => 'Legale';

  @override
  String get helpFeedback => 'Aiuto e feedback';

  @override
  String get account => 'Account';

  @override
  String get themeAndAppLanguage => 'Tema e lingua dell\'app';

  @override
  String get appLanguageAndDirection => 'Lingua e direzione dell\'app';

  @override
  String get defaultQualityAndFormat => 'Qualità e formato predefiniti';

  @override
  String get cacheAndStorageUsage => 'Uso della cache e dello storage';

  @override
  String get aiSettings => 'Impostazioni AI';

  @override
  String get zumiAssistant => 'Assistente Zumi';

  @override
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere =>
      'Un assistente privato per i tuoi video arriverà presto. Potrai chiedere informazioni su compressione, organizzazione e video salvati qui.';

  @override
  String get localModelsAndSmartTools =>
      'Modelli locali e strumenti intelligenti';

  @override
  String get exploreLocalModelsAndFutureAIToolsTheseOptionsAreNotActiveYet =>
      'Esplora modelli locali e strumenti AI futuri. Queste opzioni non sono ancora attive.';

  @override
  String get localModels => 'Modelli locali';

  @override
  String get browseAndDownloadSupportedModels =>
      'Sfoglia e scarica modelli supportati';

  @override
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere =>
      'Scegli un modello supportato, scaricalo su questo dispositivo e gestisci i modelli installati qui.';

  @override
  String get importAModel => 'Importa un modello';

  @override
  String get useACompatibleModelFromYourFiles =>
      'Usa un modello compatibile dai tuoi file';

  @override
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt =>
      'Seleziona un file modello locale compatibile e verifica i suoi requisiti prima di utilizzarlo.';

  @override
  String get smartFeatures => 'Funzionalità intelligenti';

  @override
  String get compressionOrganizationAndSearch =>
      'Compressione, organizzazione e ricerca';

  @override
  String
  get chooseWhichLocalAISuggestionsToUseForVideoCompressionOrganizationNamingAndSearch =>
      'Scegli quali suggerimenti AI locali utilizzare per la compressione dei video, l\'organizzazione, la denominazione e la ricerca.';

  @override
  String get modelPerformance => 'Prestazioni del modello';

  @override
  String get processingAndResourcePreferences =>
      'Preferenze di elaborazione e risorse';

  @override
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels =>
      'Controlla il backend di elaborazione e i limiti di risorse per i modelli supportati.';

  @override
  String get conversationSettings => 'Impostazioni della conversazione';

  @override
  String get streamingThinkingAndResponseLength =>
      'Streaming, elaborazione e lunghezza della risposta';

  @override
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits =>
      'Configura come risponde l\'assistente, inclusi streaming, modalità di pensiero, campionamento e limiti di risposta.';

  @override
  String get imagesAndAudio => 'Immagini e audio';

  @override
  String get controlMultimodalInputs => 'Controlla gli input multimodali';

  @override
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos =>
      'Scegli se i modelli compatibili possono analizzare immagini e audio selezionati dai tuoi video.';

  @override
  String get semanticSearch => 'Ricerca semantica';

  @override
  String get embeddingsAndLocalIndexing =>
      'Incorporamenti e indicizzazione locale';

  @override
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning =>
      'Gestisci il modello di incorporamento locale e l\'indice di ricerca per trovare video e momenti per significato.';

  @override
  String get toolsAndStructuredOutput => 'Strumenti e output strutturato';

  @override
  String get actionsSchemasAndConfirmations => 'Azioni, schemi e conferme';

  @override
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation =>
      'Gestisci le azioni assistente supportate e le risposte strutturate. Le azioni che influenzano i file richiederanno la tua conferma.';

  @override
  String get models => 'Modelli';

  @override
  String get assistantExperience => 'Esperienza dell\'assistente';

  @override
  String get smartCapabilities => 'Capacità intelligenti';

  @override
  String get performance => 'Prestazioni';

  @override
  String get yourCompressedVideoHistory => 'La tua cronologia video compressa';

  @override
  String get completionAndUpdateAlerts =>
      'Avvisi di completamento e aggiornamento';

  @override
  String get yourDataStaysLocal => 'I tuoi dati rimangono locali';

  @override
  String get comparePlansAndUpgrade => 'Confronta piani e aggiorna';

  @override
  String get paymentMethodsAndBilling => 'Metodi di pagamento e fatturazione';

  @override
  String get restoreYourPreviousPurchase =>
      'Ripristina il tuo acquisto precedente';

  @override
  String get versionAndBuildDetails => 'Dettagli su versione e build';

  @override
  String get theDeveloperBehindZumi => 'Lo sviluppatore dietro Zumi';

  @override
  String get openSourcePackageLicenses => 'Licenze dei pacchetti open source';

  @override
  String get howDataIsHandled => 'Come vengono gestiti i dati';

  @override
  String get rulesForUsingZumi => 'Regole per l\'uso di Zumi';

  @override
  String get whatDataWeCollect => 'Quali dati raccogliamo';

  @override
  String get whyWeNeedPermissions => 'Perché abbiamo bisogno dei permessi';

  @override
  String get answersToCommonQuestions => 'Risposte alle domande comuni';

  @override
  String get reachTheDeveloperDirectly =>
      'Contatta direttamente lo sviluppatore';

  @override
  String get sendUsYourFeedback => 'Inviaci il tuo feedback';

  @override
  String get pickVideo => 'Scegli video';

  @override
  String get targetSizeMB => 'Dimensione target (MB)';

  @override
  String get startCompression => 'Avvia compressione';

  @override
  String get pause => 'Pausa';

  @override
  String get resume => 'Riprendi';

  @override
  String get viewResult => 'Visualizza risultato';

  @override
  String get saveToGallery => 'Salva nella galleria';

  @override
  String get shareVideo => 'Condividi video';

  @override
  String get originalSize => 'Dimensione originale';

  @override
  String get outputSize => 'Dimensione output';

  @override
  String get noCompressedVideosYet => 'Nessun video compresso ancora';

  @override
  String get savedToGallery => 'Salvato nella galleria';

  @override
  String get enterATargetSizeGreaterThanZero =>
      'Inserisci una dimensione target maggiore di zero';

  @override
  String get compressionCancelled => 'Compressione annullata';

  @override
  String get thisVideoCouldNotReachTheSelectedSizeTryALargerTargetSize =>
      'Questo video non ha raggiunto la dimensione selezionata. Prova una dimensione target maggiore.';

  @override
  String get theSelectedSizeIsTooSmallForThisVideoChooseALargerSize =>
      'La dimensione selezionata è troppo piccola per questo video. Scegli una dimensione maggiore.';

  @override
  String get originalPreview => 'Anteprima originale';

  @override
  String get compressedPreview => 'Anteprima compressa';

  @override
  String get targetPreset => 'Preset di destinazione';

  @override
  String get customSize => 'Dimensione personalizzata';

  @override
  String get previewUnavailable => 'Anteprima non disponibile';

  @override
  String get advancedControls => 'Controlli avanzati';

  @override
  String get automatic => 'Automatico';

  @override
  String get maximumResolution => 'Risoluzione massima';

  @override
  String get originalResolution => 'Risoluzione originale';

  @override
  String get maximumFrameRate => 'Frequenza fotogrammi massima';

  @override
  String get audioBitrate => 'Bitrate audio';

  @override
  String get removeAudio => 'Rimuovi audio';

  @override
  String get videoBitrateCeilingKbps => 'Tetto del bitrate video (kbps)';

  @override
  String get hdrHandling => 'Gestione HDR';

  @override
  String get convertToSDR => 'Converti in SDR';

  @override
  String get keepHDRWhenSupported => 'Mantieni HDR se supportato';

  @override
  String get beforeYouStart => 'Prima di iniziare';

  @override
  String get calculatingCompressionPlan => 'Calcolo del piano di compressione…';

  @override
  String get plannedResolution => 'Risoluzione pianificata';

  @override
  String get plannedVideoBitrate => 'Bitrate video pianificato';

  @override
  String get plannedAudioBitrate => 'Bitrate audio pianificato';

  @override
  String
  get reEncodingConvertsAudioToAACStereoDolbyAtmosAndDTSSpatialAudioWillNotBePreserved =>
      'La ricodifica converte l\'audio in AAC stereo. Dolby Atmos e l\'audio spaziale DTS non saranno preservati.';

  @override
  String
  get thisTargetIsTooSmallForAUsableVideoIncreaseTheSizeOrLowerOtherLimits =>
      'Questo obiettivo è troppo piccolo per un video utilizzabile. Aumenta la dimensione o riduci altri limiti.';

  @override
  String get theSelectedTargetMayReduceVideoQuality =>
      'L\'obiettivo selezionato potrebbe ridurre la qualità del video.';

  @override
  String get theSourceIsAlreadyWithinTheSizeLimit =>
      'La sorgente è già entro il limite di dimensione.';

  @override
  String get enterABitrateOfAtLeast150KbpsOrLeaveBlankForAutomatic =>
      'Inserisci un bitrate di almeno 150 kbps, oppure lascia vuoto per automatico';

  @override
  String get enterAnEvenResolutionFrom240To16384OrLeaveBlankForAutomatic =>
      'Inserisci una risoluzione pari da 240 a 16384, oppure lascia vuoto per automatico';

  @override
  String get videoPosition => 'Posizione del video';

  @override
  String
  get aPreviousCompressionWasInterruptedItsTemporaryFilesWereCleanedUpYouCanSelectTheVideoAndTryAgain =>
      'Una compressione precedente è stata interrotta. I suoi file temporanei sono stati puliti; puoi selezionare il video e riprovare.';

  @override
  String get dismiss => 'Chiudi';

  @override
  String get clearHistory => 'Cancella cronologia';

  @override
  String get removeAllHistoryEntriesSavedVideosWillRemainOnYourDevice =>
      'Rimuovere tutte le voci della cronologia? I video salvati rimarranno sul dispositivo.';

  @override
  String get attempts => 'Tentativi';

  @override
  String get targetSize => 'Dimensione target';

  @override
  String get outputResolution => 'Risoluzione di output';

  @override
  String get thisVideoCouldNotBeReadChooseAnotherFile =>
      'Impossibile leggere questo video. Scegli un altro file.';

  @override
  String get theEncodedVideoFailedVerificationYourOriginalVideoWasNotChanged =>
      'Il video codificato non ha superato la verifica. Il video originale non è stato modificato.';

  @override
  String
  get thisDeviceCannotEncodeTheSelectedResolutionOrFrameRateLowerThatSettingAndTryAgain =>
      'Questo dispositivo non può codificare la risoluzione o il frame rate selezionati. Abbassa questa impostazione e riprova.';

  @override
  String
  get thisDeviceCannotDecodeThisAudioFormatForCompressionRemoveAudioOrUseASupportedSource =>
      'Questo dispositivo non può decodificare questo formato audio per la compressione. Rimuovi l\'audio o usa una sorgente supportata.';

  @override
  String
  get thisDeviceCannotDecodeThisVideoFormatOrProfileForCompressionChooseAnotherSourceOrDevice =>
      'Questo dispositivo non può decodificare questo formato video o profilo di compressione. Scegli un\'altra sorgente o dispositivo.';

  @override
  String get theExportedMP4IsNotReadyForStreamingTryAnotherVideoOrDevice =>
      'L\'MP4 esportato non è pronto per lo streaming. Prova un altro video o dispositivo.';

  @override
  String get thereIsNotEnoughFreeStorageToCompressThisVideo =>
      'Non c\'è abbastanza spazio libero per comprimere questo video.';

  @override
  String get thisDeviceCannotProcessTheSelectedHDRModeTryConvertingToSDR =>
      'Questo dispositivo non può elaborare la modalità HDR selezionata. Prova a convertire in SDR.';

  @override
  String get compressionCouldNotBeCompletedTryAnotherSettingOrVideo =>
      'La compressione non può essere completata. Prova un\'altra impostazione o video.';

  @override
  String get appIdentity => 'Identità dell\'app';

  @override
  String get appName => 'Nome dell\'app';

  @override
  String get packageName => 'Nome del pacchetto';

  @override
  String get version => 'Versione';

  @override
  String get buildNumber => 'Numero di build';

  @override
  String get deviceAndBuild => 'Dispositivo e build';

  @override
  String get operatingSystem => 'Sistema operativo';

  @override
  String get osVersion => 'Versione OS';

  @override
  String get buildMode => 'Modalità build';

  @override
  String get debug => 'Debug';

  @override
  String get release => 'Rilascia';

  @override
  String get builtWith => 'Costruito con';

  @override
  String get installation => 'Installazione';

  @override
  String get installedFrom => 'Installato da';

  @override
  String get installedOn => 'Installato su';

  @override
  String get updatedOn => 'Aggiornato il';

  @override
  String get unavailable => 'Non disponibile';

  @override
  String get projectAndSupport => 'Progetto e supporto';

  @override
  String get githubRepository => 'Repository GitHub';

  @override
  String get viewZumiSourceCode => 'Visualizza il codice sorgente di Zumi';

  @override
  String get readTheREADME => 'Leggi il README';

  @override
  String get learnAboutZumiOnGitHub => 'Scopri Zumi su GitHub';

  @override
  String get reportAnIssue => 'Segnala un problema';

  @override
  String get viewAndCreateGitHubIssues => 'Visualizza e crea issue su GitHub';

  @override
  String get latestRelease => 'Ultima versione';

  @override
  String get viewReleasesAndDownloads => 'Visualizza release e download';

  @override
  String get supportZumi => 'Supporta Zumi';

  @override
  String get openTheOfficialDonationPage =>
      'Apri la pagina ufficiale delle donazioni';

  @override
  String get couldNotOpenTheLinkPleaseTryAgain =>
      'Impossibile aprire il link. Riprova.';

  @override
  String get developer => 'Sviluppatore';

  @override
  String get mostafaSensei => 'Mostafa Sensei';

  @override
  String get githubProfile => 'Profilo GitHub';

  @override
  String get seeProjectsAndContactDetails =>
      'Vedi progetti e dettagli di contatto';

  @override
  String get maintenanceInProgress => 'Manutenzione in corso';

  @override
  String get zumiIsTemporarilyUnavailablePleaseTryAgainLater =>
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
  String fileSavedToGallery(String fileName) {
    return 'File salvato nella galleria: $fileName';
  }

  @override
  String fileSavedToDocuments(String fileName) {
    return 'File salvato nei documenti: $fileName';
  }

  @override
  String get fileIsAlreadySaved => 'Il file è già salvato';

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
  String get addressLineCannotBeEmpty =>
      'La riga dell\'indirizzo non può essere vuota';

  @override
  String get addressLineIsTooLong => 'La riga dell\'indirizzo è troppo lunga';

  @override
  String get specialCharactersAreNotAllowed =>
      'I caratteri speciali non sono consentiti';

  @override
  String get emojisAreNotAllowed => 'Le emoji non sono consentite';

  @override
  String get cityCannotBeEmpty => 'La città non può essere vuota';

  @override
  String get cityNameIsTooLong => 'Il nome della città è troppo lungo';

  @override
  String get cityContainsInvalidSpecialCharacters =>
      'La città contiene caratteri speciali non validi';

  @override
  String get addressLabelCannotBeEmpty =>
      'L\'etichetta dell\'indirizzo non può essere vuota';

  @override
  String get addressLabelIsTooLong =>
      'L\'etichetta dell\'indirizzo è troppo lunga';

  @override
  String get emailCannotBeEmpty => 'L\'email non può essere vuota';

  @override
  String get invalidEmailFormat => 'Formato email non valido';

  @override
  String get emailContainsInvalidCharacters =>
      'L\'email contiene caratteri non validi';

  @override
  String get emailMustContain => 'L\'email deve contenere @';

  @override
  String get emailMustBeInLowercase => 'L\'email deve essere in minuscolo';

  @override
  String get arabicCharactersAreNotAllowed =>
      'I caratteri arabi non sono consentiti';

  @override
  String get emojisAreNotAllowedInEmail =>
      'Le emoji non sono consentite nell\'email';

  @override
  String get phoneNumberCannotBeEmpty =>
      'Il numero di telefono non può essere vuoto';

  @override
  String get invalidPhoneNumber => 'Numero di telefono non valido';

  @override
  String get phoneNumberMustBeAtLeast11Digits =>
      'Il numero di telefono deve contenere almeno 11 cifre';

  @override
  String get nameCannotBeEmpty => 'Il nome non può essere vuoto';

  @override
  String get invalidName => 'Nome non valido';

  @override
  String get nameMustBeAtLeast3Characters =>
      'Il nome deve contenere almeno 3 caratteri';

  @override
  String get nameCannotExceed20Characters =>
      'Il nome non può superare i 20 caratteri';

  @override
  String get nameContainsInvalidSpecialCharacters =>
      'Il nome contiene caratteri speciali non validi';

  @override
  String get emojisAreNotAllowedInName =>
      'Le emoji non sono consentite nel nome';

  @override
  String get passwordCannotBeEmpty => 'La password non può essere vuota';

  @override
  String get passwordMustContainUppercaseLowercaseNumberAndSpecialCharacter =>
      'La password deve contenere maiuscole, minuscole, numeri e caratteri speciali';

  @override
  String get passwordMustBeAtLeast8CharactersLong =>
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
  String get appearanceLanguage => 'Aspetto e lingua';

  @override
  String get compression => 'Compressione';

  @override
  String get onDeviceAI => 'AI sul dispositivo';

  @override
  String get notificationsPrivacy => 'Notifiche e privacy';

  @override
  String get plansPurchases => 'Piani e acquisti';

  @override
  String get about => 'Informazioni';

  @override
  String get legal => 'Legale';

  @override
  String get helpFeedback => 'Aiuto e feedback';

  @override
  String get account => 'Account';

  @override
  String get themeAndAppLanguage => 'Tema e lingua dell\'app';

  @override
  String get appLanguageAndDirection => 'Lingua e direzione dell\'app';

  @override
  String get defaultQualityAndFormat => 'Qualità e formato predefiniti';

  @override
  String get cacheAndStorageUsage => 'Uso della cache e dello storage';

  @override
  String get aiSettings => 'Impostazioni AI';

  @override
  String get zumiAssistant => 'Assistente Zumi';

  @override
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere =>
      'Un assistente privato per i tuoi video arriverà presto. Potrai chiedere informazioni su compressione, organizzazione e video salvati qui.';

  @override
  String get localModelsAndSmartTools =>
      'Modelli locali e strumenti intelligenti';

  @override
  String get exploreLocalModelsAndFutureAIToolsTheseOptionsAreNotActiveYet =>
      'Esplora modelli locali e strumenti AI futuri. Queste opzioni non sono ancora attive.';

  @override
  String get localModels => 'Modelli locali';

  @override
  String get browseAndDownloadSupportedModels =>
      'Sfoglia e scarica modelli supportati';

  @override
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere =>
      'Scegli un modello supportato, scaricalo su questo dispositivo e gestisci i modelli installati qui.';

  @override
  String get importAModel => 'Importa un modello';

  @override
  String get useACompatibleModelFromYourFiles =>
      'Usa un modello compatibile dai tuoi file';

  @override
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt =>
      'Seleziona un file modello locale compatibile e verifica i suoi requisiti prima di utilizzarlo.';

  @override
  String get smartFeatures => 'Funzionalità intelligenti';

  @override
  String get compressionOrganizationAndSearch =>
      'Compressione, organizzazione e ricerca';

  @override
  String
  get chooseWhichLocalAISuggestionsToUseForVideoCompressionOrganizationNamingAndSearch =>
      'Scegli quali suggerimenti AI locali utilizzare per la compressione dei video, l\'organizzazione, la denominazione e la ricerca.';

  @override
  String get modelPerformance => 'Prestazioni del modello';

  @override
  String get processingAndResourcePreferences =>
      'Preferenze di elaborazione e risorse';

  @override
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels =>
      'Controlla il backend di elaborazione e i limiti di risorse per i modelli supportati.';

  @override
  String get conversationSettings => 'Impostazioni della conversazione';

  @override
  String get streamingThinkingAndResponseLength =>
      'Streaming, elaborazione e lunghezza della risposta';

  @override
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits =>
      'Configura come risponde l\'assistente, inclusi streaming, modalità di pensiero, campionamento e limiti di risposta.';

  @override
  String get imagesAndAudio => 'Immagini e audio';

  @override
  String get controlMultimodalInputs => 'Controlla gli input multimodali';

  @override
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos =>
      'Scegli se i modelli compatibili possono analizzare immagini e audio selezionati dai tuoi video.';

  @override
  String get semanticSearch => 'Ricerca semantica';

  @override
  String get embeddingsAndLocalIndexing =>
      'Incorporamenti e indicizzazione locale';

  @override
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning =>
      'Gestisci il modello di incorporamento locale e l\'indice di ricerca per trovare video e momenti per significato.';

  @override
  String get toolsAndStructuredOutput => 'Strumenti e output strutturato';

  @override
  String get actionsSchemasAndConfirmations => 'Azioni, schemi e conferme';

  @override
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation =>
      'Gestisci le azioni assistente supportate e le risposte strutturate. Le azioni che influenzano i file richiederanno la tua conferma.';

  @override
  String get models => 'Modelli';

  @override
  String get assistantExperience => 'Esperienza dell\'assistente';

  @override
  String get smartCapabilities => 'Capacità intelligenti';

  @override
  String get performance => 'Prestazioni';

  @override
  String get yourCompressedVideoHistory => 'La tua cronologia video compressa';

  @override
  String get completionAndUpdateAlerts =>
      'Avvisi di completamento e aggiornamento';

  @override
  String get yourDataStaysLocal => 'I tuoi dati rimangono locali';

  @override
  String get comparePlansAndUpgrade => 'Confronta piani e aggiorna';

  @override
  String get paymentMethodsAndBilling => 'Metodi di pagamento e fatturazione';

  @override
  String get restoreYourPreviousPurchase =>
      'Ripristina il tuo acquisto precedente';

  @override
  String get versionAndBuildDetails => 'Dettagli su versione e build';

  @override
  String get theDeveloperBehindZumi => 'Lo sviluppatore dietro Zumi';

  @override
  String get openSourcePackageLicenses => 'Licenze dei pacchetti open source';

  @override
  String get howDataIsHandled => 'Come vengono gestiti i dati';

  @override
  String get rulesForUsingZumi => 'Regole per l\'uso di Zumi';

  @override
  String get whatDataWeCollect => 'Quali dati raccogliamo';

  @override
  String get whyWeNeedPermissions => 'Perché abbiamo bisogno dei permessi';

  @override
  String get answersToCommonQuestions => 'Risposte alle domande comuni';

  @override
  String get reachTheDeveloperDirectly =>
      'Contatta direttamente lo sviluppatore';

  @override
  String get sendUsYourFeedback => 'Inviaci il tuo feedback';

  @override
  String get pickVideo => 'Scegli video';

  @override
  String get targetSizeMB => 'Dimensione target (MB)';

  @override
  String get startCompression => 'Avvia compressione';

  @override
  String get pause => 'Pausa';

  @override
  String get resume => 'Riprendi';

  @override
  String get viewResult => 'Visualizza risultato';

  @override
  String get saveToGallery => 'Salva nella galleria';

  @override
  String get shareVideo => 'Condividi video';

  @override
  String get originalSize => 'Dimensione originale';

  @override
  String get outputSize => 'Dimensione output';

  @override
  String get noCompressedVideosYet => 'Nessun video compresso ancora';

  @override
  String get savedToGallery => 'Salvato nella galleria';

  @override
  String get enterATargetSizeGreaterThanZero =>
      'Inserisci una dimensione target maggiore di zero';

  @override
  String get compressionCancelled => 'Compressione annullata';

  @override
  String get thisVideoCouldNotReachTheSelectedSizeTryALargerTargetSize =>
      'Questo video non ha raggiunto la dimensione selezionata. Prova una dimensione target maggiore.';

  @override
  String get theSelectedSizeIsTooSmallForThisVideoChooseALargerSize =>
      'La dimensione selezionata è troppo piccola per questo video. Scegli una dimensione maggiore.';

  @override
  String get originalPreview => 'Anteprima originale';

  @override
  String get compressedPreview => 'Anteprima compressa';

  @override
  String get targetPreset => 'Preset di destinazione';

  @override
  String get customSize => 'Dimensione personalizzata';

  @override
  String get previewUnavailable => 'Anteprima non disponibile';

  @override
  String get advancedControls => 'Controlli avanzati';

  @override
  String get automatic => 'Automatico';

  @override
  String get maximumResolution => 'Risoluzione massima';

  @override
  String get originalResolution => 'Risoluzione originale';

  @override
  String get maximumFrameRate => 'Frequenza fotogrammi massima';

  @override
  String get audioBitrate => 'Bitrate audio';

  @override
  String get removeAudio => 'Rimuovi audio';

  @override
  String get videoBitrateCeilingKbps => 'Tetto del bitrate video (kbps)';

  @override
  String get hdrHandling => 'Gestione HDR';

  @override
  String get convertToSDR => 'Converti in SDR';

  @override
  String get keepHDRWhenSupported => 'Mantieni HDR se supportato';

  @override
  String get beforeYouStart => 'Prima di iniziare';

  @override
  String get calculatingCompressionPlan => 'Calcolo del piano di compressione…';

  @override
  String get plannedResolution => 'Risoluzione pianificata';

  @override
  String get plannedVideoBitrate => 'Bitrate video pianificato';

  @override
  String get plannedAudioBitrate => 'Bitrate audio pianificato';

  @override
  String
  get reEncodingConvertsAudioToAACStereoDolbyAtmosAndDTSSpatialAudioWillNotBePreserved =>
      'La ricodifica converte l\'audio in AAC stereo. Dolby Atmos e l\'audio spaziale DTS non saranno preservati.';

  @override
  String
  get thisTargetIsTooSmallForAUsableVideoIncreaseTheSizeOrLowerOtherLimits =>
      'Questo obiettivo è troppo piccolo per un video utilizzabile. Aumenta la dimensione o riduci altri limiti.';

  @override
  String get theSelectedTargetMayReduceVideoQuality =>
      'L\'obiettivo selezionato potrebbe ridurre la qualità del video.';

  @override
  String get theSourceIsAlreadyWithinTheSizeLimit =>
      'La sorgente è già entro il limite di dimensione.';

  @override
  String get enterABitrateOfAtLeast150KbpsOrLeaveBlankForAutomatic =>
      'Inserisci un bitrate di almeno 150 kbps, oppure lascia vuoto per automatico';

  @override
  String get enterAnEvenResolutionFrom240To16384OrLeaveBlankForAutomatic =>
      'Inserisci una risoluzione pari da 240 a 16384, oppure lascia vuoto per automatico';

  @override
  String get videoPosition => 'Posizione del video';

  @override
  String
  get aPreviousCompressionWasInterruptedItsTemporaryFilesWereCleanedUpYouCanSelectTheVideoAndTryAgain =>
      'Una compressione precedente è stata interrotta. I suoi file temporanei sono stati puliti; puoi selezionare il video e riprovare.';

  @override
  String get dismiss => 'Chiudi';

  @override
  String get clearHistory => 'Cancella cronologia';

  @override
  String get removeAllHistoryEntriesSavedVideosWillRemainOnYourDevice =>
      'Rimuovere tutte le voci della cronologia? I video salvati rimarranno sul dispositivo.';

  @override
  String get attempts => 'Tentativi';

  @override
  String get targetSize => 'Dimensione target';

  @override
  String get outputResolution => 'Risoluzione di output';

  @override
  String get thisVideoCouldNotBeReadChooseAnotherFile =>
      'Impossibile leggere questo video. Scegli un altro file.';

  @override
  String get theEncodedVideoFailedVerificationYourOriginalVideoWasNotChanged =>
      'Il video codificato non ha superato la verifica. Il video originale non è stato modificato.';

  @override
  String
  get thisDeviceCannotEncodeTheSelectedResolutionOrFrameRateLowerThatSettingAndTryAgain =>
      'Questo dispositivo non può codificare la risoluzione o il frame rate selezionati. Abbassa questa impostazione e riprova.';

  @override
  String
  get thisDeviceCannotDecodeThisAudioFormatForCompressionRemoveAudioOrUseASupportedSource =>
      'Questo dispositivo non può decodificare questo formato audio per la compressione. Rimuovi l\'audio o usa una sorgente supportata.';

  @override
  String
  get thisDeviceCannotDecodeThisVideoFormatOrProfileForCompressionChooseAnotherSourceOrDevice =>
      'Questo dispositivo non può decodificare questo formato video o profilo di compressione. Scegli un\'altra sorgente o dispositivo.';

  @override
  String get theExportedMP4IsNotReadyForStreamingTryAnotherVideoOrDevice =>
      'L\'MP4 esportato non è pronto per lo streaming. Prova un altro video o dispositivo.';

  @override
  String get thereIsNotEnoughFreeStorageToCompressThisVideo =>
      'Non c\'è abbastanza spazio libero per comprimere questo video.';

  @override
  String get thisDeviceCannotProcessTheSelectedHDRModeTryConvertingToSDR =>
      'Questo dispositivo non può elaborare la modalità HDR selezionata. Prova a convertire in SDR.';

  @override
  String get compressionCouldNotBeCompletedTryAnotherSettingOrVideo =>
      'La compressione non può essere completata. Prova un\'altra impostazione o video.';

  @override
  String get appIdentity => 'Identità dell\'app';

  @override
  String get appName => 'Nome dell\'app';

  @override
  String get packageName => 'Nome del pacchetto';

  @override
  String get version => 'Versione';

  @override
  String get buildNumber => 'Numero di build';

  @override
  String get deviceAndBuild => 'Dispositivo e build';

  @override
  String get operatingSystem => 'Sistema operativo';

  @override
  String get osVersion => 'Versione OS';

  @override
  String get buildMode => 'Modalità build';

  @override
  String get debug => 'Debug';

  @override
  String get release => 'Rilascia';

  @override
  String get builtWith => 'Costruito con';

  @override
  String get installation => 'Installazione';

  @override
  String get installedFrom => 'Installato da';

  @override
  String get installedOn => 'Installato su';

  @override
  String get updatedOn => 'Aggiornato il';

  @override
  String get unavailable => 'Non disponibile';

  @override
  String get projectAndSupport => 'Progetto e supporto';

  @override
  String get githubRepository => 'Repository GitHub';

  @override
  String get viewZumiSourceCode => 'Visualizza il codice sorgente di Zumi';

  @override
  String get readTheREADME => 'Leggi il README';

  @override
  String get learnAboutZumiOnGitHub => 'Scopri Zumi su GitHub';

  @override
  String get reportAnIssue => 'Segnala un problema';

  @override
  String get viewAndCreateGitHubIssues => 'Visualizza e crea issue su GitHub';

  @override
  String get latestRelease => 'Ultima versione';

  @override
  String get viewReleasesAndDownloads => 'Visualizza release e download';

  @override
  String get supportZumi => 'Supporta Zumi';

  @override
  String get openTheOfficialDonationPage =>
      'Apri la pagina ufficiale delle donazioni';

  @override
  String get couldNotOpenTheLinkPleaseTryAgain =>
      'Impossibile aprire il link. Riprova.';

  @override
  String get developer => 'Sviluppatore';

  @override
  String get mostafaSensei => 'Mostafa Sensei';

  @override
  String get githubProfile => 'Profilo GitHub';

  @override
  String get seeProjectsAndContactDetails =>
      'Vedi progetti e dettagli di contatto';

  @override
  String get maintenanceInProgress => 'Manutenzione in corso';

  @override
  String get zumiIsTemporarilyUnavailablePleaseTryAgainLater =>
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
