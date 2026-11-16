// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swedish (`sv`).
class AppLocalizationsSv extends AppLocalizations {
  AppLocalizationsSv([String locale = 'sv']) : super(locale);

  @override
  String get zumi => 'Zumi';

  @override
  String get downloadFile => 'Ladda ner fil';

  @override
  String fileOpenedInBrowser(String fileName) {
    return 'Fil öppnad i webbläsare: $fileName';
  }

  @override
  String fileSavedToGallery(String fileName) {
    return 'Fil sparad till galleri: $fileName';
  }

  @override
  String fileSavedToDocuments(String fileName) {
    return 'Fil sparad till dokument: $fileName';
  }

  @override
  String get fileIsAlreadySaved => 'Fil är redan sparad';

  @override
  String get error => 'Fel';

  @override
  String get info => 'Info';

  @override
  String get success => 'Framgång';

  @override
  String get warning => 'Varning';

  @override
  String get paid => 'Betald';

  @override
  String get unpaid => 'Obetald';

  @override
  String get partial => 'Delvis';

  @override
  String get addressLineCannotBeEmpty => 'Adressrad får inte vara tom';

  @override
  String get addressLineIsTooLong => 'Adressrad är för lång';

  @override
  String get specialCharactersAreNotAllowed => 'Specialtecken är inte tillåtna';

  @override
  String get emojisAreNotAllowed => 'Emojis är inte tillåtna';

  @override
  String get cityCannotBeEmpty => 'Stad får inte vara tom';

  @override
  String get cityNameIsTooLong => 'Stadsnamn är för långt';

  @override
  String get cityContainsInvalidSpecialCharacters =>
      'Staden innehåller ogiltiga specialtecken';

  @override
  String get addressLabelCannotBeEmpty => 'Adressetikett får inte vara tom';

  @override
  String get addressLabelIsTooLong => 'Adressetikett är för lång';

  @override
  String get emailCannotBeEmpty => 'E-post får inte vara tom';

  @override
  String get invalidEmailFormat => 'Ogiltigt e-postformat';

  @override
  String get emailContainsInvalidCharacters =>
      'E-post innehåller ogiltiga tecken';

  @override
  String get emailMustContain => 'E-post måste innehålla @';

  @override
  String get emailMustBeInLowercase => 'E-post måste vara i små bokstäver';

  @override
  String get arabicCharactersAreNotAllowed =>
      'Arabiska tecken är inte tillåtna';

  @override
  String get emojisAreNotAllowedInEmail => 'Emojis är inte tillåtna i e-post';

  @override
  String get phoneNumberCannotBeEmpty => 'Telefonnummer får inte vara tomt';

  @override
  String get invalidPhoneNumber => 'Ogiltigt telefonnummer';

  @override
  String get phoneNumberMustBeAtLeast11Digits =>
      'Telefonnummer måste vara minst 11 siffror';

  @override
  String get nameCannotBeEmpty => 'Namn får inte vara tomt';

  @override
  String get invalidName => 'Ogiltigt namn';

  @override
  String get nameMustBeAtLeast3Characters => 'Namn måste vara minst 3 tecken';

  @override
  String get nameCannotExceed20Characters =>
      'Namn får inte överstiga 20 tecken';

  @override
  String get nameContainsInvalidSpecialCharacters =>
      'Namn innehåller ogiltiga specialtecken';

  @override
  String get emojisAreNotAllowedInName => 'Emojis är inte tillåtna i namn';

  @override
  String get passwordCannotBeEmpty => 'Lösenord får inte vara tomt';

  @override
  String get passwordMustContainUppercaseLowercaseNumberAndSpecialCharacter =>
      'Lösenordet måste innehålla stora bokstäver, små bokstäver, siffror och specialtecken';

  @override
  String get passwordMustBeAtLeast8CharactersLong =>
      'Lösenordet måste vara minst 8 tecken långt';

  @override
  String get noInternetConnection => 'Ingen internetanslutning';

  @override
  String get internetConnectionRestored => 'Internetanslutning återställd';

  @override
  String get retry => 'Försök igen';

  @override
  String get cancel => 'Avbryt';

  @override
  String get confirm => 'Bekräfta';

  @override
  String get pleaseWait => 'Vänligen vänta...';

  @override
  String get ok => 'OK';

  @override
  String get compressVideosPrivatelyOnYourDevice =>
      'Komprimera videor privat på din enhet.';

  @override
  String get welcomeToZumi => 'Välkommen till Zumi';

  @override
  String get learnHowZumiCompressesYourVideosWithoutEverLeavingYourPhone =>
      'Lär dig hur Zumi komprimerar dina videor utan att någonsin lämna din telefon.';

  @override
  String get signIn => 'Logga in';

  @override
  String get signInToSyncYourPlanAndKeepYourPurchasesAvailableOnEveryDevice =>
      'Logga in för att synkronisera din plan och hålla dina köp tillgängliga på alla enheter.';

  @override
  String get chooseAVideo => 'Välj en video';

  @override
  String get pickAVideoFromYourGalleryToStartCompressing =>
      'Välj en video från ditt galleri för att börja komprimera.';

  @override
  String get compressionSetup => 'Komprimeringsinställning';

  @override
  String get chooseResolutionBitrateAndOutputFormatBeforeYouStart =>
      'Välj upplösning, bithastighet och utdataformat innan du börjar.';

  @override
  String get compressing => 'Komprimerar';

  @override
  String get followTheLiveProgressOfYourCompressionJob =>
      'Följ den live framdriften av din komprimeringsuppgift.';

  @override
  String get compressionResult => 'Komprimeringsresultat';

  @override
  String get compareTheBeforeAndAfterSizeThenSaveOrShareTheResult =>
      'Jämför storleken före och efter, och spara eller dela sedan resultatet.';

  @override
  String get compressionHistory => 'Komprimeringshistorik';

  @override
  String get reviewTheVideosYouHaveCompressedOnThisDevice =>
      'Granska de videor du har komprimerat på denna enhet.';

  @override
  String get settings => 'Inställningar';

  @override
  String get appearance => 'Utseende';

  @override
  String get themeColorSchemeAndMotionPreferences =>
      'Tema, färgschema och rörelseinställningar.';

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
  String get language => 'Språk';

  @override
  String get appLanguageAndTextDirection => 'Appens språk och textriktning.';

  @override
  String get compressionDefaults => 'Standardinställningar för komprimering';

  @override
  String get defaultResolutionBitrateAndOutputFormat =>
      'Standardupplösning, bithastighet och utdataformat.';

  @override
  String get storageCleanup => 'Lagring & rensning';

  @override
  String get storageUsageCacheSizeAndTemporaryFileCleanup =>
      'Lagringsanvändning, cache-storlek och rengöring av temporära filer.';

  @override
  String get notifications => 'Notifikationer';

