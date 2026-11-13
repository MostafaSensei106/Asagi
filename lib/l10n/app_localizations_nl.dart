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
  String fileSavedToDcim(String fileName) {
    return 'Bestand opgeslagen in galerie: $fileName';
  }

  @override
  String fileSavedToDocuments(String fileName) {
    return 'Bestand opgeslagen in documenten: $fileName';
  }

  @override
  String get fileAlreadySaved => 'Bestand is al opgeslagen';

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
  String get error_address_line_cant_be_empty =>
      'Adresregel mag niet leeg zijn';

  @override
  String get error_address_line_too_long => 'Adresregel is te lang';

  @override
  String get error_address_invalid_special_characters =>
      'Speciale tekens zijn niet toegestaan';

  @override
  String get error_address_emoji_not_allowed => 'Emoji\'s zijn niet toegestaan';

  @override
  String get error_city_cant_be_empty => 'Stad mag niet leeg zijn';

  @override
  String get error_city_too_long => 'Stadsnaam is te lang';

  @override
  String get error_city_invalid_special_characters =>
      'Stad bevat ongeldige speciale tekens';

  @override
  String get error_address_label_cant_be_empty =>
      'Adreslabel mag niet leeg zijn';

  @override
  String get error_address_label_too_long => 'Adreslabel is te lang';

  @override
  String get error_email_cant_be_empty => 'E-mail mag niet leeg zijn';

  @override
  String get error_email_not_invalid_format => 'Ongeldig e-mailformaat';

  @override
  String get error_email_contains_invalid_characters =>
      'E-mail bevat ongeldige tekens';

  @override
  String get error_email_must_contain_at_symbol => 'E-mail moet @ bevatten';

  @override
  String get error_email_must_be_in_lowercase =>
      'E-mail moet in kleine letters zijn';

  @override
  String get error_arabic_not_allowed =>
      'Arabische tekens zijn niet toegestaan';

  @override
  String get error_email_emoji_not_allowed =>
      'Emoji\'s zijn niet toegestaan in e-mail';

  @override
  String get error_phone_number_cant_be_empty =>
      'Telefoonnummer mag niet leeg zijn';

  @override
  String get error_phone_number_invalid => 'Ongeldig telefoonnummer';

  @override
  String get error_phone_number_min_length =>
      'Telefoonnummer moet minimaal 11 cijfers bevatten';

  @override
  String get error_name_cant_be_empty => 'Naam mag niet leeg zijn';

  @override
  String get error_name_invalid => 'Ongeldige naam';

  @override
  String get error_name_too_short_at_least_3_characters =>
      'Naam moet minimaal 3 tekens bevatten';

  @override
  String get error_name_too_long_maximum_20_characters =>
      'Naam mag niet meer dan 20 tekens bevatten';

  @override
  String get error_name_invalid_special_characters =>
      'Naam bevat ongeldige speciale tekens';

  @override
  String get error_name_emoji_not_allowed =>
      'Emoji\'s zijn niet toegestaan in naam';

  @override
  String get error_password_cant_be_empty => 'Wachtwoord mag niet leeg zijn';

  @override
  String
  get error_password_must_contain_uppercase_lowercase_number_and_special_character =>
      'Wachtwoord moet hoofdletters, kleine letters, cijfers en een speciaal teken bevatten';

  @override
  String get error_password_must_be_at_least_8_characters_long =>
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
  String get settingsGroupAppearance => 'Uiterlijk & taal';

  @override
  String get settingsGroupCompression => 'Compressie';

  @override
  String get settingsGroupAi => 'AI op het apparaat';

  @override
  String get settingsGroupPrivacy => 'Meldingen & privacy';

  @override
  String get settingsGroupPlans => 'Plannen & aankopen';

  @override
  String get settingsGroupAbout => 'Over';

  @override
  String get settingsGroupLegal => 'Juridisch';

  @override
  String get settingsGroupHelp => 'Help & feedback';

  @override
  String get settingsGroupAccount => 'Account';

  @override
  String get settingsAppearanceSubtitle => 'Thema en app-taal';

  @override
  String get settingsLanguageSubtitle => 'App-taal en -richting';

  @override
  String get settingsCompressionSubtitle => 'Standaardkwaliteit en -formaat';

  @override
  String get settingsStorageSubtitle => 'Cache- en opslaggebruik';

  @override
  String get aiSettings => 'AI-instellingen';

  @override
  String get zumiAssistant => 'Zumi Assistent';

  @override
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere =>
      'Een privé-assistent voor je video\'s komt binnenkort. Je kunt hier vragen stellen over compressie, organisatie en opgeslagen video\'s.';

  @override
  String get settingsAiSubtitle => 'Lokale modellen en slimme tools';

  @override
  String get exploreLocalModelsAndFutureAiToolsTheseOptionsAreNotActiveYet =>
      'Verken lokale modellen en toekomstige AI-tools. Deze opties zijn nog niet actief.';

  @override
  String get localModels => 'Lokale modellen';

  @override
  String get aiModelsSubtitle =>
      'Blader door en download ondersteunde modellen';

  @override
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere =>
      'Kies een ondersteund model, download het naar dit apparaat en beheer hier geïnstalleerde modellen.';

  @override
  String get importAModel => 'Een model importeren';

  @override
  String get aiImportSubtitle =>
      'Gebruik een compatibel model uit je bestanden';

  @override
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt =>
      'Selecteer een compatibel lokaal modelfile en bekijk de vereisten voordat u het gebruikt.';

  @override
  String get smartFeatures => 'Slimme functies';

  @override
  String get aiFeaturesSubtitle => 'Compressie, organisatie en zoeken';

  @override
  String
  get chooseWhichLocalAiSuggestionsToUseForVideoCompressionOrganizationNamingAndSearch =>
      'Kies welke lokale AI-suggesties u wilt gebruiken voor videocompressie, organisatie, naamgeving en zoeken.';

  @override
  String get modelPerformance => 'Modelprestaties';

  @override
  String get aiRuntimeSubtitle => 'Verwerkings- en resourcevoorkeuren';

  @override
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels =>
      'Controleer de verwerkingsbackend en resourcelimieten voor ondersteunde modellen.';

  @override
  String get conversationSettings => 'Gespreksinstellingen';

  @override
  String get aiChatSettingsSubtitle => 'Streaming, denken en responslengte';

  @override
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits =>
      'Configureer hoe de assistent reageert, inclusief streaming, denkmethode, sampling en responslimieten.';

  @override
  String get imagesAndAudio => 'Afbeeldingen en audio';

  @override
  String get aiMediaSubtitle => 'Beheer multimodale invoer';

  @override
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos =>
      'Kies of compatibele modellen geselecteerde afbeeldingen en audio van je video\'s kunnen analyseren.';

  @override
  String get semanticSearch => 'Semantisch zoeken';

  @override
  String get aiSearchSubtitle => 'Embeddings en lokale indexering';

  @override
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning =>
      'Beheer het lokale embedding-model en de zoekindex om video\'s en momenten te vinden op basis van betekenis.';

  @override
  String get toolsAndStructuredOutput => 'Tools en gestructureerde output';

  @override
  String get aiToolsSubtitle => 'Acties, schema\'s en bevestigingen';

  @override
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation =>
      'Beheer ondersteunde assistentacties en gestructureerde antwoorden. Acties die bestanden beïnvloeden, vereisen uw bevestiging.';

  @override
  String get aiGroupModels => 'Modellen';

  @override
  String get aiGroupExperience => 'Assistentervaring';

  @override
  String get aiGroupCapabilities => 'Slimme mogelijkheden';

  @override
  String get aiGroupPerformance => 'Prestaties';

  @override
  String get compressionHistorySubtitle => 'Uw gecomprimeerde videohistorie';

  @override
  String get settingsNotificationsSubtitle => 'Voltooiings- en updatemeldingen';

  @override
  String get settingsPrivacySubtitle => 'Uw gegevens blijven lokaal';

  @override
  String get plansSubtitle => 'Vergelijk plannen en upgrade';

  @override
  String get plansMethodsSubtitle => 'Betaalmethoden en facturering';

  @override
  String get plansRestoreSubtitle => 'Herstel uw vorige aankoop';

  @override
  String get aboutAppSubtitle => 'Versie- en builddetails';

  @override
  String get aboutDeveloperSubtitle => 'De ontwikkelaar achter Zumi';

  @override
  String get aboutLicensesSubtitle => 'Open source pakketlicenties';

  @override
  String get legalPrivacySubtitle => 'Hoe gegevens worden behandeld';

  @override
  String get legalTermsSubtitle => 'Regels voor het gebruik van Zumi';

  @override
  String get legalDataSafetySubtitle => 'Welke gegevens we verzamelen';

  @override
  String get legalPermissionsSubtitle => 'Waarom we toestemming nodig hebben';

  @override
  String get helpFaqSubtitle => 'Antwoorden op veelgestelde vragen';

  @override
  String get helpSupportSubtitle =>
      'Neem rechtstreeks contact op met de ontwikkelaar';

  @override
  String get helpFeedbackSubtitle => 'Stuur ons uw feedback';

  @override
  String get compressionPickVideo => 'Kies video';

  @override
  String get compressionTargetMb => 'Doelgrootte (MB)';

  @override
  String get compressionStart => 'Start compressie';

  @override
  String get compressionPause => 'Pauzeer';

  @override
  String get compressionResume => 'Hervat';

  @override
  String get compressionViewResult => 'Bekijk resultaat';

  @override
  String get compressionSaveGallery => 'Opslaan in galerij';

  @override
  String get compressionShare => 'Deel video';

  @override
  String get compressionOriginalSize => 'Oorspronkelijke grootte';

  @override
  String get compressionOutputSize => 'Uitvoer grootte';

  @override
  String get compressionEmptyHistory => 'Nog geen gecomprimeerde video\'s';

  @override
  String get compressionSavedGallery => 'Opgeslagen in galerij';

  @override
  String get compressionInvalidTarget =>
      'Voer een doelgrootte groter dan nul in';

  @override
  String get compressionCancelled => 'Compressie geannuleerd';

  @override
  String get compressionTargetExceeded =>
      'Deze video kon de geselecteerde grootte niet bereiken. Probeer een grotere doelgrootte.';

  @override
  String get compressionTargetInfeasible =>
      'De geselecteerde grootte is te klein voor deze video. Kies een grotere grootte.';

  @override
  String get compressionPreviewBefore => 'Oorspronkelijke voorbeeld';

  @override
  String get compressionPreviewAfter => 'Samengeperste preview';

  @override
  String get compressionPreset => 'Doelpreset';

  @override
  String get compressionCustom => 'Aangepaste grootte';

  @override
  String get compressionPreviewUnavailable => 'Preview niet beschikbaar';

  @override
  String get compressionAdvanced => 'Geavanceerde bedieningselementen';

  @override
  String get compressionAutomatic => 'Automatisch';

  @override
  String get compressionResolutionLimit => 'Maximale resolutie';

  @override
  String get compressionSourceResolution => 'Originele resolutie';

  @override
  String get compressionFrameRateLimit => 'Maximale framerate';

  @override
  String get compressionAudioQuality => 'Audiobitrate';

  @override
  String get compressionRemoveAudio => 'Audio verwijderen';

  @override
  String get compressionVideoBitrateLimit => 'Maximale videobitrate (kbps)';

  @override
  String get compressionHdrPolicy => 'HDR-hantering';

  @override
  String get compressionHdrConvert => 'Converteren naar SDR';

  @override
  String get compressionHdrPreserve => 'HDR behouden indien ondersteund';

  @override
  String get compressionPlanPreview => 'Voordat je begint';

  @override
  String get compressionPlanLoading => 'Compressieplan wordt berekend…';

  @override
  String get compressionPlanResolution => 'Geplande resolutie';

  @override
  String get compressionPlanVideoBitrate => 'Geplande videobitrate';

  @override
  String get compressionPlanAudioBitrate => 'Geplande audiobitrate';

  @override
  String get compressionAudioConversionNote =>
      'Herverpakking zet audio om naar AAC stereo. Dolby Atmos en DTS ruimtelijke audio worden niet behouden.';

  @override
  String get compressionPlanTooSmall =>
      'Dit doel is te klein voor een bruikbare video. Vergroot de grootte of verlaag andere limieten.';

  @override
  String get compressionPlanLowQuality =>
      'Het geselecteerde doel kan de videokwaliteit verminderen.';

  @override
  String get compressionPlanAlreadyWithinLimit =>
      'De bron bevindt zich al binnen de grootte limiet.';

  @override
  String get compressionInvalidBitrate =>
      'Voer een bitrate van minimaal 150 kbps in, of laat leeg voor automatisch.';

  @override
  String get compressionInvalidResolution =>
      'Voer een even resolutie in van 240 tot 16384, of laat leeg voor automatisch.';

  @override
  String get compressionSeek => 'Videopositie';

  @override
  String get compressionInterrupted =>
      'Een eerdere compressie werd onderbroken. De tijdelijke bestanden zijn verwijderd; u kunt de video selecteren en het opnieuw proberen.';

  @override
  String get compressionDismiss => 'Sluiten';

  @override
  String get compressionClearHistory => 'Geschiedenis wissen';

  @override
  String get compressionClearHistoryConfirm =>
      'Alle geschiedenisitems verwijderen? Opgeslagen video\'s blijven op uw apparaat.';

  @override
  String get compressionAttempts => 'Pogingen';

  @override
  String get compressionTargetSize => 'Doelgrootte';

  @override
  String get compressionOutputResolution => 'Uitvoerresolutie';

  @override
  String get compressionInvalidVideo =>
      'Deze video kon niet worden gelezen. Kies een ander bestand.';

  @override
  String get compressionInvalidOutput =>
      'De gecodeerde video is mislukt bij verificatie. Uw originele video is niet gewijzigd.';

  @override
  String get compressionEncoderUnsupported =>
      'Dit apparaat kan de geselecteerde resolutie of beeldsnelheid niet coderen. Verlaag die instelling en probeer opnieuw.';

  @override
  String get compressionAudioDecoderUnsupported =>
      'Dit apparaat kan dit audioformaat niet decoderen voor compressie. Verwijder audio of gebruik een ondersteunde bron.';

  @override
  String get compressionVideoDecoderUnsupported =>
      'Dit apparaat kan dit videoformaat of profiel voor compressie niet decoderen. Kies een andere bron of apparaat.';

  @override
  String get compressionMp4NotStreamable =>
      'De geëxporteerde MP4 is niet klaar voor streaming. Probeer een andere video of apparaat.';

  @override
  String get compressionNoSpace =>
      'Er is niet genoeg vrije opslagruimte om deze video te comprimeren.';

  @override
  String get compressionHdrUnsupported =>
      'Dit apparaat kan de geselecteerde HDR-modus niet verwerken. Probeer te converteren naar SDR.';

  @override
  String get compressionGeneralFailure =>
      'Compressie kon niet worden voltooid. Probeer een andere instelling of video.';

  @override
  String get aboutIdentitySection => 'App-identiteit';

  @override
  String get aboutAppName => 'App-naam';

  @override
  String get aboutPackageName => 'Pakketnaam';

  @override
  String get aboutVersion => 'Versie';

  @override
  String get aboutBuildNumber => 'Bouwnummer';

  @override
  String get aboutEnvironmentSection => 'Apparaat en build';

  @override
  String get aboutOperatingSystem => 'Besturingssysteem';

  @override
  String get aboutOsVersion => 'OS-versie';

  @override
  String get aboutBuildMode => 'Build-modus';

  @override
  String get aboutDebug => 'Debug';

  @override
  String get aboutRelease => 'Release';

  @override
  String get aboutToolchainSection => 'Gemaakt met';

  @override
  String get aboutInstallationSection => 'Installatie';

  @override
  String get aboutInstaller => 'Geïnstalleerd vanaf';

  @override
  String get aboutInstalledOn => 'Geïnstalleerd op';

  @override
  String get aboutUpdatedOn => 'Bijgewerkt op';

  @override
  String get aboutUnavailable => 'Niet beschikbaar';

  @override
  String get aboutProjectSection => 'Project en ondersteuning';

  @override
  String get aboutRepository => 'GitHub-repository';

  @override
  String get aboutRepositorySubtitle => 'Bekijk Zumi-broncode';

  @override
  String get aboutReadme => 'Lees de README';

  @override
  String get aboutReadmeSubtitle => 'Leer over Zumi op GitHub';

  @override
  String get aboutIssues => 'Meld een probleem';

  @override
  String get aboutIssuesSubtitle => 'Bekijk en maak GitHub-issues';

  @override
  String get aboutLatestRelease => 'Laatste release';

  @override
  String get aboutLatestReleaseSubtitle => 'Bekijk releases en downloads';

  @override
  String get aboutDonate => 'Ondersteun Zumi';

  @override
  String get aboutDonateSubtitle => 'Open de officiële donatiepagina';

  @override
  String get aboutLinkError => 'Kon de link niet openen. Probeer het opnieuw.';

  @override
  String get aboutDeveloperSection => 'Ontwikkelaar';

  @override
  String get aboutDeveloperName => 'Mostafa Sensei';

  @override
  String get aboutDeveloperProfile => 'GitHub-profiel';

  @override
  String get aboutDeveloperProfileSubtitle =>
      'Bekijk projecten en contactgegevens';

  @override
  String get maintenanceInProgress => 'Onderhoud in uitvoering';

  @override
  String get maintenanceMessage =>
      'Zumi is tijdelijk niet beschikbaar. Probeer het later opnieuw.';

  @override
  String get comingSoon => 'Binnenkort beschikbaar';

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
  String fileSavedToDcim(String fileName) {
    return 'Bestand opgeslagen in galerie: $fileName';
  }

  @override
  String fileSavedToDocuments(String fileName) {
    return 'Bestand opgeslagen in documenten: $fileName';
  }

  @override
  String get fileAlreadySaved => 'Bestand is al opgeslagen';

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
  String get error_address_line_cant_be_empty =>
      'Adresregel mag niet leeg zijn';

  @override
  String get error_address_line_too_long => 'Adresregel is te lang';

  @override
  String get error_address_invalid_special_characters =>
      'Speciale tekens zijn niet toegestaan';

  @override
  String get error_address_emoji_not_allowed => 'Emoji\'s zijn niet toegestaan';

  @override
  String get error_city_cant_be_empty => 'Stad mag niet leeg zijn';

  @override
  String get error_city_too_long => 'Stadsnaam is te lang';

  @override
  String get error_city_invalid_special_characters =>
      'Stad bevat ongeldige speciale tekens';

  @override
  String get error_address_label_cant_be_empty =>
      'Adreslabel mag niet leeg zijn';

  @override
  String get error_address_label_too_long => 'Adreslabel is te lang';

  @override
  String get error_email_cant_be_empty => 'E-mail mag niet leeg zijn';

  @override
  String get error_email_not_invalid_format => 'Ongeldig e-mailformaat';

  @override
  String get error_email_contains_invalid_characters =>
      'E-mail bevat ongeldige tekens';

  @override
  String get error_email_must_contain_at_symbol => 'E-mail moet @ bevatten';

  @override
  String get error_email_must_be_in_lowercase =>
      'E-mail moet in kleine letters zijn';

  @override
  String get error_arabic_not_allowed =>
      'Arabische tekens zijn niet toegestaan';

  @override
  String get error_email_emoji_not_allowed =>
      'Emoji\'s zijn niet toegestaan in e-mail';

  @override
  String get error_phone_number_cant_be_empty =>
      'Telefoonnummer mag niet leeg zijn';

  @override
  String get error_phone_number_invalid => 'Ongeldig telefoonnummer';

  @override
  String get error_phone_number_min_length =>
      'Telefoonnummer moet minimaal 11 cijfers bevatten';

  @override
  String get error_name_cant_be_empty => 'Naam mag niet leeg zijn';

  @override
  String get error_name_invalid => 'Ongeldige naam';

  @override
  String get error_name_too_short_at_least_3_characters =>
      'Naam moet minimaal 3 tekens bevatten';

  @override
  String get error_name_too_long_maximum_20_characters =>
      'Naam mag niet meer dan 20 tekens bevatten';

  @override
  String get error_name_invalid_special_characters =>
      'Naam bevat ongeldige speciale tekens';

  @override
  String get error_name_emoji_not_allowed =>
      'Emoji\'s zijn niet toegestaan in naam';

  @override
  String get error_password_cant_be_empty => 'Wachtwoord mag niet leeg zijn';

  @override
  String
  get error_password_must_contain_uppercase_lowercase_number_and_special_character =>
      'Wachtwoord moet hoofdletters, kleine letters, cijfers en een speciaal teken bevatten';

  @override
  String get error_password_must_be_at_least_8_characters_long =>
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
  String get settingsGroupAppearance => 'Uiterlijk & taal';

  @override
  String get settingsGroupCompression => 'Compressie';

  @override
  String get settingsGroupAi => 'AI op het apparaat';

  @override
  String get settingsGroupPrivacy => 'Meldingen & privacy';

  @override
  String get settingsGroupPlans => 'Plannen & aankopen';

  @override
  String get settingsGroupAbout => 'Over';

  @override
  String get settingsGroupLegal => 'Juridisch';

  @override
  String get settingsGroupHelp => 'Help & feedback';

  @override
  String get settingsGroupAccount => 'Account';

  @override
  String get settingsAppearanceSubtitle => 'Thema en app-taal';

  @override
  String get settingsLanguageSubtitle => 'App-taal en -richting';

  @override
  String get settingsCompressionSubtitle => 'Standaardkwaliteit en -formaat';

  @override
  String get settingsStorageSubtitle => 'Cache- en opslaggebruik';

  @override
  String get aiSettings => 'AI-instellingen';

  @override
  String get zumiAssistant => 'Zumi Assistent';

  @override
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere =>
      'Een privé-assistent voor je video\'s komt binnenkort. Je kunt hier vragen stellen over compressie, organisatie en opgeslagen video\'s.';

  @override
  String get settingsAiSubtitle => 'Lokale modellen en slimme tools';

  @override
  String get exploreLocalModelsAndFutureAiToolsTheseOptionsAreNotActiveYet =>
      'Verken lokale modellen en toekomstige AI-tools. Deze opties zijn nog niet actief.';

  @override
  String get localModels => 'Lokale modellen';

  @override
  String get aiModelsSubtitle =>
      'Blader door en download ondersteunde modellen';

  @override
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere =>
      'Kies een ondersteund model, download het naar dit apparaat en beheer hier geïnstalleerde modellen.';

  @override
  String get importAModel => 'Een model importeren';

  @override
  String get aiImportSubtitle =>
      'Gebruik een compatibel model uit je bestanden';

  @override
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt =>
      'Selecteer een compatibel lokaal modelfile en bekijk de vereisten voordat u het gebruikt.';

  @override
  String get smartFeatures => 'Slimme functies';

  @override
  String get aiFeaturesSubtitle => 'Compressie, organisatie en zoeken';

  @override
  String
  get chooseWhichLocalAiSuggestionsToUseForVideoCompressionOrganizationNamingAndSearch =>
      'Kies welke lokale AI-suggesties u wilt gebruiken voor videocompressie, organisatie, naamgeving en zoeken.';

  @override
  String get modelPerformance => 'Modelprestaties';

  @override
  String get aiRuntimeSubtitle => 'Verwerkings- en resourcevoorkeuren';

  @override
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels =>
      'Controleer de verwerkingsbackend en resourcelimieten voor ondersteunde modellen.';

  @override
  String get conversationSettings => 'Gespreksinstellingen';

  @override
  String get aiChatSettingsSubtitle => 'Streaming, denken en responslengte';

  @override
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits =>
      'Configureer hoe de assistent reageert, inclusief streaming, denkmethode, sampling en responslimieten.';

  @override
  String get imagesAndAudio => 'Afbeeldingen en audio';

  @override
  String get aiMediaSubtitle => 'Beheer multimodale invoer';

  @override
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos =>
      'Kies of compatibele modellen geselecteerde afbeeldingen en audio van je video\'s kunnen analyseren.';

  @override
  String get semanticSearch => 'Semantisch zoeken';

  @override
  String get aiSearchSubtitle => 'Embeddings en lokale indexering';

  @override
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning =>
      'Beheer het lokale embedding-model en de zoekindex om video\'s en momenten te vinden op basis van betekenis.';

  @override
  String get toolsAndStructuredOutput => 'Tools en gestructureerde output';

  @override
  String get aiToolsSubtitle => 'Acties, schema\'s en bevestigingen';

  @override
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation =>
      'Beheer ondersteunde assistentacties en gestructureerde antwoorden. Acties die bestanden beïnvloeden, vereisen uw bevestiging.';

  @override
  String get aiGroupModels => 'Modellen';

  @override
  String get aiGroupExperience => 'Assistentervaring';

  @override
  String get aiGroupCapabilities => 'Slimme mogelijkheden';

  @override
  String get aiGroupPerformance => 'Prestaties';

  @override
  String get compressionHistorySubtitle => 'Uw gecomprimeerde videohistorie';

  @override
  String get settingsNotificationsSubtitle => 'Voltooiings- en updatemeldingen';

  @override
  String get settingsPrivacySubtitle => 'Uw gegevens blijven lokaal';

  @override
  String get plansSubtitle => 'Vergelijk plannen en upgrade';

  @override
  String get plansMethodsSubtitle => 'Betaalmethoden en facturering';

  @override
  String get plansRestoreSubtitle => 'Herstel uw vorige aankoop';

  @override
  String get aboutAppSubtitle => 'Versie- en builddetails';

  @override
  String get aboutDeveloperSubtitle => 'De ontwikkelaar achter Zumi';

  @override
  String get aboutLicensesSubtitle => 'Open source pakketlicenties';

  @override
  String get legalPrivacySubtitle => 'Hoe gegevens worden behandeld';

  @override
  String get legalTermsSubtitle => 'Regels voor het gebruik van Zumi';

  @override
  String get legalDataSafetySubtitle => 'Welke gegevens we verzamelen';

  @override
  String get legalPermissionsSubtitle => 'Waarom we toestemming nodig hebben';

  @override
  String get helpFaqSubtitle => 'Antwoorden op veelgestelde vragen';

  @override
  String get helpSupportSubtitle =>
      'Neem rechtstreeks contact op met de ontwikkelaar';

  @override
  String get helpFeedbackSubtitle => 'Stuur ons uw feedback';

  @override
  String get compressionPickVideo => 'Kies video';

  @override
  String get compressionTargetMb => 'Doelgrootte (MB)';

  @override
  String get compressionStart => 'Start compressie';

  @override
  String get compressionPause => 'Pauzeer';

  @override
  String get compressionResume => 'Hervat';

  @override
  String get compressionViewResult => 'Bekijk resultaat';

  @override
  String get compressionSaveGallery => 'Opslaan in galerij';

  @override
  String get compressionShare => 'Deel video';

  @override
  String get compressionOriginalSize => 'Oorspronkelijke grootte';

  @override
  String get compressionOutputSize => 'Uitvoer grootte';

  @override
  String get compressionEmptyHistory => 'Nog geen gecomprimeerde video\'s';

  @override
  String get compressionSavedGallery => 'Opgeslagen in galerij';

  @override
  String get compressionInvalidTarget =>
      'Voer een doelgrootte groter dan nul in';

  @override
  String get compressionCancelled => 'Compressie geannuleerd';

  @override
  String get compressionTargetExceeded =>
      'Deze video kon de geselecteerde grootte niet bereiken. Probeer een grotere doelgrootte.';

  @override
  String get compressionTargetInfeasible =>
      'De geselecteerde grootte is te klein voor deze video. Kies een grotere grootte.';

  @override
  String get compressionPreviewBefore => 'Oorspronkelijke voorbeeld';

  @override
  String get compressionPreviewAfter => 'Samengeperste preview';

  @override
  String get compressionPreset => 'Doelpreset';

  @override
  String get compressionCustom => 'Aangepaste grootte';

  @override
  String get compressionPreviewUnavailable => 'Preview niet beschikbaar';

  @override
  String get compressionAdvanced => 'Geavanceerde bedieningselementen';

  @override
  String get compressionAutomatic => 'Automatisch';

  @override
  String get compressionResolutionLimit => 'Maximale resolutie';

  @override
  String get compressionSourceResolution => 'Originele resolutie';

  @override
  String get compressionFrameRateLimit => 'Maximale framerate';

  @override
  String get compressionAudioQuality => 'Audiobitrate';

  @override
  String get compressionRemoveAudio => 'Audio verwijderen';

  @override
  String get compressionVideoBitrateLimit => 'Maximale videobitrate (kbps)';

  @override
  String get compressionHdrPolicy => 'HDR-hantering';

  @override
  String get compressionHdrConvert => 'Converteren naar SDR';

  @override
  String get compressionHdrPreserve => 'HDR behouden indien ondersteund';

  @override
  String get compressionPlanPreview => 'Voordat je begint';

  @override
  String get compressionPlanLoading => 'Compressieplan wordt berekend…';

  @override
  String get compressionPlanResolution => 'Geplande resolutie';

  @override
  String get compressionPlanVideoBitrate => 'Geplande videobitrate';

  @override
  String get compressionPlanAudioBitrate => 'Geplande audiobitrate';

  @override
  String get compressionAudioConversionNote =>
      'Herverpakking zet audio om naar AAC stereo. Dolby Atmos en DTS ruimtelijke audio worden niet behouden.';

  @override
  String get compressionPlanTooSmall =>
      'Dit doel is te klein voor een bruikbare video. Vergroot de grootte of verlaag andere limieten.';

  @override
  String get compressionPlanLowQuality =>
      'Het geselecteerde doel kan de videokwaliteit verminderen.';

  @override
  String get compressionPlanAlreadyWithinLimit =>
      'De bron bevindt zich al binnen de grootte limiet.';

  @override
  String get compressionInvalidBitrate =>
      'Voer een bitrate van minimaal 150 kbps in, of laat leeg voor automatisch.';

  @override
  String get compressionInvalidResolution =>
      'Voer een even resolutie in van 240 tot 16384, of laat leeg voor automatisch.';

  @override
  String get compressionSeek => 'Videopositie';

  @override
  String get compressionInterrupted =>
      'Een eerdere compressie werd onderbroken. De tijdelijke bestanden zijn verwijderd; u kunt de video selecteren en het opnieuw proberen.';

  @override
  String get compressionDismiss => 'Sluiten';

  @override
  String get compressionClearHistory => 'Geschiedenis wissen';

  @override
  String get compressionClearHistoryConfirm =>
      'Alle geschiedenisitems verwijderen? Opgeslagen video\'s blijven op uw apparaat.';

  @override
  String get compressionAttempts => 'Pogingen';

  @override
  String get compressionTargetSize => 'Doelgrootte';

  @override
  String get compressionOutputResolution => 'Uitvoerresolutie';

  @override
  String get compressionInvalidVideo =>
      'Deze video kon niet worden gelezen. Kies een ander bestand.';

  @override
  String get compressionInvalidOutput =>
      'De gecodeerde video is mislukt bij verificatie. Uw originele video is niet gewijzigd.';

  @override
  String get compressionEncoderUnsupported =>
      'Dit apparaat kan de geselecteerde resolutie of beeldsnelheid niet coderen. Verlaag die instelling en probeer opnieuw.';

  @override
  String get compressionAudioDecoderUnsupported =>
      'Dit apparaat kan dit audioformaat niet decoderen voor compressie. Verwijder audio of gebruik een ondersteunde bron.';

  @override
  String get compressionVideoDecoderUnsupported =>
      'Dit apparaat kan dit videoformaat of profiel voor compressie niet decoderen. Kies een andere bron of apparaat.';

  @override
  String get compressionMp4NotStreamable =>
      'De geëxporteerde MP4 is niet klaar voor streaming. Probeer een andere video of apparaat.';

  @override
  String get compressionNoSpace =>
      'Er is niet genoeg vrije opslagruimte om deze video te comprimeren.';

  @override
  String get compressionHdrUnsupported =>
      'Dit apparaat kan de geselecteerde HDR-modus niet verwerken. Probeer te converteren naar SDR.';

  @override
  String get compressionGeneralFailure =>
      'Compressie kon niet worden voltooid. Probeer een andere instelling of video.';

  @override
  String get aboutIdentitySection => 'App-identiteit';

  @override
  String get aboutAppName => 'App-naam';

  @override
  String get aboutPackageName => 'Pakketnaam';

  @override
  String get aboutVersion => 'Versie';

  @override
  String get aboutBuildNumber => 'Bouwnummer';

  @override
  String get aboutEnvironmentSection => 'Apparaat en build';

  @override
  String get aboutOperatingSystem => 'Besturingssysteem';

  @override
  String get aboutOsVersion => 'OS-versie';

  @override
  String get aboutBuildMode => 'Build-modus';

  @override
  String get aboutDebug => 'Debug';

  @override
  String get aboutRelease => 'Release';

  @override
  String get aboutToolchainSection => 'Gemaakt met';

  @override
  String get aboutInstallationSection => 'Installatie';

  @override
  String get aboutInstaller => 'Geïnstalleerd vanaf';

  @override
  String get aboutInstalledOn => 'Geïnstalleerd op';

  @override
  String get aboutUpdatedOn => 'Bijgewerkt op';

  @override
  String get aboutUnavailable => 'Niet beschikbaar';

  @override
  String get aboutProjectSection => 'Project en ondersteuning';

  @override
  String get aboutRepository => 'GitHub-repository';

  @override
  String get aboutRepositorySubtitle => 'Bekijk Zumi-broncode';

  @override
  String get aboutReadme => 'Lees de README';

  @override
  String get aboutReadmeSubtitle => 'Leer over Zumi op GitHub';

  @override
  String get aboutIssues => 'Meld een probleem';

  @override
  String get aboutIssuesSubtitle => 'Bekijk en maak GitHub-issues';

  @override
  String get aboutLatestRelease => 'Laatste release';

  @override
  String get aboutLatestReleaseSubtitle => 'Bekijk releases en downloads';

  @override
  String get aboutDonate => 'Ondersteun Zumi';

  @override
  String get aboutDonateSubtitle => 'Open de officiële donatiepagina';

  @override
  String get aboutLinkError => 'Kon de link niet openen. Probeer het opnieuw.';

  @override
  String get aboutDeveloperSection => 'Ontwikkelaar';

  @override
  String get aboutDeveloperName => 'Mostafa Sensei';

  @override
  String get aboutDeveloperProfile => 'GitHub-profiel';

  @override
  String get aboutDeveloperProfileSubtitle =>
      'Bekijk projecten en contactgegevens';

  @override
  String get maintenanceInProgress => 'Onderhoud in uitvoering';

  @override
  String get maintenanceMessage =>
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

