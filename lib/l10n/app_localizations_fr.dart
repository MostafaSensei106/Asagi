// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get kuymo => 'Kuymo';

  @override
  String get downloadFile => 'Télécharger le fichier';

  @override
  String fileOpenedInBrowser(String fileName) {
    return 'Fichier ouvert dans le navigateur : $fileName';
  }

  @override
  String fileSavedToGallery(String fileName) {
    return 'Fichier enregistré dans la galerie : $fileName';
  }

  @override
  String fileSavedToDocuments(String fileName) {
    return 'Fichier enregistré dans les documents : $fileName';
  }

  @override
  String get fileIsAlreadySaved => 'Le fichier est déjà enregistré';

  @override
  String get error => 'Erreur';

  @override
  String get info => 'Info';

  @override
  String get success => 'Succès';

  @override
  String get warning => 'Avertissement';

  @override
  String get paid => 'Payé';

  @override
  String get unpaid => 'Non payé';

  @override
  String get partial => 'Partiel';

  @override
  String get addressLineCannotBeEmpty =>
      'La ligne d\'adresse ne peut pas être vide';

  @override
  String get addressLineIsTooLong => 'La ligne d\'adresse est trop longue';

  @override
  String get specialCharactersAreNotAllowed =>
      'Les caractères spéciaux ne sont pas autorisés';

  @override
  String get emojisAreNotAllowed => 'Les emojis ne sont pas autorisés';

  @override
  String get cityCannotBeEmpty => 'La ville ne peut pas être vide';

  @override
  String get cityNameIsTooLong => 'Le nom de la ville est trop long';

  @override
  String get cityContainsInvalidSpecialCharacters =>
      'La ville contient des caractères spéciaux non valides';

  @override
  String get addressLabelCannotBeEmpty =>
      'Le libellé de l\'adresse ne peut pas être vide';

  @override
  String get addressLabelIsTooLong => 'Le libellé de l\'adresse est trop long';

  @override
  String get emailCannotBeEmpty => 'L\'email ne peut pas être vide';

  @override
  String get invalidEmailFormat => 'Format d\'email invalide';

  @override
  String get emailContainsInvalidCharacters =>
      'L\'email contient des caractères invalides';

  @override
  String get emailMustContain => 'L\'email doit contenir @';

  @override
  String get emailMustBeInLowercase => 'L\'email doit être en minuscules';

  @override
  String get arabicCharactersAreNotAllowed =>
      'Les caractères arabes ne sont pas autorisés';

  @override
  String get emojisAreNotAllowedInEmail =>
      'Les emojis ne sont pas autorisés dans l\'email';

  @override
  String get phoneNumberCannotBeEmpty =>
      'Le numéro de téléphone ne peut pas être vide';

  @override
  String get invalidPhoneNumber => 'Numéro de téléphone invalide';

  @override
  String get phoneNumberMustBeAtLeast11Digits =>
      'Le numéro de téléphone doit comporter au moins 11 chiffres';

  @override
  String get nameCannotBeEmpty => 'Le nom ne peut pas être vide';

  @override
  String get invalidName => 'Nom invalide';

  @override
  String get nameMustBeAtLeast3Characters =>
      'Le nom doit comporter au moins 3 caractères';

  @override
  String get nameCannotExceed20Characters =>
      'Le nom ne peut pas dépasser 20 caractères';

  @override
  String get nameContainsInvalidSpecialCharacters =>
      'Le nom contient des caractères spéciaux invalides';

  @override
  String get emojisAreNotAllowedInName =>
      'Les emojis ne sont pas autorisés dans le nom';

  @override
  String get passwordCannotBeEmpty => 'Le mot de passe ne peut pas être vide';

  @override
  String get passwordMustContainUppercaseLowercaseNumberAndSpecialCharacter =>
      'Le mot de passe doit contenir une majuscule, une minuscule, un chiffre et un caractère spécial';

  @override
  String get passwordMustBeAtLeast8CharactersLong =>
      'Le mot de passe doit comporter au moins 8 caractères';

  @override
  String get noInternetConnection => 'Pas de connexion Internet';

  @override
  String get internetConnectionRestored => 'Connexion Internet rétablie';

  @override
  String get retry => 'Réessayer';

  @override
  String get confirm => 'Confirmer';

  @override
  String get ok => 'OK';

  @override
  String get compressVideosPrivatelyOnYourDevice =>
      'Compressez des vidéos en privé, sur votre appareil.';

  @override
  String get welcomeToKuymo => 'Bienvenue sur Kuymo';

  @override
  String get learnHowKuymoCompressesYourVideosWithoutEverLeavingYourPhone =>
      'Découvrez comment Kuymo compresse vos vidéos sans jamais quitter votre téléphone.';

  @override
  String get signIn => 'Se connecter';

  @override
  String get chooseAVideo => 'Choisir une vidéo';

  @override
  String get preparingSelectedVideo => 'Getting your video ready';

  @override
  String get pickAVideoFromYourGalleryToStartCompressing =>
      'Choisissez une vidéo dans votre galerie pour commencer la compression.';

  @override
  String get compressionSetup => 'Configuration de la compression';

  @override
  String get chooseResolutionBitrateAndOutputFormatBeforeYouStart =>
      'Choisissez la résolution, le débit binaire et le format de sortie avant de commencer.';

  @override
  String get compressing => 'Compression';

  @override
  String get followTheLiveProgressOfYourCompressionJob =>
      'Suivez l\'avancement en direct de votre tâche de compression.';

  @override
  String get compressionResult => 'Résultat de la compression';

  @override
  String get compareTheBeforeAndAfterSizeThenSaveOrShareTheResult =>
      'Comparez la taille avant et après, puis enregistrez ou partagez le résultat.';

  @override
  String get compressionHistory => 'Historique de la compression';

  @override
  String get reviewTheVideosYouHaveCompressedOnThisDevice =>
      'Consultez les vidéos que vous avez compressées sur cet appareil.';

  @override
  String get settings => 'Paramètres';

  @override
  String get appearance => 'Apparence';

  @override
  String get themeColorSchemeAndMotionPreferences =>
      'Thème, schéma de couleurs et préférences de mouvement.';

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
  String get kuymoEngine => 'Kuymo Engine';

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
  String get language => 'Langue';

  @override
  String get appLanguageAndTextDirection =>
      'Langue de l\'application et direction du texte.';

  @override
  String get compressionDefaults => 'Paramètres par défaut de la compression';

  @override
  String get defaultResolutionBitrateAndOutputFormat =>
      'Résolution par défaut, débit binaire et format de sortie.';

  @override
  String get storageCleanup => 'Stockage et nettoyage';

  @override
  String get storageUsageCacheSizeAndTemporaryFileCleanup =>
      'Utilisation du stockage, taille du cache et nettoyage des fichiers temporaires.';

  @override
  String get notifications => 'Notifications';

  @override
  String get jobCompletionAndProductUpdateNotifications =>
      'Notifications de fin de travail et de mise à jour du produit.';

  @override
  String get privacy => 'Confidentialité';

  @override
  String get onDeviceProcessingLocalLogsAndOptionalCrashReports =>
      'Traitement sur l\'appareil, journaux locaux et rapports de crash optionnels.';

  @override
  String get aboutKuymo => 'À propos de Kuymo';

  @override
  String get versionBuildNumberAndApplicationDetails =>
      'Version, numéro de build et détails de l\'application.';

  @override
  String get aboutTheDeveloper => 'À propos du développeur';

  @override
  String get theDeveloperAndToolsBehindKuymo =>
      'Le développeur et les outils derrière Kuymo.';

  @override
  String get openSourcePackagesBundledWithKuymo =>
      'Packages open-source inclus avec Kuymo.';

  @override
  String get privacyPolicy => 'Politique de confidentialité';

  @override
  String get howKuymoHandlesYourVideosAndData =>
      'Comment Kuymo gère vos vidéos et vos données.';

  @override
  String get termsOfService => 'Conditions d\'utilisation';

  @override
  String get dataSafety => 'Sécurité des données';

  @override
  String get summaryOfTheDataKuymoCollectsAndWhy =>
      'Résumé des données collectées par Kuymo et pourquoi. ';

  @override
  String get permissions => 'Autorisations';

  @override
  String get runtimePermissionsKuymoRequestsAndWhyEachIsNeeded =>
      'Autorisations d\'exécution demandées par Kuymo et pourquoi chacune est nécessaire. ';

  @override
  String get faq => 'FAQ';

  @override
  String get support => 'Support';

  @override
  String get sendFeedback => 'Envoyer des commentaires';

  @override
  String get reportAProblemOrSuggestAnImprovement =>
      'Signaler un problème ou suggérer une amélioration. ';

  @override
  String get profile => 'Profil';

  @override
  String get deleteAccount => 'Supprimer le compte';

  @override
  String get permanentlyRemoveYourAccountAndItsServerSideData =>
      'Supprimer définitivement votre compte et ses données côté serveur.';

  @override
  String get rateKuymo => 'Évaluer Kuymo';

  @override
  String get tellOthersHowKuymoWorkedForYouOnTheStore =>
      'Dites aux autres comment Kuymo a fonctionné pour vous sur le store.';

  @override
  String get shareKuymo => 'Partager Kuymo';

  @override
  String get recommendKuymoToAFriend => 'Recommandez Kuymo à un ami.';

  @override
  String get appearanceLanguage => 'Apparence et langue';

  @override
  String get compression => 'Compression';

  @override
  String get onDeviceAI => 'IA sur l\'appareil';

  @override
  String get notificationsPrivacy => 'Notifications et confidentialité';

  @override
  String get about => 'À propos';

  @override
  String get legal => 'Mentions légales';

  @override
  String get helpFeedback => 'Aide et retour d\'information';

  @override
  String get account => 'Compte';

  @override
  String get themeAndAppLanguage => 'Thème et langue de l\'application';

  @override
  String get appLanguageAndDirection =>
      'Langue et orientation de l\'application';

  @override
  String get defaultQualityAndFormat => 'Qualité et format par défaut';

  @override
  String get cacheAndStorageUsage => 'Utilisation du cache et du stockage';

  @override
  String get aiSettings => 'Paramètres de l\'IA';

  @override
  String get kuymoAssistant => 'Assistant Kuymo';

  @override
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere =>
      'Un assistant privé pour vos vidéos arrive bientôt. Vous pourrez poser des questions sur la compression, l\'organisation et les vidéos enregistrées ici.';

  @override
  String get localModelsAndSmartTools =>
      'Modèles locaux et outils intelligents';

  @override
  String get exploreLocalModelsAndFutureAIToolsTheseOptionsAreNotActiveYet =>
      'Explorez les modèles locaux et les futurs outils d\'IA. Ces options ne sont pas encore actives.';

  @override
  String get localModels => 'Modèles locaux';

  @override
  String get browseAndDownloadSupportedModels =>
      'Parcourez et téléchargez les modèles pris en charge';

  @override
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere =>
      'Choisissez un modèle pris en charge, téléchargez-le sur cet appareil et gérez les modèles installés ici.';

  @override
  String get importAModel => 'Importer un modèle';

  @override
  String get useACompatibleModelFromYourFiles =>
      'Utilisez un modèle compatible depuis vos fichiers';

  @override
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt =>
      'Sélectionnez un fichier de modèle local compatible et examinez ses exigences avant de l\'utiliser.';

  @override
  String get smartFeatures => 'Fonctionnalités intelligentes';

  @override
  String get compressionOrganizationAndSearch =>
      'Compression, organisation et recherche';

  @override
  String
  get chooseWhichLocalAISuggestionsToUseForVideoCompressionOrganizationNamingAndSearch =>
      'Choisissez quelles suggestions d\'IA locales utiliser pour la compression vidéo, l\'organisation, le nommage et la recherche.';

  @override
  String get modelPerformance => 'Performance du modèle';

  @override
  String get processingAndResourcePreferences =>
      'Préférences de traitement et de ressources';

  @override
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels =>
      'Contrôlez le backend de traitement et les limites de ressources pour les modèles pris en charge.';

  @override
  String get conversationSettings => 'Paramètres de conversation';

  @override
  String get streamingThinkingAndResponseLength =>
      'Diffusion, réflexion et longueur des réponses';

  @override
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits =>
      'Configurez la manière dont l\'assistant répond, y compris le streaming, le mode réflexion, l\'échantillonnage et les limites de réponse.  ';

  @override
  String get imagesAndAudio => 'Images et audio  ';

  @override
  String get controlMultimodalInputs => 'Contrôlez les entrées multimodales  ';

  @override
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos =>
      'Choisissez si les modèles compatibles peuvent analyser les images et l\'audio sélectionnés de vos vidéos.  ';

  @override
  String get semanticSearch => 'Recherche sémantique  ';

  @override
  String get embeddingsAndLocalIndexing => 'Vecteurs et indexation locale  ';

  @override
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning =>
      'Gérez le modèle de vecteurs local et l\'index de recherche pour trouver des vidéos et des moments par leur signification.  ';

  @override
  String get toolsAndStructuredOutput => 'Outils et sortie structurée  ';

  @override
  String get actionsSchemasAndConfirmations =>
      'Actions, schémas et confirmations';

  @override
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation =>
      'Gérez les actions assistantes prises en charge et les réponses structurées. Les actions affectant les fichiers nécessiteront votre confirmation.';

  @override
  String get models => 'Modèles';

  @override
  String get assistantExperience => 'Expérience de l\'assistant';

  @override
  String get smartCapabilities => 'Fonctionnalités intelligentes';

  @override
  String get performance => 'Performance';

  @override
  String get yourCompressedVideoHistory => 'Votre historique vidéo compressé';

  @override
  String get completionAndUpdateAlerts =>
      'Alertes de complétion et de mise à jour';

  @override
  String get yourDataStaysLocal => 'Vos données restent locales';

  @override
  String get versionAndBuildDetails => 'Détails de la version et de la build';

  @override
  String get theDeveloperBehindKuymo => 'Le développeur derrière Kuymo';

  @override
  String get openSourcePackageLicenses => 'Licences des packages open source';

  @override
  String get howDataIsHandled => 'Comment les données sont traitées';

  @override
  String get rulesForUsingKuymo => 'Règles d\'utilisation de Kuymo';

  @override
  String get whatDataWeCollect => 'Quelles données nous collectons';

  @override
  String get whyWeNeedPermissions =>
      'Pourquoi nous avons besoin des autorisations';

  @override
  String get answersToCommonQuestions => 'Réponses aux questions fréquentes';

  @override
  String get reachTheDeveloperDirectly =>
      'Contacter directement le développeur';

  @override
  String get sendUsYourFeedback => 'Envoyez-nous vos commentaires';

  @override
  String get pickVideo => 'Choisir une vidéo';

  @override
  String get targetSizeMB => 'Taille cible (Mo)';

  @override
  String get startCompression => 'Commencer la compression';

  @override
  String get pause => 'Pause';

  @override
  String get resume => 'Reprendre';

  @override
  String get viewResult => 'Voir le résultat';

  @override
  String get saveToGallery => 'Enregistrer dans la galerie';

  @override
  String get shareVideo => 'Partager la vidéo';

  @override
  String get originalSize => 'Taille originale';

  @override
  String get outputSize => 'Taille de sortie';

  @override
  String get noCompressedVideosYet => 'Aucune vidéo compressée pour le moment';

  @override
  String get savedToGallery => 'Enregistré dans la galerie';

  @override
  String get enterATargetSizeGreaterThanZero =>
      'Entrez une taille cible supérieure à zéro';

  @override
  String get compressionCancelled => 'Compression annulée';

  @override
  String get thisVideoCouldNotReachTheSelectedSizeTryALargerTargetSize =>
      'Cette vidéo n\'a pas pu atteindre la taille sélectionnée. Essayez une taille cible plus grande.';

  @override
  String get theSelectedSizeIsTooSmallForThisVideoChooseALargerSize =>
      'La taille sélectionnée est trop petite pour cette vidéo. Choisissez une taille plus grande.';

  @override
  String get originalPreview => 'Aperçu original';

  @override
  String get compressedPreview => 'Aperçu compressé';

  @override
  String get targetPreset => 'Préréglage cible';

  @override
  String get customSize => 'Taille personnalisée';

  @override
  String get previewUnavailable => 'Aperçu indisponible';

  @override
  String get advancedControls => 'Contrôles avancés';

  @override
  String get automatic => 'Automatique';

  @override
  String get maximumResolution => 'Résolution maximale';

  @override
  String get originalResolution => 'Résolution originale';

  @override
  String get maximumFrameRate => 'Fréquence d\'images maximale';

  @override
  String get audioBitrate => 'Débit audio';

  @override
  String get removeAudio => 'Supprimer l\'audio';

  @override
  String get videoBitrateCeilingKbps => 'Plafond du débit vidéo (kbps)';

  @override
  String get hdrHandling => 'Gestion HDR';

  @override
  String get convertToSDR => 'Convertir en SDR';

  @override
  String get keepHDRWhenSupported => 'Conserver le HDR lorsque pris en charge';

  @override
  String get beforeYouStart => 'Avant de commencer';

  @override
  String get calculatingCompressionPlan => 'Calcul du plan de compression…';

  @override
  String get plannedResolution => 'Résolution prévue';

  @override
  String get plannedVideoBitrate => 'Débit vidéo prévu';

  @override
  String get plannedAudioBitrate => 'Débit audio prévu';

  @override
  String
  get reEncodingConvertsAudioToAACStereoDolbyAtmosAndDTSSpatialAudioWillNotBePreserved =>
      'La réencodage convertit l\'audio en stéréo AAC. Dolby Atmos et audio spatial DTS ne seront pas conservés.';

  @override
  String
  get thisTargetIsTooSmallForAUsableVideoIncreaseTheSizeOrLowerOtherLimits =>
      'Cette cible est trop petite pour une vidéo utilisable. Augmentez la taille ou réduisez d\'autres limites.';

  @override
  String get theSelectedTargetMayReduceVideoQuality =>
      'La cible sélectionnée peut réduire la qualité de la vidéo.';

  @override
  String get theSourceIsAlreadyWithinTheSizeLimit =>
      'La source est déjà dans la limite de taille.';

  @override
  String get enterABitrateOfAtLeast150KbpsOrLeaveBlankForAutomatic =>
      'Entrez un débit d\'au moins 150 kbps, ou laissez vide pour automatique';

  @override
  String get enterAnEvenResolutionFrom240To16384OrLeaveBlankForAutomatic =>
      'Entrez une résolution paire de 240 à 16384, ou laissez vide pour automatique';

  @override
  String get videoPosition => 'Position de la vidéo';

  @override
  String
  get aPreviousCompressionWasInterruptedItsTemporaryFilesWereCleanedUpYouCanSelectTheVideoAndTryAgain =>
      'Une compression précédente a été interrompue. Ses fichiers temporaires ont été supprimés ; vous pouvez sélectionner la vidéo et réessayer.';

  @override
  String get dismiss => 'Ignorer';

  @override
  String get clearHistory => 'Effacer l\'historique';

  @override
  String get removeAllHistoryEntriesSavedVideosWillRemainOnYourDevice =>
      'Supprimer toutes les entrées de l\'historique ? Les vidéos enregistrées resteront sur votre appareil.  ';

  @override
  String get attempts => 'Tentatives  ';

  @override
  String get targetSize => 'Taille cible  ';

  @override
  String get outputResolution => 'Résolution de sortie  ';

  @override
  String get thisVideoCouldNotBeReadChooseAnotherFile =>
      'Cette vidéo n\'a pas pu être lue. Choisissez un autre fichier.  ';

  @override
  String get theEncodedVideoFailedVerificationYourOriginalVideoWasNotChanged =>
      'La vidéo encodée a échoué à la vérification. Votre vidéo originale n\'a pas été modifiée.  ';

  @override
  String
  get thisDeviceCannotEncodeTheSelectedResolutionOrFrameRateLowerThatSettingAndTryAgain =>
      'Cet appareil ne peut pas encoder la résolution ou le taux de rafraîchissement sélectionné. Abaissez ce paramètre et réessayez.  ';

  @override
  String
  get thisDeviceCannotDecodeThisAudioFormatForCompressionRemoveAudioOrUseASupportedSource =>
      'Cet appareil ne peut pas décoder ce format audio pour la compression. Supprimez l\'audio ou utilisez une source compatible.';

  @override
  String
  get thisDeviceCannotDecodeThisVideoFormatOrProfileForCompressionChooseAnotherSourceOrDevice =>
      'Cet appareil ne peut pas décoder ce format ou profil vidéo pour la compression. Choisissez une autre source ou un autre appareil.';

  @override
  String get theExportedMP4IsNotReadyForStreamingTryAnotherVideoOrDevice =>
      'Le MP4 exporté n\'est pas prêt pour le streaming. Essayez une autre vidéo ou un autre appareil.';

  @override
  String get thereIsNotEnoughFreeStorageToCompressThisVideo =>
      'Il n\'y a pas assez d\'espace de stockage libre pour compresser cette vidéo.';

  @override
  String get thisDeviceCannotProcessTheSelectedHDRModeTryConvertingToSDR =>
      'Cet appareil ne peut pas traiter le mode HDR sélectionné. Essayez de convertir en SDR.';

  @override
  String get compressionCouldNotBeCompletedTryAnotherSettingOrVideo =>
      'La compression n\'a pas pu être effectuée. Essayez un autre paramètre ou une autre vidéo.';

  @override
  String get appIdentity => 'Identité de l\'application';

  @override
  String get appName => 'Nom de l\'application';

  @override
  String get packageName => 'Nom du package';

  @override
  String get version => 'Version';

  @override
  String get buildNumber => 'Numéro de build';

  @override
  String get deviceAndBuild => 'Appareil et build';

  @override
  String get operatingSystem => 'Système d\'exploitation';

  @override
  String get osVersion => 'Version de l\'OS';

  @override
  String get buildMode => 'Mode de build';

  @override
  String get debug => 'Debug';

  @override
  String get release => 'Release';

  @override
  String get builtWith => 'Construit avec';

  @override
  String get installation => 'Installation';

  @override
  String get installedFrom => 'Installé à partir de';

  @override
  String get installedOn => 'Installé le';

  @override
  String get updatedOn => 'Mis à jour le';

  @override
  String get unavailable => 'Indisponible';

  @override
  String get projectAndSupport => 'Projet et support';

  @override
  String get githubRepository => 'Dépôt GitHub';

  @override
  String get viewKuymoSourceCode => 'Voir le code source de Kuymo';

  @override
  String get readTheREADME => 'Lire le README';

  @override
  String get learnAboutKuymoOnGitHub => 'En savoir plus sur Kuymo sur GitHub';

  @override
  String get reportAnIssue => 'Signaler un problème';

  @override
  String get viewAndCreateGitHubIssues => 'Voir et créer des issues GitHub';

  @override
  String get latestRelease => 'Dernière version';

  @override
  String get viewReleasesAndDownloads => 'Voir les versions et téléchargements';

  @override
  String get supportKuymo => 'Supporter Kuymo';

  @override
  String get openTheOfficialDonationPage =>
      'Ouvrir la page officielle de donation';

  @override
  String get couldNotOpenTheLinkPleaseTryAgain =>
      'Impossible d\'ouvrir le lien. Veuillez réessayer.';

  @override
  String get developer => 'Développeur';

  @override
  String get mostafaSensei => 'Mostafa Sensei';

  @override
  String get githubProfile => 'Profil GitHub';

  @override
  String get seeProjectsAndContactDetails =>
      'Voir les projets et les coordonnées';

  @override
  String get maintenanceInProgress => 'Maintenance en cours';

  @override
  String get kuymoIsTemporarilyUnavailablePleaseTryAgainLater =>
      'Kuymo est temporairement indisponible. Veuillez réessayer plus tard.';

  @override
  String get comingSoon => 'Bientôt disponible';

  @override
  String get loading => 'Loading…';

  @override
  String get pleaseWait => 'Veuillez patienter...';

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
  String get cancel => 'Annuler';

  @override
  String get clean => 'Clean';

  @override
  String get openSourceLicenses => 'Licences open-source';

  @override
  String get storageJobsLoadFailed => 'Interrupted jobs could not be loaded.';

  @override
  String get cleanupInterruptedJobsFailed =>
      'The interrupted files could not be cleaned.';

  @override
  String get languageName => 'Français';

  @override
  String get countryCode => 'FR';

  @override
  String countryName(String countryCode) {
    String _temp0 = intl.Intl.selectLogic(countryCode, {
      'AE': 'Émirats arabes unis',
      'AT': 'Autriche',
      'AU': 'Australie',
      'BE': 'Belgique',
      'BH': 'Bahreïn',
      'BR': 'Brésil',
      'CA': 'Canada',
      'CH': 'Suisse',
      'CN': 'Chine',
      'DE': 'Allemagne',
      'DJ': 'Djibouti',
      'DZ': 'Algérie',
      'EG': 'Égypte',
      'ES': 'Espagne',
      'FR': 'France',
      'GB': 'Royaume-Uni',
      'HK': 'R.A.S. chinoise de Hong Kong',
      'ID': 'Indonésie',
      'IQ': 'Irak',
      'IT': 'Italie',
      'JO': 'Jordanie',
      'JP': 'Japon',
      'KM': 'Comores',
      'KR': 'Corée du Sud',
      'KW': 'Koweït',
      'LB': 'Liban',
      'LY': 'Libye',
      'MA': 'Maroc',
      'MR': 'Mauritanie',
      'MX': 'Mexique',
      'NL': 'Pays-Bas',
      'OM': 'Oman',
      'PL': 'Pologne',
      'PS': 'Territoires palestiniens',
      'PT': 'Portugal',
      'QA': 'Qatar',
      'RU': 'Russie',
      'SA': 'Arabie saoudite',
      'SD': 'Soudan',
      'SE': 'Suède',
      'SG': 'Singapour',
      'SO': 'Somalie',
      'SY': 'Syrie',
      'TH': 'Thaïlande',
      'TN': 'Tunisie',
      'TR': 'Turquie',
      'TW': 'Taïwan',
      'US': 'États-Unis',
      'VN': 'Viêt Nam',
      'YE': 'Yémen',
      'other': 'Pays',
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
  String get nativeEngineSpeed => 'Native compression engine';

  @override
  String get nativeEngineDescription =>
      'Uses Android’s native media engine to compress videos on your device.';

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
  String get kuymoIsStudyingThePlatformAlgorithmAndCalculatingTheBudget =>
      '🐾 Kuymo is studying the platform\'s algorithm and calculating the budget...';

  @override
  String get customControlMode => 'Custom control mode';

  @override
  String
  get youSetTheTargetSizeManuallyTheEngineWillApplyTheHighestPossibleQualityWithinThatCap =>
      'You set the target size manually. The engine will apply the highest possible resolution and quality within that cap.';

  @override
  String kuymoIsPuzzledAnImpossibleTargetForTheNameCap(String name) {
    return 'Kuymo is puzzled (impossible target for the $name cap)';
  }

  @override
  String
  theVideoIsTooLongToFitWithinTheSizeCapWithoutSevereDistortionWeSuggestTrimmingTheVideoOrChoosingAnotherPlatformWithAHigherCap(
    String size,
  ) {
    return 'The video is too long to fit within the $size cap without severe image distortion. We suggest trimming the video or choosing another platform with a higher cap.';
  }

  @override
  String get kuymoAlertProtectingQualityFromDistortion =>
      'Kuymo alert: protecting quality from distortion';

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
      'Kuymo is free and open source. Video processing runs on your device. You retain ownership of your content. The app is provided without a guarantee of any particular output size or quality.';

  @override
  String get termsCopiedToClipboard => 'Terms copied to clipboard';

  @override
  String get termsAcceptanceLicenseTitle => '1. Acceptance & License';

  @override
  String get termsAcceptanceLicenseBody =>
      'Kuymo is free and open source. All features are available to everyone, and video processing runs locally on your devices.';

  @override
  String get termsContentOwnershipTitle => '2. 100% Content Ownership';

  @override
  String get termsContentOwnershipBody =>
      'You retain all copyrights and ownership over your videos. Kuymo does not transmit, store, or claim any rights to your media files.';

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
      'Kuymo was built with a fundamental architectural guarantee: your videos, clips, and audio tracks are encoded exclusively on your device hardware using local native codecs. At no point is your media streamed, stored, or processed on external cloud infrastructure.';

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
  String get kuymoBitrateOptimizer => 'Kuymo Bitrate Optimizer (0.2B)';

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
  String get privacyPolicySummary => 'How Kuymo handles data';

  @override
  String get dataSafetySummary => 'Collected data and purpose';

  @override
  String get permissionsSummary => 'Why Kuymo needs access';

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
  String get appSupportDescription => 'Get help using Kuymo.';

  @override
  String get appTermsDescription =>
      'Terms for using the free, open source Kuymo app.';

  @override
  String get compressionAndroidOnly =>
      'La compression vidéo est actuellement disponible uniquement sur Android.';

  @override
  String get notificationPermissionTitle => 'Enable notifications';

  @override
  String get notificationPermissionBody =>
      'Tap to allow compression alerts and updates.';

  @override
  String get notificationPermissionSettingsBody =>
      'Notifications are blocked. Tap to open system settings.';

  @override
  String get notificationUnavailable =>
      'Notifications are currently supported on Android.';

  @override
  String get notificationSetupFailed =>
      'Notification settings could not be applied. Tap to retry.';

  @override
  String get notificationChannelBlocked =>
      'A notification channel is blocked in system settings.';

  @override
  String get notificationProgressDetails =>
      'Show progress details in the background. A basic service notification remains while compression runs.';

  @override
  String get notificationProgressTitle => 'Compressing video';

  @override
  String get notificationProgressBody => 'Tap to view your compression job.';

  @override
  String get notificationPausedTitle => 'Compression paused';

  @override
  String get notificationSavingTitle => 'Saving compressed video';

  @override
  String get notificationCompletedTitle => 'Video ready';

  @override
  String notificationCompletedBody(String name, String size, String saved) {
    return '$name · $size MB · Saved $saved MB';
  }

  @override
  String notificationCompletedWarningBody(String name, String size) {
    return '$name · $size MB · Review the result warning';
  }

  @override
  String get notificationFailedTitle => 'Compression interrupted';

  @override
  String notificationInterruptedBody(String count) {
    return '$count interrupted jobs are available to review.';
  }

  @override
  String notificationReleaseTitle(String version) {
    return 'Kuymo $version is available';
  }

  @override
  String get notificationSavingsTitle => 'Your weekly storage savings';

  @override
  String notificationSavingsBody(String count, String saved) {
    return '$count videos · $saved MB saved';
  }

  @override
  String get hapticsButtons => 'Buttons and taps';

  @override
  String get hapticsButtonsDescription =>
      'Plays a light pulse when you press an action button. This setting applies across the app; selection changes and swipe gestures have their own controls.';

  @override
  String get hapticsSelections => 'Selection changes';

  @override
  String get hapticsSelectionsDescription =>
      'Plays a brief tick when you change a switch, checkbox, or selected value. Disable it to adjust preferences without vibration while keeping button feedback unchanged.';

  @override
  String get hapticsGestures => 'Gestures';

  @override
  String get hapticsGesturesDescription =>
      'Plays a light pulse when a swipe reaches the point that reveals or triggers an action. It helps you feel the action threshold without vibrating throughout the drag.';

  @override
  String get hapticsSuccess => 'Successful completion';

  @override
  String get hapticsSuccessDescription =>
      'Plays a confirmation pulse when video compression finishes. In the background the completion notification provides the vibration, so the same result does not vibrate twice. Sound on completion is controlled separately.';

  @override
  String get hapticsErrors => 'Errors and interruptions';

  @override
  String get hapticsErrorsDescription =>
      'Plays a stronger pulse if compression fails or is interrupted. In the background this follows the error notification. Cancelling a job yourself does not trigger an error pulse.';

  @override
  String get notificationJobUnavailable =>
      'This job is no longer available. Your history is shown instead.';

  @override
  String get notificationRecoveryHint =>
      'Review interrupted jobs from the home screen.';

  @override
  String get notificationProgressChannel => 'Compression status';

  @override
  String get notificationCompletionChannel => 'Completed videos';

  @override
  String get notificationErrorChannel => 'Compression problems';

  @override
  String get notificationReleaseChannel => 'App releases';

  @override
  String get notificationSavingsChannel => 'Storage savings';

  @override
  String get automaticColorSchemeDescription =>
      'Auto uses a vivid Kuymo palette. Each option previews its own accent colors.';

  @override
  String get colorSchemeTonalSpot => 'Tonal spot';

  @override
  String get colorSchemeFidelity => 'Fidelity';

  @override
  String get colorSchemeContent => 'Content';

  @override
  String get colorSchemeExpressive => 'Expressive';

  @override
  String get colorSchemeFruitSalad => 'Fruit salad';

  @override
  String get colorSchemeMonochrome => 'Monochrome';

  @override
  String get colorSchemeNeutral => 'Neutral';

  @override
  String get colorSchemeRainbow => 'Rainbow';

  @override
  String get colorSchemeVibrant => 'Vibrant';

  @override
  String get hapticsButtonsShort => 'Button press feedback';

  @override
  String get hapticsSelectionsShort => 'Feedback when choices change';

  @override
  String get hapticsGesturesShort => 'Swipe action feedback';

  @override
  String get hapticsSuccessShort => 'A pulse when a video is ready';

  @override
  String get hapticsErrorsShort => 'Feedback when a job fails';

  @override
  String get appUpdatesTitle => 'App updates';

  @override
  String get whatsNewTitle => 'What’s new';

  @override
  String get appUpdatesDescription => 'Check for a new version';

  @override
  String get whatsNewDescription => 'Changes in your installed version';

  @override
  String get installedVersionLabel => 'Installed version';

  @override
  String get updateAvailableLabel => 'A new version is available';

  @override
  String get noUpdatesLabel => 'No newer stable release is available';

  @override
  String get releaseNotesEmpty =>
      'No release notes are available for this version.';

  @override
  String get releaseLoadFailed =>
      'Could not load release information. Try again when you are connected.';

  @override
  String get releaseCachedNotice =>
      'Could not refresh. Showing the saved release notes.';

  @override
  String get openReleaseLabel => 'Open release on GitHub';

  @override
  String get checkUpdatesLabel => 'Check for updates';

  @override
  String get reloadReleaseLabel => 'Refresh release notes';

  @override
  String get releaseOpenFailed =>
      'Could not open the release. Please try again.';

  @override
  String get appLinkCopied => 'Link copied to clipboard.';

  @override
  String get appInvitationCopied =>
      'Invitation copied. Paste it into your messaging app.';

  @override
  String kuymoShareInvitation(String url) {
    return 'Try Kuymo for on-device video compression: $url';
  }

  @override
  String get onDeviceProcessingLabel => 'Video processing on your device';

  @override
  String get kuymoShareDescription =>
      'Choose a target size and prepare your video to share. Video processing stays on your device.';

  @override
  String get copyAppLink => 'Copy app link';

  @override
  String get enjoyingKuymo => 'Enjoying Kuymo?';

  @override
  String get whyChooseKuymo => 'Why choose Kuymo';

  @override
  String get projectSupportLink => 'Copy project support link';

  @override
  String get brandTagline => 'More room for your moments.';

  @override
  String get kuymoAi => 'Kuymo AI';
}