  @override
  String get jobCompletionAndProductUpdateNotifications =>
      'Notifikationer om slutförda jobb och produktuppdateringar.';

  @override
  String get privacy => 'Integritet';

  @override
  String get onDeviceProcessingLocalLogsAndOptionalCrashReports =>
      'Bearbetning på enheten, lokala loggar och valfria kraschrapporter.';

  @override
  String get aboutZumi => 'Om Zumi';

  @override
  String get versionBuildNumberAndApplicationDetails =>
      'Version, byggnummer och applikationsdetaljer.';

  @override
  String get aboutTheDeveloper => 'Om utvecklaren';

  @override
  String get theDeveloperAndToolsBehindZumi =>
      'Utvecklaren och verktygen bakom Zumi.';

  @override
  String get openSourceLicenses => 'Öppen källkod-licenser';

  @override
  String get openSourcePackagesBundledWithZumi =>
      'Öppen källkodspaket som ingår i Zumi.';

  @override
  String get privacyPolicy => 'Integritetspolicy';

  @override
  String get howZumiHandlesYourVideosAndData =>
      'Hur Zumi hanterar dina videor och data.';

  @override
  String get termsOfService => 'Användarvillkor';

  @override
  String get theTermsThatApplyToZumiAndItsPurchases =>
      'Villkoren som gäller för Zumi och dess köp.';

  @override
  String get dataSafety => 'Datasäkerhet';

  @override
  String get summaryOfTheDataZumiCollectsAndWhy =>
      'Sammanfattning av de data som Zumi samlar in och varför.';

  @override
  String get permissions => 'Behörigheter';

  @override
  String get runtimePermissionsZumiRequestsAndWhyEachIsNeeded =>
      'Körningstillstånd som Zumi begär och varför varje behövs.';

  @override
  String get faq => 'FAQ';

  @override
  String get answersToCommonQuestionsAboutCompressionAndBilling =>
      'Svar på vanliga frågor om komprimering och fakturering.';

  @override
  String get support => 'Support';

  @override
  String get getHelpWithYourAccountOrAPurchase =>
      'Få hjälp med ditt konto eller ett köp.';

  @override
  String get sendFeedback => 'Skicka feedback';

  @override
  String get reportAProblemOrSuggestAnImprovement =>
      'Rapportera ett problem eller föreslå en förbättring.';

  @override
  String get plans => 'Planer';

  @override
  String get comparePlansAndSeeWhatEachOneUnlocks =>
      'Jämför planer och se vad varje låser upp.';

  @override
  String get planDetails => 'Plandetaljer';

  @override
  String get benefitsLimitsAndPricingForThisPlan =>
      'Fördelar, begränsningar och prissättning för denna plan.';

  @override
  String get paymentMethods => 'Betalningsmetoder';

  @override
  String get supportedWaysToPayIncludingStoreBilling =>
      'Stödda betalningssätt, inklusive butikens fakturering.';

  @override
  String get restorePurchases => 'Återställ köp';

  @override
  String get reApplyAPurchaseMadeOnAnotherDevice =>
      'Återanvänd ett köp gjort på en annan enhet.';

  @override
  String get profile => 'Profil';

  @override
  String get yourIdentityPlanStatusAndAccountPreferences =>
      'Din identitet, planstatus och kontoinställningar.';

  @override
  String get deleteAccount => 'Radera konto';

  @override
  String get permanentlyRemoveYourAccountAndItsServerSideData =>
      'Ta permanent bort ditt konto och dess serverdata.';

  @override
  String get rateZumi => 'Betygsätt Zumi';

  @override
  String get tellOthersHowZumiWorkedForYouOnTheStore =>
      'Berätta för andra hur Zumi fungerade för dig i butiken.';

  @override
  String get shareZumi => 'Dela Zumi';

  @override
  String get recommendZumiToAFriend => 'Rekommendera Zumi till en vän.';

  @override
  String get appearanceLanguage => 'Utseende och språk';

  @override
  String get compression => 'Komprimering';

  @override
  String get onDeviceAI => 'AI på enheten';

  @override
  String get notificationsPrivacy => 'Notiser och integritet';

  @override
  String get plansPurchases => 'Planer och köp';

  @override
  String get about => 'Om';

  @override
  String get legal => 'Juridiskt';

  @override
  String get helpFeedback => 'Hjälp och feedback';

  @override
  String get account => 'Konto';

  @override
  String get themeAndAppLanguage => 'Tema och app-språk';

  @override
  String get appLanguageAndDirection => 'App-språk och riktning';

  @override
  String get defaultQualityAndFormat => 'Standardkvalitet och format';

  @override
  String get cacheAndStorageUsage => 'Cache- och lagringsanvändning';

  @override
  String get aiSettings => 'AI-inställningar';

  @override
  String get zumiAssistant => 'Zumi-assistent';

  @override
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere =>
      'En privat assistent för dina videor kommer snart. Du kommer att kunna fråga om komprimering, organisering och sparade videor här.';

  @override
  String get localModelsAndSmartTools => 'Lokala modeller och smarta verktyg';

  @override
  String get exploreLocalModelsAndFutureAIToolsTheseOptionsAreNotActiveYet =>
      'Utforska lokala modeller och framtida AI-verktyg. Dessa alternativ är ännu inte aktiva.';

  @override
  String get localModels => 'Lokala modeller';

  @override
  String get browseAndDownloadSupportedModels =>
      'Bläddra och ladda ner stödda modeller';

  @override
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere =>
      'Välj en stödd modell, ladda ner den till den här enheten och hantera installerade modeller här.';

  @override
  String get importAModel => 'Importera en modell';

  @override
  String get useACompatibleModelFromYourFiles =>
      'Använd en kompatibel modell från dina filer';

  @override
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt =>
      'Välj en kompatibel lokal modelfil och granska dess krav innan du använder den.';

  @override
  String get smartFeatures => 'Smart funktioner';

  @override
  String get compressionOrganizationAndSearch =>
      'Komprimering, organisering och sökning';

  @override
  String
  get chooseWhichLocalAISuggestionsToUseForVideoCompressionOrganizationNamingAndSearch =>
      'Välj vilka lokala AI-förslag som ska användas för videokomprimering, organisering, namngivning och sökning.';

  @override
  String get modelPerformance => 'Modellens prestanda';

  @override
  String get processingAndResourcePreferences =>
      'Bearbetnings- och resursinställningar';

  @override
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels =>
      'Kontrollera bearbetningsbakgrunden och resursgränserna för stödjda modeller.';

  @override
  String get conversationSettings => 'Samtalsinställningar';

  @override
  String get streamingThinkingAndResponseLength =>
      'Streaming, tänkande och svarslängd';

  @override
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits =>
      'Konfigurera hur assistenten svarar, inklusive streaming, tänkandemod, urval och svargränser.';