/// The translations for Dutch Flemish, as used in Netherlands (`nl_NL`).
class AppLocalizationsNlNl extends AppLocalizationsNl {
  AppLocalizationsNlNl() : super('nl_NL');

  @override
  String get zumi => 'Zumi';

  @override
  String get downloadFile => 'Bestand downloaden';

  @override
  String fileOpenedInBrowser(String fileName) {
    return 'Bestand geopend in browser: $fileName';
  }

  @override
  String fileSavedToDcim(String fileName) {
    return 'Bestand opgeslagen in galerie: $fileName';
  }

  @override
  String fileSavedToDocuments(String fileName) {
    return 'Bestand opgeslagen in documenten: $fileName';
  }

  @override
  String get fileAlreadySaved => 'Bestand is al opgeslagen';

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
  String get error_address_line_cant_be_empty =>
      'Adresregel mag niet leeg zijn';

  @override
  String get error_address_line_too_long => 'Adresregel is te lang';

  @override
  String get error_address_invalid_special_characters =>
      'Speciale tekens zijn niet toegestaan';

  @override
  String get error_address_emoji_not_allowed => 'Emoji\'s zijn niet toegestaan';

  @override
  String get error_city_cant_be_empty => 'Stad mag niet leeg zijn';

  @override
  String get error_city_too_long => 'Stadsnaam is te lang';

