// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get zumi => 'Zumi';

  @override
  String get downloadFile => 'Bestand downloaden';

  @override
  String fileOpenedInBrowser(String fileName) {
    return 'Bestand geopend in browser: $fileName';
  }

  @override
  String fileSavedToGallery(String fileName) {
    return 'Bestand opgeslagen in galerie: $fileName';
  }

  @override
  String fileSavedToDocuments(String fileName) {
    return 'Bestand opgeslagen in documenten: $fileName';
  }

  @override
  String get fileIsAlreadySaved => 'Bestand is al opgeslagen';

  @override
  String get error => 'Fout';

  @override
  String get info => 'Info';

  @override
  String get success => 'Succes';

  @override
  String get warning => 'Waarschuwing';

  @override
  String get paid => 'Betaald';

  @override
  String get unpaid => 'Niet betaald';

  @override
  String get partial => 'Gedeeltelijk';

  @override
  String get addressLineCannotBeEmpty => 'Adresregel mag niet leeg zijn';

  @override
  String get addressLineIsTooLong => 'Adresregel is te lang';

  @override
  String get specialCharactersAreNotAllowed =>
      'Speciale tekens zijn niet toegestaan';

  @override
  String get emojisAreNotAllowed => 'Emoji\'s zijn niet toegestaan';

  @override
  String get cityCannotBeEmpty => 'Stad mag niet leeg zijn';

  @override
  String get cityNameIsTooLong => 'Stadsnaam is te lang';

  @override
  String get cityContainsInvalidSpecialCharacters =>
      'Stad bevat ongeldige speciale tekens';

  @override
  String get addressLabelCannotBeEmpty => 'Adreslabel mag niet leeg zijn';

  @override
  String get addressLabelIsTooLong => 'Adreslabel is te lang';

  @override
  String get emailCannotBeEmpty => 'E-mail mag niet leeg zijn';

  @override
  String get invalidEmailFormat => 'Ongeldig e-mailformaat';

  @override
  String get emailContainsInvalidCharacters => 'E-mail bevat ongeldige tekens';

  @override
  String get emailMustContain => 'E-mail moet @ bevatten';

  @override
  String get emailMustBeInLowercase => 'E-mail moet in kleine letters zijn';

  @override
  String get arabicCharactersAreNotAllowed =>
      'Arabische tekens zijn niet toegestaan';

  @override
  String get emojisAreNotAllowedInEmail =>
      'Emoji\'s zijn niet toegestaan in e-mail';

  @override
  String get phoneNumberCannotBeEmpty => 'Telefoonnummer mag niet leeg zijn';

  @override
  String get invalidPhoneNumber => 'Ongeldig telefoonnummer';

  @override
  String get phoneNumberMustBeAtLeast11Digits =>
      'Telefoonnummer moet minimaal 11 cijfers bevatten';

  @override
  String get nameCannotBeEmpty => 'Naam mag niet leeg zijn';

  @override
  String get invalidName => 'Ongeldige naam';

  @override
  String get nameMustBeAtLeast3Characters =>
      'Naam moet minimaal 3 tekens bevatten';

  @override
  String get nameCannotExceed20Characters =>
      'Naam mag niet meer dan 20 tekens bevatten';

  @override
  String get nameContainsInvalidSpecialCharacters =>
      'Naam bevat ongeldige speciale tekens';

  @override
  String get emojisAreNotAllowedInName =>
      'Emoji\'s zijn niet toegestaan in naam';

  @override
  String get passwordCannotBeEmpty => 'Wachtwoord mag niet leeg zijn';

  @override
  String get passwordMustContainUppercaseLowercaseNumberAndSpecialCharacter =>
      'Wachtwoord moet hoofdletters, kleine letters, cijfers en een speciaal teken bevatten';

  @override
  String get passwordMustBeAtLeast8CharactersLong =>
      'Wachtwoord moet minimaal 8 tekens lang zijn';

  @override
  String get noInternetConnection => 'Geen internetverbinding';

  @override
  String get internetConnectionRestored => 'Internetverbinding hersteld';

  @override
  String get retry => 'Opnieuw proberen';

  @override
  String get cancel => 'Annuleren';

  @override
  String get confirm => 'Bevestigen';

  @override
  String get pleaseWait => 'Even geduld...';

  @override
  String get ok => 'OK';

  @override
  String get compressVideosPrivatelyOnYourDevice =>
      'Comprimeer video\'s privé, op uw apparaat.';

  @override
  String get welcomeToZumi => 'Welkom bij Zumi';

  @override
  String get learnHowZumiCompressesYourVideosWithoutEverLeavingYourPhone =>
      'Leer hoe Zumi uw video\'s comprimeert zonder uw telefoon ooit te verlaten.';

  @override
  String get signIn => 'Inloggen';

  @override
  String get signInToSyncYourPlanAndKeepYourPurchasesAvailableOnEveryDevice =>
      'Log in om uw plan te synchroniseren en uw aankopen op elk apparaat beschikbaar te houden.';

  @override
  String get chooseAVideo => 'Kies een video';

  @override
  String get pickAVideoFromYourGalleryToStartCompressing =>
      'Selecteer een video uit uw galerij om te beginnen met comprimeren.';

  @override
  String get compressionSetup => 'Compressie-instelling';

  @override
  String get chooseResolutionBitrateAndOutputFormatBeforeYouStart =>
      'Kies resolutie, bitrate en uitvoerformaat voordat u begint.';

  @override
  String get compressing => 'Comprimeren';

  @override
  String get followTheLiveProgressOfYourCompressionJob =>
      'Volg de voortgang van uw compressietaak in realtime.';

  @override
  String get compressionResult => 'Compressieresultaat';

  @override
  String get compareTheBeforeAndAfterSizeThenSaveOrShareTheResult =>
      'Vergelijk de grootte voor en na compressie en sla het resultaat op of deel het.';

  @override
  String get compressionHistory => 'Compressiegeschiedenis';

  @override
  String get reviewTheVideosYouHaveCompressedOnThisDevice =>
      'Bekijk de video\'s die u op dit apparaat hebt gecomprimeerd.';

  @override
  String get settings => 'Instellingen';

  @override
  String get appearance => 'Uiterlijk';

  @override
  String get themeColorSchemeAndMotionPreferences =>
      'Thema, kleurenschema en bewegingsvoorkeuren.';

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
  String get language => 'Taal';

  @override
  String get appLanguageAndTextDirection => 'App-taal en tekstrichting.';

  @override
  String get compressionDefaults => 'Standaardinstellingen voor compressie';

  @override
  String get defaultResolutionBitrateAndOutputFormat =>
      'Standaard resolutie, bitrate en uitvoerformaat.';

  @override
  String get storageCleanup => 'Opslag & opruimen';

  @override
  String get storageUsageCacheSizeAndTemporaryFileCleanup =>
      'Opslaggebruik, cachegrootte en schoonmaak van tijdelijke bestanden.';

  @override
  String get notifications => 'Meldingen';

  @override
  String get jobCompletionAndProductUpdateNotifications =>
      'Meldingen bij voltooide taken en productupdates.';

  @override
  String get privacy => 'Privacy';

  @override
  String get onDeviceProcessingLocalLogsAndOptionalCrashReports =>
      'Verwerking op het apparaat, lokale logs en optionele crashrapporten.';

  @override
  String get aboutZumi => 'Over Zumi';

  @override
  String get versionBuildNumberAndApplicationDetails =>
      'Versie, buildnummer en applicatiedetails.';

  @override
  String get aboutTheDeveloper => 'Over de ontwikkelaar';

  @override
  String get theDeveloperAndToolsBehindZumi =>
      'De ontwikkelaar en tools achter Zumi.';

  @override
  String get openSourceLicenses => 'Open-source licenties';

  @override
  String get openSourcePackagesBundledWithZumi =>
      'Open-source pakketten die met Zumi worden meegeleverd.';

  @override
  String get privacyPolicy => 'Privacybeleid';

  @override
  String get howZumiHandlesYourVideosAndData =>
      'Hoe Zumi met uw video\'s en gegevens omgaat.';

  @override
  String get termsOfService => 'Gebruiksvoorwaarden';

  @override
  String get theTermsThatApplyToZumiAndItsPurchases =>
      'De voorwaarden die van toepassing zijn op Zumi en de aankopen ervan.';

  @override
  String get dataSafety => 'Gegevensbeveiliging';

  @override
  String get summaryOfTheDataZumiCollectsAndWhy =>
      'Samenvatting van de gegevens die Zumi verzamelt en waarom. ';

  @override
  String get permissions => 'Toestemmingen';

  @override
  String get runtimePermissionsZumiRequestsAndWhyEachIsNeeded =>
      'Runtime-permissies die Zumi aanvraagt en waarom elk nodig is. ';

  @override
  String get faq => 'FAQ';

  @override
  String get answersToCommonQuestionsAboutCompressionAndBilling =>
      'Antwoorden op veelgestelde vragen over compressie en facturering. ';

  @override
  String get support => 'Ondersteuning';

  @override
  String get getHelpWithYourAccountOrAPurchase =>
      'Krijg hulp bij je account of een aankoop. ';

  @override
  String get sendFeedback => 'Stuur feedback';

  @override
  String get reportAProblemOrSuggestAnImprovement =>
      'Meld een probleem of stel een verbetering voor. ';

  @override
  String get plans => 'Plannen';

  @override
  String get comparePlansAndSeeWhatEachOneUnlocks =>
      'Vergelijk abonnementen en kijk wat elk plan ontgrendelt. ';

  @override
  String get planDetails => 'Beschrijvingen van het plan';

  @override
  String get benefitsLimitsAndPricingForThisPlan =>
      'Voordelen, limieten en prijzen voor dit abonnement. ';

  @override
  String get paymentMethods => 'Betaalmethoden';

  @override
  String get supportedWaysToPayIncludingStoreBilling =>
      'Ondersteunde betaalmethoden, waaronder winkelfacturering. ';

  @override
  String get restorePurchases => 'Herstel aankopen';

  @override
  String get reApplyAPurchaseMadeOnAnotherDevice =>
      'Hergebruik een aankoop die op een ander apparaat is gedaan.';

  @override
  String get profile => 'Profiel';

  @override
  String get yourIdentityPlanStatusAndAccountPreferences =>
      'Uw identiteit, planstatus en accountvoorkeuren.';

  @override
  String get deleteAccount => 'Account verwijderen';

  @override
  String get permanentlyRemoveYourAccountAndItsServerSideData =>
      'Verwijder uw account en de bijbehorende servergegevens permanent.';

  @override
  String get rateZumi => 'Beoordeel Zumi';

  @override
  String get tellOthersHowZumiWorkedForYouOnTheStore =>
      'Vertel anderen hoe Zumi voor u werkte in de winkel.';

  @override
  String get shareZumi => 'Deel Zumi';

  @override
  String get recommendZumiToAFriend => 'Beveel Zumi aan een vriend aan.';

  @override
  String get appearanceLanguage => 'Uiterlijk & taal';

  @override
  String get compression => 'Compressie';

  @override
  String get onDeviceAI => 'AI op het apparaat';

  @override
  String get notificationsPrivacy => 'Meldingen & privacy';

  @override
  String get plansPurchases => 'Plannen & aankopen';

  @override
  String get about => 'Over';

  @override
  String get legal => 'Juridisch';

  @override
  String get helpFeedback => 'Help & feedback';

  @override
  String get account => 'Account';

  @override
  String get themeAndAppLanguage => 'Thema en app-taal';

  @override
  String get appLanguageAndDirection => 'App-taal en -richting';

  @override
  String get defaultQualityAndFormat => 'Standaardkwaliteit en -formaat';

  @override
  String get cacheAndStorageUsage => 'Cache- en opslaggebruik';

  @override
  String get aiSettings => 'AI-instellingen';

  @override
  String get zumiAssistant => 'Zumi Assistent';

  @override
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere =>
      'Een privé-assistent voor je video\'s komt binnenkort. Je kunt hier vragen stellen over compressie, organisatie en opgeslagen video\'s.';

  @override
  String get localModelsAndSmartTools => 'Lokale modellen en slimme tools';

  @override
  String get exploreLocalModelsAndFutureAIToolsTheseOptionsAreNotActiveYet =>
      'Verken lokale modellen en toekomstige AI-tools. Deze opties zijn nog niet actief.';

  @override
  String get localModels => 'Lokale modellen';

  @override
  String get browseAndDownloadSupportedModels =>
      'Blader door en download ondersteunde modellen';

  @override
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere =>
      'Kies een ondersteund model, download het naar dit apparaat en beheer hier geïnstalleerde modellen.';

  @override
  String get importAModel => 'Een model importeren';

  @override
  String get useACompatibleModelFromYourFiles =>
      'Gebruik een compatibel model uit je bestanden';

  @override
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt =>
      'Selecteer een compatibel lokaal modelfile en bekijk de vereisten voordat u het gebruikt.';

  @override
  String get smartFeatures => 'Slimme functies';

  @override
  String get compressionOrganizationAndSearch =>
      'Compressie, organisatie en zoeken';

  @override
  String
  get chooseWhichLocalAISuggestionsToUseForVideoCompressionOrganizationNamingAndSearch =>
      'Kies welke lokale AI-suggesties u wilt gebruiken voor videocompressie, organisatie, naamgeving en zoeken.';

  @override
  String get modelPerformance => 'Modelprestaties';

  @override
  String get processingAndResourcePreferences =>
      'Verwerkings- en resourcevoorkeuren';

  @override
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels =>
      'Controleer de verwerkingsbackend en resourcelimieten voor ondersteunde modellen.';

  @override
  String get conversationSettings => 'Gespreksinstellingen';

  @override
  String get streamingThinkingAndResponseLength =>
      'Streaming, denken en responslengte';

  @override
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits =>
      'Configureer hoe de assistent reageert, inclusief streaming, denkmethode, sampling en responslimieten.';

  @override
  String get imagesAndAudio => 'Afbeeldingen en audio';

  @override
  String get controlMultimodalInputs => 'Beheer multimodale invoer';

  @override
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos =>
      'Kies of compatibele modellen geselecteerde afbeeldingen en audio van je video\'s kunnen analyseren.';

  @override
  String get semanticSearch => 'Semantisch zoeken';

  @override
  String get embeddingsAndLocalIndexing => 'Embeddings en lokale indexering';

  @override
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning =>
      'Beheer het lokale embedding-model en de zoekindex om video\'s en momenten te vinden op basis van betekenis.';

  @override
  String get toolsAndStructuredOutput => 'Tools en gestructureerde output';

  @override
  String get actionsSchemasAndConfirmations =>
      'Acties, schema\'s en bevestigingen';

  @override
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation =>
      'Beheer ondersteunde assistentacties en gestructureerde antwoorden. Acties die bestanden beïnvloeden, vereisen uw bevestiging.';

  @override
  String get models => 'Modellen';

  @override
  String get assistantExperience => 'Assistentervaring';

  @override
  String get smartCapabilities => 'Slimme mogelijkheden';

  @override
  String get performance => 'Prestaties';

  @override
  String get yourCompressedVideoHistory => 'Uw gecomprimeerde videohistorie';

  @override
  String get completionAndUpdateAlerts => 'Voltooiings- en updatemeldingen';

  @override
  String get yourDataStaysLocal => 'Uw gegevens blijven lokaal';

  @override
  String get comparePlansAndUpgrade => 'Vergelijk plannen en upgrade';

  @override
  String get paymentMethodsAndBilling => 'Betaalmethoden en facturering';

  @override
  String get restoreYourPreviousPurchase => 'Herstel uw vorige aankoop';

  @override
  String get versionAndBuildDetails => 'Versie- en builddetails';

  @override
  String get theDeveloperBehindZumi => 'De ontwikkelaar achter Zumi';

  @override
  String get openSourcePackageLicenses => 'Open source pakketlicenties';

  @override
  String get howDataIsHandled => 'Hoe gegevens worden behandeld';

  @override
  String get rulesForUsingZumi => 'Regels voor het gebruik van Zumi';

  @override
  String get whatDataWeCollect => 'Welke gegevens we verzamelen';

  @override
  String get whyWeNeedPermissions => 'Waarom we toestemming nodig hebben';

  @override
  String get answersToCommonQuestions => 'Antwoorden op veelgestelde vragen';

  @override
  String get reachTheDeveloperDirectly =>
      'Neem rechtstreeks contact op met de ontwikkelaar';

  @override
  String get sendUsYourFeedback => 'Stuur ons uw feedback';

  @override
  String get pickVideo => 'Kies video';

  @override
  String get targetSizeMB => 'Doelgrootte (MB)';

  @override
  String get startCompression => 'Start compressie';

  @override
  String get pause => 'Pauzeer';

  @override
  String get resume => 'Hervat';

  @override
  String get viewResult => 'Bekijk resultaat';

  @override
  String get saveToGallery => 'Opslaan in galerij';

  @override
  String get shareVideo => 'Deel video';

  @override
  String get originalSize => 'Oorspronkelijke grootte';

  @override
  String get outputSize => 'Uitvoer grootte';

  @override
  String get noCompressedVideosYet => 'Nog geen gecomprimeerde video\'s';

  @override
  String get savedToGallery => 'Opgeslagen in galerij';

  @override
  String get enterATargetSizeGreaterThanZero =>
      'Voer een doelgrootte groter dan nul in';

  @override
  String get compressionCancelled => 'Compressie geannuleerd';

  @override
  String get thisVideoCouldNotReachTheSelectedSizeTryALargerTargetSize =>
      'Deze video kon de geselecteerde grootte niet bereiken. Probeer een grotere doelgrootte.';

  @override
  String get theSelectedSizeIsTooSmallForThisVideoChooseALargerSize =>
      'De geselecteerde grootte is te klein voor deze video. Kies een grotere grootte.';

  @override
  String get originalPreview => 'Oorspronkelijke voorbeeld';

  @override
  String get compressedPreview => 'Samengeperste preview';

  @override
  String get targetPreset => 'Doelpreset';

  @override
  String get customSize => 'Aangepaste grootte';

  @override
  String get previewUnavailable => 'Preview niet beschikbaar';

  @override
  String get advancedControls => 'Geavanceerde bedieningselementen';

  @override
  String get automatic => 'Automatisch';

  @override
  String get maximumResolution => 'Maximale resolutie';

  @override
  String get originalResolution => 'Originele resolutie';

  @override
  String get maximumFrameRate => 'Maximale framerate';

  @override
  String get audioBitrate => 'Audiobitrate';

  @override
  String get removeAudio => 'Audio verwijderen';

  @override
  String get videoBitrateCeilingKbps => 'Maximale videobitrate (kbps)';

  @override
  String get hdrHandling => 'HDR-hantering';

  @override
  String get convertToSDR => 'Converteren naar SDR';

  @override
  String get keepHDRWhenSupported => 'HDR behouden indien ondersteund';

  @override
  String get beforeYouStart => 'Voordat je begint';

  @override
  String get calculatingCompressionPlan => 'Compressieplan wordt berekend…';

  @override
  String get plannedResolution => 'Geplande resolutie';

  @override
  String get plannedVideoBitrate => 'Geplande videobitrate';

  @override
  String get plannedAudioBitrate => 'Geplande audiobitrate';

  @override
  String
  get reEncodingConvertsAudioToAACStereoDolbyAtmosAndDTSSpatialAudioWillNotBePreserved =>
      'Herverpakking zet audio om naar AAC stereo. Dolby Atmos en DTS ruimtelijke audio worden niet behouden.';

  @override
  String
  get thisTargetIsTooSmallForAUsableVideoIncreaseTheSizeOrLowerOtherLimits =>
      'Dit doel is te klein voor een bruikbare video. Vergroot de grootte of verlaag andere limieten.';

  @override
  String get theSelectedTargetMayReduceVideoQuality =>
      'Het geselecteerde doel kan de videokwaliteit verminderen.';

  @override
  String get theSourceIsAlreadyWithinTheSizeLimit =>
      'De bron bevindt zich al binnen de grootte limiet.';

  @override
  String get enterABitrateOfAtLeast150KbpsOrLeaveBlankForAutomatic =>
      'Voer een bitrate van minimaal 150 kbps in, of laat leeg voor automatisch.';

  @override
  String get enterAnEvenResolutionFrom240To16384OrLeaveBlankForAutomatic =>
      'Voer een even resolutie in van 240 tot 16384, of laat leeg voor automatisch.';

  @override
  String get videoPosition => 'Videopositie';

  @override
  String
  get aPreviousCompressionWasInterruptedItsTemporaryFilesWereCleanedUpYouCanSelectTheVideoAndTryAgain =>
      'Een eerdere compressie werd onderbroken. De tijdelijke bestanden zijn verwijderd; u kunt de video selecteren en het opnieuw proberen.';

  @override
  String get dismiss => 'Sluiten';

  @override
  String get clearHistory => 'Geschiedenis wissen';

  @override
  String get removeAllHistoryEntriesSavedVideosWillRemainOnYourDevice =>
      'Alle geschiedenisitems verwijderen? Opgeslagen video\'s blijven op uw apparaat.';

  @override
  String get attempts => 'Pogingen';

  @override
  String get targetSize => 'Doelgrootte';

  @override
  String get outputResolution => 'Uitvoerresolutie';

  @override
  String get thisVideoCouldNotBeReadChooseAnotherFile =>
      'Deze video kon niet worden gelezen. Kies een ander bestand.';

  @override
  String get theEncodedVideoFailedVerificationYourOriginalVideoWasNotChanged =>
      'De gecodeerde video is mislukt bij verificatie. Uw originele video is niet gewijzigd.';

  @override
  String
  get thisDeviceCannotEncodeTheSelectedResolutionOrFrameRateLowerThatSettingAndTryAgain =>
      'Dit apparaat kan de geselecteerde resolutie of beeldsnelheid niet coderen. Verlaag die instelling en probeer opnieuw.';

  @override
  String
  get thisDeviceCannotDecodeThisAudioFormatForCompressionRemoveAudioOrUseASupportedSource =>
      'Dit apparaat kan dit audioformaat niet decoderen voor compressie. Verwijder audio of gebruik een ondersteunde bron.';

  @override
  String
  get thisDeviceCannotDecodeThisVideoFormatOrProfileForCompressionChooseAnotherSourceOrDevice =>
      'Dit apparaat kan dit videoformaat of profiel voor compressie niet decoderen. Kies een andere bron of apparaat.';

  @override
  String get theExportedMP4IsNotReadyForStreamingTryAnotherVideoOrDevice =>
      'De geëxporteerde MP4 is niet klaar voor streaming. Probeer een andere video of apparaat.';

  @override
  String get thereIsNotEnoughFreeStorageToCompressThisVideo =>
      'Er is niet genoeg vrije opslagruimte om deze video te comprimeren.';

  @override
  String get thisDeviceCannotProcessTheSelectedHDRModeTryConvertingToSDR =>
      'Dit apparaat kan de geselecteerde HDR-modus niet verwerken. Probeer te converteren naar SDR.';

  @override
  String get compressionCouldNotBeCompletedTryAnotherSettingOrVideo =>
      'Compressie kon niet worden voltooid. Probeer een andere instelling of video.';

  @override
  String get appIdentity => 'App-identiteit';

  @override
  String get appName => 'App-naam';

  @override
  String get packageName => 'Pakketnaam';

  @override
  String get version => 'Versie';

  @override
  String get buildNumber => 'Bouwnummer';

  @override
  String get deviceAndBuild => 'Apparaat en build';

  @override
  String get operatingSystem => 'Besturingssysteem';

  @override
  String get osVersion => 'OS-versie';

  @override
  String get buildMode => 'Build-modus';

  @override
  String get debug => 'Debug';

  @override
  String get release => 'Release';

  @override
  String get builtWith => 'Gemaakt met';

  @override
  String get installation => 'Installatie';

  @override
  String get installedFrom => 'Geïnstalleerd vanaf';

  @override
  String get installedOn => 'Geïnstalleerd op';

  @override
  String get updatedOn => 'Bijgewerkt op';

  @override
  String get unavailable => 'Niet beschikbaar';

  @override
  String get projectAndSupport => 'Project en ondersteuning';

  @override
  String get githubRepository => 'GitHub-repository';

  @override
  String get viewZumiSourceCode => 'Bekijk Zumi-broncode';

  @override
  String get readTheREADME => 'Lees de README';

  @override
  String get learnAboutZumiOnGitHub => 'Leer over Zumi op GitHub';

  @override
  String get reportAnIssue => 'Meld een probleem';

  @override
  String get viewAndCreateGitHubIssues => 'Bekijk en maak GitHub-issues';

  @override
  String get latestRelease => 'Laatste release';

  @override
  String get viewReleasesAndDownloads => 'Bekijk releases en downloads';

  @override
  String get supportZumi => 'Ondersteun Zumi';

  @override
  String get openTheOfficialDonationPage => 'Open de officiële donatiepagina';

  @override
  String get couldNotOpenTheLinkPleaseTryAgain =>
      'Kon de link niet openen. Probeer het opnieuw.';

  @override
  String get developer => 'Ontwikkelaar';

  @override
  String get mostafaSensei => 'Mostafa Sensei';

  @override
  String get githubProfile => 'GitHub-profiel';

  @override
  String get seeProjectsAndContactDetails =>
      'Bekijk projecten en contactgegevens';

  @override
  String get maintenanceInProgress => 'Onderhoud in uitvoering';

  @override
  String get zumiIsTemporarilyUnavailablePleaseTryAgainLater =>
      'Zumi is tijdelijk niet beschikbaar. Probeer het later opnieuw.';

  @override
  String get comingSoon => 'Binnenkort beschikbaar';

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
  String get languageName => 'Nederlands';

  @override
  String get countryCode => 'NL';

  @override
  String countryName(String countryCode) {
    String _temp0 = intl.Intl.selectLogic(countryCode, {
      'AE': 'Verenigde Arabische Emiraten',
      'AT': 'Oostenrijk',
      'AU': 'Australië',
      'BE': 'België',
      'BH': 'Bahrein',
      'BR': 'Brazilië',
      'CA': 'Canada',
      'CH': 'Zwitserland',
      'CN': 'China',
      'DE': 'Duitsland',
      'DJ': 'Djibouti',
      'DZ': 'Algerije',
      'EG': 'Egypte',
      'ES': 'Spanje',
      'FR': 'Frankrijk',
      'GB': 'Verenigd Koninkrijk',
      'HK': 'Hongkong SAR van China',
      'ID': 'Indonesië',
      'IQ': 'Irak',
      'IT': 'Italië',
      'JO': 'Jordanië',
      'JP': 'Japan',
      'KM': 'Comoren',
      'KR': 'Zuid-Korea',
      'KW': 'Koeweit',
      'LB': 'Libanon',
      'LY': 'Libië',
      'MA': 'Marokko',
      'MR': 'Mauritanië',
      'MX': 'Mexico',
      'NL': 'Nederland',
      'OM': 'Oman',
      'PL': 'Polen',
      'PS': 'Palestijnse gebieden',
      'PT': 'Portugal',
      'QA': 'Qatar',
      'RU': 'Rusland',
      'SA': 'Saoedi-Arabië',
      'SD': 'Soedan',
      'SE': 'Zweden',
      'SG': 'Singapore',
      'SO': 'Somalië',
      'SY': 'Syrië',
      'TH': 'Thailand',
      'TN': 'Tunesië',
      'TR': 'Turkije',
      'TW': 'Taiwan',
      'US': 'Verenigde Staten',
      'VN': 'Vietnam',
      'YE': 'Jemen',
      'other': 'Land',
    });
    return '$_temp0';
  }
}