  @override
  String get imagesAndAudio => 'Bilder och ljud';

  @override
  String get controlMultimodalInputs => 'Styr multimodala insatser';

  @override
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos =>
      'Välj om kompatibla modeller kan analysera utvalda bilder och ljud från dina videor.';

  @override
  String get semanticSearch => 'Semantisk sökning';

  @override
  String get embeddingsAndLocalIndexing => 'Inbäddningar och lokal indexering';

  @override
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning =>
      'Hantera den lokala inbäddningsmodellen och sökindexet för att hitta videor och ögonblick efter betydelse.';

  @override
  String get toolsAndStructuredOutput => 'Verktyg och strukturerat utdata';

  @override
  String get actionsSchemasAndConfirmations =>
      'Åtgärder, scheman och bekräftelser';

  @override
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation =>
      'Hantera stödda assistentåtgärder och strukturerade svar. Åtgärder som påverkar filer kräver din bekräftelse.';

  @override
  String get models => 'Modeller';

  @override
  String get assistantExperience => 'Assistentupplevelse';

  @override
  String get smartCapabilities => 'Smart kapacitet';

  @override
  String get performance => 'Prestanda';

  @override
  String get yourCompressedVideoHistory => 'Din komprimerade videohistorik';

  @override
  String get completionAndUpdateAlerts =>
      'Slutförande- och uppdateringsvarningar';

  @override
  String get yourDataStaysLocal => 'Din data stannar lokalt';

  @override
  String get comparePlansAndUpgrade => 'Jämför planer och uppgradera';

  @override
  String get paymentMethodsAndBilling => 'Betalningsmetoder och fakturering';

  @override
  String get restoreYourPreviousPurchase => 'Återställ ditt tidigare köp';

  @override
  String get versionAndBuildDetails => 'Versions- och byggdetaljer';

  @override
  String get theDeveloperBehindZumi => 'Utvecklaren bakom Zumi';

  @override
  String get openSourcePackageLicenses => 'Licenser för öppna källpaket';

  @override
  String get howDataIsHandled => 'Hur data hanteras';

  @override
  String get rulesForUsingZumi => 'Regler för att använda Zumi';

  @override
  String get whatDataWeCollect => 'Vilken data vi samlar in';

  @override
  String get whyWeNeedPermissions => 'Varför vi behöver behörigheter';

  @override
  String get answersToCommonQuestions => 'Svar på vanliga frågor';

  @override
  String get reachTheDeveloperDirectly => 'Kontakta utvecklaren direkt';

  @override
  String get sendUsYourFeedback => 'Skicka oss din feedback';

  @override
  String get pickVideo => 'Välj video';

  @override
  String get targetSizeMB => 'Målstorlek (MB)';

  @override
  String get startCompression => 'Starta komprimering';

  @override
  String get pause => 'Pausa';

  @override
  String get resume => 'Återuppta';

  @override
  String get viewResult => 'Visa resultat';

  @override
  String get saveToGallery => 'Spara till galleri';

  @override
  String get shareVideo => 'Dela video';

  @override
  String get originalSize => 'Ursprunglig storlek';

  @override
  String get outputSize => 'Utdata storlek';

  @override
  String get noCompressedVideosYet => 'Inga komprimerade videor än';

  @override
  String get savedToGallery => 'Sparad till galleri';

  @override
  String get enterATargetSizeGreaterThanZero =>
      'Ange en målstorlek större än noll';

  @override
  String get compressionCancelled => 'Komprimering avbruten';

  @override
  String get thisVideoCouldNotReachTheSelectedSizeTryALargerTargetSize =>
      'Denna video kunde inte nå den valda storleken. Försök med en större målstorlek.';

  @override
  String get theSelectedSizeIsTooSmallForThisVideoChooseALargerSize =>
      'Den valda storleken är för liten för denna video. Välj en större storlek.';

  @override
  String get originalPreview => 'Originalförhandsvisning';

  @override
  String get compressedPreview => 'Komprimerad förhandsvisning';

  @override
  String get targetPreset => 'Målinställning';

  @override
  String get customSize => 'Anpassad storlek';

  @override
  String get previewUnavailable => 'Förhandsvisning ej tillgänglig';

  @override
  String get advancedControls => 'Avancerade kontroller';

  @override
  String get automatic => 'Automatisk';

  @override
  String get maximumResolution => 'Maximal upplösning';

  @override
  String get originalResolution => 'Ursprunglig upplösning';

  @override
  String get maximumFrameRate => 'Maximal bildfrekvens';

  @override
  String get audioBitrate => 'Ljudbitrate';

  @override
  String get removeAudio => 'Ta bort ljud';

  @override
  String get videoBitrateCeilingKbps => 'Video bitrate-tak (kbps)';

  @override
  String get hdrHandling => 'HDR-hantering';

  @override
  String get convertToSDR => 'Konvertera till SDR';

  @override
  String get keepHDRWhenSupported => 'Behåll HDR när det stöds';

  @override
  String get beforeYouStart => 'Innan du börjar';

  @override
  String get calculatingCompressionPlan => 'Beräknar komprimeringsplan…';

  @override
  String get plannedResolution => 'Planerad upplösning';

  @override
  String get plannedVideoBitrate => 'Planerad videobitrate';

  @override
  String get plannedAudioBitrate => 'Planerad ljudbitrate';

  @override
  String
  get reEncodingConvertsAudioToAACStereoDolbyAtmosAndDTSSpatialAudioWillNotBePreserved =>
      'Omkodning konverterar ljud till AAC stereo. Dolby Atmos och DTS rumsljud kommer inte att bevaras.';

  @override
  String
  get thisTargetIsTooSmallForAUsableVideoIncreaseTheSizeOrLowerOtherLimits =>
      'Detta mål är för litet för en användbar video. Öka storleken eller sänk andra begränsningar.';

  @override
  String get theSelectedTargetMayReduceVideoQuality =>
      'Det valda målet kan minska videokvaliteten.';

  @override
  String get theSourceIsAlreadyWithinTheSizeLimit =>
      'Källan är redan inom storleksgränsen.';

  @override
  String get enterABitrateOfAtLeast150KbpsOrLeaveBlankForAutomatic =>
      'Ange en bithastighet på minst 150 kbps, eller lämna tomt för automatisk inställning.';

  @override
  String get enterAnEvenResolutionFrom240To16384OrLeaveBlankForAutomatic =>
      'Ange en jämn upplösning från 240 till 16384, eller lämna tomt för automatisk inställning.';

  @override
  String get videoPosition => 'Videoposition';

  @override
  String
  get aPreviousCompressionWasInterruptedItsTemporaryFilesWereCleanedUpYouCanSelectTheVideoAndTryAgain =>
      'En tidigare komprimering avbröts. Dess temporära filer har rensats; du kan välja videon och försöka igen.';