  @override
  String get error_city_invalid_special_characters =>
      'Stad bevat ongeldige speciale tekens';

  @override
  String get error_address_label_cant_be_empty =>
      'Adreslabel mag niet leeg zijn';

  @override
  String get error_address_label_too_long => 'Adreslabel is te lang';

  @override
  String get error_email_cant_be_empty => 'E-mail mag niet leeg zijn';

  @override
  String get error_email_not_invalid_format => 'Ongeldig e-mailformaat';

  @override
  String get error_email_contains_invalid_characters =>
      'E-mail bevat ongeldige tekens';

  @override
  String get error_email_must_contain_at_symbol => 'E-mail moet @ bevatten';

  @override
  String get error_email_must_be_in_lowercase =>
      'E-mail moet in kleine letters zijn';

  @override
  String get error_arabic_not_allowed =>
      'Arabische tekens zijn niet toegestaan';

  @override
  String get error_email_emoji_not_allowed =>
      'Emoji\'s zijn niet toegestaan in e-mail';

  @override
  String get error_phone_number_cant_be_empty =>
      'Telefoonnummer mag niet leeg zijn';

  @override
  String get error_phone_number_invalid => 'Ongeldig telefoonnummer';

  @override
  String get error_phone_number_min_length =>
      'Telefoonnummer moet minimaal 11 cijfers bevatten';

