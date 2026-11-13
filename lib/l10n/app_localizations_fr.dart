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
  String fileSavedToDcim(String fileName) {
    return 'Fichier enregistré dans la galerie : $fileName';
  }

  @override
  String fileSavedToDocuments(String fileName) {
    return 'Fichier enregistré dans les documents : $fileName';
  }

  @override
  String get fileAlreadySaved => 'Le fichier est déjà enregistré';

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
  String get error_address_line_cant_be_empty =>
      'La ligne d\'adresse ne peut pas être vide';

  @override
  String get error_address_line_too_long =>
      'La ligne d\'adresse est trop longue';

  @override
  String get error_address_invalid_special_characters =>
      'Les caractères spéciaux ne sont pas autorisés';

  @override
  String get error_address_emoji_not_allowed =>
      'Les emojis ne sont pas autorisés';

  @override
  String get error_city_cant_be_empty => 'La ville ne peut pas être vide';

  @override
  String get error_city_too_long => 'Le nom de la ville est trop long';

  @override
  String get error_city_invalid_special_characters =>
      'La ville contient des caractères spéciaux non valides';

  @override
  String get error_address_label_cant_be_empty =>
      'Le libellé de l\'adresse ne peut pas être vide';

  @override
  String get error_address_label_too_long =>
      'Le libellé de l\'adresse est trop long';

  @override
  String get error_email_cant_be_empty => 'L\'email ne peut pas être vide';

  @override
  String get error_email_not_invalid_format => 'Format d\'email invalide';

  @override
  String get error_email_contains_invalid_characters =>
      'L\'email contient des caractères invalides';

  @override
  String get error_email_must_contain_at_symbol => 'L\'email doit contenir @';

  @override
  String get error_email_must_be_in_lowercase =>
      'L\'email doit être en minuscules';

  @override
  String get error_arabic_not_allowed =>
      'Les caractères arabes ne sont pas autorisés';

  @override
  String get error_email_emoji_not_allowed =>
      'Les emojis ne sont pas autorisés dans l\'email';

  @override
  String get error_phone_number_cant_be_empty =>
      'Le numéro de téléphone ne peut pas être vide';

  @override
  String get error_phone_number_invalid => 'Numéro de téléphone invalide';

  @override
  String get error_phone_number_min_length =>
      'Le numéro de téléphone doit comporter au moins 11 chiffres';

  @override
  String get error_name_cant_be_empty => 'Le nom ne peut pas être vide';

  @override
  String get error_name_invalid => 'Nom invalide';

  @override
  String get error_name_too_short_at_least_3_characters =>
      'Le nom doit comporter au moins 3 caractères';

  @override
  String get error_name_too_long_maximum_20_characters =>
      'Le nom ne peut pas dépasser 20 caractères';

  @override
  String get error_name_invalid_special_characters =>
      'Le nom contient des caractères spéciaux invalides';

  @override
  String get error_name_emoji_not_allowed =>
      'Les emojis ne sont pas autorisés dans le nom';

  @override
  String get error_password_cant_be_empty =>
      'Le mot de passe ne peut pas être vide';

  @override
  String
  get error_password_must_contain_uppercase_lowercase_number_and_special_character =>
      'Le mot de passe doit contenir une majuscule, une minuscule, un chiffre et un caractère spécial';

  @override
  String get error_password_must_be_at_least_8_characters_long =>
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
  String get settingsGroupAppearance => 'Apparence et langue';

  @override
  String get settingsGroupCompression => 'Compression';

  @override
  String get settingsGroupAi => 'IA sur l\'appareil';

  @override
  String get settingsGroupPrivacy => 'Notifications et confidentialité';

  @override
  String get settingsGroupPlans => 'Abonnements et achats';

  @override
  String get settingsGroupAbout => 'À propos';

  @override
  String get settingsGroupLegal => 'Mentions légales';

  @override
  String get settingsGroupHelp => 'Aide et retour d\'information';

  @override
  String get settingsGroupAccount => 'Compte';

  @override
  String get settingsAppearanceSubtitle => 'Thème et langue de l\'application';

  @override
  String get settingsLanguageSubtitle =>
      'Langue et orientation de l\'application';

  @override
  String get settingsCompressionSubtitle => 'Qualité et format par défaut';

  @override
  String get settingsStorageSubtitle => 'Utilisation du cache et du stockage';

  @override
  String get aiSettings => 'Paramètres de l\'IA';

  @override
  String get zumiAssistant => 'Assistant Zumi';

  @override
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere =>
      'Un assistant privé pour vos vidéos arrive bientôt. Vous pourrez poser des questions sur la compression, l\'organisation et les vidéos enregistrées ici.';

  @override
  String get settingsAiSubtitle => 'Modèles locaux et outils intelligents';

  @override
  String get exploreLocalModelsAndFutureAiToolsTheseOptionsAreNotActiveYet =>
      'Explorez les modèles locaux et les futurs outils d\'IA. Ces options ne sont pas encore actives.';

  @override
  String get localModels => 'Modèles locaux';

  @override
  String get aiModelsSubtitle =>
      'Parcourez et téléchargez les modèles pris en charge';

  @override
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere =>
      'Choisissez un modèle pris en charge, téléchargez-le sur cet appareil et gérez les modèles installés ici.';

  @override
  String get importAModel => 'Importer un modèle';

  @override
  String get aiImportSubtitle =>
      'Utilisez un modèle compatible depuis vos fichiers';

  @override
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt =>
      'Sélectionnez un fichier de modèle local compatible et examinez ses exigences avant de l\'utiliser.';

  @override
  String get smartFeatures => 'Fonctionnalités intelligentes';

  @override
  String get aiFeaturesSubtitle => 'Compression, organisation et recherche';

  @override
  String
  get chooseWhichLocalAiSuggestionsToUseForVideoCompressionOrganizationNamingAndSearch =>
      'Choisissez quelles suggestions d\'IA locales utiliser pour la compression vidéo, l\'organisation, le nommage et la recherche.';

  @override
  String get modelPerformance => 'Performance du modèle';

  @override
  String get aiRuntimeSubtitle => 'Préférences de traitement et de ressources';

  @override
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels =>
      'Contrôlez le backend de traitement et les limites de ressources pour les modèles pris en charge.';

  @override
  String get conversationSettings => 'Paramètres de conversation';

  @override
  String get aiChatSettingsSubtitle =>
      'Diffusion, réflexion et longueur des réponses';

  @override
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits =>
      'Configurez la manière dont l\'assistant répond, y compris le streaming, le mode réflexion, l\'échantillonnage et les limites de réponse.  ';

  @override
  String get imagesAndAudio => 'Images et audio  ';

  @override
  String get aiMediaSubtitle => 'Contrôlez les entrées multimodales  ';

  @override
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos =>
      'Choisissez si les modèles compatibles peuvent analyser les images et l\'audio sélectionnés de vos vidéos.  ';

  @override
  String get semanticSearch => 'Recherche sémantique  ';

  @override
  String get aiSearchSubtitle => 'Vecteurs et indexation locale  ';

  @override
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning =>
      'Gérez le modèle de vecteurs local et l\'index de recherche pour trouver des vidéos et des moments par leur signification.  ';

  @override
  String get toolsAndStructuredOutput => 'Outils et sortie structurée  ';

  @override
  String get aiToolsSubtitle => 'Actions, schémas et confirmations';

  @override
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation =>
      'Gérez les actions assistantes prises en charge et les réponses structurées. Les actions affectant les fichiers nécessiteront votre confirmation.';

  @override
  String get aiGroupModels => 'Modèles';

  @override
  String get aiGroupExperience => 'Expérience de l\'assistant';

  @override
  String get aiGroupCapabilities => 'Fonctionnalités intelligentes';

  @override
  String get aiGroupPerformance => 'Performance';

  @override
  String get compressionHistorySubtitle => 'Votre historique vidéo compressé';

  @override
  String get settingsNotificationsSubtitle =>
      'Alertes de complétion et de mise à jour';

  @override
  String get settingsPrivacySubtitle => 'Vos données restent locales';

  @override
  String get plansSubtitle =>
      'Comparer les forfaits et effectuer une mise à niveau';

  @override
  String get plansMethodsSubtitle => 'Méthodes de paiement et facturation';

  @override
  String get plansRestoreSubtitle => 'Restaurer votre achat précédent';

  @override
  String get aboutAppSubtitle => 'Détails de la version et de la build';

  @override
  String get aboutDeveloperSubtitle => 'Le développeur derrière Zumi';

  @override
  String get aboutLicensesSubtitle => 'Licences des packages open source';

  @override
  String get legalPrivacySubtitle => 'Comment les données sont traitées';

  @override
  String get legalTermsSubtitle => 'Règles d\'utilisation de Zumi';

  @override
  String get legalDataSafetySubtitle => 'Quelles données nous collectons';

  @override
  String get legalPermissionsSubtitle =>
      'Pourquoi nous avons besoin des autorisations';

  @override
  String get helpFaqSubtitle => 'Réponses aux questions fréquentes';

  @override
  String get helpSupportSubtitle => 'Contacter directement le développeur';

  @override
  String get helpFeedbackSubtitle => 'Envoyez-nous vos commentaires';

  @override
  String get compressionPickVideo => 'Choisir une vidéo';

  @override
  String get compressionTargetMb => 'Taille cible (Mo)';

  @override
  String get compressionStart => 'Commencer la compression';

  @override
  String get compressionPause => 'Pause';

  @override
  String get compressionResume => 'Reprendre';

  @override
  String get compressionViewResult => 'Voir le résultat';

  @override
  String get compressionSaveGallery => 'Enregistrer dans la galerie';

  @override
  String get compressionShare => 'Partager la vidéo';

  @override
  String get compressionOriginalSize => 'Taille originale';

  @override
  String get compressionOutputSize => 'Taille de sortie';

  @override
  String get compressionEmptyHistory =>
      'Aucune vidéo compressée pour le moment';

  @override
  String get compressionSavedGallery => 'Enregistré dans la galerie';

  @override
  String get compressionInvalidTarget =>
      'Entrez une taille cible supérieure à zéro';

  @override
  String get compressionCancelled => 'Compression annulée';

  @override
  String get compressionTargetExceeded =>
      'Cette vidéo n\'a pas pu atteindre la taille sélectionnée. Essayez une taille cible plus grande.';

  @override
  String get compressionTargetInfeasible =>
      'La taille sélectionnée est trop petite pour cette vidéo. Choisissez une taille plus grande.';

  @override
  String get compressionPreviewBefore => 'Aperçu original';

  @override
  String get compressionPreviewAfter => 'Aperçu compressé';

  @override
  String get compressionPreset => 'Préréglage cible';

  @override
  String get compressionCustom => 'Taille personnalisée';

  @override
  String get compressionPreviewUnavailable => 'Aperçu indisponible';

  @override
  String get compressionAdvanced => 'Contrôles avancés';

  @override
  String get compressionAutomatic => 'Automatique';

  @override
  String get compressionResolutionLimit => 'Résolution maximale';

  @override
  String get compressionSourceResolution => 'Résolution originale';

  @override
  String get compressionFrameRateLimit => 'Fréquence d\'images maximale';

  @override
  String get compressionAudioQuality => 'Débit audio';

  @override
  String get compressionRemoveAudio => 'Supprimer l\'audio';

  @override
  String get compressionVideoBitrateLimit => 'Plafond du débit vidéo (kbps)';

  @override
  String get compressionHdrPolicy => 'Gestion HDR';

  @override
  String get compressionHdrConvert => 'Convertir en SDR';

  @override
  String get compressionHdrPreserve =>
      'Conserver le HDR lorsque pris en charge';

  @override
  String get compressionPlanPreview => 'Avant de commencer';

  @override
  String get compressionPlanLoading => 'Calcul du plan de compression…';

  @override
  String get compressionPlanResolution => 'Résolution prévue';

  @override
  String get compressionPlanVideoBitrate => 'Débit vidéo prévu';

  @override
  String get compressionPlanAudioBitrate => 'Débit audio prévu';

  @override
  String get compressionAudioConversionNote =>
      'La réencodage convertit l\'audio en stéréo AAC. Dolby Atmos et audio spatial DTS ne seront pas conservés.';

  @override
  String get compressionPlanTooSmall =>
      'Cette cible est trop petite pour une vidéo utilisable. Augmentez la taille ou réduisez d\'autres limites.';

  @override
  String get compressionPlanLowQuality =>
      'La cible sélectionnée peut réduire la qualité de la vidéo.';

  @override
  String get compressionPlanAlreadyWithinLimit =>
      'La source est déjà dans la limite de taille.';

  @override
  String get compressionInvalidBitrate =>
      'Entrez un débit d\'au moins 150 kbps, ou laissez vide pour automatique';

  @override
  String get compressionInvalidResolution =>
      'Entrez une résolution paire de 240 à 16384, ou laissez vide pour automatique';

  @override
  String get compressionSeek => 'Position de la vidéo';

  @override
  String get compressionInterrupted =>
      'Une compression précédente a été interrompue. Ses fichiers temporaires ont été supprimés ; vous pouvez sélectionner la vidéo et réessayer.';

  @override
  String get compressionDismiss => 'Ignorer';

  @override
  String get compressionClearHistory => 'Effacer l\'historique';

  @override
  String get compressionClearHistoryConfirm =>
      'Supprimer toutes les entrées de l\'historique ? Les vidéos enregistrées resteront sur votre appareil.  ';

  @override
  String get compressionAttempts => 'Tentatives  ';

  @override
  String get compressionTargetSize => 'Taille cible  ';

  @override
  String get compressionOutputResolution => 'Résolution de sortie  ';

  @override
  String get compressionInvalidVideo =>
      'Cette vidéo n\'a pas pu être lue. Choisissez un autre fichier.  ';

  @override
  String get compressionInvalidOutput =>
      'La vidéo encodée a échoué à la vérification. Votre vidéo originale n\'a pas été modifiée.  ';

  @override
  String get compressionEncoderUnsupported =>
      'Cet appareil ne peut pas encoder la résolution ou le taux de rafraîchissement sélectionné. Abaissez ce paramètre et réessayez.  ';

  @override
  String get compressionAudioDecoderUnsupported =>
      'Cet appareil ne peut pas décoder ce format audio pour la compression. Supprimez l\'audio ou utilisez une source compatible.';

  @override
  String get compressionVideoDecoderUnsupported =>
      'Cet appareil ne peut pas décoder ce format ou profil vidéo pour la compression. Choisissez une autre source ou un autre appareil.';

  @override
  String get compressionMp4NotStreamable =>
      'Le MP4 exporté n\'est pas prêt pour le streaming. Essayez une autre vidéo ou un autre appareil.';

  @override
  String get compressionNoSpace =>
      'Il n\'y a pas assez d\'espace de stockage libre pour compresser cette vidéo.';

  @override
  String get compressionHdrUnsupported =>
      'Cet appareil ne peut pas traiter le mode HDR sélectionné. Essayez de convertir en SDR.';

  @override
  String get compressionGeneralFailure =>
      'La compression n\'a pas pu être effectuée. Essayez un autre paramètre ou une autre vidéo.';

  @override
  String get aboutIdentitySection => 'Identité de l\'application';

  @override
  String get aboutAppName => 'Nom de l\'application';

  @override
  String get aboutPackageName => 'Nom du package';

  @override
  String get aboutVersion => 'Version';

  @override
  String get aboutBuildNumber => 'Numéro de build';

  @override
  String get aboutEnvironmentSection => 'Appareil et build';

  @override
  String get aboutOperatingSystem => 'Système d\'exploitation';

  @override
  String get aboutOsVersion => 'Version de l\'OS';

  @override
  String get aboutBuildMode => 'Mode de build';

  @override
  String get aboutDebug => 'Debug';

  @override
  String get aboutRelease => 'Release';

  @override
  String get aboutToolchainSection => 'Construit avec';

  @override
  String get aboutInstallationSection => 'Installation';

  @override
  String get aboutInstaller => 'Installé à partir de';

  @override
  String get aboutInstalledOn => 'Installé le';

  @override
  String get aboutUpdatedOn => 'Mis à jour le';

  @override
  String get aboutUnavailable => 'Indisponible';

  @override
  String get aboutProjectSection => 'Projet et support';

  @override
  String get aboutRepository => 'Dépôt GitHub';

  @override
  String get aboutRepositorySubtitle => 'Voir le code source de Zumi';

  @override
  String get aboutReadme => 'Lire le README';

  @override
  String get aboutReadmeSubtitle => 'En savoir plus sur Zumi sur GitHub';

  @override
  String get aboutIssues => 'Signaler un problème';

  @override
  String get aboutIssuesSubtitle => 'Voir et créer des issues GitHub';

  @override
  String get aboutLatestRelease => 'Dernière version';

  @override
  String get aboutLatestReleaseSubtitle =>
      'Voir les versions et téléchargements';

  @override
  String get aboutDonate => 'Supporter Zumi';

  @override
  String get aboutDonateSubtitle => 'Ouvrir la page officielle de donation';

  @override
  String get aboutLinkError =>
      'Impossible d\'ouvrir le lien. Veuillez réessayer.';

  @override
  String get aboutDeveloperSection => 'Développeur';

  @override
  String get aboutDeveloperName => 'Mostafa Sensei';

  @override
  String get aboutDeveloperProfile => 'Profil GitHub';

  @override
  String get aboutDeveloperProfileSubtitle =>
      'Voir les projets et les coordonnées';

  @override
  String get maintenanceInProgress => 'Maintenance en cours';

  @override
  String get maintenanceMessage =>
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