/// The translations for Dutch Flemish, as used in Belgium (`nl_BE`).
class AppLocalizationsNlBe extends AppLocalizationsNl {
  AppLocalizationsNlBe() : super('nl_BE');

  @override
  String get zumi => 'Zumi';

  @override
  String get downloadFile => 'Bestand downloaden';

  @override
  String fileOpenedInBrowser(String fileName) {
    return 'Bestand geopend in browser: $fileName';
  }

  @override
  String fileSavedToGallery(String fileName) {
    return 'Bestand opgeslagen in galerie: $fileName';
  }

  @override
  String fileSavedToDocuments(String fileName) {
    return 'Bestand opgeslagen in documenten: $fileName';
  }

  @override
  String get fileIsAlreadySaved => 'Bestand is al opgeslagen';

  @override
  String get error => 'Fout';

  @override
  String get info => 'Info';

  @override
  String get success => 'Succes';

  @override
  String get warning => 'Waarschuwing';

  @override
  String get paid => 'Betaald';

  @override
  String get unpaid => 'Niet betaald';

  @override
  String get partial => 'Gedeeltelijk';

  @override
  String get addressLineCannotBeEmpty => 'Adresregel mag niet leeg zijn';

  @override
  String get addressLineIsTooLong => 'Adresregel is te lang';

