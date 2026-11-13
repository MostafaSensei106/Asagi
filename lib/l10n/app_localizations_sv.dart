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
  String fileSavedToDcim(String fileName) {
    return 'Fil sparad till galleri: $fileName';
  }

  @override
  String fileSavedToDocuments(String fileName) {
    return 'Fil sparad till dokument: $fileName';
  }

  @override
  String get fileAlreadySaved => 'Fil är redan sparad';

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
  String get error_address_line_cant_be_empty => 'Adressrad får inte vara tom';

  @override
  String get error_address_line_too_long => 'Adressrad är för lång';

  @override
  String get error_address_invalid_special_characters =>
      'Specialtecken är inte tillåtna';

  @override
  String get error_address_emoji_not_allowed => 'Emojis är inte tillåtna';

  @override
  String get error_city_cant_be_empty => 'Stad får inte vara tom';

  @override
  String get error_city_too_long => 'Stadsnamn är för långt';

  @override
  String get error_city_invalid_special_characters =>
      'Staden innehåller ogiltiga specialtecken';

  @override
  String get error_address_label_cant_be_empty =>
      'Adressetikett får inte vara tom';

  @override
  String get error_address_label_too_long => 'Adressetikett är för lång';

  @override
  String get error_email_cant_be_empty => 'E-post får inte vara tom';

  @override
  String get error_email_not_invalid_format => 'Ogiltigt e-postformat';

  @override
  String get error_email_contains_invalid_characters =>
      'E-post innehåller ogiltiga tecken';

  @override
  String get error_email_must_contain_at_symbol => 'E-post måste innehålla @';

  @override
  String get error_email_must_be_in_lowercase =>
      'E-post måste vara i små bokstäver';

  @override
  String get error_arabic_not_allowed => 'Arabiska tecken är inte tillåtna';

  @override
  String get error_email_emoji_not_allowed =>
      'Emojis är inte tillåtna i e-post';

  @override
  String get error_phone_number_cant_be_empty =>
      'Telefonnummer får inte vara tomt';

  @override
  String get error_phone_number_invalid => 'Ogiltigt telefonnummer';

  @override
  String get error_phone_number_min_length =>
      'Telefonnummer måste vara minst 11 siffror';

  @override
  String get error_name_cant_be_empty => 'Namn får inte vara tomt';

  @override
  String get error_name_invalid => 'Ogiltigt namn';

  @override
  String get error_name_too_short_at_least_3_characters =>
      'Namn måste vara minst 3 tecken';

  @override
  String get error_name_too_long_maximum_20_characters =>
      'Namn får inte överstiga 20 tecken';

  @override
  String get error_name_invalid_special_characters =>
      'Namn innehåller ogiltiga specialtecken';

  @override
  String get error_name_emoji_not_allowed => 'Emojis är inte tillåtna i namn';

  @override
  String get error_password_cant_be_empty => 'Lösenord får inte vara tomt';

  @override
  String
  get error_password_must_contain_uppercase_lowercase_number_and_special_character =>
      'Lösenordet måste innehålla stora bokstäver, små bokstäver, siffror och specialtecken';

  @override
  String get error_password_must_be_at_least_8_characters_long =>
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
  String get settingsGroupAppearance => 'Utseende och språk';

  @override
  String get settingsGroupCompression => 'Komprimering';

  @override
  String get settingsGroupAi => 'AI på enheten';

  @override
  String get settingsGroupPrivacy => 'Notiser och integritet';

  @override
  String get settingsGroupPlans => 'Planer och köp';

  @override
  String get settingsGroupAbout => 'Om';

  @override
  String get settingsGroupLegal => 'Juridiskt';

  @override
  String get settingsGroupHelp => 'Hjälp och feedback';

  @override
  String get settingsGroupAccount => 'Konto';

  @override
  String get settingsAppearanceSubtitle => 'Tema och app-språk';

  @override
  String get settingsLanguageSubtitle => 'App-språk och riktning';

  @override
  String get settingsCompressionSubtitle => 'Standardkvalitet och format';

  @override
  String get settingsStorageSubtitle => 'Cache- och lagringsanvändning';

  @override
  String get aiSettings => 'AI-inställningar';

  @override
  String get zumiAssistant => 'Zumi-assistent';

  @override
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere =>
      'En privat assistent för dina videor kommer snart. Du kommer att kunna fråga om komprimering, organisering och sparade videor här.';

  @override
  String get settingsAiSubtitle => 'Lokala modeller och smarta verktyg';

  @override
  String get exploreLocalModelsAndFutureAiToolsTheseOptionsAreNotActiveYet =>
      'Utforska lokala modeller och framtida AI-verktyg. Dessa alternativ är ännu inte aktiva.';

  @override
  String get localModels => 'Lokala modeller';

  @override
  String get aiModelsSubtitle => 'Bläddra och ladda ner stödda modeller';

  @override
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere =>
      'Välj en stödd modell, ladda ner den till den här enheten och hantera installerade modeller här.';

  @override
  String get importAModel => 'Importera en modell';

  @override
  String get aiImportSubtitle => 'Använd en kompatibel modell från dina filer';

  @override
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt =>
      'Välj en kompatibel lokal modelfil och granska dess krav innan du använder den.';

  @override
  String get smartFeatures => 'Smart funktioner';

  @override
  String get aiFeaturesSubtitle => 'Komprimering, organisering och sökning';

  @override
  String
  get chooseWhichLocalAiSuggestionsToUseForVideoCompressionOrganizationNamingAndSearch =>
      'Välj vilka lokala AI-förslag som ska användas för videokomprimering, organisering, namngivning och sökning.';

  @override
  String get modelPerformance => 'Modellens prestanda';

  @override
  String get aiRuntimeSubtitle => 'Bearbetnings- och resursinställningar';

  @override
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels =>
      'Kontrollera bearbetningsbakgrunden och resursgränserna för stödjda modeller.';

  @override
  String get conversationSettings => 'Samtalsinställningar';

  @override
  String get aiChatSettingsSubtitle => 'Streaming, tänkande och svarslängd';

  @override
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits =>
      'Konfigurera hur assistenten svarar, inklusive streaming, tänkandemod, urval och svargränser.';

  @override
  String get imagesAndAudio => 'Bilder och ljud';

  @override
  String get aiMediaSubtitle => 'Styr multimodala insatser';

  @override
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos =>
      'Välj om kompatibla modeller kan analysera utvalda bilder och ljud från dina videor.';

  @override
  String get semanticSearch => 'Semantisk sökning';

  @override
  String get aiSearchSubtitle => 'Inbäddningar och lokal indexering';

  @override
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning =>
      'Hantera den lokala inbäddningsmodellen och sökindexet för att hitta videor och ögonblick efter betydelse.';

  @override
  String get toolsAndStructuredOutput => 'Verktyg och strukturerat utdata';

  @override
  String get aiToolsSubtitle => 'Åtgärder, scheman och bekräftelser';

  @override
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation =>
      'Hantera stödda assistentåtgärder och strukturerade svar. Åtgärder som påverkar filer kräver din bekräftelse.';

  @override
  String get aiGroupModels => 'Modeller';

  @override
  String get aiGroupExperience => 'Assistentupplevelse';

  @override
  String get aiGroupCapabilities => 'Smart kapacitet';

  @override
  String get aiGroupPerformance => 'Prestanda';

  @override
  String get compressionHistorySubtitle => 'Din komprimerade videohistorik';

  @override
  String get settingsNotificationsSubtitle =>
      'Slutförande- och uppdateringsvarningar';

  @override
  String get settingsPrivacySubtitle => 'Din data stannar lokalt';

  @override
  String get plansSubtitle => 'Jämför planer och uppgradera';

  @override
  String get plansMethodsSubtitle => 'Betalningsmetoder och fakturering';

  @override
  String get plansRestoreSubtitle => 'Återställ ditt tidigare köp';

  @override
  String get aboutAppSubtitle => 'Versions- och byggdetaljer';

  @override
  String get aboutDeveloperSubtitle => 'Utvecklaren bakom Zumi';

  @override
  String get aboutLicensesSubtitle => 'Licenser för öppna källpaket';

  @override
  String get legalPrivacySubtitle => 'Hur data hanteras';

  @override
  String get legalTermsSubtitle => 'Regler för att använda Zumi';

  @override
  String get legalDataSafetySubtitle => 'Vilken data vi samlar in';

  @override
  String get legalPermissionsSubtitle => 'Varför vi behöver behörigheter';

  @override
  String get helpFaqSubtitle => 'Svar på vanliga frågor';

  @override
  String get helpSupportSubtitle => 'Kontakta utvecklaren direkt';

  @override
  String get helpFeedbackSubtitle => 'Skicka oss din feedback';

  @override
  String get compressionPickVideo => 'Välj video';

  @override
  String get compressionTargetMb => 'Målstorlek (MB)';

  @override
  String get compressionStart => 'Starta komprimering';

  @override
  String get compressionPause => 'Pausa';

  @override
  String get compressionResume => 'Återuppta';

  @override
  String get compressionViewResult => 'Visa resultat';

  @override
  String get compressionSaveGallery => 'Spara till galleri';

  @override
  String get compressionShare => 'Dela video';

  @override
  String get compressionOriginalSize => 'Ursprunglig storlek';

  @override
  String get compressionOutputSize => 'Utdata storlek';

  @override
  String get compressionEmptyHistory => 'Inga komprimerade videor än';

  @override
  String get compressionSavedGallery => 'Sparad till galleri';

  @override
  String get compressionInvalidTarget => 'Ange en målstorlek större än noll';

  @override
  String get compressionCancelled => 'Komprimering avbruten';

  @override
  String get compressionTargetExceeded =>
      'Denna video kunde inte nå den valda storleken. Försök med en större målstorlek.';

  @override
  String get compressionTargetInfeasible =>
      'Den valda storleken är för liten för denna video. Välj en större storlek.';

  @override
  String get compressionPreviewBefore => 'Originalförhandsvisning';

  @override
  String get compressionPreviewAfter => 'Komprimerad förhandsvisning';

  @override
  String get compressionPreset => 'Målinställning';

  @override
  String get compressionCustom => 'Anpassad storlek';

  @override
  String get compressionPreviewUnavailable => 'Förhandsvisning ej tillgänglig';

  @override
  String get compressionAdvanced => 'Avancerade kontroller';

  @override
  String get compressionAutomatic => 'Automatisk';

  @override
  String get compressionResolutionLimit => 'Maximal upplösning';

  @override
  String get compressionSourceResolution => 'Ursprunglig upplösning';

  @override
  String get compressionFrameRateLimit => 'Maximal bildfrekvens';

  @override
  String get compressionAudioQuality => 'Ljudbitrate';

  @override
  String get compressionRemoveAudio => 'Ta bort ljud';

  @override
  String get compressionVideoBitrateLimit => 'Video bitrate-tak (kbps)';

  @override
  String get compressionHdrPolicy => 'HDR-hantering';

  @override
  String get compressionHdrConvert => 'Konvertera till SDR';

  @override
  String get compressionHdrPreserve => 'Behåll HDR när det stöds';

  @override
  String get compressionPlanPreview => 'Innan du börjar';

  @override
  String get compressionPlanLoading => 'Beräknar komprimeringsplan…';

  @override
  String get compressionPlanResolution => 'Planerad upplösning';

  @override
  String get compressionPlanVideoBitrate => 'Planerad videobitrate';

  @override
  String get compressionPlanAudioBitrate => 'Planerad ljudbitrate';

  @override
  String get compressionAudioConversionNote =>
      'Omkodning konverterar ljud till AAC stereo. Dolby Atmos och DTS rumsljud kommer inte att bevaras.';

  @override
  String get compressionPlanTooSmall =>
      'Detta mål är för litet för en användbar video. Öka storleken eller sänk andra begränsningar.';

  @override
  String get compressionPlanLowQuality =>
      'Det valda målet kan minska videokvaliteten.';

  @override
  String get compressionPlanAlreadyWithinLimit =>
      'Källan är redan inom storleksgränsen.';

  @override
  String get compressionInvalidBitrate =>
      'Ange en bithastighet på minst 150 kbps, eller lämna tomt för automatisk inställning.';

  @override
  String get compressionInvalidResolution =>
      'Ange en jämn upplösning från 240 till 16384, eller lämna tomt för automatisk inställning.';

  @override
  String get compressionSeek => 'Videoposition';

  @override
  String get compressionInterrupted =>
      'En tidigare komprimering avbröts. Dess temporära filer har rensats; du kan välja videon och försöka igen.';

  @override
  String get compressionDismiss => 'Avvisa';

  @override
  String get compressionClearHistory => 'Rensa historik';

  @override
  String get compressionClearHistoryConfirm =>
      'Ta bort alla historikposter? Sparade videor kommer att finnas kvar på din enhet.';

  @override
  String get compressionAttempts => 'Försök';

  @override
  String get compressionTargetSize => 'Målstorlek';

  @override
  String get compressionOutputResolution => 'Utdataupplösning';

  @override
  String get compressionInvalidVideo =>
      'Den här videon kunde inte läsas. Välj en annan fil.';

  @override
  String get compressionInvalidOutput =>
      'Den kodade videon misslyckades med verifiering. Din ursprungliga video ändrades inte.';

  @override
  String get compressionEncoderUnsupported =>
      'Den här enheten kan inte koda den valda upplösningen eller bildhastigheten. Sänk den inställningen och försök igen.';

  @override
  String get compressionAudioDecoderUnsupported =>
      'Den här enheten kan inte avkoda detta ljudformat för komprimering. Ta bort ljudet eller använd en stödd källa.';

  @override
  String get compressionVideoDecoderUnsupported =>
      'Denna enhet kan inte avkoda detta videoformat eller profil för komprimering. Välj en annan källa eller enhet.';

  @override
  String get compressionMp4NotStreamable =>
      'Den exporterade MP4-filen är inte redo för strömning. Prova en annan video eller enhet.';

  @override
  String get compressionNoSpace =>
      'Det finns inte tillräckligt med ledigt utrymme för att komprimera denna video.';

  @override
  String get compressionHdrUnsupported =>
      'Denna enhet kan inte bearbeta det valda HDR-läget. Försök att konvertera till SDR.';

  @override
  String get compressionGeneralFailure =>
      'Komprimeringen kunde inte slutföras. Försök med en annan inställning eller video.';

  @override
  String get aboutIdentitySection => 'Appidentitet';

  @override
  String get aboutAppName => 'Appnamn';

  @override
  String get aboutPackageName => 'Paketnamn';

  @override
  String get aboutVersion => 'Version';

  @override
  String get aboutBuildNumber => 'Byggnummer';

  @override
  String get aboutEnvironmentSection => 'Enhet och bygg';

  @override
  String get aboutOperatingSystem => 'Operativsystem';

  @override
  String get aboutOsVersion => 'OS-version';

  @override
  String get aboutBuildMode => 'Byggläge';

  @override
  String get aboutDebug => 'Felsök';

  @override
  String get aboutRelease => 'Släpp';

  @override
  String get aboutToolchainSection => 'Byggd med';

  @override
  String get aboutInstallationSection => 'Installation';

  @override
  String get aboutInstaller => 'Installerad från';

  @override
  String get aboutInstalledOn => 'Installerad på';

  @override
  String get aboutUpdatedOn => 'Uppdaterad den';

  @override
  String get aboutUnavailable => 'Inte tillgänglig';

  @override
  String get aboutProjectSection => 'Projekt och support';

  @override
  String get aboutRepository => 'GitHub-förråd';

  @override
  String get aboutRepositorySubtitle => 'Visa Zumi-källkod';

  @override
  String get aboutReadme => 'Läs README';

  @override
  String get aboutReadmeSubtitle => 'Läs om Zumi på GitHub';

  @override
  String get aboutIssues => 'Rapportera ett problem';

  @override
  String get aboutIssuesSubtitle => 'Visa och skapa GitHub-ärenden';

  @override
  String get aboutLatestRelease => 'Senaste version';

  @override
  String get aboutLatestReleaseSubtitle => 'Visa releaser och nedladdningar';

  @override
  String get aboutDonate => 'Supporta Zumi';

  @override
  String get aboutDonateSubtitle => 'Öppna den officiella donationssidan';

  @override
  String get aboutLinkError => 'Kunde inte öppna länken. Försök igen.';

  @override
  String get aboutDeveloperSection => 'Utvecklare';

  @override
  String get aboutDeveloperName => 'Mostafa Sensei';

  @override
  String get aboutDeveloperProfile => 'GitHub-profil';

  @override
  String get aboutDeveloperProfileSubtitle =>
      'Se projekt och kontaktinformation';

  @override
  String get maintenanceInProgress => 'Underhåll pågår';

  @override
  String get maintenanceMessage =>
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
  String fileSavedToDcim(String fileName) {
    return 'Fil sparad till galleri: $fileName';
  }

  @override
  String fileSavedToDocuments(String fileName) {
    return 'Fil sparad till dokument: $fileName';
  }

  @override
  String get fileAlreadySaved => 'Fil är redan sparad';

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
  String get error_address_line_cant_be_empty => 'Adressrad får inte vara tom';

  @override
  String get error_address_line_too_long => 'Adressrad är för lång';

  @override
  String get error_address_invalid_special_characters =>
      'Specialtecken är inte tillåtna';

  @override
  String get error_address_emoji_not_allowed => 'Emojis är inte tillåtna';

  @override
  String get error_city_cant_be_empty => 'Stad får inte vara tom';

  @override
  String get error_city_too_long => 'Stadsnamn är för långt';

  @override
  String get error_city_invalid_special_characters =>
      'Staden innehåller ogiltiga specialtecken';

  @override
  String get error_address_label_cant_be_empty =>
      'Adressetikett får inte vara tom';

  @override
  String get error_address_label_too_long => 'Adressetikett är för lång';

  @override
  String get error_email_cant_be_empty => 'E-post får inte vara tom';

  @override
  String get error_email_not_invalid_format => 'Ogiltigt e-postformat';

  @override
  String get error_email_contains_invalid_characters =>
      'E-post innehåller ogiltiga tecken';

  @override
  String get error_email_must_contain_at_symbol => 'E-post måste innehålla @';

  @override
  String get error_email_must_be_in_lowercase =>
      'E-post måste vara i små bokstäver';

  @override
  String get error_arabic_not_allowed => 'Arabiska tecken är inte tillåtna';

  @override
  String get error_email_emoji_not_allowed =>
      'Emojis är inte tillåtna i e-post';

  @override
  String get error_phone_number_cant_be_empty =>
      'Telefonnummer får inte vara tomt';

  @override
  String get error_phone_number_invalid => 'Ogiltigt telefonnummer';

  @override
  String get error_phone_number_min_length =>
      'Telefonnummer måste vara minst 11 siffror';

  @override
  String get error_name_cant_be_empty => 'Namn får inte vara tomt';

  @override
  String get error_name_invalid => 'Ogiltigt namn';

  @override
  String get error_name_too_short_at_least_3_characters =>
      'Namn måste vara minst 3 tecken';

  @override
  String get error_name_too_long_maximum_20_characters =>
      'Namn får inte överstiga 20 tecken';

  @override
  String get error_name_invalid_special_characters =>
      'Namn innehåller ogiltiga specialtecken';

  @override
  String get error_name_emoji_not_allowed => 'Emojis är inte tillåtna i namn';

  @override
  String get error_password_cant_be_empty => 'Lösenord får inte vara tomt';

  @override
  String
  get error_password_must_contain_uppercase_lowercase_number_and_special_character =>
      'Lösenordet måste innehålla stora bokstäver, små bokstäver, siffror och specialtecken';

  @override
  String get error_password_must_be_at_least_8_characters_long =>
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
  String get settingsGroupAppearance => 'Utseende och språk';

  @override
  String get settingsGroupCompression => 'Komprimering';

  @override
  String get settingsGroupAi => 'AI på enheten';

  @override
  String get settingsGroupPrivacy => 'Notiser och integritet';

  @override
  String get settingsGroupPlans => 'Planer och köp';

  @override
  String get settingsGroupAbout => 'Om';

  @override
  String get settingsGroupLegal => 'Juridiskt';

  @override
  String get settingsGroupHelp => 'Hjälp och feedback';

  @override
  String get settingsGroupAccount => 'Konto';

  @override
  String get settingsAppearanceSubtitle => 'Tema och app-språk';

  @override
  String get settingsLanguageSubtitle => 'App-språk och riktning';

  @override
  String get settingsCompressionSubtitle => 'Standardkvalitet och format';

  @override
  String get settingsStorageSubtitle => 'Cache- och lagringsanvändning';

  @override
  String get aiSettings => 'AI-inställningar';

  @override
  String get zumiAssistant => 'Zumi-assistent';

  @override
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere =>
      'En privat assistent för dina videor kommer snart. Du kommer att kunna fråga om komprimering, organisering och sparade videor här.';

  @override
  String get settingsAiSubtitle => 'Lokala modeller och smarta verktyg';

  @override
  String get exploreLocalModelsAndFutureAiToolsTheseOptionsAreNotActiveYet =>
      'Utforska lokala modeller och framtida AI-verktyg. Dessa alternativ är ännu inte aktiva.';

  @override
  String get localModels => 'Lokala modeller';

  @override
  String get aiModelsSubtitle => 'Bläddra och ladda ner stödda modeller';

  @override
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere =>
      'Välj en stödd modell, ladda ner den till den här enheten och hantera installerade modeller här.';

  @override
  String get importAModel => 'Importera en modell';

  @override
  String get aiImportSubtitle => 'Använd en kompatibel modell från dina filer';

  @override
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt =>
      'Välj en kompatibel lokal modelfil och granska dess krav innan du använder den.';

  @override
  String get smartFeatures => 'Smart funktioner';

  @override
  String get aiFeaturesSubtitle => 'Komprimering, organisering och sökning';

  @override
  String
  get chooseWhichLocalAiSuggestionsToUseForVideoCompressionOrganizationNamingAndSearch =>
      'Välj vilka lokala AI-förslag som ska användas för videokomprimering, organisering, namngivning och sökning.';

  @override
  String get modelPerformance => 'Modellens prestanda';

  @override
  String get aiRuntimeSubtitle => 'Bearbetnings- och resursinställningar';

  @override
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels =>
      'Kontrollera bearbetningsbakgrunden och resursgränserna för stödjda modeller.';

  @override
  String get conversationSettings => 'Samtalsinställningar';

  @override
  String get aiChatSettingsSubtitle => 'Streaming, tänkande och svarslängd';

  @override
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits =>
      'Konfigurera hur assistenten svarar, inklusive streaming, tänkandemod, urval och svargränser.';

  @override
  String get imagesAndAudio => 'Bilder och ljud';

  @override
  String get aiMediaSubtitle => 'Styr multimodala insatser';

  @override
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos =>
      'Välj om kompatibla modeller kan analysera utvalda bilder och ljud från dina videor.';

  @override
  String get semanticSearch => 'Semantisk sökning';

  @override
  String get aiSearchSubtitle => 'Inbäddningar och lokal indexering';

  @override
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning =>
      'Hantera den lokala inbäddningsmodellen och sökindexet för att hitta videor och ögonblick efter betydelse.';

  @override
  String get toolsAndStructuredOutput => 'Verktyg och strukturerat utdata';

  @override
  String get aiToolsSubtitle => 'Åtgärder, scheman och bekräftelser';

  @override
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation =>
      'Hantera stödda assistentåtgärder och strukturerade svar. Åtgärder som påverkar filer kräver din bekräftelse.';

  @override
  String get aiGroupModels => 'Modeller';

  @override
  String get aiGroupExperience => 'Assistentupplevelse';

  @override
  String get aiGroupCapabilities => 'Smart kapacitet';

  @override
  String get aiGroupPerformance => 'Prestanda';

  @override
  String get compressionHistorySubtitle => 'Din komprimerade videohistorik';

  @override
  String get settingsNotificationsSubtitle =>
      'Slutförande- och uppdateringsvarningar';

  @override
  String get settingsPrivacySubtitle => 'Din data stannar lokalt';

  @override
  String get plansSubtitle => 'Jämför planer och uppgradera';

  @override
  String get plansMethodsSubtitle => 'Betalningsmetoder och fakturering';

  @override
  String get plansRestoreSubtitle => 'Återställ ditt tidigare köp';

  @override
  String get aboutAppSubtitle => 'Versions- och byggdetaljer';

  @override
  String get aboutDeveloperSubtitle => 'Utvecklaren bakom Zumi';

  @override
  String get aboutLicensesSubtitle => 'Licenser för öppna källpaket';

  @override
  String get legalPrivacySubtitle => 'Hur data hanteras';

  @override
  String get legalTermsSubtitle => 'Regler för att använda Zumi';

  @override
  String get legalDataSafetySubtitle => 'Vilken data vi samlar in';

  @override
  String get legalPermissionsSubtitle => 'Varför vi behöver behörigheter';

  @override
  String get helpFaqSubtitle => 'Svar på vanliga frågor';

  @override
  String get helpSupportSubtitle => 'Kontakta utvecklaren direkt';

  @override
  String get helpFeedbackSubtitle => 'Skicka oss din feedback';

  @override
  String get compressionPickVideo => 'Välj video';

  @override
  String get compressionTargetMb => 'Målstorlek (MB)';

  @override
  String get compressionStart => 'Starta komprimering';

  @override
  String get compressionPause => 'Pausa';

  @override
  String get compressionResume => 'Återuppta';

  @override
  String get compressionViewResult => 'Visa resultat';

  @override
  String get compressionSaveGallery => 'Spara till galleri';

  @override
  String get compressionShare => 'Dela video';

  @override
  String get compressionOriginalSize => 'Ursprunglig storlek';

  @override
  String get compressionOutputSize => 'Utdata storlek';

  @override
  String get compressionEmptyHistory => 'Inga komprimerade videor än';

  @override
  String get compressionSavedGallery => 'Sparad till galleri';

  @override
  String get compressionInvalidTarget => 'Ange en målstorlek större än noll';

  @override
  String get compressionCancelled => 'Komprimering avbruten';

  @override
  String get compressionTargetExceeded =>
      'Denna video kunde inte nå den valda storleken. Försök med en större målstorlek.';

  @override
  String get compressionTargetInfeasible =>
      'Den valda storleken är för liten för denna video. Välj en större storlek.';

  @override
  String get compressionPreviewBefore => 'Originalförhandsvisning';

  @override
  String get compressionPreviewAfter => 'Komprimerad förhandsvisning';

  @override
  String get compressionPreset => 'Målinställning';

  @override
  String get compressionCustom => 'Anpassad storlek';

  @override
  String get compressionPreviewUnavailable => 'Förhandsvisning ej tillgänglig';

  @override
  String get compressionAdvanced => 'Avancerade kontroller';

  @override
  String get compressionAutomatic => 'Automatisk';

  @override
  String get compressionResolutionLimit => 'Maximal upplösning';

  @override
  String get compressionSourceResolution => 'Ursprunglig upplösning';

  @override
  String get compressionFrameRateLimit => 'Maximal bildfrekvens';

  @override
  String get compressionAudioQuality => 'Ljudbitrate';

  @override
  String get compressionRemoveAudio => 'Ta bort ljud';

  @override
  String get compressionVideoBitrateLimit => 'Video bitrate-tak (kbps)';

  @override
  String get compressionHdrPolicy => 'HDR-hantering';

  @override
  String get compressionHdrConvert => 'Konvertera till SDR';

  @override
  String get compressionHdrPreserve => 'Behåll HDR när det stöds';

  @override
  String get compressionPlanPreview => 'Innan du börjar';

  @override
  String get compressionPlanLoading => 'Beräknar komprimeringsplan…';

  @override
  String get compressionPlanResolution => 'Planerad upplösning';

  @override
  String get compressionPlanVideoBitrate => 'Planerad videobitrate';

  @override
  String get compressionPlanAudioBitrate => 'Planerad ljudbitrate';

  @override
  String get compressionAudioConversionNote =>
      'Omkodning konverterar ljud till AAC stereo. Dolby Atmos och DTS rumsljud kommer inte att bevaras.';

  @override
  String get compressionPlanTooSmall =>
      'Detta mål är för litet för en användbar video. Öka storleken eller sänk andra begränsningar.';

  @override
  String get compressionPlanLowQuality =>
      'Det valda målet kan minska videokvaliteten.';

  @override
  String get compressionPlanAlreadyWithinLimit =>
      'Källan är redan inom storleksgränsen.';

  @override
  String get compressionInvalidBitrate =>
      'Ange en bithastighet på minst 150 kbps, eller lämna tomt för automatisk inställning.';

  @override
  String get compressionInvalidResolution =>
      'Ange en jämn upplösning från 240 till 16384, eller lämna tomt för automatisk inställning.';

  @override
  String get compressionSeek => 'Videoposition';

  @override
  String get compressionInterrupted =>
      'En tidigare komprimering avbröts. Dess temporära filer har rensats; du kan välja videon och försöka igen.';

  @override
  String get compressionDismiss => 'Avvisa';

  @override
  String get compressionClearHistory => 'Rensa historik';

  @override
  String get compressionClearHistoryConfirm =>
      'Ta bort alla historikposter? Sparade videor kommer att finnas kvar på din enhet.';

  @override
  String get compressionAttempts => 'Försök';

  @override
  String get compressionTargetSize => 'Målstorlek';

  @override
  String get compressionOutputResolution => 'Utdataupplösning';

  @override
  String get compressionInvalidVideo =>
      'Den här videon kunde inte läsas. Välj en annan fil.';

  @override
  String get compressionInvalidOutput =>
      'Den kodade videon misslyckades med verifiering. Din ursprungliga video ändrades inte.';

  @override
  String get compressionEncoderUnsupported =>
      'Den här enheten kan inte koda den valda upplösningen eller bildhastigheten. Sänk den inställningen och försök igen.';

  @override
  String get compressionAudioDecoderUnsupported =>
      'Den här enheten kan inte avkoda detta ljudformat för komprimering. Ta bort ljudet eller använd en stödd källa.';

  @override
  String get compressionVideoDecoderUnsupported =>
      'Denna enhet kan inte avkoda detta videoformat eller profil för komprimering. Välj en annan källa eller enhet.';

  @override
  String get compressionMp4NotStreamable =>
      'Den exporterade MP4-filen är inte redo för strömning. Prova en annan video eller enhet.';

  @override
  String get compressionNoSpace =>
      'Det finns inte tillräckligt med ledigt utrymme för att komprimera denna video.';

  @override
  String get compressionHdrUnsupported =>
      'Denna enhet kan inte bearbeta det valda HDR-läget. Försök att konvertera till SDR.';

  @override
  String get compressionGeneralFailure =>
      'Komprimeringen kunde inte slutföras. Försök med en annan inställning eller video.';

  @override
  String get aboutIdentitySection => 'Appidentitet';

  @override
  String get aboutAppName => 'Appnamn';

  @override
  String get aboutPackageName => 'Paketnamn';

  @override
  String get aboutVersion => 'Version';

  @override
  String get aboutBuildNumber => 'Byggnummer';

  @override
  String get aboutEnvironmentSection => 'Enhet och bygg';

  @override
  String get aboutOperatingSystem => 'Operativsystem';

  @override
  String get aboutOsVersion => 'OS-version';

  @override
  String get aboutBuildMode => 'Byggläge';

  @override
  String get aboutDebug => 'Felsök';

  @override
  String get aboutRelease => 'Släpp';

  @override
  String get aboutToolchainSection => 'Byggd med';

  @override
  String get aboutInstallationSection => 'Installation';

  @override
  String get aboutInstaller => 'Installerad från';

  @override
  String get aboutInstalledOn => 'Installerad på';

  @override
  String get aboutUpdatedOn => 'Uppdaterad den';

  @override
  String get aboutUnavailable => 'Inte tillgänglig';

  @override
  String get aboutProjectSection => 'Projekt och support';

  @override
  String get aboutRepository => 'GitHub-förråd';

  @override
  String get aboutRepositorySubtitle => 'Visa Zumi-källkod';

  @override
  String get aboutReadme => 'Läs README';

  @override
  String get aboutReadmeSubtitle => 'Läs om Zumi på GitHub';

  @override
  String get aboutIssues => 'Rapportera ett problem';

  @override
  String get aboutIssuesSubtitle => 'Visa och skapa GitHub-ärenden';

  @override
  String get aboutLatestRelease => 'Senaste version';

  @override
  String get aboutLatestReleaseSubtitle => 'Visa releaser och nedladdningar';

  @override
  String get aboutDonate => 'Supporta Zumi';

  @override
  String get aboutDonateSubtitle => 'Öppna den officiella donationssidan';

  @override
  String get aboutLinkError => 'Kunde inte öppna länken. Försök igen.';

  @override
  String get aboutDeveloperSection => 'Utvecklare';

  @override
  String get aboutDeveloperName => 'Mostafa Sensei';

  @override
  String get aboutDeveloperProfile => 'GitHub-profil';

  @override
  String get aboutDeveloperProfileSubtitle =>
      'Se projekt och kontaktinformation';

  @override
  String get maintenanceInProgress => 'Underhåll pågår';

  @override
  String get maintenanceMessage =>
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