/// The translations for French, as used in Canada (`fr_CA`).
class AppLocalizationsFrCa extends AppLocalizationsFr {
  AppLocalizationsFrCa() : super('fr_CA');

  @override
  String get zumi => 'Zumi';

  @override
  String get downloadFile => 'Télécharger le fichier';

  @override
  String fileOpenedInBrowser(String fileName) {
    return 'Fichier ouvert dans le navigateur : $fileName';
  }

  @override
  String fileSavedToDcim(String fileName) {
    return 'Fichier enregistré dans la galerie : $fileName';
  }

  @override
  String fileSavedToDocuments(String fileName) {
    return 'Fichier enregistré dans les documents : $fileName';
  }

  @override
  String get fileAlreadySaved => 'Le fichier est déjà enregistré';

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
  String get error_address_line_cant_be_empty =>
      'La ligne d\'adresse ne peut pas être vide';

  @override
  String get error_address_line_too_long =>
      'La ligne d\'adresse est trop longue';

  @override
  String get error_address_invalid_special_characters =>
      'Les caractères spéciaux ne sont pas autorisés';

  @override
  String get error_address_emoji_not_allowed =>
      'Les emojis ne sont pas autorisés';

  @override
  String get error_city_cant_be_empty => 'La ville ne peut pas être vide';