  @override
  String get dismiss => 'Avvisa';

  @override
  String get clearHistory => 'Rensa historik';

  @override
  String get removeAllHistoryEntriesSavedVideosWillRemainOnYourDevice =>
      'Ta bort alla historikposter? Sparade videor kommer att finnas kvar på din enhet.';

  @override
  String get attempts => 'Försök';

  @override
  String get targetSize => 'Målstorlek';

  @override
  String get outputResolution => 'Utdataupplösning';

  @override
  String get thisVideoCouldNotBeReadChooseAnotherFile =>
      'Den här videon kunde inte läsas. Välj en annan fil.';

  @override
  String get theEncodedVideoFailedVerificationYourOriginalVideoWasNotChanged =>
      'Den kodade videon misslyckades med verifiering. Din ursprungliga video ändrades inte.';

  @override
  String
  get thisDeviceCannotEncodeTheSelectedResolutionOrFrameRateLowerThatSettingAndTryAgain =>
      'Den här enheten kan inte koda den valda upplösningen eller bildhastigheten. Sänk den inställningen och försök igen.';

  @override
  String
  get thisDeviceCannotDecodeThisAudioFormatForCompressionRemoveAudioOrUseASupportedSource =>
      'Den här enheten kan inte avkoda detta ljudformat för komprimering. Ta bort ljudet eller använd en stödd källa.';

  @override
  String
  get thisDeviceCannotDecodeThisVideoFormatOrProfileForCompressionChooseAnotherSourceOrDevice =>
      'Denna enhet kan inte avkoda detta videoformat eller profil för komprimering. Välj en annan källa eller enhet.';

  @override
  String get theExportedMP4IsNotReadyForStreamingTryAnotherVideoOrDevice =>
      'Den exporterade MP4-filen är inte redo för strömning. Prova en annan video eller enhet.';

  @override
  String get thereIsNotEnoughFreeStorageToCompressThisVideo =>
      'Det finns inte tillräckligt med ledigt utrymme för att komprimera denna video.';

  @override
  String get thisDeviceCannotProcessTheSelectedHDRModeTryConvertingToSDR =>
      'Denna enhet kan inte bearbeta det valda HDR-läget. Försök att konvertera till SDR.';

  @override
  String get compressionCouldNotBeCompletedTryAnotherSettingOrVideo =>
      'Komprimeringen kunde inte slutföras. Försök med en annan inställning eller video.';

  @override
  String get appIdentity => 'Appidentitet';

  @override
  String get appName => 'Appnamn';

  @override
  String get packageName => 'Paketnamn';

  @override
  String get version => 'Version';

  @override
  String get buildNumber => 'Byggnummer';

  @override
  String get deviceAndBuild => 'Enhet och bygg';

  @override
  String get operatingSystem => 'Operativsystem';

  @override
  String get osVersion => 'OS-version';

  @override
  String get buildMode => 'Byggläge';

  @override
  String get debug => 'Felsök';

  @override
  String get release => 'Släpp';

  @override
  String get builtWith => 'Byggd med';

  @override
  String get installation => 'Installation';

  @override
  String get installedFrom => 'Installerad från';

  @override
  String get installedOn => 'Installerad på';

  @override
  String get updatedOn => 'Uppdaterad den';

  @override
  String get unavailable => 'Inte tillgänglig';

  @override
  String get projectAndSupport => 'Projekt och support';

  @override
  String get githubRepository => 'GitHub-förråd';

  @override
  String get viewZumiSourceCode => 'Visa Zumi-källkod';

  @override
  String get readTheREADME => 'Läs README';

  @override
  String get learnAboutZumiOnGitHub => 'Läs om Zumi på GitHub';

  @override
  String get reportAnIssue => 'Rapportera ett problem';

  @override
  String get viewAndCreateGitHubIssues => 'Visa och skapa GitHub-ärenden';

  @override
  String get latestRelease => 'Senaste version';

  @override
  String get viewReleasesAndDownloads => 'Visa releaser och nedladdningar';

  @override
  String get supportZumi => 'Supporta Zumi';

  @override
  String get openTheOfficialDonationPage =>
      'Öppna den officiella donationssidan';

  @override
  String get couldNotOpenTheLinkPleaseTryAgain =>
      'Kunde inte öppna länken. Försök igen.';

  @override
  String get developer => 'Utvecklare';

  @override
  String get mostafaSensei => 'Mostafa Sensei';

  @override
  String get githubProfile => 'GitHub-profil';

  @override
  String get seeProjectsAndContactDetails =>
      'Se projekt och kontaktinformation';

  @override
  String get maintenanceInProgress => 'Underhåll pågår';

  @override
  String get zumiIsTemporarilyUnavailablePleaseTryAgainLater =>
      'Zumi är tillfälligt otillgänglig. Försök igen senare.';

  @override
  String get comingSoon => 'Kommer snart';

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
  String get languageName => 'Svenska';

  @override
  String get countryCode => 'SE';

  @override
  String countryName(String countryCode) {
    String _temp0 = intl.Intl.selectLogic(countryCode, {
      'AE': 'Förenade Arabemiraten',
      'AT': 'Österrike',
      'AU': 'Australien',
      'BE': 'Belgien',
      'BH': 'Bahrain',
      'BR': 'Brasilien',
      'CA': 'Kanada',
      'CH': 'Schweiz',
      'CN': 'Kina',
      'DE': 'Tyskland',
      'DJ': 'Djibouti',
      'DZ': 'Algeriet',
      'EG': 'Egypten',
      'ES': 'Spanien',
      'FR': 'Frankrike',
      'GB': 'Storbritannien',
      'HK': 'Hongkong SAR',
      'ID': 'Indonesien',
      'IQ': 'Irak',
      'IT': 'Italien',
      'JO': 'Jordanien',
      'JP': 'Japan',
      'KM': 'Komorerna',
      'KR': 'Sydkorea',
      'KW': 'Kuwait',
      'LB': 'Libanon',
      'LY': 'Libyen',
      'MA': 'Marocko',
      'MR': 'Mauretanien',
      'MX': 'Mexiko',
      'NL': 'Nederländerna',
      'OM': 'Oman',
      'PL': 'Polen',
      'PS': 'Palestinska territorierna',
      'PT': 'Portugal',
      'QA': 'Qatar',
      'RU': 'Ryssland',
      'SA': 'Saudiarabien',
      'SD': 'Sudan',
      'SE': 'Sverige',
      'SG': 'Singapore',
      'SO': 'Somalia',
      'SY': 'Syrien',
      'TH': 'Thailand',
      'TN': 'Tunisien',
      'TR': 'Turkiet',
      'TW': 'Taiwan',
      'US': 'USA',
      'VN': 'Vietnam',
      'YE': 'Jemen',
      'other': 'Land',
    });
    return '$_temp0';
  }
}