  @override
  String get error_name_cant_be_empty => 'Naam mag niet leeg zijn';

  @override
  String get error_name_invalid => 'Ongeldige naam';

  @override
  String get error_name_too_short_at_least_3_characters =>
      'Naam moet minimaal 3 tekens bevatten';

  @override
  String get error_name_too_long_maximum_20_characters =>
      'Naam mag niet meer dan 20 tekens bevatten';

  @override
  String get error_name_invalid_special_characters =>
      'Naam bevat ongeldige speciale tekens';

  @override
  String get error_name_emoji_not_allowed =>
      'Emoji\'s zijn niet toegestaan in naam';

  @override
  String get error_password_cant_be_empty => 'Wachtwoord mag niet leeg zijn';

  @override
  String
  get error_password_must_contain_uppercase_lowercase_number_and_special_character =>
      'Wachtwoord moet hoofdletters, kleine letters, cijfers en een speciaal teken bevatten';

  @override
  String get error_password_must_be_at_least_8_characters_long =>
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
  String get settingsGroupAppearance => 'Uiterlijk & taal';

  @override
  String get settingsGroupCompression => 'Compressie';

  @override
  String get settingsGroupAi => 'AI op het apparaat';

  @override
  String get settingsGroupPrivacy => 'Meldingen & privacy';

