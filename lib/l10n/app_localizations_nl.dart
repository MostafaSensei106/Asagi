// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get asagi => 'Asagi';

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
  String get confirm => 'Bevestigen';

  @override
  String get ok => 'OK';

  @override
  String get compressVideosPrivatelyOnYourDevice =>
      'Comprimeer video\'s privé, op uw apparaat.';

  @override
  String get welcomeToAsagi => 'Welkom bij Asagi';

  @override
  String get learnHowAsagiCompressesYourVideosWithoutEverLeavingYourPhone =>
      'Leer hoe Asagi uw video\'s comprimeert zonder uw telefoon ooit te verlaten.';

  @override
  String get signIn => 'Inloggen';

  @override
  String get chooseAVideo => 'Kies een video';

  @override
  String get preparingSelectedVideo => 'Getting your video ready';

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
  String get aboutAsagi => 'Over Asagi';

  @override
  String get versionBuildNumberAndApplicationDetails =>
      'Versie, buildnummer en applicatiedetails.';

  @override
  String get aboutTheDeveloper => 'Over de ontwikkelaar';

  @override
  String get theDeveloperAndToolsBehindAsagi =>
      'De ontwikkelaar en tools achter Asagi.';

  @override
  String get openSourcePackagesBundledWithAsagi =>
      'Open-source pakketten die met Asagi worden meegeleverd.';

  @override
  String get privacyPolicy => 'Privacybeleid';

  @override
  String get howAsagiHandlesYourVideosAndData =>
      'Hoe Asagi met uw video\'s en gegevens omgaat.';

  @override
  String get termsOfService => 'Gebruiksvoorwaarden';

  @override
  String get dataSafety => 'Gegevensbeveiliging';

  @override
  String get summaryOfTheDataAsagiCollectsAndWhy =>
      'Samenvatting van de gegevens die Asagi verzamelt en waarom. ';

  @override
  String get permissions => 'Toestemmingen';

  @override
  String get runtimePermissionsAsagiRequestsAndWhyEachIsNeeded =>
      'Runtime-permissies die Asagi aanvraagt en waarom elk nodig is. ';

  @override
  String get faq => 'FAQ';

  @override
  String get support => 'Ondersteuning';

  @override
  String get sendFeedback => 'Stuur feedback';

  @override
  String get reportAProblemOrSuggestAnImprovement =>
      'Meld een probleem of stel een verbetering voor. ';

  @override
  String get profile => 'Profiel';

  @override
  String get deleteAccount => 'Account verwijderen';

  @override
  String get permanentlyRemoveYourAccountAndItsServerSideData =>
      'Verwijder uw account en de bijbehorende servergegevens permanent.';

  @override
  String get rateAsagi => 'Beoordeel Asagi';

  @override
  String get tellOthersHowAsagiWorkedForYouOnTheStore =>
      'Vertel anderen hoe Asagi voor u werkte in de winkel.';

  @override
  String get shareAsagi => 'Deel Asagi';

  @override
  String get recommendAsagiToAFriend => 'Beveel Asagi aan een vriend aan.';

  @override
  String get appearanceLanguage => 'Uiterlijk & taal';

  @override
  String get compression => 'Compressie';

  @override
  String get onDeviceAI => 'AI op het apparaat';

  @override
  String get notificationsPrivacy => 'Meldingen & privacy';

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
  String get asagiAssistant => 'Asagi Assistent';

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
  String get versionAndBuildDetails => 'Versie- en builddetails';

  @override
  String get theDeveloperBehindAsagi => 'De ontwikkelaar achter Asagi';

  @override
  String get openSourcePackageLicenses => 'Open source pakketlicenties';

  @override
  String get howDataIsHandled => 'Hoe gegevens worden behandeld';

  @override
  String get rulesForUsingAsagi => 'Regels voor het gebruik van Asagi';

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
  String get viewAsagiSourceCode => 'Bekijk Asagi-broncode';

  @override
  String get readTheREADME => 'Lees de README';

  @override
  String get learnAboutAsagiOnGitHub => 'Leer over Asagi op GitHub';

  @override
  String get reportAnIssue => 'Meld een probleem';

  @override
  String get viewAndCreateGitHubIssues => 'Bekijk en maak GitHub-issues';

  @override
  String get latestRelease => 'Laatste release';

  @override
  String get viewReleasesAndDownloads => 'Bekijk releases en downloads';

  @override
  String get supportAsagi => 'Ondersteun Asagi';

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
  String get asagiIsTemporarilyUnavailablePleaseTryAgainLater =>
      'Asagi is tijdelijk niet beschikbaar. Probeer het later opnieuw.';

  @override
  String get comingSoon => 'Binnenkort beschikbaar';

  @override
  String get loading => 'Loading…';

  @override
  String get pleaseWait => 'Even geduld...';

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
  String get cancel => 'Annuleren';

  @override
  String get clean => 'Clean';

  @override
  String get openSourceLicenses => 'Open-source licenties';

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
      'Asagi is free and open source. Video processing runs on your device. You retain ownership of your content. The app is provided without a guarantee of any particular output size or quality.';

  @override
  String get termsCopiedToClipboard => 'Terms copied to clipboard';

  @override
  String get termsAcceptanceLicenseTitle => '1. Acceptance & License';

  @override
  String get termsAcceptanceLicenseBody =>
      'Asagi is free and open source. All features are available to everyone, and video processing runs locally on your devices.';

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
  String get retryingCompression =>
      'Adjusting settings for another compression pass…';

  @override
  String targetSizeNotReachedOutputIs(String size) {
    return 'Could not reach the target size. Output size: $size MB.';
  }

  @override
  String get targetMayNotBeReachedBestEffort =>
      'The selected size may not be reachable. The export will use the best available settings, and its final size will be shown.';

  @override
  String requestedSettingsUnavailableBestQualityIs(
    String width,
    String height,
  ) {
    return 'The requested settings cannot be applied. Best available quality is $width × $height; the final file size will be shown after compression.';
  }

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

  @override
  String get compressionHelpDescription =>
      'Answers to common questions about video compression.';

  @override
  String get appSupportDescription => 'Get help using Asagi.';

  @override
  String get appTermsDescription =>
      'Terms for using the free, open source Asagi app.';
}