  @override
  String get error_city_too_long => 'Le nom de la ville est trop long';

  @override
  String get error_city_invalid_special_characters =>
      'La ville contient des caractères spéciaux non valides';

  @override
  String get error_address_label_cant_be_empty =>
      'Le libellé de l\'adresse ne peut pas être vide';

  @override
  String get error_address_label_too_long =>
      'Le libellé de l\'adresse est trop long';

  @override
  String get error_email_cant_be_empty => 'L\'email ne peut pas être vide';

  @override
  String get error_email_not_invalid_format => 'Format d\'email invalide';

  @override
  String get error_email_contains_invalid_characters =>
      'L\'email contient des caractères invalides';

  @override
  String get error_email_must_contain_at_symbol => 'L\'email doit contenir @';

  @override
  String get error_email_must_be_in_lowercase =>
      'L\'email doit être en minuscules';

  @override
  String get error_arabic_not_allowed =>
      'Les caractères arabes ne sont pas autorisés';

  @override
  String get error_email_emoji_not_allowed =>
      'Les emojis ne sont pas autorisés dans l\'email';

  @override
  String get error_phone_number_cant_be_empty =>
      'Le numéro de téléphone ne peut pas être vide';

  @override
  String get error_phone_number_invalid => 'Numéro de téléphone invalide';

  @override
  String get error_phone_number_min_length =>
      'Le numéro de téléphone doit comporter au moins 11 chiffres';