  @override
  String get settingsGroupPlans => 'Plannen & aankopen';

  @override
  String get settingsGroupAbout => 'Over';

  @override
  String get settingsGroupLegal => 'Juridisch';

  @override
  String get settingsGroupHelp => 'Help & feedback';

  @override
  String get settingsGroupAccount => 'Account';

  @override
  String get settingsAppearanceSubtitle => 'Thema en app-taal';

  @override
  String get settingsLanguageSubtitle => 'App-taal en -richting';

  @override
  String get settingsCompressionSubtitle => 'Standaardkwaliteit en -formaat';

  @override
  String get settingsStorageSubtitle => 'Cache- en opslaggebruik';

  @override
  String get aiSettings => 'AI-instellingen';

  @override
  String get zumiAssistant => 'Zumi Assistent';

  @override
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere =>
      'Een privé-assistent voor je video\'s komt binnenkort. Je kunt hier vragen stellen over compressie, organisatie en opgeslagen video\'s.';

  @override
  String get settingsAiSubtitle => 'Lokale modellen en slimme tools';

  @override
  String get exploreLocalModelsAndFutureAiToolsTheseOptionsAreNotActiveYet =>
      'Verken lokale modellen en toekomstige AI-tools. Deze opties zijn nog niet actief.';

  @override
  String get localModels => 'Lokale modellen';