/// The translations for Dutch Flemish, as used in Belgium (`nl_BE`).
class AppLocalizationsNlBe extends AppLocalizationsNl {
  AppLocalizationsNlBe() : super('nl_BE');

  @override
  String get asagi => 'Asagi';

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
  String get confirm => 'Bevestigen';

  @override
  String get ok => 'OK';

  @override
  String get compressVideosPrivatelyOnYourDevice =>
      'Comprimeer video\'s privé, op uw apparaat.';

  @override
  String get welcomeToAsagi => 'Welkom bij Asagi';

  @override
  String get learnHowAsagiCompressesYourVideosWithoutEverLeavingYourPhone =>
      'Leer hoe Asagi uw video\'s comprimeert zonder uw telefoon ooit te verlaten.';

  @override
  String get signIn => 'Inloggen';

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
  String get aboutAsagi => 'Over Asagi';

  @override
  String get versionBuildNumberAndApplicationDetails =>
      'Versie, buildnummer en applicatiedetails.';

  @override
  String get aboutTheDeveloper => 'Over de ontwikkelaar';

  @override
  String get theDeveloperAndToolsBehindAsagi =>
      'De ontwikkelaar en tools achter Asagi.';

  @override
  String get openSourcePackagesBundledWithAsagi =>
      'Open-source pakketten die met Asagi worden meegeleverd.';

  @override
  String get privacyPolicy => 'Privacybeleid';

  @override
  String get howAsagiHandlesYourVideosAndData =>
      'Hoe Asagi met uw video\'s en gegevens omgaat.';