  @override
  String get error_name_cant_be_empty => 'Le nom ne peut pas être vide';

  @override
  String get error_name_invalid => 'Nom invalide';

  @override
  String get error_name_too_short_at_least_3_characters =>
      'Le nom doit comporter au moins 3 caractères';

  @override
  String get error_name_too_long_maximum_20_characters =>
      'Le nom ne peut pas dépasser 20 caractères';

  @override
  String get error_name_invalid_special_characters =>
      'Le nom contient des caractères spéciaux invalides';

  @override
  String get error_name_emoji_not_allowed =>
      'Les emojis ne sont pas autorisés dans le nom';

  @override
  String get error_password_cant_be_empty =>
      'Le mot de passe ne peut pas être vide';

  @override
  String
  get error_password_must_contain_uppercase_lowercase_number_and_special_character =>
      'Le mot de passe doit contenir une majuscule, une minuscule, un chiffre et un caractère spécial';

  @override
  String get error_password_must_be_at_least_8_characters_long =>
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
  String get settingsGroupAppearance => 'Apparence et langue';

  @override
  String get settingsGroupCompression => 'Compression';

  @override
  String get settingsGroupAi => 'IA sur l\'appareil';

  @override
  String get settingsGroupPrivacy => 'Notifications et confidentialité';

  @override
  String get settingsGroupPlans => 'Abonnements et achats';

  @override
  String get settingsGroupAbout => 'À propos';

  @override
  String get settingsGroupLegal => 'Mentions légales';

  @override
  String get settingsGroupHelp => 'Aide et retour d\'information';

  @override
  String get settingsGroupAccount => 'Compte';

  @override
  String get settingsAppearanceSubtitle => 'Thème et langue de l\'application';

  @override
  String get settingsLanguageSubtitle =>
      'Langue et orientation de l\'application';

  @override
  String get settingsCompressionSubtitle => 'Qualité et format par défaut';

  @override
  String get settingsStorageSubtitle => 'Utilisation du cache et du stockage';

  @override
  String get aiSettings => 'Paramètres de l\'IA';

  @override
  String get zumiAssistant => 'Assistant Zumi';

  @override
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere =>
      'Un assistant privé pour vos vidéos arrive bientôt. Vous pourrez poser des questions sur la compression, l\'organisation et les vidéos enregistrées ici.';

  @override
  String get settingsAiSubtitle => 'Modèles locaux et outils intelligents';

  @override
  String get exploreLocalModelsAndFutureAiToolsTheseOptionsAreNotActiveYet =>
      'Explorez les modèles locaux et les futurs outils d\'IA. Ces options ne sont pas encore actives.';

  @override
  String get localModels => 'Modèles locaux';

  @override
  String get aiModelsSubtitle =>
      'Parcourez et téléchargez les modèles pris en charge';

  @override
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere =>
      'Choisissez un modèle pris en charge, téléchargez-le sur cet appareil et gérez les modèles installés ici.';

  @override
  String get importAModel => 'Importer un modèle';

  @override
  String get aiImportSubtitle =>
      'Utilisez un modèle compatible depuis vos fichiers';

  @override
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt =>
      'Sélectionnez un fichier de modèle local compatible et examinez ses exigences avant de l\'utiliser.';

  @override
  String get smartFeatures => 'Fonctionnalités intelligentes';

  @override
  String get aiFeaturesSubtitle => 'Compression, organisation et recherche';

  @override
  String
  get chooseWhichLocalAiSuggestionsToUseForVideoCompressionOrganizationNamingAndSearch =>
      'Choisissez quelles suggestions d\'IA locales utiliser pour la compression vidéo, l\'organisation, le nommage et la recherche.';

  @override
  String get modelPerformance => 'Performance du modèle';

  @override
  String get aiRuntimeSubtitle => 'Préférences de traitement et de ressources';

  @override
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels =>
      'Contrôlez le backend de traitement et les limites de ressources pour les modèles pris en charge.';

  @override
  String get conversationSettings => 'Paramètres de conversation';

  @override
  String get aiChatSettingsSubtitle =>
      'Diffusion, réflexion et longueur des réponses';

  @override
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits =>
      'Configurez la manière dont l\'assistant répond, y compris le streaming, le mode réflexion, l\'échantillonnage et les limites de réponse.  ';

  @override
  String get imagesAndAudio => 'Images et audio  ';

  @override
  String get aiMediaSubtitle => 'Contrôlez les entrées multimodales  ';

  @override
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos =>
      'Choisissez si les modèles compatibles peuvent analyser les images et l\'audio sélectionnés de vos vidéos.  ';

  @override
  String get semanticSearch => 'Recherche sémantique  ';

  @override
  String get aiSearchSubtitle => 'Vecteurs et indexation locale  ';

  @override
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning =>
      'Gérez le modèle de vecteurs local et l\'index de recherche pour trouver des vidéos et des moments par leur signification.  ';

  @override
  String get toolsAndStructuredOutput => 'Outils et sortie structurée  ';

  @override
  String get aiToolsSubtitle => 'Actions, schémas et confirmations';

  @override
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation =>
      'Gérez les actions assistantes prises en charge et les réponses structurées. Les actions affectant les fichiers nécessiteront votre confirmation.';

  @override
  String get aiGroupModels => 'Modèles';

  @override
  String get aiGroupExperience => 'Expérience de l\'assistant';

  @override
  String get aiGroupCapabilities => 'Fonctionnalités intelligentes';

  @override
  String get aiGroupPerformance => 'Performance';

  @override
  String get compressionHistorySubtitle => 'Votre historique vidéo compressé';

  @override
  String get settingsNotificationsSubtitle =>
      'Alertes de complétion et de mise à jour';

  @override
  String get settingsPrivacySubtitle => 'Vos données restent locales';

  @override
  String get plansSubtitle =>
      'Comparer les forfaits et effectuer une mise à niveau';

  @override
  String get plansMethodsSubtitle => 'Méthodes de paiement et facturation';

  @override
  String get plansRestoreSubtitle => 'Restaurer votre achat précédent';

  @override
  String get aboutAppSubtitle => 'Détails de la version et de la build';

  @override
  String get aboutDeveloperSubtitle => 'Le développeur derrière Zumi';

  @override
  String get aboutLicensesSubtitle => 'Licences des packages open source';

  @override
  String get legalPrivacySubtitle => 'Comment les données sont traitées';

  @override
  String get legalTermsSubtitle => 'Règles d\'utilisation de Zumi';

  @override
  String get legalDataSafetySubtitle => 'Quelles données nous collectons';

  @override
  String get legalPermissionsSubtitle =>
      'Pourquoi nous avons besoin des autorisations';

  @override
  String get helpFaqSubtitle => 'Réponses aux questions fréquentes';