  @override
  String get specialCharactersAreNotAllowed =>
      'Speciale tekens zijn niet toegestaan';

  @override
  String get emojisAreNotAllowed => 'Emoji\'s zijn niet toegestaan';

  @override
  String get cityCannotBeEmpty => 'Stad mag niet leeg zijn';

  @override
  String get cityNameIsTooLong => 'Stadsnaam is te lang';

  @override
  String get cityContainsInvalidSpecialCharacters =>
      'Stad bevat ongeldige speciale tekens';

  @override
  String get addressLabelCannotBeEmpty => 'Adreslabel mag niet leeg zijn';

  @override
  String get addressLabelIsTooLong => 'Adreslabel is te lang';

  @override
  String get emailCannotBeEmpty => 'E-mail mag niet leeg zijn';

  @override
  String get invalidEmailFormat => 'Ongeldig e-mailformaat';

  @override
  String get emailContainsInvalidCharacters => 'E-mail bevat ongeldige tekens';

  @override
  String get emailMustContain => 'E-mail moet @ bevatten';

  @override
  String get emailMustBeInLowercase => 'E-mail moet in kleine letters zijn';

  @override
  String get arabicCharactersAreNotAllowed =>
      'Arabische tekens zijn niet toegestaan';

  @override
  String get emojisAreNotAllowedInEmail =>
      'Emoji\'s zijn niet toegestaan in e-mail';