  @override
  String get termsOfService => 'Gebruiksvoorwaarden';

  @override
  String get dataSafety => 'Gegevensbeveiliging';

  @override
  String get summaryOfTheDataAsagiCollectsAndWhy =>
      'Samenvatting van de gegevens die Asagi verzamelt en waarom. ';

  @override
  String get permissions => 'Toestemmingen';

  @override
  String get runtimePermissionsAsagiRequestsAndWhyEachIsNeeded =>
      'Runtime-permissies die Asagi aanvraagt en waarom elk nodig is. ';

  @override
  String get faq => 'FAQ';

  @override
  String get support => 'Ondersteuning';

  @override
  String get sendFeedback => 'Stuur feedback';

  @override
  String get reportAProblemOrSuggestAnImprovement =>
      'Meld een probleem of stel een verbetering voor. ';

  @override
  String get profile => 'Profiel';

  @override
  String get deleteAccount => 'Account verwijderen';

  @override
  String get permanentlyRemoveYourAccountAndItsServerSideData =>
      'Verwijder uw account en de bijbehorende servergegevens permanent.';

  @override
  String get rateAsagi => 'Beoordeel Asagi';

  @override
  String get tellOthersHowAsagiWorkedForYouOnTheStore =>
      'Vertel anderen hoe Asagi voor u werkte in de winkel.';

  @override
  String get shareAsagi => 'Deel Asagi';

  @override
  String get recommendAsagiToAFriend => 'Beveel Asagi aan een vriend aan.';

  @override
  String get appearanceLanguage => 'Uiterlijk & taal';

  @override
  String get compression => 'Compressie';

  @override
  String get onDeviceAI => 'AI op het apparaat';

  @override
  String get notificationsPrivacy => 'Meldingen & privacy';

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
  String get asagiAssistant => 'Asagi Assistent';

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
  String get versionAndBuildDetails => 'Versie- en builddetails';

  @override
  String get theDeveloperBehindAsagi => 'De ontwikkelaar achter Asagi';

  @override
  String get openSourcePackageLicenses => 'Open source pakketlicenties';

  @override
  String get howDataIsHandled => 'Hoe gegevens worden behandeld';

  @override
  String get rulesForUsingAsagi => 'Regels voor het gebruik van Asagi';

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
  String get viewAsagiSourceCode => 'Bekijk Asagi-broncode';

  @override
  String get readTheREADME => 'Lees de README';

  @override
  String get learnAboutAsagiOnGitHub => 'Leer over Asagi op GitHub';

  @override
  String get reportAnIssue => 'Meld een probleem';

  @override
  String get viewAndCreateGitHubIssues => 'Bekijk en maak GitHub-issues';

  @override
  String get latestRelease => 'Laatste release';

  @override
  String get viewReleasesAndDownloads => 'Bekijk releases en downloads';

  @override
  String get supportAsagi => 'Ondersteun Asagi';

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
  String get asagiIsTemporarilyUnavailablePleaseTryAgainLater =>
      'Asagi is tijdelijk niet beschikbaar. Probeer het later opnieuw.';

  @override
  String get comingSoon => 'Binnenkort beschikbaar';

  @override
  String get pleaseWait => 'Even geduld...';

  @override
  String get cancel => 'Annuleren';

  @override
  String get openSourceLicenses => 'Open-source licenties';

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

  @override
  String get termsOfServiceFullText =>
      'Asagi is free and open source. Video processing runs on your device. You retain ownership of your content. The app is provided without a guarantee of any particular output size or quality.';

  @override
  String get termsAcceptanceLicenseBody =>
      'Asagi is free and open source. All features are available to everyone, and video processing runs locally on your devices.';

  @override
  String get compressionHelpDescription =>
      'Answers to common questions about video compression.';

  @override
  String get appSupportDescription => 'Get help using Asagi.';

  @override
  String get appTermsDescription =>
      'Terms for using the free, open source Asagi app.';
}
