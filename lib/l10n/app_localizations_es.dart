// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get zumi => 'Zumi';

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
  String get welcomeToZumi => 'Bienvenido a Zumi';

  @override
  String get learnHowZumiCompressesYourVideosWithoutEverLeavingYourPhone =>
      'Aprende cómo Zumi comprime tus videos sin salir nunca de tu teléfono.';

  @override
  String get signIn => 'Iniciar sesión';

  @override
  String get signInToSyncYourPlanAndKeepYourPurchasesAvailableOnEveryDevice =>
      'Inicia sesión para sincronizar tu plan y mantener tus compras disponibles en todos los dispositivos.';

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
  String get aboutZumi => 'Acerca de Zumi';

  @override
  String get versionBuildNumberAndApplicationDetails =>
      'Versión, número de compilación y detalles de la aplicación.';

  @override
  String get aboutTheDeveloper => 'Acerca del desarrollador';

  @override
  String get theDeveloperAndToolsBehindZumi =>
      'El desarrollador y las herramientas detrás de Zumi.';

  @override
  String get openSourcePackagesBundledWithZumi =>
      'Paquetes de código abierto incluidos con Zumi.';

  @override
  String get privacyPolicy => 'Política de privacidad';

  @override
  String get howZumiHandlesYourVideosAndData =>
      'Cómo Zumi maneja tus videos y datos.';

  @override
  String get termsOfService => 'Términos de servicio';

  @override
  String get theTermsThatApplyToZumiAndItsPurchases =>
      'Los términos que aplican a Zumi y sus compras.';

  @override
  String get dataSafety => 'Seguridad de los datos';

  @override
  String get summaryOfTheDataZumiCollectsAndWhy =>
      'Resumen de los datos que Zumi recopila y por qué. ';

  @override
  String get permissions => 'Permisos ';

  @override
  String get runtimePermissionsZumiRequestsAndWhyEachIsNeeded =>
      'Permisos en tiempo de ejecución que Zumi solicita y por qué se necesita cada uno. ';

  @override
  String get faq => 'Preguntas frecuentes ';

  @override
  String get answersToCommonQuestionsAboutCompressionAndBilling =>
      'Respuestas a preguntas comunes sobre compresión y facturación. ';

  @override
  String get support => 'Soporte ';

  @override
  String get getHelpWithYourAccountOrAPurchase =>
      'Obtén ayuda con tu cuenta o una compra. ';

  @override
  String get sendFeedback => 'Enviar comentarios ';

  @override
  String get reportAProblemOrSuggestAnImprovement =>
      'Reporta un problema o sugiere una mejora. ';

  @override
  String get plans => 'Planes ';

  @override
  String get comparePlansAndSeeWhatEachOneUnlocks =>
      'Compara planes y ve lo que desbloquea cada uno. ';

  @override
  String get planDetails => 'Detalles del plan ';

  @override
  String get benefitsLimitsAndPricingForThisPlan =>
      'Beneficios, límites y precios de este plan. ';

  @override
  String get paymentMethods => 'Métodos de pago ';

  @override
  String get supportedWaysToPayIncludingStoreBilling =>
      'Formas de pago admitidas, incluida la facturación en la tienda. ';

  @override
  String get restorePurchases => 'Restaurar compras';

  @override
  String get reApplyAPurchaseMadeOnAnotherDevice =>
      'Reaplicar una compra realizada en otro dispositivo.';

  @override
  String get profile => 'Perfil';

  @override
  String get yourIdentityPlanStatusAndAccountPreferences =>
      'Tu identidad, estado del plan y preferencias de la cuenta.';

  @override
  String get deleteAccount => 'Eliminar cuenta';

  @override
  String get permanentlyRemoveYourAccountAndItsServerSideData =>
      'Eliminar permanentemente tu cuenta y sus datos en el servidor.';

  @override
  String get rateZumi => 'Calificar Zumi';

  @override
  String get tellOthersHowZumiWorkedForYouOnTheStore =>
      'Cuenta a otros cómo te funcionó Zumi en la tienda.';

  @override
  String get shareZumi => 'Compartir Zumi';

  @override
  String get recommendZumiToAFriend => 'Recomendar Zumi a un amigo.';

  @override
  String get appearanceLanguage => 'Apariencia y idioma';

  @override
  String get compression => 'Compresión';

  @override
  String get onDeviceAI => 'IA en el dispositivo';

  @override
  String get notificationsPrivacy => 'Notificaciones y privacidad';

  @override
  String get plansPurchases => 'Planes y compras';

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
  String get zumiAssistant => 'Asistente Zumi';

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
  String get comparePlansAndUpgrade => 'Comparar planes y actualizar';

  @override
  String get paymentMethodsAndBilling => 'Métodos de pago y facturación';

  @override
  String get restoreYourPreviousPurchase => 'Restaurar tu compra anterior';

  @override
  String get versionAndBuildDetails => 'Detalles de versión y compilación';

  @override
  String get theDeveloperBehindZumi => 'El desarrollador detrás de Zumi';

  @override
  String get openSourcePackageLicenses =>
      'Licencias de paquetes de código abierto';

  @override
  String get howDataIsHandled => 'Cómo se maneja la información';

  @override
  String get rulesForUsingZumi => 'Reglas para usar Zumi';

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
  String get viewZumiSourceCode => 'Ver el código fuente de Zumi';

  @override
  String get readTheREADME => 'Leer el README';

  @override
  String get learnAboutZumiOnGitHub => 'Aprender sobre Zumi en GitHub';

  @override
  String get reportAnIssue => 'Reportar un problema';

  @override
  String get viewAndCreateGitHubIssues => 'Ver y crear issues en GitHub';

  @override
  String get latestRelease => 'Última versión';

  @override
  String get viewReleasesAndDownloads => 'Ver versiones y descargas';

  @override
  String get supportZumi => 'Apoyar a Zumi';

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
  String get zumiIsTemporarilyUnavailablePleaseTryAgainLater =>
      'Zumi no está disponible temporalmente. Por favor, intente nuevamente más tarde.';

  @override
  String get comingSoon => 'Próximamente';

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
  String get pleaseWait => 'Por favor espera...';

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
  String get cancel => 'Cancelar';

  @override
  String get clean => 'Clean';

  @override
  String get openSourceLicenses => 'Licencias de código abierto';

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
}