  @override
  String get helpSupportSubtitle => 'Contacter directement le développeur';

  @override
  String get helpFeedbackSubtitle => 'Envoyez-nous vos commentaires';

  @override
  String get compressionPickVideo => 'Choisir une vidéo';

  @override
  String get compressionTargetMb => 'Taille cible (Mo)';

  @override
  String get compressionStart => 'Commencer la compression';

  @override
  String get compressionPause => 'Pause';

  @override
  String get compressionResume => 'Reprendre';

  @override
  String get compressionViewResult => 'Voir le résultat';

  @override
  String get compressionSaveGallery => 'Enregistrer dans les photos';

  @override
  String get compressionShare => 'Partager la vidéo';

  @override
  String get compressionOriginalSize => 'Taille originale';

  @override
  String get compressionOutputSize => 'Taille de sortie';

  @override
  String get compressionEmptyHistory =>
      'Aucune vidéo compressée pour le moment';

  @override
  String get compressionSavedGallery => 'Enregistré dans la galerie';

  @override
  String get compressionInvalidTarget =>
      'Entrez une taille cible supérieure à zéro';

  @override
  String get compressionCancelled => 'Compression annulée';

  @override
  String get compressionTargetExceeded =>
      'Cette vidéo n\'a pas pu atteindre la taille sélectionnée. Essayez une taille cible plus grande.';

  @override
  String get compressionTargetInfeasible =>
      'La taille sélectionnée est trop petite pour cette vidéo. Choisissez une taille plus grande.';

  @override
  String get compressionPreviewBefore => 'Aperçu original';

  @override
  String get compressionPreviewAfter => 'Aperçu compressé';

  @override
  String get compressionPreset => 'Préréglage cible';

  @override
  String get compressionCustom => 'Taille personnalisée';

  @override
  String get compressionPreviewUnavailable => 'Aperçu indisponible';

  @override
  String get compressionAdvanced => 'Contrôles avancés';

  @override
  String get compressionAutomatic => 'Automatique';

  @override
  String get compressionResolutionLimit => 'Résolution maximale';

  @override
  String get compressionSourceResolution => 'Résolution originale';

  @override
  String get compressionFrameRateLimit => 'Fréquence d\'images maximale';

  @override
  String get compressionAudioQuality => 'Débit audio';

  @override
  String get compressionRemoveAudio => 'Supprimer l\'audio';

  @override
  String get compressionVideoBitrateLimit => 'Plafond du débit vidéo (kbps)';

  @override
  String get compressionHdrPolicy => 'Gestion HDR';

  @override
  String get compressionHdrConvert => 'Convertir en SDR';

  @override
  String get compressionHdrPreserve =>
      'Conserver le HDR lorsque pris en charge';

  @override
  String get compressionPlanPreview => 'Avant de commencer';

  @override
  String get compressionPlanLoading => 'Calcul du plan de compression…';

  @override
  String get compressionPlanResolution => 'Résolution prévue';

  @override
  String get compressionPlanVideoBitrate => 'Débit vidéo prévu';

  @override
  String get compressionPlanAudioBitrate => 'Débit audio prévu';

  @override
  String get compressionAudioConversionNote =>
      'La réencodage convertit l\'audio en stéréo AAC. Dolby Atmos et audio spatial DTS ne seront pas conservés.';

  @override
  String get compressionPlanTooSmall =>
      'Cette cible est trop petite pour une vidéo utilisable. Augmentez la taille ou réduisez d\'autres limites.';

  @override
  String get compressionPlanLowQuality =>
      'La cible sélectionnée peut réduire la qualité de la vidéo.';

  @override
  String get compressionPlanAlreadyWithinLimit =>
      'La source est déjà dans la limite de taille.';

  @override
  String get compressionInvalidBitrate =>
      'Entrez un débit d\'au moins 150 kbps, ou laissez vide pour automatique';

  @override
  String get compressionInvalidResolution =>
      'Entrez une résolution paire de 240 à 16384, ou laissez vide pour automatique';

  @override
  String get compressionSeek => 'Position de la vidéo';

  @override
  String get compressionInterrupted =>
      'Une compression précédente a été interrompue. Ses fichiers temporaires ont été supprimés ; vous pouvez sélectionner la vidéo et réessayer.';

  @override
  String get compressionDismiss => 'Ignorer';

  @override
  String get compressionClearHistory => 'Effacer l\'historique';

  @override
  String get compressionClearHistoryConfirm =>
      'Supprimer toutes les entrées de l\'historique ? Les vidéos enregistrées resteront sur votre appareil.  ';

  @override
  String get compressionAttempts => 'Tentatives  ';

  @override
  String get compressionTargetSize => 'Taille cible  ';

  @override
  String get compressionOutputResolution => 'Résolution de sortie  ';

  @override
  String get compressionInvalidVideo =>
      'Cette vidéo n\'a pas pu être lue. Choisissez un autre fichier.  ';

  @override
  String get compressionInvalidOutput =>
      'La vidéo encodée a échoué à la vérification. Votre vidéo originale n\'a pas été modifiée.  ';

  @override
  String get compressionEncoderUnsupported =>
      'Cet appareil ne peut pas encoder la résolution ou le taux de rafraîchissement sélectionné. Abaissez ce paramètre et réessayez.  ';

  @override
  String get compressionAudioDecoderUnsupported =>
      'Cet appareil ne peut pas décoder ce format audio pour la compression. Supprimez l\'audio ou utilisez une source compatible.';

  @override
  String get compressionVideoDecoderUnsupported =>
      'Cet appareil ne peut pas décoder ce format ou profil vidéo pour la compression. Choisissez une autre source ou un autre appareil.';

  @override
  String get compressionMp4NotStreamable =>
      'Le MP4 exporté n\'est pas prêt pour le streaming. Essayez une autre vidéo ou un autre appareil.';

  @override
  String get compressionNoSpace =>
      'Il n\'y a pas assez d\'espace de stockage libre pour compresser cette vidéo.';

  @override
  String get compressionHdrUnsupported =>
      'Cet appareil ne peut pas traiter le mode HDR sélectionné. Essayez de convertir en SDR.';

  @override
  String get compressionGeneralFailure =>
      'La compression n\'a pas pu être effectuée. Essayez un autre paramètre ou une autre vidéo.';

  @override
  String get aboutIdentitySection => 'Identité de l\'application';

  @override
  String get aboutAppName => 'Nom de l\'application';

  @override
  String get aboutPackageName => 'Nom du package';

  @override
  String get aboutVersion => 'Version';

  @override
  String get aboutBuildNumber => 'Numéro de build';

  @override
  String get aboutEnvironmentSection => 'Appareil et build';

  @override
  String get aboutOperatingSystem => 'Système d\'exploitation';

  @override
  String get aboutOsVersion => 'Version de l\'OS';

  @override
  String get aboutBuildMode => 'Mode de build';