/// The translations for Swedish, as used in Sweden (`sv_SE`).
class AppLocalizationsSvSe extends AppLocalizationsSv {
  AppLocalizationsSvSe() : super('sv_SE');

  @override
  String get zumi => 'Zumi';

  @override
  String get downloadFile => 'Ladda ner fil';

  @override
  String fileOpenedInBrowser(String fileName) {
    return 'Fil öppnad i webbläsare: $fileName';
  }

  @override
  String fileSavedToGallery(String fileName) {
    return 'Fil sparad till galleri: $fileName';
  }

  @override
  String fileSavedToDocuments(String fileName) {
    return 'Fil sparad till dokument: $fileName';
  }

  @override
  String get fileIsAlreadySaved => 'Fil är redan sparad';

  @override
  String get error => 'Fel';

  @override
  String get info => 'Info';

  @override
  String get success => 'Framgång';

  @override
  String get warning => 'Varning';

  @override
  String get paid => 'Betald';

  @override
  String get unpaid => 'Obetald';

  @override
  String get partial => 'Delvis';

  @override
  String get addressLineCannotBeEmpty => 'Adressrad får inte vara tom';

  @override
  String get addressLineIsTooLong => 'Adressrad är för lång';

  @override
  String get specialCharactersAreNotAllowed => 'Specialtecken är inte tillåtna';

  @override
  String get emojisAreNotAllowed => 'Emojis är inte tillåtna';

  @override
  String get cityCannotBeEmpty => 'Stad får inte vara tom';

  @override
  String get cityNameIsTooLong => 'Stadsnamn är för långt';

  @override
  String get cityContainsInvalidSpecialCharacters =>
      'Staden innehåller ogiltiga specialtecken';

  @override
  String get addressLabelCannotBeEmpty => 'Adressetikett får inte vara tom';

  @override
  String get addressLabelIsTooLong => 'Adressetikett är för lång';

  @override
  String get emailCannotBeEmpty => 'E-post får inte vara tom';

  @override
  String get invalidEmailFormat => 'Ogiltigt e-postformat';

  @override
  String get emailContainsInvalidCharacters =>
      'E-post innehåller ogiltiga tecken';

  @override
  String get emailMustContain => 'E-post måste innehålla @';

  @override
  String get emailMustBeInLowercase => 'E-post måste vara i små bokstäver';

  @override
  String get arabicCharactersAreNotAllowed =>
      'Arabiska tecken är inte tillåtna';

  @override
  String get emojisAreNotAllowedInEmail => 'Emojis är inte tillåtna i e-post';

  @override
  String get phoneNumberCannotBeEmpty => 'Telefonnummer får inte vara tomt';

  @override
  String get invalidPhoneNumber => 'Ogiltigt telefonnummer';

  @override
  String get phoneNumberMustBeAtLeast11Digits =>
      'Telefonnummer måste vara minst 11 siffror';

  @override
  String get nameCannotBeEmpty => 'Namn får inte vara tomt';

  @override
  String get invalidName => 'Ogiltigt namn';

  @override
  String get nameMustBeAtLeast3Characters => 'Namn måste vara minst 3 tecken';

  @override
  String get nameCannotExceed20Characters =>
      'Namn får inte överstiga 20 tecken';

  @override
  String get nameContainsInvalidSpecialCharacters =>
      'Namn innehåller ogiltiga specialtecken';

  @override
  String get emojisAreNotAllowedInName => 'Emojis är inte tillåtna i namn';

  @override
  String get passwordCannotBeEmpty => 'Lösenord får inte vara tomt';

  @override
  String get passwordMustContainUppercaseLowercaseNumberAndSpecialCharacter =>
      'Lösenordet måste innehålla stora bokstäver, små bokstäver, siffror och specialtecken';

  @override
  String get passwordMustBeAtLeast8CharactersLong =>
      'Lösenordet måste vara minst 8 tecken långt';

  @override
  String get noInternetConnection => 'Ingen internetanslutning';

  @override
  String get internetConnectionRestored => 'Internetanslutning återställd';

  @override
  String get retry => 'Försök igen';

  @override
  String get cancel => 'Avbryt';

  @override
  String get confirm => 'Bekräfta';

  @override
  String get pleaseWait => 'Vänligen vänta...';

  @override
  String get ok => 'OK';

  @override
  String get compressVideosPrivatelyOnYourDevice =>
      'Komprimera videor privat på din enhet.';

  @override
  String get welcomeToZumi => 'Välkommen till Zumi';

  @override
  String get learnHowZumiCompressesYourVideosWithoutEverLeavingYourPhone =>
      'Lär dig hur Zumi komprimerar dina videor utan att någonsin lämna din telefon.';

  @override
  String get signIn => 'Logga in';

  @override
  String get signInToSyncYourPlanAndKeepYourPurchasesAvailableOnEveryDevice =>
      'Logga in för att synkronisera din plan och hålla dina köp tillgängliga på alla enheter.';

  @override
  String get chooseAVideo => 'Välj en video';

  @override
  String get pickAVideoFromYourGalleryToStartCompressing =>
      'Välj en video från ditt galleri för att börja komprimera.';

  @override
  String get compressionSetup => 'Komprimeringsinställning';

  @override
  String get chooseResolutionBitrateAndOutputFormatBeforeYouStart =>
      'Välj upplösning, bithastighet och utdataformat innan du börjar.';

  @override
  String get compressing => 'Komprimerar';

  @override
  String get followTheLiveProgressOfYourCompressionJob =>
      'Följ den live framdriften av din komprimeringsuppgift.';

  @override
  String get compressionResult => 'Komprimeringsresultat';

  @override
  String get compareTheBeforeAndAfterSizeThenSaveOrShareTheResult =>
      'Jämför storleken före och efter, och spara eller dela sedan resultatet.';

  @override
  String get compressionHistory => 'Komprimeringshistorik';

  @override
  String get reviewTheVideosYouHaveCompressedOnThisDevice =>
      'Granska de videor du har komprimerat på denna enhet.';

  @override
  String get settings => 'Inställningar';

  @override
  String get appearance => 'Utseende';

  @override
  String get themeColorSchemeAndMotionPreferences =>
      'Tema, färgschema och rörelseinställningar.';

  @override
  String get language => 'Språk';

  @override
  String get appLanguageAndTextDirection => 'Appens språk och textriktning.';

  @override
  String get compressionDefaults => 'Standardinställningar för komprimering';

  @override
  String get defaultResolutionBitrateAndOutputFormat =>
      'Standardupplösning, bithastighet och utdataformat.';

  @override
  String get storageCleanup => 'Lagring & rensning';

  @override
  String get storageUsageCacheSizeAndTemporaryFileCleanup =>
      'Lagringsanvändning, cache-storlek och rengöring av temporära filer.';

  @override
  String get notifications => 'Notifikationer';

