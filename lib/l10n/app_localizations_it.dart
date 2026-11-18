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
  String get confirm => 'Conferma';

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
  String get pleaseWait => 'Attendere prego...';

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
  String get cancel => 'Annulla';

  @override
  String get clean => 'Clean';

  @override
  String get openSourceLicenses => 'Licenze open-source';

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
  String get zumiIsStudyingThePlatformAlgorithmAndCalculatingTheBudget =>
      '🐾 Zumi is studying the platform\'s algorithm and calculating the budget...';

  @override
  String get customControlMode => 'Custom control mode';

  @override
  String
  get youSetTheTargetSizeManuallyTheEngineWillApplyTheHighestPossibleQualityWithinThatCap =>
      'You set the target size manually. The engine will apply the highest possible resolution and quality within that cap.';

  @override
  String zumiIsPuzzledAnImpossibleTargetForTheNameCap(String name) {
    return 'Zumi is puzzled (impossible target for the $name cap)';
  }

  @override
  String
  theVideoIsTooLongToFitWithinTheSizeCapWithoutSevereDistortionWeSuggestTrimmingTheVideoOrChoosingAnotherPlatformWithAHigherCap(
    String size,
  ) {
    return 'The video is too long to fit within the $size cap without severe image distortion. We suggest trimming the video or choosing another platform with a higher cap.';
  }

  @override
  String get zumiAlertProtectingQualityFromDistortion =>
      'Zumi alert: protecting quality from distortion';

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
      '1. Acceptance of Terms\nBy downloading, accessing, or using Zumi (\"the Application\"), you agree to be bound by these Terms of Service. If you disagree with any part of these terms, you must discontinue using the application.\n\n2. Personal License\nWe grant you a personal, revocable, non-exclusive, non-transferable license to use Zumi strictly for your personal, non-commercial, or internal creative media compression workflows on compatible devices.\n\n3. On-Device Execution & Content Ownership\nZumi executes compression pipelines exclusively on your device hardware using local encoders. You retain 100% of all intellectual property rights and copyrights in and to your video files and media. Zumi never uploads, hosts, replicates, or claims ownership over any videos you select or process. You are solely responsible for ensuring you have all requisite permissions and licenses for any media you compress.\n\n4. In-App Subscriptions & Billing\nOptional premium features (such as Zumi Pro) may be offered as recurring subscriptions or one-time unlock purchases. All billing, renewals, cancellations, and tax collections are processed exclusively through the official platform store (Google Play or Apple App Store). Subscriptions renew automatically unless cancelled at least 24 hours prior to the conclusion of the active billing cycle.\n\n5. Disclaimer of Warranties\nThe Application is provided \"as is\" and \"as available,\" without warranty of any kind, express or implied. While we employ rigorous testing and standard-compliant codecs, we do not guarantee that media compression will achieve specific file reduction percentages without visual changes for every source codec.\n';

  @override
  String get termsCopiedToClipboard => 'Terms copied to clipboard';

  @override
  String get termsAcceptanceLicenseTitle => '1. Acceptance & License';

  @override
  String get termsAcceptanceLicenseBody =>
      'By using Zumi, you agree to these Terms. We grant you a personal, non-exclusive, non-transferable license to compress media locally on your devices.';

  @override
  String get termsContentOwnershipTitle => '2. 100% Content Ownership';

  @override
  String get termsContentOwnershipBody =>
      'You retain all copyrights and ownership over your videos. Zumi does not transmit, store, or claim any rights to your media files.';

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
  get allPaymentDetailsAreHandledDirectlyByGooglePlayStoreOrAppleAppStoreZumiNeverAccessesCardDetails =>
      'All payment details are handled directly by Google Play Store or Apple App Store. Zumi never accesses card details.';

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
      'Zumi was built with a fundamental architectural guarantee: your videos, clips, and audio tracks are encoded exclusively on your device hardware using local native codecs. At no point is your media streamed, stored, or processed on external cloud infrastructure.';

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
      'Subscription and in-app purchase operations are executed directly through the official Apple App Store or Google Play Store. Zumi does not process or retain your credit card or financial billing information.';

  @override
  String get dataDeletionAndStorageHygieneTitle =>
      '5. Data Deletion & Storage Hygiene';

  @override
  String get dataDeletionAndStorageHygieneBody =>
      'All compression history records and temporary preview files reside strictly in sandboxed application directories. You can wipe all history and cached frames at any time directly through Storage Settings.';

  @override
  String get copyTerms => 'Copy Terms';
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
  String get confirm => 'Conferma';

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
  String get pleaseWait => 'Attendere prego...';

  @override
  String get cancel => 'Annulla';

  @override
  String get openSourceLicenses => 'Licenze open-source';

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