  @override
  String get phoneNumberCannotBeEmpty => 'Telefoonnummer mag niet leeg zijn';

  @override
  String get invalidPhoneNumber => 'Ongeldig telefoonnummer';

  @override
  String get phoneNumberMustBeAtLeast11Digits =>
      'Telefoonnummer moet minimaal 11 cijfers bevatten';

  @override
  String get nameCannotBeEmpty => 'Naam mag niet leeg zijn';

  @override
  String get invalidName => 'Ongeldige naam';

  @override
  String get nameMustBeAtLeast3Characters =>
      'Naam moet minimaal 3 tekens bevatten';

  @override
  String get nameCannotExceed20Characters =>
      'Naam mag niet meer dan 20 tekens bevatten';

  @override
  String get nameContainsInvalidSpecialCharacters =>
      'Naam bevat ongeldige speciale tekens';

  @override
  String get emojisAreNotAllowedInName =>
      'Emoji\'s zijn niet toegestaan in naam';

  @override
  String get passwordCannotBeEmpty => 'Wachtwoord mag niet leeg zijn';

  @override
  String get passwordMustContainUppercaseLowercaseNumberAndSpecialCharacter =>
      'Wachtwoord moet hoofdletters, kleine letters, cijfers en een speciaal teken bevatten';

  @override
  String get passwordMustBeAtLeast8CharactersLong =>
      'Wachtwoord moet minimaal 8 tekens lang zijn';