  @override
  String get jobCompletionAndProductUpdateNotifications =>
      'Notifikationer om slutförda jobb och produktuppdateringar.';

  @override
  String get privacy => 'Integritet';

  @override
  String get onDeviceProcessingLocalLogsAndOptionalCrashReports =>
      'Bearbetning på enheten, lokala loggar och valfria kraschrapporter.';

  @override
  String get aboutZumi => 'Om Zumi';

  @override
  String get versionBuildNumberAndApplicationDetails =>
      'Version, byggnummer och applikationsdetaljer.';

  @override
  String get aboutTheDeveloper => 'Om utvecklaren';

  @override
  String get theDeveloperAndToolsBehindZumi =>
      'Utvecklaren och verktygen bakom Zumi.';

  @override
  String get openSourceLicenses => 'Öppen källkod-licenser';

  @override
  String get openSourcePackagesBundledWithZumi =>
      'Öppen källkodspaket som ingår i Zumi.';

  @override
  String get privacyPolicy => 'Integritetspolicy';

  @override
  String get howZumiHandlesYourVideosAndData =>
      'Hur Zumi hanterar dina videor och data.';

  @override
  String get termsOfService => 'Användarvillkor';

  @override
  String get theTermsThatApplyToZumiAndItsPurchases =>
      'Villkoren som gäller för Zumi och dess köp.';

  @override
  String get dataSafety => 'Datasäkerhet';

  @override
  String get summaryOfTheDataZumiCollectsAndWhy =>
      'Sammanfattning av de data som Zumi samlar in och varför.';

  @override
  String get permissions => 'Behörigheter';

  @override
  String get runtimePermissionsZumiRequestsAndWhyEachIsNeeded =>
      'Körningstillstånd som Zumi begär och varför varje behövs.';

  @override
  String get faq => 'FAQ';

  @override
  String get answersToCommonQuestionsAboutCompressionAndBilling =>
      'Svar på vanliga frågor om komprimering och fakturering.';

  @override
  String get support => 'Support';

  @override
  String get getHelpWithYourAccountOrAPurchase =>
      'Få hjälp med ditt konto eller ett köp.';

  @override
  String get sendFeedback => 'Skicka feedback';

  @override
  String get reportAProblemOrSuggestAnImprovement =>
      'Rapportera ett problem eller föreslå en förbättring.';

  @override
  String get plans => 'Planer';

  @override
  String get comparePlansAndSeeWhatEachOneUnlocks =>
      'Jämför planer och se vad varje låser upp.';

  @override
  String get planDetails => 'Plandetaljer';

  @override
  String get benefitsLimitsAndPricingForThisPlan =>
      'Fördelar, begränsningar och prissättning för denna plan.';

  @override
  String get paymentMethods => 'Betalningsmetoder';

  @override
  String get supportedWaysToPayIncludingStoreBilling =>
      'Stödda betalningssätt, inklusive butikens fakturering.';

  @override
  String get restorePurchases => 'Återställ köp';

  @override
  String get reApplyAPurchaseMadeOnAnotherDevice =>
      'Återanvänd ett köp gjort på en annan enhet.';

  @override
  String get profile => 'Profil';

  @override
  String get yourIdentityPlanStatusAndAccountPreferences =>
      'Din identitet, planstatus och kontoinställningar.';

  @override
  String get deleteAccount => 'Radera konto';

  @override
  String get permanentlyRemoveYourAccountAndItsServerSideData =>
      'Ta permanent bort ditt konto och dess serverdata.';

  @override
  String get rateZumi => 'Betygsätt Zumi';

  @override
  String get tellOthersHowZumiWorkedForYouOnTheStore =>
      'Berätta för andra hur Zumi fungerade för dig i butiken.';

  @override
  String get shareZumi => 'Dela Zumi';

  @override
  String get recommendZumiToAFriend => 'Rekommendera Zumi till en vän.';

  @override
  String get appearanceLanguage => 'Utseende och språk';

  @override
  String get compression => 'Komprimering';

  @override
  String get onDeviceAI => 'AI på enheten';

  @override
  String get notificationsPrivacy => 'Notiser och integritet';

  @override
  String get plansPurchases => 'Planer och köp';

  @override
  String get about => 'Om';

  @override
  String get legal => 'Juridiskt';

  @override
  String get helpFeedback => 'Hjälp och feedback';

  @override
  String get account => 'Konto';

  @override
  String get themeAndAppLanguage => 'Tema och app-språk';

  @override
  String get appLanguageAndDirection => 'App-språk och riktning';

  @override
  String get defaultQualityAndFormat => 'Standardkvalitet och format';

  @override
  String get cacheAndStorageUsage => 'Cache- och lagringsanvändning';

  @override
  String get aiSettings => 'AI-inställningar';

  @override
  String get zumiAssistant => 'Zumi-assistent';

  @override
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere =>
      'En privat assistent för dina videor kommer snart. Du kommer att kunna fråga om komprimering, organisering och sparade videor här.';

  @override
  String get localModelsAndSmartTools => 'Lokala modeller och smarta verktyg';

  @override
  String get exploreLocalModelsAndFutureAIToolsTheseOptionsAreNotActiveYet =>
      'Utforska lokala modeller och framtida AI-verktyg. Dessa alternativ är ännu inte aktiva.';

  @override
  String get localModels => 'Lokala modeller';

  @override
  String get browseAndDownloadSupportedModels =>
      'Bläddra och ladda ner stödda modeller';

  @override
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere =>
      'Välj en stödd modell, ladda ner den till den här enheten och hantera installerade modeller här.';

  @override
  String get importAModel => 'Importera en modell';

  @override
  String get useACompatibleModelFromYourFiles =>
      'Använd en kompatibel modell från dina filer';

  @override
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt =>
      'Välj en kompatibel lokal modelfil och granska dess krav innan du använder den.';

  @override
  String get smartFeatures => 'Smart funktioner';

  @override
  String get compressionOrganizationAndSearch =>
      'Komprimering, organisering och sökning';

  @override
  String
  get chooseWhichLocalAISuggestionsToUseForVideoCompressionOrganizationNamingAndSearch =>
      'Välj vilka lokala AI-förslag som ska användas för videokomprimering, organisering, namngivning och sökning.';

  @override
  String get modelPerformance => 'Modellens prestanda';

  @override
  String get processingAndResourcePreferences =>
      'Bearbetnings- och resursinställningar';

  @override
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels =>
      'Kontrollera bearbetningsbakgrunden och resursgränserna för stödjda modeller.';

  @override
  String get conversationSettings => 'Samtalsinställningar';

  @override
  String get streamingThinkingAndResponseLength =>
      'Streaming, tänkande och svarslängd';

  @override
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits =>
      'Konfigurera hur assistenten svarar, inklusive streaming, tänkandemod, urval och svargränser.';