  @override
  String get aboutDebug => 'Debug';

  @override
  String get aboutRelease => 'Release';

  @override
  String get aboutToolchainSection => 'Construit avec';

  @override
  String get aboutInstallationSection => 'Installation';

  @override
  String get aboutInstaller => 'Installé à partir de';

  @override
  String get aboutInstalledOn => 'Installé le';

  @override
  String get aboutUpdatedOn => 'Mis à jour le';

  @override
  String get aboutUnavailable => 'Indisponible';

  @override
  String get aboutProjectSection => 'Projet et support';

  @override
  String get aboutRepository => 'Dépôt GitHub';

  @override
  String get aboutRepositorySubtitle => 'Voir le code source de Zumi';

  @override
  String get aboutReadme => 'Lire le README';

  @override
  String get aboutReadmeSubtitle => 'En savoir plus sur Zumi sur GitHub';

  @override
  String get aboutIssues => 'Signaler un problème';

  @override
  String get aboutIssuesSubtitle => 'Voir et créer des issues GitHub';

  @override
  String get aboutLatestRelease => 'Dernière version';

  @override
  String get aboutLatestReleaseSubtitle =>
      'Voir les versions et téléchargements';

  @override
  String get aboutDonate => 'Supporter Zumi';

  @override
  String get aboutDonateSubtitle => 'Ouvrir la page officielle de donation';

  @override
  String get aboutLinkError =>
      'Impossible d\'ouvrir le lien. Veuillez réessayer.';

  @override
  String get aboutDeveloperSection => 'Développeur';

  @override
  String get aboutDeveloperName => 'Mostafa Sensei';

  @override
  String get aboutDeveloperProfile => 'Profil GitHub';

  @override
  String get aboutDeveloperProfileSubtitle =>
      'Voir les projets et les coordonnées';

  @override
  String get maintenanceInProgress => 'Maintenance en cours';

  @override
  String get maintenanceMessage =>
      'Zumi est temporairement indisponible. Veuillez réessayer plus tard.';

  @override
  String get comingSoon => 'Bientôt disponible';

  @override
  String get languageName => 'Français';

  @override
  String get countryCode => 'CA';

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
      'VN': 'Vietnam',
      'YE': 'Yémen',
      'other': 'Pays',
    });
    return '$_temp0';
  }
}

/// The translations for French, as used in France (`fr_FR`).
class AppLocalizationsFrFr extends AppLocalizationsFr {
  AppLocalizationsFrFr() : super('fr_FR');

  @override
  String get zumi => 'Zumi';

  @override
  String get downloadFile => 'Télécharger le fichier';

  @override
  String fileOpenedInBrowser(String fileName) {
    return 'Fichier ouvert dans le navigateur : $fileName';
  }

  @override
  String fileSavedToDcim(String fileName) {
    return 'Fichier enregistré dans la galerie : $fileName';
  }

  @override
  String fileSavedToDocuments(String fileName) {
    return 'Fichier enregistré dans les documents : $fileName';
  }

  @override
  String get fileAlreadySaved => 'Le fichier est déjà enregistré';

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
  String get error_address_line_cant_be_empty =>
      'La ligne d\'adresse ne peut pas être vide';

  @override
  String get error_address_line_too_long =>
      'La ligne d\'adresse est trop longue';

  @override
  String get error_address_invalid_special_characters =>
      'Les caractères spéciaux ne sont pas autorisés';

  @override
  String get error_address_emoji_not_allowed =>
      'Les emojis ne sont pas autorisés';

  @override
  String get error_city_cant_be_empty => 'La ville ne peut pas être vide';

  @override
  String get error_city_too_long => 'Le nom de la ville est trop long';

  @override
  String get error_city_invalid_special_characters =>
      'La ville contient des caractères spéciaux non valides';

  @override
  String get error_address_label_cant_be_empty =>
      'Le libellé de l\'adresse ne peut pas être vide';

  @override
  String get error_address_label_too_long =>
      'Le libellé de l\'adresse est trop long';

  @override
  String get error_email_cant_be_empty => 'L\'email ne peut pas être vide';

  @override
  String get error_email_not_invalid_format => 'Format d\'email invalide';

  @override
  String get error_email_contains_invalid_characters =>
      'L\'email contient des caractères invalides';

  @override
  String get error_email_must_contain_at_symbol => 'L\'email doit contenir @';

  @override
  String get error_email_must_be_in_lowercase =>
      'L\'email doit être en minuscules';

  @override
  String get error_arabic_not_allowed =>
      'Les caractères arabes ne sont pas autorisés';

  @override
  String get error_email_emoji_not_allowed =>
      'Les emojis ne sont pas autorisés dans l\'email';

  @override
  String get error_phone_number_cant_be_empty =>
      'Le numéro de téléphone ne peut pas être vide';

  @override
  String get error_phone_number_invalid => 'Numéro de téléphone invalide';

  @override
  String get error_phone_number_min_length =>
      'Le numéro de téléphone doit comporter au moins 11 chiffres';

  @override
  String get error_name_cant_be_empty => 'Le nom ne peut pas être vide';

  @override
  String get error_name_invalid => 'Nom invalide';

  @override
  String get error_name_too_short_at_least_3_characters =>
      'Le nom doit comporter au moins 3 caractères';

  @override
  String get error_name_too_long_maximum_20_characters =>
      'Le nom ne peut pas dépasser 20 caractères';

  @override
  String get error_name_invalid_special_characters =>
      'Le nom contient des caractères spéciaux invalides';

  @override
  String get error_name_emoji_not_allowed =>
      'Les emojis ne sont pas autorisés dans le nom';

  @override
  String get error_password_cant_be_empty =>
      'Le mot de passe ne peut pas être vide';

  @override
  String
  get error_password_must_contain_uppercase_lowercase_number_and_special_character =>
      'Le mot de passe doit contenir une majuscule, une minuscule, un chiffre et un caractère spécial';

  @override
  String get error_password_must_be_at_least_8_characters_long =>
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
  String get settingsGroupAppearance => 'Apparence et langue';

  @override
  String get settingsGroupCompression => 'Compression';

  @override
  String get settingsGroupAi => 'IA sur l\'appareil';

  @override
  String get settingsGroupPrivacy => 'Notifications et confidentialité';

  @override
  String get settingsGroupPlans => 'Abonnements et achats';

  @override
  String get settingsGroupAbout => 'À propos';

  @override
  String get settingsGroupLegal => 'Mentions légales';

  @override
  String get settingsGroupHelp => 'Aide et retour d\'information';

  @override
  String get settingsGroupAccount => 'Compte';

  @override
  String get settingsAppearanceSubtitle => 'Thème et langue de l\'application';

  @override
  String get settingsLanguageSubtitle =>
      'Langue et orientation de l\'application';

  @override
  String get settingsCompressionSubtitle => 'Qualité et format par défaut';