  @override
  String get noInternetConnection => 'Geen internetverbinding';

  @override
  String get internetConnectionRestored => 'Internetverbinding hersteld';

  @override
  String get retry => 'Opnieuw proberen';

  @override
  String get cancel => 'Annuleren';

  @override
  String get confirm => 'Bevestigen';

  @override
  String get pleaseWait => 'Even geduld...';

  @override
  String get ok => 'OK';

  @override
  String get compressVideosPrivatelyOnYourDevice =>
      'Comprimeer video\'s privé, op uw apparaat.';

  @override
  String get welcomeToZumi => 'Welkom bij Zumi';

  @override
  String get learnHowZumiCompressesYourVideosWithoutEverLeavingYourPhone =>
      'Leer hoe Zumi uw video\'s comprimeert zonder uw telefoon ooit te verlaten.';

  @override
  String get signIn => 'Inloggen';

  @override
  String get signInToSyncYourPlanAndKeepYourPurchasesAvailableOnEveryDevice =>
      'Log in om uw plan te synchroniseren en uw aankopen op elk apparaat beschikbaar te houden.';

  @override
  String get chooseAVideo => 'Kies een video';

  @override
  String get pickAVideoFromYourGalleryToStartCompressing =>
      'Selecteer een video uit uw galerij om te beginnen met comprimeren.';

  @override
  String get compressionSetup => 'Compressie-instelling';

  @override
  String get chooseResolutionBitrateAndOutputFormatBeforeYouStart =>
      'Kies resolutie, bitrate en uitvoerformaat voordat u begint.';

  @override
  String get compressing => 'Comprimeren';

  @override
  String get followTheLiveProgressOfYourCompressionJob =>
      'Volg de voortgang van uw compressietaak in realtime.';

  @override
  String get compressionResult => 'Compressieresultaat';

  @override
  String get compareTheBeforeAndAfterSizeThenSaveOrShareTheResult =>
      'Vergelijk de grootte voor en na compressie en sla het resultaat op of deel het.';

  @override
  String get compressionHistory => 'Compressiegeschiedenis';

  @override
  String get reviewTheVideosYouHaveCompressedOnThisDevice =>
      'Bekijk de video\'s die u op dit apparaat hebt gecomprimeerd.';

  @override
  String get settings => 'Instellingen';

  @override
  String get appearance => 'Uiterlijk';

  @override
  String get themeColorSchemeAndMotionPreferences =>
      'Thema, kleurenschema en bewegingsvoorkeuren.';

  @override
  String get language => 'Taal';

  @override
  String get appLanguageAndTextDirection => 'App-taal en tekstrichting.';

  @override
  String get compressionDefaults => 'Standaardinstellingen voor compressie';

  @override
  String get defaultResolutionBitrateAndOutputFormat =>
      'Standaard resolutie, bitrate en uitvoerformaat.';

  @override
  String get storageCleanup => 'Opslag & opruimen';

  @override
  String get storageUsageCacheSizeAndTemporaryFileCleanup =>
      'Opslaggebruik, cachegrootte en schoonmaak van tijdelijke bestanden.';

  @override
  String get notifications => 'Meldingen';