  @override
  String get aiModelsSubtitle =>
      'Blader door en download ondersteunde modellen';

  @override
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere =>
      'Kies een ondersteund model, download het naar dit apparaat en beheer hier geïnstalleerde modellen.';

  @override
  String get importAModel => 'Een model importeren';

  @override
  String get aiImportSubtitle =>
      'Gebruik een compatibel model uit je bestanden';

  @override
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt =>
      'Selecteer een compatibel lokaal modelfile en bekijk de vereisten voordat u het gebruikt.';

  @override
  String get smartFeatures => 'Slimme functies';

  @override
  String get aiFeaturesSubtitle => 'Compressie, organisatie en zoeken';

  @override
  String
  get chooseWhichLocalAiSuggestionsToUseForVideoCompressionOrganizationNamingAndSearch =>
      'Kies welke lokale AI-suggesties u wilt gebruiken voor videocompressie, organisatie, naamgeving en zoeken.';

  @override
  String get modelPerformance => 'Modelprestaties';

  @override
  String get aiRuntimeSubtitle => 'Verwerkings- en resourcevoorkeuren';

  @override
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels =>
      'Controleer de verwerkingsbackend en resourcelimieten voor ondersteunde modellen.';

  @override
  String get conversationSettings => 'Gespreksinstellingen';

