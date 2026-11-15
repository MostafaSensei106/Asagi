// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get zumi => 'Zumi';

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
  String get cancel => 'Annuler';

  @override
  String get confirm => 'Confirmer';

  @override
  String get pleaseWait => 'Veuillez patienter...';

  @override
  String get ok => 'OK';

  @override
  String get compressVideosPrivatelyOnYourDevice =>
      'Compressez des vidéos en privé, sur votre appareil.';

  @override
  String get welcomeToZumi => 'Bienvenue sur Zumi';

  @override
  String get learnHowZumiCompressesYourVideosWithoutEverLeavingYourPhone =>
      'Découvrez comment Zumi compresse vos vidéos sans jamais quitter votre téléphone.';

  @override
  String get signIn => 'Se connecter';

  @override
  String get signInToSyncYourPlanAndKeepYourPurchasesAvailableOnEveryDevice =>
      'Connectez-vous pour synchroniser votre plan et garder vos achats disponibles sur tous vos appareils.';

  @override
  String get chooseAVideo => 'Choisir une vidéo';

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
  String get sharperTextAndSurfaces => 'Sharper text and surfaces';

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
  String get aboutZumi => 'À propos de Zumi';

  @override
  String get versionBuildNumberAndApplicationDetails =>
      'Version, numéro de build et détails de l\'application.';

  @override
  String get aboutTheDeveloper => 'À propos du développeur';

  @override
  String get theDeveloperAndToolsBehindZumi =>
      'Le développeur et les outils derrière Zumi.';

  @override
  String get openSourceLicenses => 'Licences open-source';

  @override
  String get openSourcePackagesBundledWithZumi =>
      'Packages open-source inclus avec Zumi.';

  @override
  String get privacyPolicy => 'Politique de confidentialité';

  @override
  String get howZumiHandlesYourVideosAndData =>
      'Comment Zumi gère vos vidéos et vos données.';

  @override
  String get termsOfService => 'Conditions d\'utilisation';

  @override
  String get theTermsThatApplyToZumiAndItsPurchases =>
      'Les conditions qui s\'appliquent à Zumi et à ses achats.';

  @override
  String get dataSafety => 'Sécurité des données';

  @override
  String get summaryOfTheDataZumiCollectsAndWhy =>
      'Résumé des données collectées par Zumi et pourquoi. ';

  @override
  String get permissions => 'Autorisations';

  @override
  String get runtimePermissionsZumiRequestsAndWhyEachIsNeeded =>
      'Autorisations d\'exécution demandées par Zumi et pourquoi chacune est nécessaire. ';

  @override
  String get faq => 'FAQ';

  @override
  String get answersToCommonQuestionsAboutCompressionAndBilling =>
      'Réponses aux questions fréquentes sur la compression et la facturation. ';

  @override
  String get support => 'Support';

  @override
  String get getHelpWithYourAccountOrAPurchase =>
      'Obtenez de l\'aide pour votre compte ou un achat. ';

  @override
  String get sendFeedback => 'Envoyer des commentaires';

  @override
  String get reportAProblemOrSuggestAnImprovement =>
      'Signaler un problème ou suggérer une amélioration. ';

  @override
  String get plans => 'Plans';

  @override
  String get comparePlansAndSeeWhatEachOneUnlocks =>
      'Comparer les plans et voir ce que chacun débloque. ';

  @override
  String get planDetails => 'Détails du plan';

  @override
  String get benefitsLimitsAndPricingForThisPlan =>
      'Avantages, limites et tarification de ce plan. ';

  @override
  String get paymentMethods => 'Méthodes de paiement';

  @override
  String get supportedWaysToPayIncludingStoreBilling =>
      'Moyens de paiement pris en charge, y compris la facturation en magasin. ';

  @override
  String get restorePurchases => 'Restaurer les achats';

  @override
  String get reApplyAPurchaseMadeOnAnotherDevice =>
      'Réappliquer un achat effectué sur un autre appareil.';

  @override
  String get profile => 'Profil';

  @override
  String get yourIdentityPlanStatusAndAccountPreferences =>
      'Votre identité, statut de l\'abonnement et préférences du compte.';

  @override
  String get deleteAccount => 'Supprimer le compte';

  @override
  String get permanentlyRemoveYourAccountAndItsServerSideData =>
      'Supprimer définitivement votre compte et ses données côté serveur.';

  @override
  String get rateZumi => 'Évaluer Zumi';

  @override
  String get tellOthersHowZumiWorkedForYouOnTheStore =>
      'Dites aux autres comment Zumi a fonctionné pour vous sur le store.';

  @override
  String get shareZumi => 'Partager Zumi';

  @override
  String get recommendZumiToAFriend => 'Recommandez Zumi à un ami.';

  @override
  String get appearanceLanguage => 'Apparence et langue';

  @override
  String get compression => 'Compression';

  @override
  String get onDeviceAI => 'IA sur l\'appareil';

  @override
  String get notificationsPrivacy => 'Notifications et confidentialité';

  @override
  String get plansPurchases => 'Abonnements et achats';

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
  String get zumiAssistant => 'Assistant Zumi';

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
  String get comparePlansAndUpgrade =>
      'Comparer les forfaits et effectuer une mise à niveau';

  @override
  String get paymentMethodsAndBilling => 'Méthodes de paiement et facturation';

  @override
  String get restoreYourPreviousPurchase => 'Restaurer votre achat précédent';

  @override
  String get versionAndBuildDetails => 'Détails de la version et de la build';

  @override
  String get theDeveloperBehindZumi => 'Le développeur derrière Zumi';

  @override
  String get openSourcePackageLicenses => 'Licences des packages open source';

  @override
  String get howDataIsHandled => 'Comment les données sont traitées';

  @override
  String get rulesForUsingZumi => 'Règles d\'utilisation de Zumi';

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
  String get viewZumiSourceCode => 'Voir le code source de Zumi';

  @override
  String get readTheREADME => 'Lire le README';

  @override
  String get learnAboutZumiOnGitHub => 'En savoir plus sur Zumi sur GitHub';

  @override
  String get reportAnIssue => 'Signaler un problème';

  @override
  String get viewAndCreateGitHubIssues => 'Voir et créer des issues GitHub';

  @override
  String get latestRelease => 'Dernière version';

  @override
  String get viewReleasesAndDownloads => 'Voir les versions et téléchargements';

  @override
  String get supportZumi => 'Supporter Zumi';

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
  String get zumiIsTemporarilyUnavailablePleaseTryAgainLater =>
      'Zumi est temporairement indisponible. Veuillez réessayer plus tard.';

  @override
  String get comingSoon => 'Bientôt disponible';

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
}