  @override
  String get imagesAndAudio => 'Bilder och ljud';

  @override
  String get controlMultimodalInputs => 'Styr multimodala insatser';

  @override
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos =>
      'Välj om kompatibla modeller kan analysera utvalda bilder och ljud från dina videor.';

  @override
  String get semanticSearch => 'Semantisk sökning';

  @override
  String get embeddingsAndLocalIndexing => 'Inbäddningar och lokal indexering';

  @override
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning =>
      'Hantera den lokala inbäddningsmodellen och sökindexet för att hitta videor och ögonblick efter betydelse.';

  @override
  String get toolsAndStructuredOutput => 'Verktyg och strukturerat utdata';

  @override
  String get actionsSchemasAndConfirmations =>
      'Åtgärder, scheman och bekräftelser';

  @override
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation =>
      'Hantera stödda assistentåtgärder och strukturerade svar. Åtgärder som påverkar filer kräver din bekräftelse.';

  @override
  String get models => 'Modeller';

  @override
  String get assistantExperience => 'Assistentupplevelse';

  @override
  String get smartCapabilities => 'Smart kapacitet';

  @override
  String get performance => 'Prestanda';

  @override
  String get yourCompressedVideoHistory => 'Din komprimerade videohistorik';

  @override
  String get completionAndUpdateAlerts =>
      'Slutförande- och uppdateringsvarningar';

  @override
  String get yourDataStaysLocal => 'Din data stannar lokalt';

  @override
  String get comparePlansAndUpgrade => 'Jämför planer och uppgradera';

  @override
  String get paymentMethodsAndBilling => 'Betalningsmetoder och fakturering';

  @override
  String get restoreYourPreviousPurchase => 'Återställ ditt tidigare köp';

  @override
  String get versionAndBuildDetails => 'Versions- och byggdetaljer';

  @override
  String get theDeveloperBehindZumi => 'Utvecklaren bakom Zumi';

  @override
  String get openSourcePackageLicenses => 'Licenser för öppna källpaket';

  @override
  String get howDataIsHandled => 'Hur data hanteras';

  @override
  String get rulesForUsingZumi => 'Regler för att använda Zumi';

  @override
  String get whatDataWeCollect => 'Vilken data vi samlar in';

  @override
  String get whyWeNeedPermissions => 'Varför vi behöver behörigheter';

  @override
  String get answersToCommonQuestions => 'Svar på vanliga frågor';

  @override
  String get reachTheDeveloperDirectly => 'Kontakta utvecklaren direkt';

  @override
  String get sendUsYourFeedback => 'Skicka oss din feedback';

  @override
  String get pickVideo => 'Välj video';

  @override
  String get targetSizeMB => 'Målstorlek (MB)';

  @override
  String get startCompression => 'Starta komprimering';

  @override
  String get pause => 'Pausa';

  @override
  String get resume => 'Återuppta';

  @override
  String get viewResult => 'Visa resultat';

  @override
  String get saveToGallery => 'Spara till galleri';

  @override
  String get shareVideo => 'Dela video';

  @override
  String get originalSize => 'Ursprunglig storlek';

  @override
  String get outputSize => 'Utdata storlek';

  @override
  String get noCompressedVideosYet => 'Inga komprimerade videor än';

  @override
  String get savedToGallery => 'Sparad till galleri';

  @override
  String get enterATargetSizeGreaterThanZero =>
      'Ange en målstorlek större än noll';

  @override
  String get compressionCancelled => 'Komprimering avbruten';

  @override
  String get thisVideoCouldNotReachTheSelectedSizeTryALargerTargetSize =>
      'Denna video kunde inte nå den valda storleken. Försök med en större målstorlek.';

  @override
  String get theSelectedSizeIsTooSmallForThisVideoChooseALargerSize =>
      'Den valda storleken är för liten för denna video. Välj en större storlek.';

  @override
  String get originalPreview => 'Originalförhandsvisning';

  @override
  String get compressedPreview => 'Komprimerad förhandsvisning';

  @override
  String get targetPreset => 'Målinställning';

  @override
  String get customSize => 'Anpassad storlek';

  @override
  String get previewUnavailable => 'Förhandsvisning ej tillgänglig';

  @override
  String get advancedControls => 'Avancerade kontroller';

  @override
  String get automatic => 'Automatisk';

  @override
  String get maximumResolution => 'Maximal upplösning';

  @override
  String get originalResolution => 'Ursprunglig upplösning';

  @override
  String get maximumFrameRate => 'Maximal bildfrekvens';

  @override
  String get audioBitrate => 'Ljudbitrate';

  @override
  String get removeAudio => 'Ta bort ljud';

  @override
  String get videoBitrateCeilingKbps => 'Video bitrate-tak (kbps)';

  @override
  String get hdrHandling => 'HDR-hantering';

  @override
  String get convertToSDR => 'Konvertera till SDR';

  @override
  String get keepHDRWhenSupported => 'Behåll HDR när det stöds';

  @override
  String get beforeYouStart => 'Innan du börjar';

  @override
  String get calculatingCompressionPlan => 'Beräknar komprimeringsplan…';

  @override
  String get plannedResolution => 'Planerad upplösning';

  @override
  String get plannedVideoBitrate => 'Planerad videobitrate';

  @override
  String get plannedAudioBitrate => 'Planerad ljudbitrate';

  @override
  String
  get reEncodingConvertsAudioToAACStereoDolbyAtmosAndDTSSpatialAudioWillNotBePreserved =>
      'Omkodning konverterar ljud till AAC stereo. Dolby Atmos och DTS rumsljud kommer inte att bevaras.';

  @override
  String
  get thisTargetIsTooSmallForAUsableVideoIncreaseTheSizeOrLowerOtherLimits =>
      'Detta mål är för litet för en användbar video. Öka storleken eller sänk andra begränsningar.';

  @override
  String get theSelectedTargetMayReduceVideoQuality =>
      'Det valda målet kan minska videokvaliteten.';

  @override
  String get theSourceIsAlreadyWithinTheSizeLimit =>
      'Källan är redan inom storleksgränsen.';

  @override
  String get enterABitrateOfAtLeast150KbpsOrLeaveBlankForAutomatic =>
      'Ange en bithastighet på minst 150 kbps, eller lämna tomt för automatisk inställning.';

  @override
  String get enterAnEvenResolutionFrom240To16384OrLeaveBlankForAutomatic =>
      'Ange en jämn upplösning från 240 till 16384, eller lämna tomt för automatisk inställning.';

  @override
  String get videoPosition => 'Videoposition';

  @override
  String
  get aPreviousCompressionWasInterruptedItsTemporaryFilesWereCleanedUpYouCanSelectTheVideoAndTryAgain =>
      'En tidigare komprimering avbröts. Dess temporära filer har rensats; du kan välja videon och försöka igen.';