  @override
  String get aiChatSettingsSubtitle => 'Streaming, denken en responslengte';

  @override
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits =>
      'Configureer hoe de assistent reageert, inclusief streaming, denkmethode, sampling en responslimieten.';

  @override
  String get imagesAndAudio => 'Afbeeldingen en audio';

  @override
  String get aiMediaSubtitle => 'Beheer multimodale invoer';

  @override
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos =>
      'Kies of compatibele modellen geselecteerde afbeeldingen en audio van je video\'s kunnen analyseren.';

  @override
  String get semanticSearch => 'Semantisch zoeken';

  @override
  String get aiSearchSubtitle => 'Embeddings en lokale indexering';

  @override
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning =>
      'Beheer het lokale embedding-model en de zoekindex om video\'s en momenten te vinden op basis van betekenis.';

  @override
  String get toolsAndStructuredOutput => 'Tools en gestructureerde output';

  @override
  String get aiToolsSubtitle => 'Acties, schema\'s en bevestigingen';

  @override
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation =>
      'Beheer ondersteunde assistentacties en gestructureerde antwoorden. Acties die bestanden beïnvloeden, vereisen uw bevestiging.';

  @override
  String get aiGroupModels => 'Modellen';

  @override
  String get aiGroupExperience => 'Assistentervaring';

  @override
  String get aiGroupCapabilities => 'Slimme mogelijkheden';

  @override
  String get aiGroupPerformance => 'Prestaties';

  @override
  String get compressionHistorySubtitle => 'Uw gecomprimeerde videohistorie';

  @override
  String get settingsNotificationsSubtitle => 'Voltooiings- en updatemeldingen';

  @override
  String get settingsPrivacySubtitle => 'Uw gegevens blijven lokaal';

  @override
  String get plansSubtitle => 'Vergelijk plannen en upgrade';

  @override
  String get plansMethodsSubtitle => 'Betaalmethoden en facturering';

  @override
  String get plansRestoreSubtitle => 'Herstel uw vorige aankoop';

  @override
  String get aboutAppSubtitle => 'Versie- en builddetails';

  @override
  String get aboutDeveloperSubtitle => 'De ontwikkelaar achter Zumi';

  @override
  String get aboutLicensesSubtitle => 'Open source pakketlicenties';

  @override
  String get legalPrivacySubtitle => 'Hoe gegevens worden behandeld';

  @override
  String get legalTermsSubtitle => 'Regels voor het gebruik van Zumi';

  @override
  String get legalDataSafetySubtitle => 'Welke gegevens we verzamelen';

  @override
  String get legalPermissionsSubtitle => 'Waarom we toestemming nodig hebben';

  @override
  String get helpFaqSubtitle => 'Antwoorden op veelgestelde vragen';

  @override
  String get helpSupportSubtitle =>
      'Neem rechtstreeks contact op met de ontwikkelaar';

  @override
  String get helpFeedbackSubtitle => 'Stuur ons uw feedback';

  @override
  String get compressionPickVideo => 'Kies video';

  @override
  String get compressionTargetMb => 'Doelgrootte (MB)';

  @override
  String get compressionStart => 'Start compressie';

  @override
  String get compressionPause => 'Pauzeer';

  @override
  String get compressionResume => 'Hervat';

  @override
  String get compressionViewResult => 'Bekijk resultaat';

  @override
  String get compressionSaveGallery => 'Opslaan in galerij';

  @override
  String get compressionShare => 'Deel video';

  @override
  String get compressionOriginalSize => 'Oorspronkelijke grootte';

  @override
  String get compressionOutputSize => 'Uitvoer grootte';

  @override
  String get compressionEmptyHistory => 'Nog geen gecomprimeerde video\'s';

  @override
  String get compressionSavedGallery => 'Opgeslagen in galerij';

  @override
  String get compressionInvalidTarget =>
      'Voer een doelgrootte groter dan nul in';

  @override
  String get compressionCancelled => 'Compressie geannuleerd';

  @override
  String get compressionTargetExceeded =>
      'Deze video kon de geselecteerde grootte niet bereiken. Probeer een grotere doelgrootte.';

  @override
  String get compressionTargetInfeasible =>
      'De geselecteerde grootte is te klein voor deze video. Kies een grotere grootte.';

  @override
  String get compressionPreviewBefore => 'Oorspronkelijke voorbeeld';

  @override
  String get compressionPreviewAfter => 'Samengeperste preview';

  @override
  String get compressionPreset => 'Doelpreset';

  @override
  String get compressionCustom => 'Aangepaste grootte';

  @override
  String get compressionPreviewUnavailable => 'Preview niet beschikbaar';

  @override
  String get compressionAdvanced => 'Geavanceerde bedieningselementen';

  @override
  String get compressionAutomatic => 'Automatisch';

  @override
  String get compressionResolutionLimit => 'Maximale resolutie';

  @override
  String get compressionSourceResolution => 'Originele resolutie';

  @override
  String get compressionFrameRateLimit => 'Maximale framerate';