  @override
  String get jobCompletionAndProductUpdateNotifications =>
      'Meldingen bij voltooide taken en productupdates.';

  @override
  String get privacy => 'Privacy';

  @override
  String get onDeviceProcessingLocalLogsAndOptionalCrashReports =>
      'Verwerking op het apparaat, lokale logs en optionele crashrapporten.';

  @override
  String get aboutZumi => 'Over Zumi';

  @override
  String get versionBuildNumberAndApplicationDetails =>
      'Versie, buildnummer en applicatiedetails.';

  @override
  String get aboutTheDeveloper => 'Over de ontwikkelaar';

  @override
  String get theDeveloperAndToolsBehindZumi =>
      'De ontwikkelaar en tools achter Zumi.';

  @override
  String get openSourceLicenses => 'Open-source licenties';

  @override
  String get openSourcePackagesBundledWithZumi =>
      'Open-source pakketten die met Zumi worden meegeleverd.';

  @override
  String get privacyPolicy => 'Privacybeleid';

  @override
  String get howZumiHandlesYourVideosAndData =>
      'Hoe Zumi met uw video\'s en gegevens omgaat.';

  @override
  String get termsOfService => 'Gebruiksvoorwaarden';

  @override
  String get theTermsThatApplyToZumiAndItsPurchases =>
      'De voorwaarden die van toepassing zijn op Zumi en de aankopen ervan.';

  @override
  String get dataSafety => 'Gegevensbeveiliging';

  @override
  String get summaryOfTheDataZumiCollectsAndWhy =>
      'Samenvatting van de gegevens die Zumi verzamelt en waarom. ';

  @override
  String get permissions => 'Toestemmingen';

  @override
  String get runtimePermissionsZumiRequestsAndWhyEachIsNeeded =>
      'Runtime-permissies die Zumi aanvraagt en waarom elk nodig is. ';

  @override
  String get faq => 'FAQ';

  @override
  String get answersToCommonQuestionsAboutCompressionAndBilling =>
      'Antwoorden op veelgestelde vragen over compressie en facturering. ';

  @override
  String get support => 'Ondersteuning';

  @override
  String get getHelpWithYourAccountOrAPurchase =>
      'Krijg hulp bij je account of een aankoop. ';

  @override
  String get sendFeedback => 'Stuur feedback';

  @override
  String get reportAProblemOrSuggestAnImprovement =>
      'Meld een probleem of stel een verbetering voor. ';

  @override
  String get plans => 'Plannen';

  @override
  String get comparePlansAndSeeWhatEachOneUnlocks =>
      'Vergelijk abonnementen en kijk wat elk plan ontgrendelt. ';

  @override
  String get planDetails => 'Beschrijvingen van het plan';

  @override
  String get benefitsLimitsAndPricingForThisPlan =>
      'Voordelen, limieten en prijzen voor dit abonnement. ';

  @override
  String get paymentMethods => 'Betaalmethoden';

  @override
  String get supportedWaysToPayIncludingStoreBilling =>
      'Ondersteunde betaalmethoden, waaronder winkelfacturering. ';

  @override
  String get restorePurchases => 'Herstel aankopen';

  @override
  String get reApplyAPurchaseMadeOnAnotherDevice =>
      'Hergebruik een aankoop die op een ander apparaat is gedaan.';

  @override
  String get profile => 'Profiel';

  @override
  String get yourIdentityPlanStatusAndAccountPreferences =>
      'Uw identiteit, planstatus en accountvoorkeuren.';

  @override
  String get deleteAccount => 'Account verwijderen';

  @override
  String get permanentlyRemoveYourAccountAndItsServerSideData =>
      'Verwijder uw account en de bijbehorende servergegevens permanent.';

  @override
  String get rateZumi => 'Beoordeel Zumi';

  @override
  String get tellOthersHowZumiWorkedForYouOnTheStore =>
      'Vertel anderen hoe Zumi voor u werkte in de winkel.';

  @override
  String get shareZumi => 'Deel Zumi';

  @override
  String get recommendZumiToAFriend => 'Beveel Zumi aan een vriend aan.';

  @override
  String get appearanceLanguage => 'Uiterlijk & taal';

  @override
  String get compression => 'Compressie';

  @override
  String get onDeviceAI => 'AI op het apparaat';

  @override
  String get notificationsPrivacy => 'Meldingen & privacy';

  @override
  String get plansPurchases => 'Plannen & aankopen';

  @override
  String get about => 'Over';

  @override
  String get legal => 'Juridisch';

  @override
  String get helpFeedback => 'Help & feedback';

  @override
  String get account => 'Account';

  @override
  String get themeAndAppLanguage => 'Thema en app-taal';

  @override
  String get appLanguageAndDirection => 'App-taal en -richting';

  @override
  String get defaultQualityAndFormat => 'Standaardkwaliteit en -formaat';

  @override
  String get cacheAndStorageUsage => 'Cache- en opslaggebruik';

  @override
  String get aiSettings => 'AI-instellingen';

  @override
  String get zumiAssistant => 'Zumi Assistent';

  @override
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere =>
      'Een privé-assistent voor je video\'s komt binnenkort. Je kunt hier vragen stellen over compressie, organisatie en opgeslagen video\'s.';

  @override
  String get localModelsAndSmartTools => 'Lokale modellen en slimme tools';

  @override
  String get exploreLocalModelsAndFutureAIToolsTheseOptionsAreNotActiveYet =>
      'Verken lokale modellen en toekomstige AI-tools. Deze opties zijn nog niet actief.';

  @override
  String get localModels => 'Lokale modellen';

  @override
  String get browseAndDownloadSupportedModels =>
      'Blader door en download ondersteunde modellen';

  @override
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere =>
      'Kies een ondersteund model, download het naar dit apparaat en beheer hier geïnstalleerde modellen.';

  @override
  String get importAModel => 'Een model importeren';

  @override
  String get useACompatibleModelFromYourFiles =>
      'Gebruik een compatibel model uit je bestanden';

  @override
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt =>
      'Selecteer een compatibel lokaal modelfile en bekijk de vereisten voordat u het gebruikt.';

  @override
  String get smartFeatures => 'Slimme functies';

  @override
  String get compressionOrganizationAndSearch =>
      'Compressie, organisatie en zoeken';

  @override
  String
  get chooseWhichLocalAISuggestionsToUseForVideoCompressionOrganizationNamingAndSearch =>
      'Kies welke lokale AI-suggesties u wilt gebruiken voor videocompressie, organisatie, naamgeving en zoeken.';

  @override
  String get modelPerformance => 'Modelprestaties';

  @override
  String get processingAndResourcePreferences =>
      'Verwerkings- en resourcevoorkeuren';

  @override
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels =>
      'Controleer de verwerkingsbackend en resourcelimieten voor ondersteunde modellen.';

  @override
  String get conversationSettings => 'Gespreksinstellingen';

  @override
  String get streamingThinkingAndResponseLength =>
      'Streaming, denken en responslengte';

  @override
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits =>
      'Configureer hoe de assistent reageert, inclusief streaming, denkmethode, sampling en responslimieten.';