  @override
  String get dismiss => 'Avvisa';

  @override
  String get clearHistory => 'Rensa historik';

  @override
  String get removeAllHistoryEntriesSavedVideosWillRemainOnYourDevice =>
      'Ta bort alla historikposter? Sparade videor kommer att finnas kvar på din enhet.';

  @override
  String get attempts => 'Försök';

  @override
  String get targetSize => 'Målstorlek';

  @override
  String get outputResolution => 'Utdataupplösning';

  @override
  String get thisVideoCouldNotBeReadChooseAnotherFile =>
      'Den här videon kunde inte läsas. Välj en annan fil.';

  @override
  String get theEncodedVideoFailedVerificationYourOriginalVideoWasNotChanged =>
      'Den kodade videon misslyckades med verifiering. Din ursprungliga video ändrades inte.';

  @override
  String
  get thisDeviceCannotEncodeTheSelectedResolutionOrFrameRateLowerThatSettingAndTryAgain =>
      'Den här enheten kan inte koda den valda upplösningen eller bildhastigheten. Sänk den inställningen och försök igen.';

  @override
  String
  get thisDeviceCannotDecodeThisAudioFormatForCompressionRemoveAudioOrUseASupportedSource =>
      'Den här enheten kan inte avkoda detta ljudformat för komprimering. Ta bort ljudet eller använd en stödd källa.';

  @override
  String
  get thisDeviceCannotDecodeThisVideoFormatOrProfileForCompressionChooseAnotherSourceOrDevice =>
      'Denna enhet kan inte avkoda detta videoformat eller profil för komprimering. Välj en annan källa eller enhet.';

  @override
  String get theExportedMP4IsNotReadyForStreamingTryAnotherVideoOrDevice =>
      'Den exporterade MP4-filen är inte redo för strömning. Prova en annan video eller enhet.';

  @override
  String get thereIsNotEnoughFreeStorageToCompressThisVideo =>
      'Det finns inte tillräckligt med ledigt utrymme för att komprimera denna video.';

  @override
  String get thisDeviceCannotProcessTheSelectedHDRModeTryConvertingToSDR =>
      'Denna enhet kan inte bearbeta det valda HDR-läget. Försök att konvertera till SDR.';

  @override
  String get compressionCouldNotBeCompletedTryAnotherSettingOrVideo =>
      'Komprimeringen kunde inte slutföras. Försök med en annan inställning eller video.';

  @override
  String get appIdentity => 'Appidentitet';

  @override
  String get appName => 'Appnamn';

  @override
  String get packageName => 'Paketnamn';

  @override
  String get version => 'Version';

  @override
  String get buildNumber => 'Byggnummer';

  @override
  String get deviceAndBuild => 'Enhet och bygg';

  @override
  String get operatingSystem => 'Operativsystem';

  @override
  String get osVersion => 'OS-version';

  @override
  String get buildMode => 'Byggläge';

  @override
  String get debug => 'Felsök';

  @override
  String get release => 'Släpp';

  @override
  String get builtWith => 'Byggd med';

  @override
  String get installation => 'Installation';

  @override
  String get installedFrom => 'Installerad från';

  @override
  String get installedOn => 'Installerad på';

  @override
  String get updatedOn => 'Uppdaterad den';

  @override
  String get unavailable => 'Inte tillgänglig';

  @override
  String get projectAndSupport => 'Projekt och support';

  @override
  String get githubRepository => 'GitHub-förråd';

  @override
  String get viewZumiSourceCode => 'Visa Zumi-källkod';

  @override
  String get readTheREADME => 'Läs README';

  @override
  String get learnAboutZumiOnGitHub => 'Läs om Zumi på GitHub';

  @override
  String get reportAnIssue => 'Rapportera ett problem';

  @override
  String get viewAndCreateGitHubIssues => 'Visa och skapa GitHub-ärenden';

  @override
  String get latestRelease => 'Senaste version';

  @override
  String get viewReleasesAndDownloads => 'Visa releaser och nedladdningar';

  @override
  String get supportZumi => 'Supporta Zumi';

  @override
  String get openTheOfficialDonationPage =>
      'Öppna den officiella donationssidan';

  @override
  String get couldNotOpenTheLinkPleaseTryAgain =>
      'Kunde inte öppna länken. Försök igen.';

  @override
  String get developer => 'Utvecklare';

  @override
  String get mostafaSensei => 'Mostafa Sensei';

  @override
  String get githubProfile => 'GitHub-profil';

  @override
  String get seeProjectsAndContactDetails =>
      'Se projekt och kontaktinformation';

  @override
  String get maintenanceInProgress => 'Underhåll pågår';

  @override
  String get zumiIsTemporarilyUnavailablePleaseTryAgainLater =>
      'Zumi är tillfälligt otillgänglig. Försök igen senare.';

  @override
  String get comingSoon => 'Kommer snart';

  @override
  String get languageName => 'Svenska';

  @override
  String get countryCode => 'SE';

  @override
  String countryName(String countryCode) {
    String _temp0 = intl.Intl.selectLogic(countryCode, {
      'AE': 'Förenade Arabemiraten',
      'AT': 'Österrike',
      'AU': 'Australien',
      'BE': 'Belgien',
      'BH': 'Bahrain',
      'BR': 'Brasilien',
      'CA': 'Kanada',
      'CH': 'Schweiz',
      'CN': 'Kina',
      'DE': 'Tyskland',
      'DJ': 'Djibouti',
      'DZ': 'Algeriet',
      'EG': 'Egypten',
      'ES': 'Spanien',
      'FR': 'Frankrike',
      'GB': 'Storbritannien',
      'HK': 'Hongkong SAR',
      'ID': 'Indonesien',
      'IQ': 'Irak',
      'IT': 'Italien',
      'JO': 'Jordanien',
      'JP': 'Japan',
      'KM': 'Komorerna',
      'KR': 'Sydkorea',
      'KW': 'Kuwait',
      'LB': 'Libanon',
      'LY': 'Libyen',
      'MA': 'Marocko',
      'MR': 'Mauretanien',
      'MX': 'Mexiko',
      'NL': 'Nederländerna',
      'OM': 'Oman',
      'PL': 'Polen',
      'PS': 'Palestinska territorierna',
      'PT': 'Portugal',
      'QA': 'Qatar',
      'RU': 'Ryssland',
      'SA': 'Saudiarabien',
      'SD': 'Sudan',
      'SE': 'Sverige',
      'SG': 'Singapore',
      'SO': 'Somalia',
      'SY': 'Syrien',
      'TH': 'Thailand',
      'TN': 'Tunisien',
      'TR': 'Turkiet',
      'TW': 'Taiwan',
      'US': 'USA',
      'VN': 'Vietnam',
      'YE': 'Jemen',
      'other': 'Land',
    });
    return '$_temp0';
  }
}