/// The translations for Spanish Castilian, as used in Spain (`es_ES`).
class AppLocalizationsEsEs extends AppLocalizationsEs {
  AppLocalizationsEsEs() : super('es_ES');

  @override
  String get zumi => 'Zumi';

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
  String get welcomeToZumi => 'Bienvenido a Zumi';

  @override
  String get learnHowZumiCompressesYourVideosWithoutEverLeavingYourPhone =>
      'Aprende cómo Zumi comprime tus videos sin salir nunca de tu teléfono.';

  @override
  String get signIn => 'Iniciar sesión';

  @override
  String get signInToSyncYourPlanAndKeepYourPurchasesAvailableOnEveryDevice =>
      'Inicia sesión para sincronizar tu plan y mantener tus compras disponibles en todos los dispositivos.';

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
  String get aboutZumi => 'Acerca de Zumi';

  @override
  String get versionBuildNumberAndApplicationDetails =>
      'Versión, número de compilación y detalles de la aplicación.';

  @override
  String get aboutTheDeveloper => 'Acerca del desarrollador';

  @override
  String get theDeveloperAndToolsBehindZumi =>
      'El desarrollador y las herramientas detrás de Zumi.';

  @override
  String get openSourcePackagesBundledWithZumi =>
      'Paquetes de código abierto incluidos con Zumi.';

  @override
  String get privacyPolicy => 'Política de privacidad';

  @override
  String get howZumiHandlesYourVideosAndData =>
      'Cómo Zumi maneja tus videos y datos.';

  @override
  String get termsOfService => 'Términos de servicio';

  @override
  String get theTermsThatApplyToZumiAndItsPurchases =>
      'Los términos que aplican a Zumi y sus compras.';

  @override
  String get dataSafety => 'Seguridad de los datos';

  @override
  String get summaryOfTheDataZumiCollectsAndWhy =>
      'Resumen de los datos que Zumi recopila y por qué. ';

  @override
  String get permissions => 'Permisos ';