  @override
  String get imagesAndAudio => 'Afbeeldingen en audio';

  @override
  String get controlMultimodalInputs => 'Beheer multimodale invoer';

  @override
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos =>
      'Kies of compatibele modellen geselecteerde afbeeldingen en audio van je video\'s kunnen analyseren.';

  @override
  String get semanticSearch => 'Semantisch zoeken';

  @override
  String get embeddingsAndLocalIndexing => 'Embeddings en lokale indexering';

  @override
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning =>
      'Beheer het lokale embedding-model en de zoekindex om video\'s en momenten te vinden op basis van betekenis.';

  @override
  String get toolsAndStructuredOutput => 'Tools en gestructureerde output';

  @override
  String get actionsSchemasAndConfirmations =>
      'Acties, schema\'s en bevestigingen';

  @override
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation =>
      'Beheer ondersteunde assistentacties en gestructureerde antwoorden. Acties die bestanden beïnvloeden, vereisen uw bevestiging.';

  @override
  String get models => 'Modellen';

  @override
  String get assistantExperience => 'Assistentervaring';

  @override
  String get smartCapabilities => 'Slimme mogelijkheden';

  @override
  String get performance => 'Prestaties';

  @override
  String get yourCompressedVideoHistory => 'Uw gecomprimeerde videohistorie';

  @override
  String get completionAndUpdateAlerts => 'Voltooiings- en updatemeldingen';

  @override
  String get yourDataStaysLocal => 'Uw gegevens blijven lokaal';

  @override
  String get comparePlansAndUpgrade => 'Vergelijk plannen en upgrade';

  @override
  String get paymentMethodsAndBilling => 'Betaalmethoden en facturering';

  @override
  String get restoreYourPreviousPurchase => 'Herstel uw vorige aankoop';

  @override
  String get versionAndBuildDetails => 'Versie- en builddetails';

  @override
  String get theDeveloperBehindZumi => 'De ontwikkelaar achter Zumi';

  @override
  String get openSourcePackageLicenses => 'Open source pakketlicenties';

  @override
  String get howDataIsHandled => 'Hoe gegevens worden behandeld';

  @override
  String get rulesForUsingZumi => 'Regels voor het gebruik van Zumi';

  @override
  String get whatDataWeCollect => 'Welke gegevens we verzamelen';

  @override
  String get whyWeNeedPermissions => 'Waarom we toestemming nodig hebben';

  @override
  String get answersToCommonQuestions => 'Antwoorden op veelgestelde vragen';

  @override
  String get reachTheDeveloperDirectly =>
      'Neem rechtstreeks contact op met de ontwikkelaar';

  @override
  String get sendUsYourFeedback => 'Stuur ons uw feedback';

  @override
  String get pickVideo => 'Kies video';

  @override
  String get targetSizeMB => 'Doelgrootte (MB)';

  @override
  String get startCompression => 'Start compressie';

  @override
  String get pause => 'Pauzeer';

  @override
  String get resume => 'Hervat';

  @override
  String get viewResult => 'Bekijk resultaat';

  @override
  String get saveToGallery => 'Opslaan in galerij';

  @override
  String get shareVideo => 'Deel video';

  @override
  String get originalSize => 'Oorspronkelijke grootte';

  @override
  String get outputSize => 'Uitvoer grootte';

  @override
  String get noCompressedVideosYet => 'Nog geen gecomprimeerde video\'s';

  @override
  String get savedToGallery => 'Opgeslagen in galerij';

  @override
  String get enterATargetSizeGreaterThanZero =>
      'Voer een doelgrootte groter dan nul in';

  @override
  String get compressionCancelled => 'Compressie geannuleerd';

  @override
  String get thisVideoCouldNotReachTheSelectedSizeTryALargerTargetSize =>
      'Deze video kon de geselecteerde grootte niet bereiken. Probeer een grotere doelgrootte.';

  @override
  String get theSelectedSizeIsTooSmallForThisVideoChooseALargerSize =>
      'De geselecteerde grootte is te klein voor deze video. Kies een grotere grootte.';

  @override
  String get originalPreview => 'Oorspronkelijke voorbeeld';

  @override
  String get compressedPreview => 'Samengeperste preview';

  @override
  String get targetPreset => 'Doelpreset';

  @override
  String get customSize => 'Aangepaste grootte';

  @override
  String get previewUnavailable => 'Preview niet beschikbaar';

  @override
  String get advancedControls => 'Geavanceerde bedieningselementen';

  @override
  String get automatic => 'Automatisch';

  @override
  String get maximumResolution => 'Maximale resolutie';

  @override
  String get originalResolution => 'Originele resolutie';

  @override
  String get maximumFrameRate => 'Maximale framerate';

  @override
  String get audioBitrate => 'Audiobitrate';

  @override
  String get removeAudio => 'Audio verwijderen';

  @override
  String get videoBitrateCeilingKbps => 'Maximale videobitrate (kbps)';

  @override
  String get hdrHandling => 'HDR-hantering';

  @override
  String get convertToSDR => 'Converteren naar SDR';

  @override
  String get keepHDRWhenSupported => 'HDR behouden indien ondersteund';

  @override
  String get beforeYouStart => 'Voordat je begint';

  @override
  String get calculatingCompressionPlan => 'Compressieplan wordt berekend…';

  @override
  String get plannedResolution => 'Geplande resolutie';

  @override
  String get plannedVideoBitrate => 'Geplande videobitrate';

  @override
  String get plannedAudioBitrate => 'Geplande audiobitrate';

  @override
  String
  get reEncodingConvertsAudioToAACStereoDolbyAtmosAndDTSSpatialAudioWillNotBePreserved =>
      'Herverpakking zet audio om naar AAC stereo. Dolby Atmos en DTS ruimtelijke audio worden niet behouden.';

  @override
  String
  get thisTargetIsTooSmallForAUsableVideoIncreaseTheSizeOrLowerOtherLimits =>
      'Dit doel is te klein voor een bruikbare video. Vergroot de grootte of verlaag andere limieten.';

  @override
  String get theSelectedTargetMayReduceVideoQuality =>
      'Het geselecteerde doel kan de videokwaliteit verminderen.';

  @override
  String get theSourceIsAlreadyWithinTheSizeLimit =>
      'De bron bevindt zich al binnen de grootte limiet.';

  @override
  String get enterABitrateOfAtLeast150KbpsOrLeaveBlankForAutomatic =>
      'Voer een bitrate van minimaal 150 kbps in, of laat leeg voor automatisch.';

  @override
  String get enterAnEvenResolutionFrom240To16384OrLeaveBlankForAutomatic =>
      'Voer een even resolutie in van 240 tot 16384, of laat leeg voor automatisch.';

  @override
  String get videoPosition => 'Videopositie';

  @override
  String
  get aPreviousCompressionWasInterruptedItsTemporaryFilesWereCleanedUpYouCanSelectTheVideoAndTryAgain =>
      'Een eerdere compressie werd onderbroken. De tijdelijke bestanden zijn verwijderd; u kunt de video selecteren en het opnieuw proberen.';