  @override
  String get settingsStorageSubtitle => 'Utilisation du cache et du stockage';

  @override
  String get aiSettings => 'Paramètres de l\'IA';

  @override
  String get zumiAssistant => 'Assistant Zumi';

  @override
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere =>
      'Un assistant privé pour vos vidéos arrive bientôt. Vous pourrez poser des questions sur la compression, l\'organisation et les vidéos enregistrées ici.';

  @override
  String get settingsAiSubtitle => 'Modèles locaux et outils intelligents';

  @override
  String get exploreLocalModelsAndFutureAiToolsTheseOptionsAreNotActiveYet =>
      'Explorez les modèles locaux et les futurs outils d\'IA. Ces options ne sont pas encore actives.';

  @override
  String get localModels => 'Modèles locaux';

  @override
  String get aiModelsSubtitle =>
      'Parcourez et téléchargez les modèles pris en charge';

  @override
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere =>
      'Choisissez un modèle pris en charge, téléchargez-le sur cet appareil et gérez les modèles installés ici.';

  @override
  String get importAModel => 'Importer un modèle';

  @override
  String get aiImportSubtitle =>
      'Utilisez un modèle compatible depuis vos fichiers';

  @override
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt =>
      'Sélectionnez un fichier de modèle local compatible et examinez ses exigences avant de l\'utiliser.';

  @override
  String get smartFeatures => 'Fonctionnalités intelligentes';

  @override
  String get aiFeaturesSubtitle => 'Compression, organisation et recherche';

  @override
  String
  get chooseWhichLocalAiSuggestionsToUseForVideoCompressionOrganizationNamingAndSearch =>
      'Choisissez quelles suggestions d\'IA locales utiliser pour la compression vidéo, l\'organisation, le nommage et la recherche.';

  @override
  String get modelPerformance => 'Performance du modèle';

  @override
  String get aiRuntimeSubtitle => 'Préférences de traitement et de ressources';

  @override
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels =>
      'Contrôlez le backend de traitement et les limites de ressources pour les modèles pris en charge.';

  @override
  String get conversationSettings => 'Paramètres de conversation';

  @override
  String get aiChatSettingsSubtitle =>
      'Diffusion, réflexion et longueur des réponses';

  @override
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits =>
      'Configurez la manière dont l\'assistant répond, y compris le streaming, le mode réflexion, l\'échantillonnage et les limites de réponse.  ';

  @override
  String get imagesAndAudio => 'Images et audio  ';

  @override
  String get aiMediaSubtitle => 'Contrôlez les entrées multimodales  ';

  @override
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos =>
      'Choisissez si les modèles compatibles peuvent analyser les images et l\'audio sélectionnés de vos vidéos.  ';

  @override
  String get semanticSearch => 'Recherche sémantique  ';

  @override
  String get aiSearchSubtitle => 'Vecteurs et indexation locale  ';

  @override
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning =>
      'Gérez le modèle de vecteurs local et l\'index de recherche pour trouver des vidéos et des moments par leur signification.  ';

  @override
  String get toolsAndStructuredOutput => 'Outils et sortie structurée  ';

  @override
  String get aiToolsSubtitle => 'Actions, schémas et confirmations';

  @override
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation =>
      'Gérez les actions assistantes prises en charge et les réponses structurées. Les actions affectant les fichiers nécessiteront votre confirmation.';

  @override
  String get aiGroupModels => 'Modèles';

  @override
  String get aiGroupExperience => 'Expérience de l\'assistant';

  @override
  String get aiGroupCapabilities => 'Fonctionnalités intelligentes';

  @override
  String get aiGroupPerformance => 'Performance';

  @override
  String get compressionHistorySubtitle => 'Votre historique vidéo compressé';

  @override
  String get settingsNotificationsSubtitle =>
      'Alertes de complétion et de mise à jour';

  @override
  String get settingsPrivacySubtitle => 'Vos données restent locales';

  @override
  String get plansSubtitle =>
      'Comparer les forfaits et effectuer une mise à niveau';

  @override
  String get plansMethodsSubtitle => 'Méthodes de paiement et facturation';

  @override
  String get plansRestoreSubtitle => 'Restaurer votre achat précédent';

  @override
  String get aboutAppSubtitle => 'Détails de la version et de la build';

  @override
  String get aboutDeveloperSubtitle => 'Le développeur derrière Zumi';

  @override
  String get aboutLicensesSubtitle => 'Licences des packages open source';

  @override
  String get legalPrivacySubtitle => 'Comment les données sont traitées';

  @override
  String get legalTermsSubtitle => 'Règles d\'utilisation de Zumi';

  @override
  String get legalDataSafetySubtitle => 'Quelles données nous collectons';

  @override
  String get legalPermissionsSubtitle =>
      'Pourquoi nous avons besoin des autorisations';

  @override
  String get helpFaqSubtitle => 'Réponses aux questions fréquentes';

  @override
  String get helpSupportSubtitle => 'Contacter directement le développeur';

  @override
  String get helpFeedbackSubtitle => 'Envoyez-nous vos commentaires';

  @override
  String get compressionPickVideo => 'Choisir une vidéo';

  @override
  String get compressionTargetMb => 'Taille cible (Mo)';

  @override
  String get compressionStart => 'Commencer la compression';

  @override
  String get compressionPause => 'Pause';

  @override
  String get compressionResume => 'Reprendre';

  @override
  String get compressionViewResult => 'Voir le résultat';

  @override
  String get compressionSaveGallery => 'Enregistrer dans la galerie';

  @override
  String get compressionShare => 'Partager la vidéo';

  @override
  String get compressionOriginalSize => 'Taille originale';

  @override
  String get compressionOutputSize => 'Taille de sortie';

  @override
  String get compressionEmptyHistory =>
      'Aucune vidéo compressée pour le moment';

  @override
  String get compressionSavedGallery => 'Enregistré dans la galerie';

  @override
  String get compressionInvalidTarget =>
      'Entrez une taille cible supérieure à zéro';

  @override
  String get compressionCancelled => 'Compression annulée';

  @override
  String get compressionTargetExceeded =>
      'Cette vidéo n\'a pas pu atteindre la taille sélectionnée. Essayez une taille cible plus grande.';

  @override
  String get compressionTargetInfeasible =>
      'La taille sélectionnée est trop petite pour cette vidéo. Choisissez une taille plus grande.';

  @override
  String get compressionPreviewBefore => 'Aperçu original';

  @override
  String get compressionPreviewAfter => 'Aperçu compressé';

  @override
  String get compressionPreset => 'Préréglage cible';

  @override
  String get compressionCustom => 'Taille personnalisée';

  @override
  String get compressionPreviewUnavailable => 'Aperçu indisponible';

  @override
  String get compressionAdvanced => 'Contrôles avancés';

