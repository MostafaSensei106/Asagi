// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get kuymo => 'Kuymo';

  @override
  String get downloadFile => 'Descargar archivo';

  @override
  String fileOpenedInBrowser(String fileName) {
    return 'Archivo abierto en el navegador: $fileName';
  }

  @override
  String fileSavedToGallery(String fileName) {
    return 'Archivo guardado en la galería: $fileName';
  }

  @override
  String fileSavedToDocuments(String fileName) {
    return 'Archivo guardado en documentos: $fileName';
  }

  @override
  String get fileIsAlreadySaved => 'El archivo ya está guardado';

  @override
  String get error => 'Error';

  @override
  String get info => 'Información';

  @override
  String get success => 'Éxito';

  @override
  String get warning => 'Advertencia';

  @override
  String get paid => 'Pagado';

  @override
  String get unpaid => 'No pagado';

  @override
  String get partial => 'Parcial';

  @override
  String get addressLineCannotBeEmpty =>
      'La línea de dirección no puede estar vacía';

  @override
  String get addressLineIsTooLong => 'La línea de dirección es demasiado larga';

  @override
  String get specialCharactersAreNotAllowed =>
      'No se permiten caracteres especiales';

  @override
  String get emojisAreNotAllowed => 'No se permiten emojis';

  @override
  String get cityCannotBeEmpty => 'La ciudad no puede estar vacía';

  @override
  String get cityNameIsTooLong => 'El nombre de la ciudad es demasiado largo';

  @override
  String get cityContainsInvalidSpecialCharacters =>
      'La ciudad contiene caracteres especiales no válidos';

  @override
  String get addressLabelCannotBeEmpty =>
      'La etiqueta de la dirección no puede estar vacía';

  @override
  String get addressLabelIsTooLong =>
      'La etiqueta de la dirección es demasiado larga';

  @override
  String get emailCannotBeEmpty => 'El correo electrónico no puede estar vacío';

  @override
  String get invalidEmailFormat => 'Formato de correo electrónico no válido';

  @override
  String get emailContainsInvalidCharacters =>
      'El correo electrónico contiene caracteres no válidos';

  @override
  String get emailMustContain => 'El correo electrónico debe contener @';

  @override
  String get emailMustBeInLowercase =>
      'El correo electrónico debe estar en minúsculas';

  @override
  String get arabicCharactersAreNotAllowed =>
      'No se permiten caracteres árabes';

  @override
  String get emojisAreNotAllowedInEmail =>
      'No se permiten emojis en el correo electrónico';

  @override
  String get phoneNumberCannotBeEmpty =>
      'El número de teléfono no puede estar vacío';

  @override
  String get invalidPhoneNumber => 'Número de teléfono no válido';

  @override
  String get phoneNumberMustBeAtLeast11Digits =>
      'El número de teléfono debe tener al menos 11 dígitos';

  @override
  String get nameCannotBeEmpty => 'El nombre no puede estar vacío';

  @override
  String get invalidName => 'Nombre no válido';

  @override
  String get nameMustBeAtLeast3Characters =>
      'El nombre debe tener al menos 3 caracteres';

  @override
  String get nameCannotExceed20Characters =>
      'El nombre no puede exceder los 20 caracteres';

  @override
  String get nameContainsInvalidSpecialCharacters =>
      'El nombre contiene caracteres especiales no válidos';

  @override
  String get emojisAreNotAllowedInName => 'No se permiten emojis en el nombre';

  @override
  String get passwordCannotBeEmpty => 'La contraseña no puede estar vacía';

  @override
  String get passwordMustContainUppercaseLowercaseNumberAndSpecialCharacter =>
      'La contraseña debe contener mayúsculas, minúsculas, números y un carácter especial';

  @override
  String get passwordMustBeAtLeast8CharactersLong =>
      'La contraseña debe tener al menos 8 caracteres';

  @override
  String get noInternetConnection => 'Sin conexión a internet';

  @override
  String get internetConnectionRestored => 'Conexión a internet restaurada';

  @override
  String get retry => 'Reintentar';

  @override
  String get confirm => 'Confirmar';

  @override
  String get ok => 'OK';

  @override
  String get compressVideosPrivatelyOnYourDevice =>
      'Comprime videos de manera privada, en tu dispositivo.';

  @override
  String get welcomeToKuymo => 'Bienvenido an Kuymo';

  @override
  String get learnHowKuymoCompressesYourVideosWithoutEverLeavingYourPhone =>
      'Aprende cómo Kuymo comprime tus videos sin salir nunca de tu teléfono.';

  @override
  String get signIn => 'Iniciar sesión';

  @override
  String get chooseAVideo => 'Elegir un video';

  @override
  String get preparingSelectedVideo => 'Getting your video ready';

  @override
  String get pickAVideoFromYourGalleryToStartCompressing =>
      'Selecciona un video de tu galería para comenzar a comprimir.';

  @override
  String get compressionSetup => 'Configuración de compresión';

  @override
  String get chooseResolutionBitrateAndOutputFormatBeforeYouStart =>
      'Elige resolución, tasa de bits y formato de salida antes de comenzar.';

  @override
  String get compressing => 'Comprimiendo';

  @override
  String get followTheLiveProgressOfYourCompressionJob =>
      'Sigue el progreso en vivo de tu trabajo de compresión.';

  @override
  String get compressionResult => 'Resultado de la compresión';

  @override
  String get compareTheBeforeAndAfterSizeThenSaveOrShareTheResult =>
      'Compara el tamaño antes y después, luego guarda o comparte el resultado.';

  @override
  String get compressionHistory => 'Historial de compresión';

  @override
  String get reviewTheVideosYouHaveCompressedOnThisDevice =>
      'Revisa los videos que has comprimido en este dispositivo.';

  @override
  String get settings => 'Configuración';

  @override
  String get appearance => 'Apariencia';

  @override
  String get themeColorSchemeAndMotionPreferences =>
      'Tema, esquema de colores y preferencias de movimiento.';

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
  String get language => 'Idioma';

  @override
  String get appLanguageAndTextDirection =>
      'Idioma de la aplicación y dirección del texto.';

  @override
  String get compressionDefaults => 'Valores predeterminados de compresión';

  @override
  String get defaultResolutionBitrateAndOutputFormat =>
      'Resolución, tasa de bits y formato de salida predeterminados.';

  @override
  String get storageCleanup => 'Almacenamiento y limpieza';

  @override
  String get storageUsageCacheSizeAndTemporaryFileCleanup =>
      'Uso de almacenamiento, tamaño de caché y limpieza de archivos temporales.';

  @override
  String get notifications => 'Notificaciones';

  @override
  String get jobCompletionAndProductUpdateNotifications =>
      'Notificaciones de finalización de trabajos y actualizaciones de productos.';

  @override
  String get privacy => 'Privacidad';

  @override
  String get onDeviceProcessingLocalLogsAndOptionalCrashReports =>
      'Procesamiento en el dispositivo, registros locales y reportes de fallos opcionales.';

  @override
  String get aboutKuymo => 'Acerca de Kuymo';

  @override
  String get versionBuildNumberAndApplicationDetails =>
      'Versión, número de compilación y detalles de la aplicación.';

  @override
  String get aboutTheDeveloper => 'Acerca del desarrollador';

  @override
  String get theDeveloperAndToolsBehindKuymo =>
      'El desarrollador y las herramientas detrás de Kuymo.';

  @override
  String get openSourcePackagesBundledWithKuymo =>
      'Paquetes de código abierto incluidos con Kuymo.';

  @override
  String get privacyPolicy => 'Política de privacidad';

  @override
  String get howKuymoHandlesYourVideosAndData =>
      'Cómo Kuymo maneja tus videos y datos.';

  @override
  String get termsOfService => 'Términos de servicio';

  @override
  String get dataSafety => 'Seguridad de los datos';

  @override
  String get summaryOfTheDataKuymoCollectsAndWhy =>
      'Resumen de los datos que Kuymo recopila y por qué. ';

  @override
  String get permissions => 'Permisos ';

  @override
  String get runtimePermissionsKuymoRequestsAndWhyEachIsNeeded =>
      'Permisos en tiempo de ejecución que Kuymo solicita y por qué se necesita cada uno. ';

  @override
  String get faq => 'Preguntas frecuentes ';

  @override
  String get support => 'Soporte ';

  @override
  String get sendFeedback => 'Enviar comentarios ';

  @override
  String get reportAProblemOrSuggestAnImprovement =>
      'Reporta un problema o sugiere una mejora. ';

  @override
  String get profile => 'Perfil';

  @override
  String get deleteAccount => 'Eliminar cuenta';

  @override
  String get permanentlyRemoveYourAccountAndItsServerSideData =>
      'Eliminar permanentemente tu cuenta y sus datos en el servidor.';

  @override
  String get rateKuymo => 'Calificar Kuymo';

  @override
  String get tellOthersHowKuymoWorkedForYouOnTheStore =>
      'Cuenta a otros cómo te funcionó Kuymo en la tienda.';

  @override
  String get shareKuymo => 'Compartir Kuymo';

  @override
  String get recommendKuymoToAFriend => 'Recomendar Kuymo a un amigo.';

  @override
  String get appearanceLanguage => 'Apariencia y idioma';

  @override
  String get compression => 'Compresión';

  @override
  String get onDeviceAI => 'IA en el dispositivo';

  @override
  String get notificationsPrivacy => 'Notificaciones y privacidad';

  @override
  String get about => 'Acerca de';

  @override
  String get legal => 'Legal';

  @override
  String get helpFeedback => 'Ayuda y comentarios';

  @override
  String get account => 'Cuenta';

  @override
  String get themeAndAppLanguage => 'Tema e idioma de la aplicación';

  @override
  String get appLanguageAndDirection => 'Idioma y dirección de la aplicación';

  @override
  String get defaultQualityAndFormat => 'Calidad y formato predeterminados';

  @override
  String get cacheAndStorageUsage => 'Uso de caché y almacenamiento';

  @override
  String get aiSettings => 'Configuración de IA';

  @override
  String get kuymoAssistant => 'Asistente Kuymo';

  @override
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere =>
      'Pronto llegará un asistente privado para tus videos. Podrás preguntar sobre compresión, organización y videos guardados aquí.';

  @override
  String get localModelsAndSmartTools =>
      'Modelos locales y herramientas inteligentes';

  @override
  String get exploreLocalModelsAndFutureAIToolsTheseOptionsAreNotActiveYet =>
      'Explora modelos locales y futuras herramientas de IA. Estas opciones aún no están activas.';

  @override
  String get localModels => 'Modelos locales';

  @override
  String get browseAndDownloadSupportedModels =>
      'Explora y descarga modelos compatibles';

  @override
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere =>
      'Elige un modelo compatible, descárgalo en este dispositivo y administra los modelos instalados aquí.';

  @override
  String get importAModel => 'Importar un modelo';

  @override
  String get useACompatibleModelFromYourFiles =>
      'Usa un modelo compatible desde tus archivos';

  @override
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt =>
      'Seleccione un archivo de modelo local compatible y revise sus requisitos antes de usarlo.';

  @override
  String get smartFeatures => 'Funciones inteligentes';

  @override
  String get compressionOrganizationAndSearch =>
      'Compresión, organización y búsqueda';

  @override
  String
  get chooseWhichLocalAISuggestionsToUseForVideoCompressionOrganizationNamingAndSearch =>
      'Elija qué sugerencias de IA locales utilizar para la compresión de video, organización, nombrado y búsqueda.';

  @override
  String get modelPerformance => 'Rendimiento del modelo';

  @override
  String get processingAndResourcePreferences =>
      'Preferencias de procesamiento y recursos';

  @override
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels =>
      'Controle el backend de procesamiento y los límites de recursos para los modelos compatibles.';

  @override
  String get conversationSettings => 'Configuración de la conversación';

  @override
  String get streamingThinkingAndResponseLength =>
      'Transmisión, pensamiento y longitud de respuesta';

  @override
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits =>
      'Configura cómo responde el asistente, incluyendo transmisión, modo de pensamiento, muestreo y límites de respuesta.  ';

  @override
  String get imagesAndAudio => 'Imágenes y audio  ';

  @override
  String get controlMultimodalInputs => 'Controla las entradas multimodales  ';

  @override
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos =>
      'Elige si los modelos compatibles pueden analizar imágenes y audio seleccionados de tus videos.  ';

  @override
  String get semanticSearch => 'Búsqueda semántica  ';

  @override
  String get embeddingsAndLocalIndexing => 'Embeddings e indexación local  ';

  @override
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning =>
      'Gestiona el modelo de embeddings local y el índice de búsqueda para encontrar videos y momentos por significado.  ';

  @override
  String get toolsAndStructuredOutput => 'Herramientas y salida estructurada  ';

  @override
  String get actionsSchemasAndConfirmations =>
      'Acciones, esquemas y confirmaciones';

  @override
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation =>
      'Gestiona las acciones de asistente compatibles y las respuestas estructuradas. Las acciones que afecten archivos requerirán tu confirmación.';

  @override
  String get models => 'Modelos';

  @override
  String get assistantExperience => 'Experiencia del asistente';

  @override
  String get smartCapabilities => 'Capacidades inteligentes';

  @override
  String get performance => 'Rendimiento';

  @override
  String get yourCompressedVideoHistory => 'Tu historial de videos comprimidos';

  @override
  String get completionAndUpdateAlerts =>
      'Alertas de finalización y actualización';

  @override
  String get yourDataStaysLocal => 'Tus datos se mantienen locales';

  @override
  String get versionAndBuildDetails => 'Detalles de versión y compilación';

  @override
  String get theDeveloperBehindKuymo => 'El desarrollador detrás de Kuymo';

  @override
  String get openSourcePackageLicenses =>
      'Licencias de paquetes de código abierto';

  @override
  String get howDataIsHandled => 'Cómo se maneja la información';

  @override
  String get rulesForUsingKuymo => 'Reglas para usar Kuymo';

  @override
  String get whatDataWeCollect => 'Qué datos recopilamos';

  @override
  String get whyWeNeedPermissions => 'Por qué necesitamos permisos';

  @override
  String get answersToCommonQuestions => 'Respuestas a preguntas comunes';

  @override
  String get reachTheDeveloperDirectly =>
      'Contactar al desarrollador directamente';

  @override
  String get sendUsYourFeedback => 'Envíanos tus comentarios';

  @override
  String get pickVideo => 'Elegir video';

  @override
  String get targetSizeMB => 'Tamaño objetivo (MB)';

  @override
  String get startCompression => 'Iniciar compresión';

  @override
  String get pause => 'Pausar';

  @override
  String get resume => 'Reanudar';

  @override
  String get viewResult => 'Ver resultado';

  @override
  String get saveToGallery => 'Guardar en la galería';

  @override
  String get shareVideo => 'Compartir video';

  @override
  String get originalSize => 'Tamaño original';

  @override
  String get outputSize => 'Tamaño de salida';

  @override
  String get noCompressedVideosYet => 'Aún no hay videos comprimidos';

  @override
  String get savedToGallery => 'Guardar en la galería';

  @override
  String get enterATargetSizeGreaterThanZero =>
      'Introduce un tamaño objetivo mayor que cero';

  @override
  String get compressionCancelled => 'Compresión cancelada';

  @override
  String get thisVideoCouldNotReachTheSelectedSizeTryALargerTargetSize =>
      'Este video no pudo alcanzar el tamaño seleccionado. Intenta un tamaño objetivo mayor.';

  @override
  String get theSelectedSizeIsTooSmallForThisVideoChooseALargerSize =>
      'El tamaño seleccionado es demasiado pequeño para este video. Elige un tamaño mayor.';

  @override
  String get originalPreview => 'Vista previa original';

  @override
  String get compressedPreview => 'Vista previa comprimida';

  @override
  String get targetPreset => 'Preestablecido de destino';

  @override
  String get customSize => 'Tamaño personalizado';

  @override
  String get previewUnavailable => 'Vista previa no disponible';

  @override
  String get advancedControls => 'Controles avanzados';

  @override
  String get automatic => 'Automático';

  @override
  String get maximumResolution => 'Resolución máxima';

  @override
  String get originalResolution => 'Resolución original';

  @override
  String get maximumFrameRate => 'Frecuencia de cuadros máxima';

  @override
  String get audioBitrate => 'Tasa de bits de audio';

  @override
  String get removeAudio => 'Eliminar audio';

  @override
  String get videoBitrateCeilingKbps =>
      'Límite de tasa de bits de video (kbps)';

  @override
  String get hdrHandling => 'Manejo HDR';

  @override
  String get convertToSDR => 'Convertir a SDR';

  @override
  String get keepHDRWhenSupported => 'Mantener HDR cuando sea compatible';

  @override
  String get beforeYouStart => 'Antes de empezar';

  @override
  String get calculatingCompressionPlan => 'Calculando plan de compresión…';

  @override
  String get plannedResolution => 'Resolución planificada';

  @override
  String get plannedVideoBitrate => 'Tasa de bits de video planificada';

  @override
  String get plannedAudioBitrate => 'Tasa de bits de audio planificada';

  @override
  String
  get reEncodingConvertsAudioToAACStereoDolbyAtmosAndDTSSpatialAudioWillNotBePreserved =>
      'La re-codificación convierte el audio a AAC estéreo. Dolby Atmos y audio espacial DTS no se conservarán.';

  @override
  String
  get thisTargetIsTooSmallForAUsableVideoIncreaseTheSizeOrLowerOtherLimits =>
      'Este objetivo es demasiado pequeño para un video usable. Aumente el tamaño o reduzca otros límites.';

  @override
  String get theSelectedTargetMayReduceVideoQuality =>
      'El objetivo seleccionado puede reducir la calidad del video.';

  @override
  String get theSourceIsAlreadyWithinTheSizeLimit =>
      'La fuente ya está dentro del límite de tamaño.';

  @override
  String get enterABitrateOfAtLeast150KbpsOrLeaveBlankForAutomatic =>
      'Ingrese una tasa de bits de al menos 150 kbps, o deje en blanco para automático';

  @override
  String get enterAnEvenResolutionFrom240To16384OrLeaveBlankForAutomatic =>
      'Ingrese una resolución par de 240 a 16384, o deje en blanco para automático';

  @override
  String get videoPosition => 'Posición del video';

  @override
  String
  get aPreviousCompressionWasInterruptedItsTemporaryFilesWereCleanedUpYouCanSelectTheVideoAndTryAgain =>
      'Una compresión anterior fue interrumpida. Sus archivos temporales fueron eliminados; puede seleccionar el video e intentarlo de nuevo.';

  @override
  String get dismiss => 'Cerrar';

  @override
  String get clearHistory => 'Borrar historial';

  @override
  String get removeAllHistoryEntriesSavedVideosWillRemainOnYourDevice =>
      '¿Eliminar todas las entradas del historial? Los videos guardados permanecerán en tu dispositivo.';

  @override
  String get attempts => 'Intentos';

  @override
  String get targetSize => 'Tamaño objetivo';

  @override
  String get outputResolution => 'Resolución de salida';

  @override
  String get thisVideoCouldNotBeReadChooseAnotherFile =>
      'No se pudo leer este video. Elige otro archivo.';

  @override
  String get theEncodedVideoFailedVerificationYourOriginalVideoWasNotChanged =>
      'El video codificado no pasó la verificación. Tu video original no fue cambiado.';

  @override
  String
  get thisDeviceCannotEncodeTheSelectedResolutionOrFrameRateLowerThatSettingAndTryAgain =>
      'Este dispositivo no puede codificar la resolución o velocidad de fotogramas seleccionada. Reduce esa configuración e inténtalo de nuevo.';

  @override
  String
  get thisDeviceCannotDecodeThisAudioFormatForCompressionRemoveAudioOrUseASupportedSource =>
      'Este dispositivo no puede decodificar este formato de audio para comprimir. Elimina el audio o utiliza una fuente compatible.';

  @override
  String
  get thisDeviceCannotDecodeThisVideoFormatOrProfileForCompressionChooseAnotherSourceOrDevice =>
      'Este dispositivo no puede decodificar este formato de video o perfil de compresión. Elija otra fuente o dispositivo.';

  @override
  String get theExportedMP4IsNotReadyForStreamingTryAnotherVideoOrDevice =>
      'El MP4 exportado no está listo para transmisión. Intente con otro video o dispositivo.';

  @override
  String get thereIsNotEnoughFreeStorageToCompressThisVideo =>
      'No hay suficiente almacenamiento libre para comprimir este video.';

  @override
  String get thisDeviceCannotProcessTheSelectedHDRModeTryConvertingToSDR =>
      'Este dispositivo no puede procesar el modo HDR seleccionado. Intente convertir a SDR.';

  @override
  String get compressionCouldNotBeCompletedTryAnotherSettingOrVideo =>
      'No se pudo completar la compresión. Intente con otra configuración o video.';

  @override
  String get appIdentity => 'Identidad de la aplicación';

  @override
  String get appName => 'Nombre de la aplicación';

  @override
  String get packageName => 'Nombre del paquete';

  @override
  String get version => 'Versión';

  @override
  String get buildNumber => 'Número de compilación';

  @override
  String get deviceAndBuild => 'Dispositivo y compilación';

  @override
  String get operatingSystem => 'Sistema operativo';

  @override
  String get osVersion => 'Versión del SO';

  @override
  String get buildMode => 'Modo de compilación';

  @override
  String get debug => 'Depuración';

  @override
  String get release => 'Publicación';

  @override
  String get builtWith => 'Construido con';

  @override
  String get installation => 'Instalación';

  @override
  String get installedFrom => 'Instalado desde';

  @override
  String get installedOn => 'Instalado en';

  @override
  String get updatedOn => 'Actualizado el';

  @override
  String get unavailable => 'No disponible';

  @override
  String get projectAndSupport => 'Proyecto y soporte';

  @override
  String get githubRepository => 'Repositorio de GitHub';

  @override
  String get viewKuymoSourceCode => 'Ver el código fuente de Kuymo';

  @override
  String get readTheREADME => 'Leer el README';

  @override
  String get learnAboutKuymoOnGitHub => 'Aprender sobre Kuymo en GitHub';

  @override
  String get reportAnIssue => 'Reportar un problema';

  @override
  String get viewAndCreateGitHubIssues => 'Ver y crear issues en GitHub';

  @override
  String get latestRelease => 'Última versión';

  @override
  String get viewReleasesAndDownloads => 'Ver versiones y descargas';

  @override
  String get supportKuymo => 'Apoyar an Kuymo';

  @override
  String get openTheOfficialDonationPage =>
      'Abrir la página oficial de donaciones';

  @override
  String get couldNotOpenTheLinkPleaseTryAgain =>
      'No se pudo abrir el enlace. Por favor, inténtelo de nuevo.';

  @override
  String get developer => 'Desarrollador';

  @override
  String get mostafaSensei => 'Mostafa Sensei';

  @override
  String get githubProfile => 'Perfil de GitHub';

  @override
  String get seeProjectsAndContactDetails =>
      'Ver proyectos y detalles de contacto';

  @override
  String get maintenanceInProgress => 'Mantenimiento en curso';

  @override
  String get kuymoIsTemporarilyUnavailablePleaseTryAgainLater =>
      'Kuymo no está disponible temporalmente. Por favor, intente nuevamente más tarde.';

  @override
  String get comingSoon => 'Próximamente';

  @override
  String get loading => 'Loading…';

  @override
  String get pleaseWait => 'Por favor espera...';

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
  String get cancel => 'Cancelar';

  @override
  String get clean => 'Clean';

  @override
  String get openSourceLicenses => 'Licencias de código abierto';

  @override
  String get storageJobsLoadFailed => 'Interrupted jobs could not be loaded.';

  @override
  String get cleanupInterruptedJobsFailed =>
      'The interrupted files could not be cleaned.';

  @override
  String get languageName => 'Español';

  @override
  String get countryCode => 'ES';

  @override
  String countryName(String countryCode) {
    String _temp0 = intl.Intl.selectLogic(countryCode, {
      'AE': 'Emiratos Árabes Unidos',
      'AT': 'Austria',
      'AU': 'Australia',
      'BE': 'Bélgica',
      'BH': 'Baréin',
      'BR': 'Brasil',
      'CA': 'Canadá',
      'CH': 'Suiza',
      'CN': 'China',
      'DE': 'Alemania',
      'DJ': 'Yibuti',
      'DZ': 'Argelia',
      'EG': 'Egipto',
      'ES': 'España',
      'FR': 'Francia',
      'GB': 'Reino Unido',
      'HK': 'RAE de Hong Kong (China)',
      'ID': 'Indonesia',
      'IQ': 'Irak',
      'IT': 'Italia',
      'JO': 'Jordania',
      'JP': 'Japón',
      'KM': 'Comoras',
      'KR': 'Corea del Sur',
      'KW': 'Kuwait',
      'LB': 'Líbano',
      'LY': 'Libia',
      'MA': 'Marruecos',
      'MR': 'Mauritania',
      'MX': 'México',
      'NL': 'Países Bajos',
      'OM': 'Omán',
      'PL': 'Polonia',
      'PS': 'Territorios Palestinos',
      'PT': 'Portugal',
      'QA': 'Catar',
      'RU': 'Rusia',
      'SA': 'Arabia Saudí',
      'SD': 'Sudán',
      'SE': 'Suecia',
      'SG': 'Singapur',
      'SO': 'Somalia',
      'SY': 'Siria',
      'TH': 'Tailandia',
      'TN': 'Túnez',
      'TR': 'Turquía',
      'TW': 'Taiwán',
      'US': 'Estados Unidos',
      'VN': 'Vietnam',
      'YE': 'Yemen',
      'other': 'País',
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
      'La compresión de vídeo solo está disponible en Android por el momento.';

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

  @override
  String get settingsSaveFailed =>
      'Could not load or save settings. Your last saved values are retained.';

  @override
  String get settingsRecovered =>
      'Saved settings could not be read. Safe defaults are being used.';

  @override
  String get resetSettingsGroup => 'Reset these settings';

  @override
  String get settingsApplyFailed =>
      'Could not apply settings to the service. Tap to retry.';

  @override
  String get saveAiChatHistory => 'Save AI conversations on this device';

  @override
  String get permissionGranted => 'Granted';

  @override
  String get permissionLimited => 'Limited access';

  @override
  String get permissionDenied => 'Not granted. Tap to request access.';

  @override
  String get permissionPermanentlyDenied =>
      'Denied. Tap to open device settings.';

  @override
  String get permissionRestricted => 'Restricted by the device';

  @override
  String get permissionUnsupported => 'Unavailable on this platform';

  @override
  String get selectedFilesAccess =>
      'Kuymo uses the system file picker. It accesses only files you choose; it does not require access to your entire media library.';

  @override
  String get aiOperationFailed =>
      'Could not finish. Check the selected model, device support, storage and memory budget. Connect power if indexing requires charging, then retry.';

  @override
  String get noAiModelsAvailable => 'No compatible models are available.';

  @override
  String get aiMessageHint => 'Ask about your videos';

  @override
  String aiBenchmarkElapsed(int milliseconds) {
    return 'Benchmark finished in $milliseconds ms';
  }

  @override
  String get aiSend => 'Send';

  @override
  String get aiDelete => 'Delete';

  @override
  String get aiDownload => 'Download';

  @override
  String get aiSearch => 'Search';

  @override
  String aiSelectedDocuments(int count) {
    return 'Selected files: $count';
  }

  @override
  String get aiToolCreatesCopy =>
      'Tools create a new file and keep your original. Quiet audio reduction and silence trimming apply when enabled.';

  @override
  String get aiTrimStart => 'Start time (seconds)';

  @override
  String get aiTrimEnd => 'End time (seconds, empty for full length)';

  @override
  String aiOutputSaved(String path) {
    return 'Saved on this device: $path';
  }

  @override
  String get aiChatWelcome =>
      'Your assistant runs on this device. Choose a model in AI settings to get started.';

  @override
  String get backendGpu => 'GPU';

  @override
  String get aiAndroidOnly =>
      'Local AI features are currently available on Android.';

  @override
  String aiEmbeddingStorageUsage(String megabytes) {
    return 'Index storage: $megabytes MB';
  }

  @override
  String get applyChanges => 'Apply';

  @override
  String get advancedSettingsDraftHint =>
      'Fine-tune this video. Changes take effect only when you apply them.';

  @override
  String get homeVideoWorkspace => 'Make room for your video';

  @override
  String get homeImportHint =>
      'Choose a video, pick where to share it, and we’ll handle the size.';

  @override
  String get changeVideo => 'Change video';

  @override
  String get shareDestination => 'Where are you sharing?';

  @override
  String get moreDestinations => 'All destinations';

  @override
  String get expectedOutputSize => 'Target output size';

  @override
  String get homeReadyToShare => 'Ready to share';

  @override
  String get homeNewVideo => 'Another video';

  @override
  String get homeRecoverJobs => 'Unfinished videos';

  @override
  String get homeSaveFailed => 'Couldn’t save the video. Try again.';

  @override
  String get homeShareFailed => 'Couldn’t open sharing. Try again.';

  @override
  String get homePlanDetails => 'Output details';
}

/// The translations for Spanish Castilian, as used in Spain (`es_ES`).
class AppLocalizationsEsEs extends AppLocalizationsEs {
  AppLocalizationsEsEs() : super('es_ES');

  @override
  String get kuymo => 'Kuymo';

  @override
  String get downloadFile => 'Descargar archivo';

  @override
  String fileOpenedInBrowser(String fileName) {
    return 'Archivo abierto en el navegador: $fileName';
  }

  @override
  String fileSavedToGallery(String fileName) {
    return 'Archivo guardado en la galería: $fileName';
  }

  @override
  String fileSavedToDocuments(String fileName) {
    return 'Archivo guardado en documentos: $fileName';
  }

  @override
  String get fileIsAlreadySaved => 'El archivo ya está guardado';

  @override
  String get error => 'Error';

  @override
  String get info => 'Información';

  @override
  String get success => 'Éxito';

  @override
  String get warning => 'Advertencia';

  @override
  String get paid => 'Pagado';

  @override
  String get unpaid => 'No pagado';

  @override
  String get partial => 'Parcial';

  @override
  String get addressLineCannotBeEmpty =>
      'La línea de dirección no puede estar vacía';

  @override
  String get addressLineIsTooLong => 'La línea de dirección es demasiado larga';

  @override
  String get specialCharactersAreNotAllowed =>
      'No se permiten caracteres especiales';

  @override
  String get emojisAreNotAllowed => 'No se permiten emojis';

  @override
  String get cityCannotBeEmpty => 'La ciudad no puede estar vacía';

  @override
  String get cityNameIsTooLong => 'El nombre de la ciudad es demasiado largo';

  @override
  String get cityContainsInvalidSpecialCharacters =>
      'La ciudad contiene caracteres especiales no válidos';

  @override
  String get addressLabelCannotBeEmpty =>
      'La etiqueta de la dirección no puede estar vacía';

  @override
  String get addressLabelIsTooLong =>
      'La etiqueta de la dirección es demasiado larga';

  @override
  String get emailCannotBeEmpty => 'El correo electrónico no puede estar vacío';

  @override
  String get invalidEmailFormat => 'Formato de correo electrónico no válido';

  @override
  String get emailContainsInvalidCharacters =>
      'El correo electrónico contiene caracteres no válidos';

  @override
  String get emailMustContain => 'El correo electrónico debe contener @';

  @override
  String get emailMustBeInLowercase =>
      'El correo electrónico debe estar en minúsculas';

  @override
  String get arabicCharactersAreNotAllowed =>
      'No se permiten caracteres árabes';

  @override
  String get emojisAreNotAllowedInEmail =>
      'No se permiten emojis en el correo electrónico';

  @override
  String get phoneNumberCannotBeEmpty =>
      'El número de teléfono no puede estar vacío';

  @override
  String get invalidPhoneNumber => 'Número de teléfono no válido';

  @override
  String get phoneNumberMustBeAtLeast11Digits =>
      'El número de teléfono debe tener al menos 11 dígitos';

  @override
  String get nameCannotBeEmpty => 'El nombre no puede estar vacío';

  @override
  String get invalidName => 'Nombre no válido';

  @override
  String get nameMustBeAtLeast3Characters =>
      'El nombre debe tener al menos 3 caracteres';

  @override
  String get nameCannotExceed20Characters =>
      'El nombre no puede exceder los 20 caracteres';

  @override
  String get nameContainsInvalidSpecialCharacters =>
      'El nombre contiene caracteres especiales no válidos';

  @override
  String get emojisAreNotAllowedInName => 'No se permiten emojis en el nombre';

  @override
  String get passwordCannotBeEmpty => 'La contraseña no puede estar vacía';

  @override
  String get passwordMustContainUppercaseLowercaseNumberAndSpecialCharacter =>
      'La contraseña debe contener mayúsculas, minúsculas, números y un carácter especial';

  @override
  String get passwordMustBeAtLeast8CharactersLong =>
      'La contraseña debe tener al menos 8 caracteres';

  @override
  String get noInternetConnection => 'Sin conexión a internet';

  @override
  String get internetConnectionRestored => 'Conexión a internet restaurada';

  @override
  String get retry => 'Reintentar';

  @override
  String get confirm => 'Confirmar';

  @override
  String get ok => 'OK';

  @override
  String get compressVideosPrivatelyOnYourDevice =>
      'Comprime videos de manera privada, en tu dispositivo.';

  @override
  String get welcomeToKuymo => 'Bienvenido an Kuymo';

  @override
  String get learnHowKuymoCompressesYourVideosWithoutEverLeavingYourPhone =>
      'Aprende cómo Kuymo comprime tus videos sin salir nunca de tu teléfono.';

  @override
  String get signIn => 'Iniciar sesión';

  @override
  String get chooseAVideo => 'Elegir un video';

  @override
  String get pickAVideoFromYourGalleryToStartCompressing =>
      'Selecciona un video de tu galería para comenzar a comprimir.';

  @override
  String get compressionSetup => 'Configuración de compresión';

  @override
  String get chooseResolutionBitrateAndOutputFormatBeforeYouStart =>
      'Elige resolución, tasa de bits y formato de salida antes de comenzar.';

  @override
  String get compressing => 'Comprimiendo';

  @override
  String get followTheLiveProgressOfYourCompressionJob =>
      'Sigue el progreso en vivo de tu trabajo de compresión.';

  @override
  String get compressionResult => 'Resultado de la compresión';

  @override
  String get compareTheBeforeAndAfterSizeThenSaveOrShareTheResult =>
      'Compara el tamaño antes y después, luego guarda o comparte el resultado.';

  @override
  String get compressionHistory => 'Historial de compresión';

  @override
  String get reviewTheVideosYouHaveCompressedOnThisDevice =>
      'Revisa los videos que has comprimido en este dispositivo.';

  @override
  String get settings => 'Configuración';

  @override
  String get appearance => 'Apariencia';

  @override
  String get themeColorSchemeAndMotionPreferences =>
      'Tema, esquema de colores y preferencias de movimiento.';

  @override
  String get language => 'Idioma';

  @override
  String get appLanguageAndTextDirection =>
      'Idioma de la aplicación y dirección del texto.';

  @override
  String get compressionDefaults => 'Valores predeterminados de compresión';

  @override
  String get defaultResolutionBitrateAndOutputFormat =>
      'Resolución, tasa de bits y formato de salida predeterminados.';

  @override
  String get storageCleanup => 'Almacenamiento y limpieza';

  @override
  String get storageUsageCacheSizeAndTemporaryFileCleanup =>
      'Uso de almacenamiento, tamaño de caché y limpieza de archivos temporales.';

  @override
  String get notifications => 'Notificaciones';

  @override
  String get jobCompletionAndProductUpdateNotifications =>
      'Notificaciones de finalización de trabajos y actualizaciones de productos.';

  @override
  String get privacy => 'Privacidad';

  @override
  String get onDeviceProcessingLocalLogsAndOptionalCrashReports =>
      'Procesamiento en el dispositivo, registros locales y reportes de fallos opcionales.';

  @override
  String get aboutKuymo => 'Acerca de Kuymo';

  @override
  String get versionBuildNumberAndApplicationDetails =>
      'Versión, número de compilación y detalles de la aplicación.';

  @override
  String get aboutTheDeveloper => 'Acerca del desarrollador';

  @override
  String get theDeveloperAndToolsBehindKuymo =>
      'El desarrollador y las herramientas detrás de Kuymo.';

  @override
  String get openSourcePackagesBundledWithKuymo =>
      'Paquetes de código abierto incluidos con Kuymo.';

  @override
  String get privacyPolicy => 'Política de privacidad';

  @override
  String get howKuymoHandlesYourVideosAndData =>
      'Cómo Kuymo maneja tus videos y datos.';

  @override
  String get termsOfService => 'Términos de servicio';

  @override
  String get dataSafety => 'Seguridad de los datos';

  @override
  String get summaryOfTheDataKuymoCollectsAndWhy =>
      'Resumen de los datos que Kuymo recopila y por qué. ';

  @override
  String get permissions => 'Permisos ';

  @override
  String get runtimePermissionsKuymoRequestsAndWhyEachIsNeeded =>
      'Permisos en tiempo de ejecución que Kuymo solicita y por qué se necesita cada uno. ';

  @override
  String get faq => 'Preguntas frecuentes ';

  @override
  String get support => 'Soporte ';

  @override
  String get sendFeedback => 'Enviar comentarios ';

  @override
  String get reportAProblemOrSuggestAnImprovement =>
      'Reporta un problema o sugiere una mejora. ';

  @override
  String get profile => 'Perfil';

  @override
  String get deleteAccount => 'Eliminar cuenta';

  @override
  String get permanentlyRemoveYourAccountAndItsServerSideData =>
      'Eliminar permanentemente tu cuenta y sus datos en el servidor.';

  @override
  String get rateKuymo => 'Calificar Kuymo';

  @override
  String get tellOthersHowKuymoWorkedForYouOnTheStore =>
      'Cuenta a otros cómo te funcionó Kuymo en la tienda.';

  @override
  String get shareKuymo => 'Compartir Kuymo';

  @override
  String get recommendKuymoToAFriend => 'Recomendar Kuymo a un amigo.';

  @override
  String get appearanceLanguage => 'Apariencia y idioma';

  @override
  String get compression => 'Compresión';

  @override
  String get onDeviceAI => 'IA en el dispositivo';

  @override
  String get notificationsPrivacy => 'Notificaciones y privacidad';

  @override
  String get about => 'Acerca de';

  @override
  String get legal => 'Legal';

  @override
  String get helpFeedback => 'Ayuda y comentarios';

  @override
  String get account => 'Cuenta';

  @override
  String get themeAndAppLanguage => 'Tema e idioma de la aplicación';

  @override
  String get appLanguageAndDirection => 'Idioma y dirección de la aplicación';

  @override
  String get defaultQualityAndFormat => 'Calidad y formato predeterminados';

  @override
  String get cacheAndStorageUsage => 'Uso de caché y almacenamiento';

  @override
  String get aiSettings => 'Configuración de IA';

  @override
  String get kuymoAssistant => 'Asistente Kuymo';

  @override
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere =>
      'Pronto llegará un asistente privado para tus videos. Podrás preguntar sobre compresión, organización y videos guardados aquí.';

  @override
  String get localModelsAndSmartTools =>
      'Modelos locales y herramientas inteligentes';

  @override
  String get exploreLocalModelsAndFutureAIToolsTheseOptionsAreNotActiveYet =>
      'Explora modelos locales y futuras herramientas de IA. Estas opciones aún no están activas.';

  @override
  String get localModels => 'Modelos locales';

  @override
  String get browseAndDownloadSupportedModels =>
      'Explora y descarga modelos compatibles';

  @override
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere =>
      'Elige un modelo compatible, descárgalo en este dispositivo y administra los modelos instalados aquí.';

  @override
  String get importAModel => 'Importar un modelo';

  @override
  String get useACompatibleModelFromYourFiles =>
      'Usa un modelo compatible desde tus archivos';

  @override
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt =>
      'Seleccione un archivo de modelo local compatible y revise sus requisitos antes de usarlo.';

  @override
  String get smartFeatures => 'Funciones inteligentes';

  @override
  String get compressionOrganizationAndSearch =>
      'Compresión, organización y búsqueda';

  @override
  String
  get chooseWhichLocalAISuggestionsToUseForVideoCompressionOrganizationNamingAndSearch =>
      'Elija qué sugerencias de IA locales utilizar para la compresión de video, organización, nombrado y búsqueda.';

  @override
  String get modelPerformance => 'Rendimiento del modelo';

  @override
  String get processingAndResourcePreferences =>
      'Preferencias de procesamiento y recursos';

  @override
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels =>
      'Controle el backend de procesamiento y los límites de recursos para los modelos compatibles.';

  @override
  String get conversationSettings => 'Configuración de la conversación';

  @override
  String get streamingThinkingAndResponseLength =>
      'Transmisión, pensamiento y longitud de respuesta';

  @override
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits =>
      'Configura cómo responde el asistente, incluyendo transmisión, modo de pensamiento, muestreo y límites de respuesta.  ';

  @override
  String get imagesAndAudio => 'Imágenes y audio  ';

  @override
  String get controlMultimodalInputs => 'Controla las entradas multimodales  ';

  @override
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos =>
      'Elige si los modelos compatibles pueden analizar imágenes y audio seleccionados de tus videos.  ';

  @override
  String get semanticSearch => 'Búsqueda semántica  ';

  @override
  String get embeddingsAndLocalIndexing => 'Embeddings e indexación local  ';

  @override
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning =>
      'Gestiona el modelo de embeddings local y el índice de búsqueda para encontrar videos y momentos por significado.  ';

  @override
  String get toolsAndStructuredOutput => 'Herramientas y salida estructurada  ';

  @override
  String get actionsSchemasAndConfirmations =>
      'Acciones, esquemas y confirmaciones';

  @override
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation =>
      'Gestiona las acciones de asistente compatibles y las respuestas estructuradas. Las acciones que afecten archivos requerirán tu confirmación.';

  @override
  String get models => 'Modelos';

  @override
  String get assistantExperience => 'Experiencia del asistente';

  @override
  String get smartCapabilities => 'Capacidades inteligentes';

  @override
  String get performance => 'Rendimiento';

  @override
  String get yourCompressedVideoHistory => 'Tu historial de videos comprimidos';

  @override
  String get completionAndUpdateAlerts =>
      'Alertas de finalización y actualización';

  @override
  String get yourDataStaysLocal => 'Tus datos se mantienen locales';

  @override
  String get versionAndBuildDetails => 'Detalles de versión y compilación';

  @override
  String get theDeveloperBehindKuymo => 'El desarrollador detrás de Kuymo';

  @override
  String get openSourcePackageLicenses =>
      'Licencias de paquetes de código abierto';

  @override
  String get howDataIsHandled => 'Cómo se maneja la información';

  @override
  String get rulesForUsingKuymo => 'Reglas para usar Kuymo';

  @override
  String get whatDataWeCollect => 'Qué datos recopilamos';

  @override
  String get whyWeNeedPermissions => 'Por qué necesitamos permisos';

  @override
  String get answersToCommonQuestions => 'Respuestas a preguntas comunes';

  @override
  String get reachTheDeveloperDirectly =>
      'Contactar al desarrollador directamente';

  @override
  String get sendUsYourFeedback => 'Envíanos tus comentarios';

  @override
  String get pickVideo => 'Elegir video';

  @override
  String get targetSizeMB => 'Tamaño objetivo (MB)';

  @override
  String get startCompression => 'Iniciar compresión';

  @override
  String get pause => 'Pausar';

  @override
  String get resume => 'Reanudar';

  @override
  String get viewResult => 'Ver resultado';

  @override
  String get saveToGallery => 'Guardar en la galería';

  @override
  String get shareVideo => 'Compartir video';

  @override
  String get originalSize => 'Tamaño original';

  @override
  String get outputSize => 'Tamaño de salida';

  @override
  String get noCompressedVideosYet => 'Aún no hay videos comprimidos';

  @override
  String get savedToGallery => 'Guardar en la galería';

  @override
  String get enterATargetSizeGreaterThanZero =>
      'Introduce un tamaño objetivo mayor que cero';

  @override
  String get compressionCancelled => 'Compresión cancelada';

  @override
  String get thisVideoCouldNotReachTheSelectedSizeTryALargerTargetSize =>
      'Este video no pudo alcanzar el tamaño seleccionado. Intenta un tamaño objetivo mayor.';

  @override
  String get theSelectedSizeIsTooSmallForThisVideoChooseALargerSize =>
      'El tamaño seleccionado es demasiado pequeño para este video. Elige un tamaño mayor.';

  @override
  String get originalPreview => 'Vista previa original';

  @override
  String get compressedPreview => 'Vista previa comprimida';

  @override
  String get targetPreset => 'Preestablecido de destino';

  @override
  String get customSize => 'Tamaño personalizado';

  @override
  String get previewUnavailable => 'Vista previa no disponible';

  @override
  String get advancedControls => 'Controles avanzados';

  @override
  String get automatic => 'Automático';

  @override
  String get maximumResolution => 'Resolución máxima';

  @override
  String get originalResolution => 'Resolución original';

  @override
  String get maximumFrameRate => 'Frecuencia de cuadros máxima';

  @override
  String get audioBitrate => 'Tasa de bits de audio';

  @override
  String get removeAudio => 'Eliminar audio';

  @override
  String get videoBitrateCeilingKbps =>
      'Límite de tasa de bits de video (kbps)';

  @override
  String get hdrHandling => 'Manejo HDR';

  @override
  String get convertToSDR => 'Convertir a SDR';

  @override
  String get keepHDRWhenSupported => 'Mantener HDR cuando sea compatible';

  @override
  String get beforeYouStart => 'Antes de empezar';

  @override
  String get calculatingCompressionPlan => 'Calculando plan de compresión…';

  @override
  String get plannedResolution => 'Resolución planificada';

  @override
  String get plannedVideoBitrate => 'Tasa de bits de video planificada';

  @override
  String get plannedAudioBitrate => 'Tasa de bits de audio planificada';

  @override
  String
  get reEncodingConvertsAudioToAACStereoDolbyAtmosAndDTSSpatialAudioWillNotBePreserved =>
      'La re-codificación convierte el audio a AAC estéreo. Dolby Atmos y audio espacial DTS no se conservarán.';

  @override
  String
  get thisTargetIsTooSmallForAUsableVideoIncreaseTheSizeOrLowerOtherLimits =>
      'Este objetivo es demasiado pequeño para un video usable. Aumente el tamaño o reduzca otros límites.';

  @override
  String get theSelectedTargetMayReduceVideoQuality =>
      'El objetivo seleccionado puede reducir la calidad del video.';

  @override
  String get theSourceIsAlreadyWithinTheSizeLimit =>
      'La fuente ya está dentro del límite de tamaño.';

  @override
  String get enterABitrateOfAtLeast150KbpsOrLeaveBlankForAutomatic =>
      'Ingrese una tasa de bits de al menos 150 kbps, o deje en blanco para automático';

  @override
  String get enterAnEvenResolutionFrom240To16384OrLeaveBlankForAutomatic =>
      'Ingrese una resolución par de 240 a 16384, o deje en blanco para automático';

  @override
  String get videoPosition => 'Posición del video';

  @override
  String
  get aPreviousCompressionWasInterruptedItsTemporaryFilesWereCleanedUpYouCanSelectTheVideoAndTryAgain =>
      'Una compresión anterior fue interrumpida. Sus archivos temporales fueron eliminados; puede seleccionar el video e intentarlo de nuevo.';

  @override
  String get dismiss => 'Cerrar';

  @override
  String get clearHistory => 'Borrar historial';

  @override
  String get removeAllHistoryEntriesSavedVideosWillRemainOnYourDevice =>
      '¿Eliminar todas las entradas del historial? Los videos guardados permanecerán en tu dispositivo.';

  @override
  String get attempts => 'Intentos';

  @override
  String get targetSize => 'Tamaño objetivo';

  @override
  String get outputResolution => 'Resolución de salida';

  @override
  String get thisVideoCouldNotBeReadChooseAnotherFile =>
      'No se pudo leer este video. Elige otro archivo.';

  @override
  String get theEncodedVideoFailedVerificationYourOriginalVideoWasNotChanged =>
      'El video codificado no pasó la verificación. Tu video original no fue cambiado.';

  @override
  String
  get thisDeviceCannotEncodeTheSelectedResolutionOrFrameRateLowerThatSettingAndTryAgain =>
      'Este dispositivo no puede codificar la resolución o velocidad de fotogramas seleccionada. Reduce esa configuración e inténtalo de nuevo.';

  @override
  String
  get thisDeviceCannotDecodeThisAudioFormatForCompressionRemoveAudioOrUseASupportedSource =>
      'Este dispositivo no puede decodificar este formato de audio para comprimir. Elimina el audio o utiliza una fuente compatible.';

  @override
  String
  get thisDeviceCannotDecodeThisVideoFormatOrProfileForCompressionChooseAnotherSourceOrDevice =>
      'Este dispositivo no puede decodificar este formato de video o perfil de compresión. Elija otra fuente o dispositivo.';

  @override
  String get theExportedMP4IsNotReadyForStreamingTryAnotherVideoOrDevice =>
      'El MP4 exportado no está listo para transmisión. Intente con otro video o dispositivo.';

  @override
  String get thereIsNotEnoughFreeStorageToCompressThisVideo =>
      'No hay suficiente almacenamiento libre para comprimir este video.';

  @override
  String get thisDeviceCannotProcessTheSelectedHDRModeTryConvertingToSDR =>
      'Este dispositivo no puede procesar el modo HDR seleccionado. Intente convertir a SDR.';

  @override
  String get compressionCouldNotBeCompletedTryAnotherSettingOrVideo =>
      'No se pudo completar la compresión. Intente con otra configuración o video.';

  @override
  String get appIdentity => 'Identidad de la aplicación';

  @override
  String get appName => 'Nombre de la aplicación';

  @override
  String get packageName => 'Nombre del paquete';

  @override
  String get version => 'Versión';

  @override
  String get buildNumber => 'Número de compilación';

  @override
  String get deviceAndBuild => 'Dispositivo y compilación';

  @override
  String get operatingSystem => 'Sistema operativo';

  @override
  String get osVersion => 'Versión del SO';

  @override
  String get buildMode => 'Modo de compilación';

  @override
  String get debug => 'Depuración';

  @override
  String get release => 'Publicación';

  @override
  String get builtWith => 'Construido con';

  @override
  String get installation => 'Instalación';

  @override
  String get installedFrom => 'Instalado desde';

  @override
  String get installedOn => 'Instalado en';

  @override
  String get updatedOn => 'Actualizado el';

  @override
  String get unavailable => 'No disponible';

  @override
  String get projectAndSupport => 'Proyecto y soporte';

  @override
  String get githubRepository => 'Repositorio de GitHub';

  @override
  String get viewKuymoSourceCode => 'Ver el código fuente de Kuymo';

  @override
  String get readTheREADME => 'Leer el README';

  @override
  String get learnAboutKuymoOnGitHub => 'Aprender sobre Kuymo en GitHub';

  @override
  String get reportAnIssue => 'Reportar un problema';

  @override
  String get viewAndCreateGitHubIssues => 'Ver y crear issues en GitHub';

  @override
  String get latestRelease => 'Última versión';

  @override
  String get viewReleasesAndDownloads => 'Ver versiones y descargas';

  @override
  String get supportKuymo => 'Apoyar an Kuymo';

  @override
  String get openTheOfficialDonationPage =>
      'Abrir la página oficial de donaciones';

  @override
  String get couldNotOpenTheLinkPleaseTryAgain =>
      'No se pudo abrir el enlace. Por favor, inténtelo de nuevo.';

  @override
  String get developer => 'Desarrollador';

  @override
  String get mostafaSensei => 'Mostafa Sensei';

  @override
  String get githubProfile => 'Perfil de GitHub';

  @override
  String get seeProjectsAndContactDetails =>
      'Ver proyectos y detalles de contacto';

  @override
  String get maintenanceInProgress => 'Mantenimiento en curso';

  @override
  String get kuymoIsTemporarilyUnavailablePleaseTryAgainLater =>
      'Kuymo no está disponible temporalmente. Por favor, intente nuevamente más tarde.';

  @override
  String get comingSoon => 'Próximamente';

  @override
  String get pleaseWait => 'Por favor espera...';

  @override
  String get cancel => 'Cancelar';

  @override
  String get openSourceLicenses => 'Licencias de código abierto';

  @override
  String get languageName => 'Español';

  @override
  String get countryCode => 'ES';

  @override
  String countryName(String countryCode) {
    String _temp0 = intl.Intl.selectLogic(countryCode, {
      'AE': 'Emiratos Árabes Unidos',
      'AT': 'Austria',
      'AU': 'Australia',
      'BE': 'Bélgica',
      'BH': 'Baréin',
      'BR': 'Brasil',
      'CA': 'Canadá',
      'CH': 'Suiza',
      'CN': 'China',
      'DE': 'Alemania',
      'DJ': 'Yibuti',
      'DZ': 'Argelia',
      'EG': 'Egipto',
      'ES': 'España',
      'FR': 'Francia',
      'GB': 'Reino Unido',
      'HK': 'RAE de Hong Kong (China)',
      'ID': 'Indonesia',
      'IQ': 'Irak',
      'IT': 'Italia',
      'JO': 'Jordania',
      'JP': 'Japón',
      'KM': 'Comoras',
      'KR': 'Corea del Sur',
      'KW': 'Kuwait',
      'LB': 'Líbano',
      'LY': 'Libia',
      'MA': 'Marruecos',
      'MR': 'Mauritania',
      'MX': 'México',
      'NL': 'Países Bajos',
      'OM': 'Omán',
      'PL': 'Polonia',
      'PS': 'Territorios Palestinos',
      'PT': 'Portugal',
      'QA': 'Catar',
      'RU': 'Rusia',
      'SA': 'Arabia Saudí',
      'SD': 'Sudán',
      'SE': 'Suecia',
      'SG': 'Singapur',
      'SO': 'Somalia',
      'SY': 'Siria',
      'TH': 'Tailandia',
      'TN': 'Túnez',
      'TR': 'Turquía',
      'TW': 'Taiwán',
      'US': 'Estados Unidos',
      'VN': 'Vietnam',
      'YE': 'Yemen',
      'other': 'País',
    });
    return '$_temp0';
  }

  @override
  String get termsOfServiceFullText =>
      'Kuymo is free and open source. Video processing runs on your device. You retain ownership of your content. The app is provided without a guarantee of any particular output size or quality.';

  @override
  String get termsAcceptanceLicenseBody =>
      'Kuymo is free and open source. All features are available to everyone, and video processing runs locally on your devices.';

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
      'La compresión de vídeo solo está disponible en Android por el momento.';

  @override
  String get settingsSaveFailed =>
      'Could not load or save settings. Your last saved values are retained.';

  @override
  String get settingsRecovered =>
      'Saved settings could not be read. Safe defaults are being used.';

  @override
  String get resetSettingsGroup => 'Reset these settings';

  @override
  String get settingsApplyFailed =>
      'Could not apply settings to the service. Tap to retry.';

  @override
  String get saveAiChatHistory => 'Save AI conversations on this device';

  @override
  String get permissionGranted => 'Granted';

  @override
  String get permissionLimited => 'Limited access';

  @override
  String get permissionDenied => 'Not granted. Tap to request access.';

  @override
  String get permissionPermanentlyDenied =>
      'Denied. Tap to open device settings.';

  @override
  String get permissionRestricted => 'Restricted by the device';

  @override
  String get permissionUnsupported => 'Unavailable on this platform';

  @override
  String get selectedFilesAccess =>
      'Kuymo uses the system file picker. It accesses only files you choose; it does not require access to your entire media library.';

  @override
  String get aiOperationFailed =>
      'Could not finish. Check the selected model, device support, storage and memory budget. Connect power if indexing requires charging, then retry.';

  @override
  String get noAiModelsAvailable => 'No compatible models are available.';

  @override
  String get aiMessageHint => 'Ask about your videos';

  @override
  String aiBenchmarkElapsed(int milliseconds) {
    return 'Benchmark finished in $milliseconds ms';
  }

  @override
  String get aiSend => 'Send';

  @override
  String get aiDelete => 'Delete';

  @override
  String get aiDownload => 'Download';

  @override
  String get aiSearch => 'Search';

  @override
  String aiSelectedDocuments(int count) {
    return 'Selected files: $count';
  }

  @override
  String get aiToolCreatesCopy =>
      'Tools create a new file and keep your original. Quiet audio reduction and silence trimming apply when enabled.';

  @override
  String get aiTrimStart => 'Start time (seconds)';

  @override
  String get aiTrimEnd => 'End time (seconds, empty for full length)';

  @override
  String aiOutputSaved(String path) {
    return 'Saved on this device: $path';
  }

  @override
  String get aiChatWelcome =>
      'Your assistant runs on this device. Choose a model in AI settings to get started.';

  @override
  String get backendGpu => 'GPU';

  @override
  String get aiAndroidOnly =>
      'Local AI features are currently available on Android.';

  @override
  String aiEmbeddingStorageUsage(String megabytes) {
    return 'Index storage: $megabytes MB';
  }
}