  @override
  String get dismiss => 'Sluiten';

  @override
  String get clearHistory => 'Geschiedenis wissen';

  @override
  String get removeAllHistoryEntriesSavedVideosWillRemainOnYourDevice =>
      'Alle geschiedenisitems verwijderen? Opgeslagen video\'s blijven op uw apparaat.';

  @override
  String get attempts => 'Pogingen';

  @override
  String get targetSize => 'Doelgrootte';

  @override
  String get outputResolution => 'Uitvoerresolutie';

  @override
  String get thisVideoCouldNotBeReadChooseAnotherFile =>
      'Deze video kon niet worden gelezen. Kies een ander bestand.';

  @override
  String get theEncodedVideoFailedVerificationYourOriginalVideoWasNotChanged =>
      'De gecodeerde video is mislukt bij verificatie. Uw originele video is niet gewijzigd.';

  @override
  String
  get thisDeviceCannotEncodeTheSelectedResolutionOrFrameRateLowerThatSettingAndTryAgain =>
      'Dit apparaat kan de geselecteerde resolutie of beeldsnelheid niet coderen. Verlaag die instelling en probeer opnieuw.';

  @override
  String
  get thisDeviceCannotDecodeThisAudioFormatForCompressionRemoveAudioOrUseASupportedSource =>
      'Dit apparaat kan dit audioformaat niet decoderen voor compressie. Verwijder audio of gebruik een ondersteunde bron.';

  @override
  String
  get thisDeviceCannotDecodeThisVideoFormatOrProfileForCompressionChooseAnotherSourceOrDevice =>
      'Dit apparaat kan dit videoformaat of profiel voor compressie niet decoderen. Kies een andere bron of apparaat.';

  @override
  String get theExportedMP4IsNotReadyForStreamingTryAnotherVideoOrDevice =>
      'De geëxporteerde MP4 is niet klaar voor streaming. Probeer een andere video of apparaat.';

  @override
  String get thereIsNotEnoughFreeStorageToCompressThisVideo =>
      'Er is niet genoeg vrije opslagruimte om deze video te comprimeren.';

  @override
  String get thisDeviceCannotProcessTheSelectedHDRModeTryConvertingToSDR =>
      'Dit apparaat kan de geselecteerde HDR-modus niet verwerken. Probeer te converteren naar SDR.';

  @override
  String get compressionCouldNotBeCompletedTryAnotherSettingOrVideo =>
      'Compressie kon niet worden voltooid. Probeer een andere instelling of video.';

  @override
  String get appIdentity => 'App-identiteit';

  @override
  String get appName => 'App-naam';

  @override
  String get packageName => 'Pakketnaam';

  @override
  String get version => 'Versie';

  @override
  String get buildNumber => 'Bouwnummer';

  @override
  String get deviceAndBuild => 'Apparaat en build';

  @override
  String get operatingSystem => 'Besturingssysteem';

  @override
  String get osVersion => 'OS-versie';

  @override
  String get buildMode => 'Build-modus';

  @override
  String get debug => 'Debug';

  @override
  String get release => 'Release';

  @override
  String get builtWith => 'Gemaakt met';

  @override
  String get installation => 'Installatie';

  @override
  String get installedFrom => 'Geïnstalleerd vanaf';

  @override
  String get installedOn => 'Geïnstalleerd op';

  @override
  String get updatedOn => 'Bijgewerkt op';

  @override
  String get unavailable => 'Niet beschikbaar';

  @override
  String get projectAndSupport => 'Project en ondersteuning';

  @override
  String get githubRepository => 'GitHub-repository';

  @override
  String get viewZumiSourceCode => 'Bekijk Zumi-broncode';

  @override
  String get readTheREADME => 'Lees de README';

  @override
  String get learnAboutZumiOnGitHub => 'Leer over Zumi op GitHub';

  @override
  String get reportAnIssue => 'Meld een probleem';

  @override
  String get viewAndCreateGitHubIssues => 'Bekijk en maak GitHub-issues';

  @override
  String get latestRelease => 'Laatste release';

  @override
  String get viewReleasesAndDownloads => 'Bekijk releases en downloads';

  @override
  String get supportZumi => 'Ondersteun Zumi';

  @override
  String get openTheOfficialDonationPage => 'Open de officiële donatiepagina';

  @override
  String get couldNotOpenTheLinkPleaseTryAgain =>
      'Kon de link niet openen. Probeer het opnieuw.';

  @override
  String get developer => 'Ontwikkelaar';

  @override
  String get mostafaSensei => 'Mostafa Sensei';

  @override
  String get githubProfile => 'GitHub-profiel';

  @override
  String get seeProjectsAndContactDetails =>
      'Bekijk projecten en contactgegevens';

  @override
  String get maintenanceInProgress => 'Onderhoud in uitvoering';

  @override
  String get zumiIsTemporarilyUnavailablePleaseTryAgainLater =>
      'Zumi is tijdelijk niet beschikbaar. Probeer het later opnieuw.';

  @override
  String get comingSoon => 'Binnenkort beschikbaar';

  @override
  String get languageName => 'Nederlands';

  @override
  String get countryCode => 'BE';

  @override
  String countryName(String countryCode) {
    String _temp0 = intl.Intl.selectLogic(countryCode, {
      'AE': 'Verenigde Arabische Emiraten',
      'AT': 'Oostenrijk',
      'AU': 'Australië',
      'BE': 'België',
      'BH': 'Bahrein',
      'BR': 'Brazilië',
      'CA': 'Canada',
      'CH': 'Zwitserland',
      'CN': 'China',
      'DE': 'Duitsland',
      'DJ': 'Djibouti',
      'DZ': 'Algerije',
      'EG': 'Egypte',
      'ES': 'Spanje',
      'FR': 'Frankrijk',
      'GB': 'Verenigd Koninkrijk',
      'HK': 'Hongkong SAR van China',
      'ID': 'Indonesië',
      'IQ': 'Irak',
      'IT': 'Italië',
      'JO': 'Jordanië',
      'JP': 'Japan',
      'KM': 'Comoren',
      'KR': 'Zuid-Korea',
      'KW': 'Koeweit',
      'LB': 'Libanon',
      'LY': 'Libië',
      'MA': 'Marokko',
      'MR': 'Mauritanië',
      'MX': 'Mexico',
      'NL': 'Nederland',
      'OM': 'Oman',
      'PL': 'Polen',
      'PS': 'Palestijnse gebieden',
      'PT': 'Portugal',
      'QA': 'Qatar',
      'RU': 'Rusland',
      'SA': 'Saoedi-Arabië',
      'SD': 'Soedan',
      'SE': 'Zweden',
      'SG': 'Singapore',
      'SO': 'Somalië',
      'SY': 'Syrië',
      'TH': 'Thailand',
      'TN': 'Tunesië',
      'TR': 'Turkije',
      'TW': 'Taiwan',
      'US': 'Verenigde Staten',
      'VN': 'Vietnam',
      'YE': 'Jemen',
      'other': 'Land',
    });
    return '$_temp0';
  }
}