  @override
  String get compressionAutomatic => 'Automatique';

  @override
  String get compressionResolutionLimit => 'Résolution maximale';

  @override
  String get compressionSourceResolution => 'Résolution originale';

  @override
  String get compressionFrameRateLimit => 'Fréquence d\'images maximale';

  @override
  String get compressionAudioQuality => 'Débit audio';

  @override
  String get compressionRemoveAudio => 'Supprimer l\'audio';

  @override
  String get compressionVideoBitrateLimit => 'Plafond du débit vidéo (kbps)';

  @override
  String get compressionHdrPolicy => 'Gestion HDR';

  @override
  String get compressionHdrConvert => 'Convertir en SDR';

  @override
  String get compressionHdrPreserve =>
      'Conserver le HDR lorsque pris en charge';

  @override
  String get compressionPlanPreview => 'Avant de commencer';

  @override
  String get compressionPlanLoading => 'Calcul du plan de compression…';

  @override
  String get compressionPlanResolution => 'Résolution prévue';

  @override
  String get compressionPlanVideoBitrate => 'Débit vidéo prévu';

  @override
  String get compressionPlanAudioBitrate => 'Débit audio prévu';

  @override
  String get compressionAudioConversionNote =>
      'La réencodage convertit l\'audio en stéréo AAC. Dolby Atmos et audio spatial DTS ne seront pas conservés.';

  @override
  String get compressionPlanTooSmall =>
      'Cette cible est trop petite pour une vidéo utilisable. Augmentez la taille ou réduisez d\'autres limites.';

  @override
  String get compressionPlanLowQuality =>
      'La cible sélectionnée peut réduire la qualité de la vidéo.';

  @override
  String get compressionPlanAlreadyWithinLimit =>
      'La source est déjà dans la limite de taille.';

  @override
  String get compressionInvalidBitrate =>
      'Entrez un débit d\'au moins 150 kbps, ou laissez vide pour automatique';

  @override
  String get compressionInvalidResolution =>
      'Entrez une résolution paire de 240 à 16384, ou laissez vide pour automatique';

  @override
  String get compressionSeek => 'Position de la vidéo';

  @override
  String get compressionInterrupted =>
      'Une compression précédente a été interrompue. Ses fichiers temporaires ont été supprimés ; vous pouvez sélectionner la vidéo et réessayer.';

  @override
  String get compressionDismiss => 'Ignorer';

  @override
  String get compressionClearHistory => 'Effacer l\'historique';

  @override
  String get compressionClearHistoryConfirm =>
      'Supprimer toutes les entrées de l\'historique ? Les vidéos enregistrées resteront sur votre appareil.  ';

  @override
  String get compressionAttempts => 'Tentatives  ';

  @override
  String get compressionTargetSize => 'Taille cible  ';

  @override
  String get compressionOutputResolution => 'Résolution de sortie  ';

  @override
  String get compressionInvalidVideo =>
      'Cette vidéo n\'a pas pu être lue. Choisissez un autre fichier.  ';

  @override
  String get compressionInvalidOutput =>
      'La vidéo encodée a échoué à la vérification. Votre vidéo originale n\'a pas été modifiée.  ';

  @override
  String get compressionEncoderUnsupported =>
      'Cet appareil ne peut pas encoder la résolution ou le taux de rafraîchissement sélectionné. Abaissez ce paramètre et réessayez.  ';

  @override
  String get compressionAudioDecoderUnsupported =>
      'Cet appareil ne peut pas décoder ce format audio pour la compression. Supprimez l\'audio ou utilisez une source compatible.';

  @override
  String get compressionVideoDecoderUnsupported =>
      'Cet appareil ne peut pas décoder ce format ou profil vidéo pour la compression. Choisissez une autre source ou un autre appareil.';

  @override
  String get compressionMp4NotStreamable =>
      'Le MP4 exporté n\'est pas prêt pour le streaming. Essayez une autre vidéo ou un autre appareil.';

  @override
  String get compressionNoSpace =>
      'Il n\'y a pas assez d\'espace de stockage libre pour compresser cette vidéo.';

  @override
  String get compressionHdrUnsupported =>
      'Cet appareil ne peut pas traiter le mode HDR sélectionné. Essayez de convertir en SDR.';

  @override
  String get compressionGeneralFailure =>
      'La compression n\'a pas pu être effectuée. Essayez un autre paramètre ou une autre vidéo.';

  @override
  String get aboutIdentitySection => 'Identité de l\'application';

  @override
  String get aboutAppName => 'Nom de l\'application';

  @override
  String get aboutPackageName => 'Nom du package';

  @override
  String get aboutVersion => 'Version';

  @override
  String get aboutBuildNumber => 'Numéro de build';

  @override
  String get aboutEnvironmentSection => 'Appareil et build';

  @override
  String get aboutOperatingSystem => 'Système d\'exploitation';

  @override
  String get aboutOsVersion => 'Version de l\'OS';

  @override
  String get aboutBuildMode => 'Mode de build';

  @override
  String get aboutDebug => 'Debug';

  @override
  String get aboutRelease => 'Release';

  @override
  String get aboutToolchainSection => 'Construit avec';

  @override
  String get aboutInstallationSection => 'Installation';

  @override
  String get aboutInstaller => 'Installé à partir de';

  @override
  String get aboutInstalledOn => 'Installé le';

  @override
  String get aboutUpdatedOn => 'Mis à jour le';

  @override
  String get aboutUnavailable => 'Indisponible';

  @override
  String get aboutProjectSection => 'Projet et support';

  @override
  String get aboutRepository => 'Dépôt GitHub';

  @override
  String get aboutRepositorySubtitle => 'Voir le code source de Zumi';

  @override
  String get aboutReadme => 'Lire le README';

  @override
  String get aboutReadmeSubtitle => 'En savoir plus sur Zumi sur GitHub';

  @override
  String get aboutIssues => 'Signaler un problème';

  @override
  String get aboutIssuesSubtitle => 'Voir et créer des issues GitHub';

  @override
  String get aboutLatestRelease => 'Dernière version';

  @override
  String get aboutLatestReleaseSubtitle =>
      'Voir les versions et téléchargements';

  @override
  String get aboutDonate => 'Supporter Zumi';

  @override
  String get aboutDonateSubtitle => 'Ouvrir la page officielle de donation';

  @override
  String get aboutLinkError =>
      'Impossible d\'ouvrir le lien. Veuillez réessayer.';

  @override
  String get aboutDeveloperSection => 'Développeur';

  @override
  String get aboutDeveloperName => 'Mostafa Sensei';

  @override
  String get aboutDeveloperProfile => 'Profil GitHub';

  @override
  String get aboutDeveloperProfileSubtitle =>
      'Voir les projets et les coordonnées';

  @override
  String get maintenanceInProgress => 'Maintenance en cours';

  @override
  String get maintenanceMessage =>
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