  @override
  String get runtimePermissionsZumiRequestsAndWhyEachIsNeeded =>
      'Permisos en tiempo de ejecución que Zumi solicita y por qué se necesita cada uno. ';

  @override
  String get faq => 'Preguntas frecuentes ';

  @override
  String get answersToCommonQuestionsAboutCompressionAndBilling =>
      'Respuestas a preguntas comunes sobre compresión y facturación. ';

  @override
  String get support => 'Soporte ';

  @override
  String get getHelpWithYourAccountOrAPurchase =>
      'Obtén ayuda con tu cuenta o una compra. ';

  @override
  String get sendFeedback => 'Enviar comentarios ';

  @override
  String get reportAProblemOrSuggestAnImprovement =>
      'Reporta un problema o sugiere una mejora. ';

  @override
  String get plans => 'Planes ';

  @override
  String get comparePlansAndSeeWhatEachOneUnlocks =>
      'Compara planes y ve lo que desbloquea cada uno. ';

  @override
  String get planDetails => 'Detalles del plan ';

  @override
  String get benefitsLimitsAndPricingForThisPlan =>
      'Beneficios, límites y precios de este plan. ';

  @override
  String get paymentMethods => 'Métodos de pago ';

  @override
  String get supportedWaysToPayIncludingStoreBilling =>
      'Formas de pago admitidas, incluida la facturación en la tienda. ';

  @override
  String get restorePurchases => 'Restaurar compras';

  @override
  String get reApplyAPurchaseMadeOnAnotherDevice =>
      'Reaplicar una compra realizada en otro dispositivo.';

  @override
  String get profile => 'Perfil';

  @override
  String get yourIdentityPlanStatusAndAccountPreferences =>
      'Tu identidad, estado del plan y preferencias de la cuenta.';

  @override
  String get deleteAccount => 'Eliminar cuenta';

  @override
  String get permanentlyRemoveYourAccountAndItsServerSideData =>
      'Eliminar permanentemente tu cuenta y sus datos en el servidor.';

  @override
  String get rateZumi => 'Calificar Zumi';

  @override
  String get tellOthersHowZumiWorkedForYouOnTheStore =>
      'Cuenta a otros cómo te funcionó Zumi en la tienda.';

  @override
  String get shareZumi => 'Compartir Zumi';

  @override
  String get recommendZumiToAFriend => 'Recomendar Zumi a un amigo.';

  @override
  String get appearanceLanguage => 'Apariencia y idioma';

  @override
  String get compression => 'Compresión';

  @override
  String get onDeviceAI => 'IA en el dispositivo';

  @override
  String get notificationsPrivacy => 'Notificaciones y privacidad';

  @override
  String get plansPurchases => 'Planes y compras';

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
  String get zumiAssistant => 'Asistente Zumi';

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
  String get comparePlansAndUpgrade => 'Comparar planes y actualizar';

  @override
  String get paymentMethodsAndBilling => 'Métodos de pago y facturación';

  @override
  String get restoreYourPreviousPurchase => 'Restaurar tu compra anterior';

  @override
  String get versionAndBuildDetails => 'Detalles de versión y compilación';

  @override
  String get theDeveloperBehindZumi => 'El desarrollador detrás de Zumi';

  @override
  String get openSourcePackageLicenses =>
      'Licencias de paquetes de código abierto';

  @override
  String get howDataIsHandled => 'Cómo se maneja la información';

  @override
  String get rulesForUsingZumi => 'Reglas para usar Zumi';

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
  String get viewZumiSourceCode => 'Ver el código fuente de Zumi';

  @override
  String get readTheREADME => 'Leer el README';

  @override
  String get learnAboutZumiOnGitHub => 'Aprender sobre Zumi en GitHub';

  @override
  String get reportAnIssue => 'Reportar un problema';

  @override
  String get viewAndCreateGitHubIssues => 'Ver y crear issues en GitHub';

  @override
  String get latestRelease => 'Última versión';

  @override
  String get viewReleasesAndDownloads => 'Ver versiones y descargas';

  @override
  String get supportZumi => 'Apoyar a Zumi';

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
  String get zumiIsTemporarilyUnavailablePleaseTryAgainLater =>
      'Zumi no está disponible temporalmente. Por favor, intente nuevamente más tarde.';

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
}