  @override
  String get compressionAudioQuality => 'Audiobitrate';

  @override
  String get compressionRemoveAudio => 'Audio verwijderen';

  @override
  String get compressionVideoBitrateLimit => 'Maximale videobitrate (kbps)';

  @override
  String get compressionHdrPolicy => 'HDR-hantering';

  @override
  String get compressionHdrConvert => 'Converteren naar SDR';

  @override
  String get compressionHdrPreserve => 'HDR behouden indien ondersteund';

  @override
  String get compressionPlanPreview => 'Voordat je begint';

  @override
  String get compressionPlanLoading => 'Compressieplan wordt berekend…';

  @override
  String get compressionPlanResolution => 'Geplande resolutie';

  @override
  String get compressionPlanVideoBitrate => 'Geplande videobitrate';

  @override
  String get compressionPlanAudioBitrate => 'Geplande audiobitrate';

  @override
  String get compressionAudioConversionNote =>
      'Herverpakking zet audio om naar AAC stereo. Dolby Atmos en DTS ruimtelijke audio worden niet behouden.';

  @override
  String get compressionPlanTooSmall =>
      'Dit doel is te klein voor een bruikbare video. Vergroot de grootte of verlaag andere limieten.';

  @override
  String get compressionPlanLowQuality =>
      'Het geselecteerde doel kan de videokwaliteit verminderen.';

  @override
  String get compressionPlanAlreadyWithinLimit =>
      'De bron bevindt zich al binnen de grootte limiet.';

  @override
  String get compressionInvalidBitrate =>
      'Voer een bitrate van minimaal 150 kbps in, of laat leeg voor automatisch.';

  @override
  String get compressionInvalidResolution =>
      'Voer een even resolutie in van 240 tot 16384, of laat leeg voor automatisch.';

  @override
  String get compressionSeek => 'Videopositie';

  @override
  String get compressionInterrupted =>
      'Een eerdere compressie werd onderbroken. De tijdelijke bestanden zijn verwijderd; u kunt de video selecteren en het opnieuw proberen.';

  @override
  String get compressionDismiss => 'Sluiten';

  @override
  String get compressionClearHistory => 'Geschiedenis wissen';

  @override
  String get compressionClearHistoryConfirm =>
      'Alle geschiedenisitems verwijderen? Opgeslagen video\'s blijven op uw apparaat.';

  @override
  String get compressionAttempts => 'Pogingen';

  @override
  String get compressionTargetSize => 'Doelgrootte';

  @override
  String get compressionOutputResolution => 'Uitvoerresolutie';

  @override
  String get compressionInvalidVideo =>
      'Deze video kon niet worden gelezen. Kies een ander bestand.';

  @override
  String get compressionInvalidOutput =>
      'De gecodeerde video is mislukt bij verificatie. Uw originele video is niet gewijzigd.';

  @override
  String get compressionEncoderUnsupported =>
      'Dit apparaat kan de geselecteerde resolutie of beeldsnelheid niet coderen. Verlaag die instelling en probeer opnieuw.';

  @override
  String get compressionAudioDecoderUnsupported =>
      'Dit apparaat kan dit audioformaat niet decoderen voor compressie. Verwijder audio of gebruik een ondersteunde bron.';

  @override
  String get compressionVideoDecoderUnsupported =>
      'Dit apparaat kan dit videoformaat of profiel voor compressie niet decoderen. Kies een andere bron of apparaat.';

  @override
  String get compressionMp4NotStreamable =>
      'De geëxporteerde MP4 is niet klaar voor streaming. Probeer een andere video of apparaat.';

  @override
  String get compressionNoSpace =>
      'Er is niet genoeg vrije opslagruimte om deze video te comprimeren.';

  @override
  String get compressionHdrUnsupported =>
      'Dit apparaat kan de geselecteerde HDR-modus niet verwerken. Probeer te converteren naar SDR.';

  @override
  String get compressionGeneralFailure =>
      'Compressie kon niet worden voltooid. Probeer een andere instelling of video.';

  @override
  String get aboutIdentitySection => 'App-identiteit';

  @override
  String get aboutAppName => 'App-naam';

  @override
  String get aboutPackageName => 'Pakketnaam';

  @override
  String get aboutVersion => 'Versie';

  @override
  String get aboutBuildNumber => 'Bouwnummer';

  @override
  String get aboutEnvironmentSection => 'Apparaat en build';

  @override
  String get aboutOperatingSystem => 'Besturingssysteem';

  @override
  String get aboutOsVersion => 'OS-versie';

  @override
  String get aboutBuildMode => 'Build-modus';

  @override
  String get aboutDebug => 'Debug';

  @override
  String get aboutRelease => 'Release';

  @override
  String get aboutToolchainSection => 'Gemaakt met';

  @override
  String get aboutInstallationSection => 'Installatie';

  @override
  String get aboutInstaller => 'Geïnstalleerd vanaf';

  @override
  String get aboutInstalledOn => 'Geïnstalleerd op';

  @override
  String get aboutUpdatedOn => 'Bijgewerkt op';

  @override
  String get aboutUnavailable => 'Niet beschikbaar';

  @override
  String get aboutProjectSection => 'Project en ondersteuning';

  @override
  String get aboutRepository => 'GitHub-repository';

  @override
  String get aboutRepositorySubtitle => 'Bekijk Zumi-broncode';

  @override
  String get aboutReadme => 'Lees de README';

  @override
  String get aboutReadmeSubtitle => 'Leer over Zumi op GitHub';

  @override
  String get aboutIssues => 'Meld een probleem';

  @override
  String get aboutIssuesSubtitle => 'Bekijk en maak GitHub-issues';

  @override
  String get aboutLatestRelease => 'Laatste release';

  @override
  String get aboutLatestReleaseSubtitle => 'Bekijk releases en downloads';

  @override
  String get aboutDonate => 'Ondersteun Zumi';

  @override
  String get aboutDonateSubtitle => 'Open de officiële donatiepagina';

  @override
  String get aboutLinkError => 'Kon de link niet openen. Probeer het opnieuw.';

  @override
  String get aboutDeveloperSection => 'Ontwikkelaar';

  @override
  String get aboutDeveloperName => 'Mostafa Sensei';

  @override
  String get aboutDeveloperProfile => 'GitHub-profiel';

  @override
  String get aboutDeveloperProfileSubtitle =>
      'Bekijk projecten en contactgegevens';

  @override
  String get maintenanceInProgress => 'Onderhoud in uitvoering';

  @override
  String get maintenanceMessage =>
      'Zumi is tijdelijk niet beschikbaar. Probeer het later opnieuw.';

  @override
  String get comingSoon => 'Binnenkort beschikbaar';

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
