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
  String fileSavedToDcim(String fileName) {
    return 'Archivo guardado en la galería: $fileName';
  }

  @override
  String fileSavedToDocuments(String fileName) {
    return 'Archivo guardado en documentos: $fileName';
  }

  @override
  String get fileAlreadySaved => 'El archivo ya está guardado';

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
  String get error_address_line_cant_be_empty =>
      'La línea de dirección no puede estar vacía';

  @override
  String get error_address_line_too_long =>
      'La línea de dirección es demasiado larga';

  @override
  String get error_address_invalid_special_characters =>
      'No se permiten caracteres especiales';

  @override
  String get error_address_emoji_not_allowed => 'No se permiten emojis';

  @override
  String get error_city_cant_be_empty => 'La ciudad no puede estar vacía';

  @override
  String get error_city_too_long => 'El nombre de la ciudad es demasiado largo';

  @override
  String get error_city_invalid_special_characters =>
      'La ciudad contiene caracteres especiales no válidos';

  @override
  String get error_address_label_cant_be_empty =>
      'La etiqueta de la dirección no puede estar vacía';

  @override
  String get error_address_label_too_long =>
      'La etiqueta de la dirección es demasiado larga';

  @override
  String get error_email_cant_be_empty =>
      'El correo electrónico no puede estar vacío';

  @override
  String get error_email_not_invalid_format =>
      'Formato de correo electrónico no válido';

  @override
  String get error_email_contains_invalid_characters =>
      'El correo electrónico contiene caracteres no válidos';

  @override
  String get error_email_must_contain_at_symbol =>
      'El correo electrónico debe contener @';

  @override
  String get error_email_must_be_in_lowercase =>
      'El correo electrónico debe estar en minúsculas';

  @override
  String get error_arabic_not_allowed => 'No se permiten caracteres árabes';

  @override
  String get error_email_emoji_not_allowed =>
      'No se permiten emojis en el correo electrónico';

  @override
  String get error_phone_number_cant_be_empty =>
      'El número de teléfono no puede estar vacío';

  @override
  String get error_phone_number_invalid => 'Número de teléfono no válido';

  @override
  String get error_phone_number_min_length =>
      'El número de teléfono debe tener al menos 11 dígitos';

  @override
  String get error_name_cant_be_empty => 'El nombre no puede estar vacío';

  @override
  String get error_name_invalid => 'Nombre no válido';

  @override
  String get error_name_too_short_at_least_3_characters =>
      'El nombre debe tener al menos 3 caracteres';

  @override
  String get error_name_too_long_maximum_20_characters =>
      'El nombre no puede exceder los 20 caracteres';

  @override
  String get error_name_invalid_special_characters =>
      'El nombre contiene caracteres especiales no válidos';

  @override
  String get error_name_emoji_not_allowed =>
      'No se permiten emojis en el nombre';

  @override
  String get error_password_cant_be_empty =>
      'La contraseña no puede estar vacía';

  @override
  String
  get error_password_must_contain_uppercase_lowercase_number_and_special_character =>
      'La contraseña debe contener mayúsculas, minúsculas, números y un carácter especial';

  @override
  String get error_password_must_be_at_least_8_characters_long =>
      'La contraseña debe tener al menos 8 caracteres';

  @override
  String get noInternetConnection => 'Sin conexión a internet';

  @override
  String get internetConnectionRestored => 'Conexión a internet restaurada';

  @override
  String get retry => 'Reintentar';

  @override
  String get cancel => 'Cancelar';

  @override
  String get confirm => 'Confirmar';

  @override
  String get pleaseWait => 'Por favor espera...';

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
  String get openSourceLicenses => 'Licencias de código abierto';

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
  String get settingsGroupAppearance => 'Apariencia y idioma';

  @override
  String get settingsGroupCompression => 'Compresión';

  @override
  String get settingsGroupAi => 'IA en el dispositivo';

  @override
  String get settingsGroupPrivacy => 'Notificaciones y privacidad';

  @override
  String get settingsGroupPlans => 'Planes y compras';

  @override
  String get settingsGroupAbout => 'Acerca de';

  @override
  String get settingsGroupLegal => 'Legal';

  @override
  String get settingsGroupHelp => 'Ayuda y comentarios';

  @override
  String get settingsGroupAccount => 'Cuenta';

  @override
  String get settingsAppearanceSubtitle => 'Tema e idioma de la aplicación';

  @override
  String get settingsLanguageSubtitle => 'Idioma y dirección de la aplicación';

  @override
  String get settingsCompressionSubtitle => 'Calidad y formato predeterminados';

  @override
  String get settingsStorageSubtitle => 'Uso de caché y almacenamiento';

  @override
  String get aiSettings => 'Configuración de IA';

  @override
  String get zumiAssistant => 'Asistente Zumi';

  @override
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere =>
      'Pronto llegará un asistente privado para tus videos. Podrás preguntar sobre compresión, organización y videos guardados aquí.';

  @override
  String get settingsAiSubtitle =>
      'Modelos locales y herramientas inteligentes';

  @override
  String get exploreLocalModelsAndFutureAiToolsTheseOptionsAreNotActiveYet =>
      'Explora modelos locales y futuras herramientas de IA. Estas opciones aún no están activas.';

  @override
  String get localModels => 'Modelos locales';

  @override
  String get aiModelsSubtitle => 'Explora y descarga modelos compatibles';

  @override
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere =>
      'Elige un modelo compatible, descárgalo en este dispositivo y administra los modelos instalados aquí.';

  @override
  String get importAModel => 'Importar un modelo';

  @override
  String get aiImportSubtitle => 'Usa un modelo compatible desde tus archivos';

  @override
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt =>
      'Seleccione un archivo de modelo local compatible y revise sus requisitos antes de usarlo.';

  @override
  String get smartFeatures => 'Funciones inteligentes';

  @override
  String get aiFeaturesSubtitle => 'Compresión, organización y búsqueda';

  @override
  String
  get chooseWhichLocalAiSuggestionsToUseForVideoCompressionOrganizationNamingAndSearch =>
      'Elija qué sugerencias de IA locales utilizar para la compresión de video, organización, nombrado y búsqueda.';

  @override
  String get modelPerformance => 'Rendimiento del modelo';

  @override
  String get aiRuntimeSubtitle => 'Preferencias de procesamiento y recursos';

  @override
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels =>
      'Controle el backend de procesamiento y los límites de recursos para los modelos compatibles.';

  @override
  String get conversationSettings => 'Configuración de la conversación';

  @override
  String get aiChatSettingsSubtitle =>
      'Transmisión, pensamiento y longitud de respuesta';

  @override
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits =>
      'Configura cómo responde el asistente, incluyendo transmisión, modo de pensamiento, muestreo y límites de respuesta.  ';

  @override
  String get imagesAndAudio => 'Imágenes y audio  ';

  @override
  String get aiMediaSubtitle => 'Controla las entradas multimodales  ';

  @override
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos =>
      'Elige si los modelos compatibles pueden analizar imágenes y audio seleccionados de tus videos.  ';

  @override
  String get semanticSearch => 'Búsqueda semántica  ';

  @override
  String get aiSearchSubtitle => 'Embeddings e indexación local  ';

  @override
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning =>
      'Gestiona el modelo de embeddings local y el índice de búsqueda para encontrar videos y momentos por significado.  ';

  @override
  String get toolsAndStructuredOutput => 'Herramientas y salida estructurada  ';

  @override
  String get aiToolsSubtitle => 'Acciones, esquemas y confirmaciones';

  @override
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation =>
      'Gestiona las acciones de asistente compatibles y las respuestas estructuradas. Las acciones que afecten archivos requerirán tu confirmación.';

  @override
  String get aiGroupModels => 'Modelos';

  @override
  String get aiGroupExperience => 'Experiencia del asistente';

  @override
  String get aiGroupCapabilities => 'Capacidades inteligentes';

  @override
  String get aiGroupPerformance => 'Rendimiento';

  @override
  String get compressionHistorySubtitle => 'Tu historial de videos comprimidos';

  @override
  String get settingsNotificationsSubtitle =>
      'Alertas de finalización y actualización';

  @override
  String get settingsPrivacySubtitle => 'Tus datos se mantienen locales';

  @override
  String get plansSubtitle => 'Comparar planes y actualizar';

  @override
  String get plansMethodsSubtitle => 'Métodos de pago y facturación';

  @override
  String get plansRestoreSubtitle => 'Restaurar tu compra anterior';

  @override
  String get aboutAppSubtitle => 'Detalles de versión y compilación';

  @override
  String get aboutDeveloperSubtitle => 'El desarrollador detrás de Zumi';

  @override
  String get aboutLicensesSubtitle => 'Licencias de paquetes de código abierto';

  @override
  String get legalPrivacySubtitle => 'Cómo se maneja la información';

  @override
  String get legalTermsSubtitle => 'Reglas para usar Zumi';

  @override
  String get legalDataSafetySubtitle => 'Qué datos recopilamos';

  @override
  String get legalPermissionsSubtitle => 'Por qué necesitamos permisos';

  @override
  String get helpFaqSubtitle => 'Respuestas a preguntas comunes';

  @override
  String get helpSupportSubtitle => 'Contactar al desarrollador directamente';

  @override
  String get helpFeedbackSubtitle => 'Envíanos tus comentarios';

  @override
  String get compressionPickVideo => 'Elegir video';

  @override
  String get compressionTargetMb => 'Tamaño objetivo (MB)';

  @override
  String get compressionStart => 'Iniciar compresión';

  @override
  String get compressionPause => 'Pausar';

  @override
  String get compressionResume => 'Reanudar';

  @override
  String get compressionViewResult => 'Ver resultado';

  @override
  String get compressionSaveGallery => 'Guardar en la galería';

  @override
  String get compressionShare => 'Compartir video';

  @override
  String get compressionOriginalSize => 'Tamaño original';

  @override
  String get compressionOutputSize => 'Tamaño de salida';

  @override
  String get compressionEmptyHistory => 'Aún no hay videos comprimidos';

  @override
  String get compressionSavedGallery => 'Guardar en la galería';

  @override
  String get compressionInvalidTarget =>
      'Introduce un tamaño objetivo mayor que cero';

  @override
  String get compressionCancelled => 'Compresión cancelada';

  @override
  String get compressionTargetExceeded =>
      'Este video no pudo alcanzar el tamaño seleccionado. Intenta un tamaño objetivo mayor.';

  @override
  String get compressionTargetInfeasible =>
      'El tamaño seleccionado es demasiado pequeño para este video. Elige un tamaño mayor.';

  @override
  String get compressionPreviewBefore => 'Vista previa original';

  @override
  String get compressionPreviewAfter => 'Vista previa comprimida';

  @override
  String get compressionPreset => 'Preestablecido de destino';

  @override
  String get compressionCustom => 'Tamaño personalizado';

  @override
  String get compressionPreviewUnavailable => 'Vista previa no disponible';

  @override
  String get compressionAdvanced => 'Controles avanzados';

  @override
  String get compressionAutomatic => 'Automático';

  @override
  String get compressionResolutionLimit => 'Resolución máxima';

  @override
  String get compressionSourceResolution => 'Resolución original';

  @override
  String get compressionFrameRateLimit => 'Frecuencia de cuadros máxima';

  @override
  String get compressionAudioQuality => 'Tasa de bits de audio';

  @override
  String get compressionRemoveAudio => 'Eliminar audio';

  @override
  String get compressionVideoBitrateLimit =>
      'Límite de tasa de bits de video (kbps)';

  @override
  String get compressionHdrPolicy => 'Manejo HDR';

  @override
  String get compressionHdrConvert => 'Convertir a SDR';

  @override
  String get compressionHdrPreserve => 'Mantener HDR cuando sea compatible';

  @override
  String get compressionPlanPreview => 'Antes de empezar';

  @override
  String get compressionPlanLoading => 'Calculando plan de compresión…';

  @override
  String get compressionPlanResolution => 'Resolución planificada';

  @override
  String get compressionPlanVideoBitrate => 'Tasa de bits de video planificada';

  @override
  String get compressionPlanAudioBitrate => 'Tasa de bits de audio planificada';

  @override
  String get compressionAudioConversionNote =>
      'La re-codificación convierte el audio a AAC estéreo. Dolby Atmos y audio espacial DTS no se conservarán.';

  @override
  String get compressionPlanTooSmall =>
      'Este objetivo es demasiado pequeño para un video usable. Aumente el tamaño o reduzca otros límites.';

  @override
  String get compressionPlanLowQuality =>
      'El objetivo seleccionado puede reducir la calidad del video.';

  @override
  String get compressionPlanAlreadyWithinLimit =>
      'La fuente ya está dentro del límite de tamaño.';

  @override
  String get compressionInvalidBitrate =>
      'Ingrese una tasa de bits de al menos 150 kbps, o deje en blanco para automático';

  @override
  String get compressionInvalidResolution =>
      'Ingrese una resolución par de 240 a 16384, o deje en blanco para automático';

  @override
  String get compressionSeek => 'Posición del video';

  @override
  String get compressionInterrupted =>
      'Una compresión anterior fue interrumpida. Sus archivos temporales fueron eliminados; puede seleccionar el video e intentarlo de nuevo.';

  @override
  String get compressionDismiss => 'Cerrar';

  @override
  String get compressionClearHistory => 'Borrar historial';

  @override
  String get compressionClearHistoryConfirm =>
      '¿Eliminar todas las entradas del historial? Los videos guardados permanecerán en tu dispositivo.';

  @override
  String get compressionAttempts => 'Intentos';

  @override
  String get compressionTargetSize => 'Tamaño objetivo';

  @override
  String get compressionOutputResolution => 'Resolución de salida';

  @override
  String get compressionInvalidVideo =>
      'No se pudo leer este video. Elige otro archivo.';

  @override
  String get compressionInvalidOutput =>
      'El video codificado no pasó la verificación. Tu video original no fue cambiado.';

  @override
  String get compressionEncoderUnsupported =>
      'Este dispositivo no puede codificar la resolución o velocidad de fotogramas seleccionada. Reduce esa configuración e inténtalo de nuevo.';

  @override
  String get compressionAudioDecoderUnsupported =>
      'Este dispositivo no puede decodificar este formato de audio para comprimir. Elimina el audio o utiliza una fuente compatible.';

  @override
  String get compressionVideoDecoderUnsupported =>
      'Este dispositivo no puede decodificar este formato de video o perfil de compresión. Elija otra fuente o dispositivo.';

  @override
  String get compressionMp4NotStreamable =>
      'El MP4 exportado no está listo para transmisión. Intente con otro video o dispositivo.';

  @override
  String get compressionNoSpace =>
      'No hay suficiente almacenamiento libre para comprimir este video.';

  @override
  String get compressionHdrUnsupported =>
      'Este dispositivo no puede procesar el modo HDR seleccionado. Intente convertir a SDR.';

  @override
  String get compressionGeneralFailure =>
      'No se pudo completar la compresión. Intente con otra configuración o video.';

  @override
  String get aboutIdentitySection => 'Identidad de la aplicación';

  @override
  String get aboutAppName => 'Nombre de la aplicación';

  @override
  String get aboutPackageName => 'Nombre del paquete';

  @override
  String get aboutVersion => 'Versión';

  @override
  String get aboutBuildNumber => 'Número de compilación';

  @override
  String get aboutEnvironmentSection => 'Dispositivo y compilación';

  @override
  String get aboutOperatingSystem => 'Sistema operativo';

  @override
  String get aboutOsVersion => 'Versión del SO';

  @override
  String get aboutBuildMode => 'Modo de compilación';

  @override
  String get aboutDebug => 'Depuración';

  @override
  String get aboutRelease => 'Publicación';

  @override
  String get aboutToolchainSection => 'Construido con';

  @override
  String get aboutInstallationSection => 'Instalación';

  @override
  String get aboutInstaller => 'Instalado desde';

  @override
  String get aboutInstalledOn => 'Instalado en';

  @override
  String get aboutUpdatedOn => 'Actualizado el';

  @override
  String get aboutUnavailable => 'No disponible';

  @override
  String get aboutProjectSection => 'Proyecto y soporte';

  @override
  String get aboutRepository => 'Repositorio de GitHub';

  @override
  String get aboutRepositorySubtitle => 'Ver el código fuente de Zumi';

  @override
  String get aboutReadme => 'Leer el README';

  @override
  String get aboutReadmeSubtitle => 'Aprender sobre Zumi en GitHub';

  @override
  String get aboutIssues => 'Reportar un problema';

  @override
  String get aboutIssuesSubtitle => 'Ver y crear issues en GitHub';

  @override
  String get aboutLatestRelease => 'Última versión';

  @override
  String get aboutLatestReleaseSubtitle => 'Ver versiones y descargas';

  @override
  String get aboutDonate => 'Apoyar a Zumi';

  @override
  String get aboutDonateSubtitle => 'Abrir la página oficial de donaciones';

  @override
  String get aboutLinkError =>
      'No se pudo abrir el enlace. Por favor, inténtelo de nuevo.';

  @override
  String get aboutDeveloperSection => 'Desarrollador';

  @override
  String get aboutDeveloperName => 'Mostafa Sensei';

  @override
  String get aboutDeveloperProfile => 'Perfil de GitHub';

  @override
  String get aboutDeveloperProfileSubtitle =>
      'Ver proyectos y detalles de contacto';

  @override
  String get maintenanceInProgress => 'Mantenimiento en curso';

  @override
  String get maintenanceMessage =>
      'Zumi no está disponible temporalmente. Por favor, intente nuevamente más tarde.';

  @override
  String get comingSoon => 'Próximamente';

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
  String fileSavedToDcim(String fileName) {
    return 'Archivo guardado en la galería: $fileName';
  }

  @override
  String fileSavedToDocuments(String fileName) {
    return 'Archivo guardado en documentos: $fileName';
  }

  @override
  String get fileAlreadySaved => 'El archivo ya está guardado';

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
  String get error_address_line_cant_be_empty =>
      'La línea de dirección no puede estar vacía';

  @override
  String get error_address_line_too_long =>
      'La línea de dirección es demasiado larga';

  @override
  String get error_address_invalid_special_characters =>
      'No se permiten caracteres especiales';

  @override
  String get error_address_emoji_not_allowed => 'No se permiten emojis';

  @override
  String get error_city_cant_be_empty => 'La ciudad no puede estar vacía';

  @override
  String get error_city_too_long => 'El nombre de la ciudad es demasiado largo';

  @override
  String get error_city_invalid_special_characters =>
      'La ciudad contiene caracteres especiales no válidos';

  @override
  String get error_address_label_cant_be_empty =>
      'La etiqueta de la dirección no puede estar vacía';

  @override
  String get error_address_label_too_long =>
      'La etiqueta de la dirección es demasiado larga';

  @override
  String get error_email_cant_be_empty =>
      'El correo electrónico no puede estar vacío';

  @override
  String get error_email_not_invalid_format =>
      'Formato de correo electrónico no válido';

  @override
  String get error_email_contains_invalid_characters =>
      'El correo electrónico contiene caracteres no válidos';

  @override
  String get error_email_must_contain_at_symbol =>
      'El correo electrónico debe contener @';

  @override
  String get error_email_must_be_in_lowercase =>
      'El correo electrónico debe estar en minúsculas';

  @override
  String get error_arabic_not_allowed => 'No se permiten caracteres árabes';

  @override
  String get error_email_emoji_not_allowed =>
      'No se permiten emojis en el correo electrónico';

  @override
  String get error_phone_number_cant_be_empty =>
      'El número de teléfono no puede estar vacío';

  @override
  String get error_phone_number_invalid => 'Número de teléfono no válido';

  @override
  String get error_phone_number_min_length =>
      'El número de teléfono debe tener al menos 11 dígitos';

  @override
  String get error_name_cant_be_empty => 'El nombre no puede estar vacío';

  @override
  String get error_name_invalid => 'Nombre no válido';

  @override
  String get error_name_too_short_at_least_3_characters =>
      'El nombre debe tener al menos 3 caracteres';

  @override
  String get error_name_too_long_maximum_20_characters =>
      'El nombre no puede exceder los 20 caracteres';

  @override
  String get error_name_invalid_special_characters =>
      'El nombre contiene caracteres especiales no válidos';

  @override
  String get error_name_emoji_not_allowed =>
      'No se permiten emojis en el nombre';

  @override
  String get error_password_cant_be_empty =>
      'La contraseña no puede estar vacía';

  @override
  String
  get error_password_must_contain_uppercase_lowercase_number_and_special_character =>
      'La contraseña debe contener mayúsculas, minúsculas, números y un carácter especial';

  @override
  String get error_password_must_be_at_least_8_characters_long =>
      'La contraseña debe tener al menos 8 caracteres';

  @override
  String get noInternetConnection => 'Sin conexión a internet';

  @override
  String get internetConnectionRestored => 'Conexión a internet restaurada';

  @override
  String get retry => 'Reintentar';

  @override
  String get cancel => 'Cancelar';

  @override
  String get confirm => 'Confirmar';

  @override
  String get pleaseWait => 'Por favor espera...';

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
  String get openSourceLicenses => 'Licencias de código abierto';

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
  String get settingsGroupAppearance => 'Apariencia y idioma';

  @override
  String get settingsGroupCompression => 'Compresión';

  @override
  String get settingsGroupAi => 'IA en el dispositivo';

  @override
  String get settingsGroupPrivacy => 'Notificaciones y privacidad';

  @override
  String get settingsGroupPlans => 'Planes y compras';

  @override
  String get settingsGroupAbout => 'Acerca de';

  @override
  String get settingsGroupLegal => 'Legal';

  @override
  String get settingsGroupHelp => 'Ayuda y comentarios';

  @override
  String get settingsGroupAccount => 'Cuenta';

  @override
  String get settingsAppearanceSubtitle => 'Tema e idioma de la aplicación';

  @override
  String get settingsLanguageSubtitle => 'Idioma y dirección de la aplicación';

  @override
  String get settingsCompressionSubtitle => 'Calidad y formato predeterminados';

  @override
  String get settingsStorageSubtitle => 'Uso de caché y almacenamiento';

  @override
  String get aiSettings => 'Configuración de IA';

  @override
  String get zumiAssistant => 'Asistente Zumi';

  @override
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere =>
      'Pronto llegará un asistente privado para tus videos. Podrás preguntar sobre compresión, organización y videos guardados aquí.';

  @override
  String get settingsAiSubtitle =>
      'Modelos locales y herramientas inteligentes';

  @override
  String get exploreLocalModelsAndFutureAiToolsTheseOptionsAreNotActiveYet =>
      'Explora modelos locales y futuras herramientas de IA. Estas opciones aún no están activas.';

  @override
  String get localModels => 'Modelos locales';

  @override
  String get aiModelsSubtitle => 'Explora y descarga modelos compatibles';

  @override
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere =>
      'Elige un modelo compatible, descárgalo en este dispositivo y administra los modelos instalados aquí.';

  @override
  String get importAModel => 'Importar un modelo';

  @override
  String get aiImportSubtitle => 'Usa un modelo compatible desde tus archivos';

  @override
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt =>
      'Seleccione un archivo de modelo local compatible y revise sus requisitos antes de usarlo.';

  @override
  String get smartFeatures => 'Funciones inteligentes';

  @override
  String get aiFeaturesSubtitle => 'Compresión, organización y búsqueda';

  @override
  String
  get chooseWhichLocalAiSuggestionsToUseForVideoCompressionOrganizationNamingAndSearch =>
      'Elija qué sugerencias de IA locales utilizar para la compresión de video, organización, nombrado y búsqueda.';

  @override
  String get modelPerformance => 'Rendimiento del modelo';

  @override
  String get aiRuntimeSubtitle => 'Preferencias de procesamiento y recursos';

  @override
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels =>
      'Controle el backend de procesamiento y los límites de recursos para los modelos compatibles.';

  @override
  String get conversationSettings => 'Configuración de la conversación';

  @override
  String get aiChatSettingsSubtitle =>
      'Transmisión, pensamiento y longitud de respuesta';

  @override
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits =>
      'Configura cómo responde el asistente, incluyendo transmisión, modo de pensamiento, muestreo y límites de respuesta.  ';

  @override
  String get imagesAndAudio => 'Imágenes y audio  ';

  @override
  String get aiMediaSubtitle => 'Controla las entradas multimodales  ';

  @override
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos =>
      'Elige si los modelos compatibles pueden analizar imágenes y audio seleccionados de tus videos.  ';

  @override
  String get semanticSearch => 'Búsqueda semántica  ';

  @override
  String get aiSearchSubtitle => 'Embeddings e indexación local  ';

  @override
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning =>
      'Gestiona el modelo de embeddings local y el índice de búsqueda para encontrar videos y momentos por significado.  ';

  @override
  String get toolsAndStructuredOutput => 'Herramientas y salida estructurada  ';

  @override
  String get aiToolsSubtitle => 'Acciones, esquemas y confirmaciones';

  @override
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation =>
      'Gestiona las acciones de asistente compatibles y las respuestas estructuradas. Las acciones que afecten archivos requerirán tu confirmación.';

  @override
  String get aiGroupModels => 'Modelos';

  @override
  String get aiGroupExperience => 'Experiencia del asistente';

  @override
  String get aiGroupCapabilities => 'Capacidades inteligentes';

  @override
  String get aiGroupPerformance => 'Rendimiento';

  @override
  String get compressionHistorySubtitle => 'Tu historial de videos comprimidos';

  @override
  String get settingsNotificationsSubtitle =>
      'Alertas de finalización y actualización';

  @override
  String get settingsPrivacySubtitle => 'Tus datos se mantienen locales';

  @override
  String get plansSubtitle => 'Comparar planes y actualizar';

  @override
  String get plansMethodsSubtitle => 'Métodos de pago y facturación';

  @override
  String get plansRestoreSubtitle => 'Restaurar tu compra anterior';

  @override
  String get aboutAppSubtitle => 'Detalles de versión y compilación';

  @override
  String get aboutDeveloperSubtitle => 'El desarrollador detrás de Zumi';

  @override
  String get aboutLicensesSubtitle => 'Licencias de paquetes de código abierto';

  @override
  String get legalPrivacySubtitle => 'Cómo se maneja la información';

  @override
  String get legalTermsSubtitle => 'Reglas para usar Zumi';

  @override
  String get legalDataSafetySubtitle => 'Qué datos recopilamos';

  @override
  String get legalPermissionsSubtitle => 'Por qué necesitamos permisos';

  @override
  String get helpFaqSubtitle => 'Respuestas a preguntas comunes';

  @override
  String get helpSupportSubtitle => 'Contactar al desarrollador directamente';

  @override
  String get helpFeedbackSubtitle => 'Envíanos tus comentarios';

  @override
  String get compressionPickVideo => 'Elegir video';

  @override
  String get compressionTargetMb => 'Tamaño objetivo (MB)';

  @override
  String get compressionStart => 'Iniciar compresión';

  @override
  String get compressionPause => 'Pausar';

  @override
  String get compressionResume => 'Reanudar';

  @override
  String get compressionViewResult => 'Ver resultado';

  @override
  String get compressionSaveGallery => 'Guardar en la galería';

  @override
  String get compressionShare => 'Compartir video';

  @override
  String get compressionOriginalSize => 'Tamaño original';

  @override
  String get compressionOutputSize => 'Tamaño de salida';

  @override
  String get compressionEmptyHistory => 'Aún no hay videos comprimidos';

  @override
  String get compressionSavedGallery => 'Guardar en la galería';

  @override
  String get compressionInvalidTarget =>
      'Introduce un tamaño objetivo mayor que cero';

  @override
  String get compressionCancelled => 'Compresión cancelada';

  @override
  String get compressionTargetExceeded =>
      'Este video no pudo alcanzar el tamaño seleccionado. Intenta un tamaño objetivo mayor.';

  @override
  String get compressionTargetInfeasible =>
      'El tamaño seleccionado es demasiado pequeño para este video. Elige un tamaño mayor.';

  @override
  String get compressionPreviewBefore => 'Vista previa original';

  @override
  String get compressionPreviewAfter => 'Vista previa comprimida';

  @override
  String get compressionPreset => 'Preestablecido de destino';

  @override
  String get compressionCustom => 'Tamaño personalizado';

  @override
  String get compressionPreviewUnavailable => 'Vista previa no disponible';

  @override
  String get compressionAdvanced => 'Controles avanzados';

  @override
  String get compressionAutomatic => 'Automático';

  @override
  String get compressionResolutionLimit => 'Resolución máxima';

  @override
  String get compressionSourceResolution => 'Resolución original';

  @override
  String get compressionFrameRateLimit => 'Frecuencia de cuadros máxima';

  @override
  String get compressionAudioQuality => 'Tasa de bits de audio';

  @override
  String get compressionRemoveAudio => 'Eliminar audio';

  @override
  String get compressionVideoBitrateLimit =>
      'Límite de tasa de bits de video (kbps)';

  @override
  String get compressionHdrPolicy => 'Manejo HDR';

  @override
  String get compressionHdrConvert => 'Convertir a SDR';

  @override
  String get compressionHdrPreserve => 'Mantener HDR cuando sea compatible';

  @override
  String get compressionPlanPreview => 'Antes de empezar';

  @override
  String get compressionPlanLoading => 'Calculando plan de compresión…';

  @override
  String get compressionPlanResolution => 'Resolución planificada';

  @override
  String get compressionPlanVideoBitrate => 'Tasa de bits de video planificada';

  @override
  String get compressionPlanAudioBitrate => 'Tasa de bits de audio planificada';

  @override
  String get compressionAudioConversionNote =>
      'La re-codificación convierte el audio a AAC estéreo. Dolby Atmos y audio espacial DTS no se conservarán.';

  @override
  String get compressionPlanTooSmall =>
      'Este objetivo es demasiado pequeño para un video usable. Aumente el tamaño o reduzca otros límites.';

  @override
  String get compressionPlanLowQuality =>
      'El objetivo seleccionado puede reducir la calidad del video.';

  @override
  String get compressionPlanAlreadyWithinLimit =>
      'La fuente ya está dentro del límite de tamaño.';

  @override
  String get compressionInvalidBitrate =>
      'Ingrese una tasa de bits de al menos 150 kbps, o deje en blanco para automático';

  @override
  String get compressionInvalidResolution =>
      'Ingrese una resolución par de 240 a 16384, o deje en blanco para automático';

  @override
  String get compressionSeek => 'Posición del video';

  @override
  String get compressionInterrupted =>
      'Una compresión anterior fue interrumpida. Sus archivos temporales fueron eliminados; puede seleccionar el video e intentarlo de nuevo.';

  @override
  String get compressionDismiss => 'Cerrar';

  @override
  String get compressionClearHistory => 'Borrar historial';

  @override
  String get compressionClearHistoryConfirm =>
      '¿Eliminar todas las entradas del historial? Los videos guardados permanecerán en tu dispositivo.';

  @override
  String get compressionAttempts => 'Intentos';

  @override
  String get compressionTargetSize => 'Tamaño objetivo';

  @override
  String get compressionOutputResolution => 'Resolución de salida';

  @override
  String get compressionInvalidVideo =>
      'No se pudo leer este video. Elige otro archivo.';

  @override
  String get compressionInvalidOutput =>
      'El video codificado no pasó la verificación. Tu video original no fue cambiado.';

  @override
  String get compressionEncoderUnsupported =>
      'Este dispositivo no puede codificar la resolución o velocidad de fotogramas seleccionada. Reduce esa configuración e inténtalo de nuevo.';

  @override
  String get compressionAudioDecoderUnsupported =>
      'Este dispositivo no puede decodificar este formato de audio para comprimir. Elimina el audio o utiliza una fuente compatible.';

  @override
  String get compressionVideoDecoderUnsupported =>
      'Este dispositivo no puede decodificar este formato de video o perfil de compresión. Elija otra fuente o dispositivo.';

  @override
  String get compressionMp4NotStreamable =>
      'El MP4 exportado no está listo para transmisión. Intente con otro video o dispositivo.';

  @override
  String get compressionNoSpace =>
      'No hay suficiente almacenamiento libre para comprimir este video.';

  @override
  String get compressionHdrUnsupported =>
      'Este dispositivo no puede procesar el modo HDR seleccionado. Intente convertir a SDR.';

  @override
  String get compressionGeneralFailure =>
      'No se pudo completar la compresión. Intente con otra configuración o video.';

  @override
  String get aboutIdentitySection => 'Identidad de la aplicación';

  @override
  String get aboutAppName => 'Nombre de la aplicación';

  @override
  String get aboutPackageName => 'Nombre del paquete';

  @override
  String get aboutVersion => 'Versión';

  @override
  String get aboutBuildNumber => 'Número de compilación';

  @override
  String get aboutEnvironmentSection => 'Dispositivo y compilación';

  @override
  String get aboutOperatingSystem => 'Sistema operativo';

  @override
  String get aboutOsVersion => 'Versión del SO';

  @override
  String get aboutBuildMode => 'Modo de compilación';

  @override
  String get aboutDebug => 'Depuración';

  @override
  String get aboutRelease => 'Publicación';

  @override
  String get aboutToolchainSection => 'Construido con';

  @override
  String get aboutInstallationSection => 'Instalación';

  @override
  String get aboutInstaller => 'Instalado desde';

  @override
  String get aboutInstalledOn => 'Instalado en';

  @override
  String get aboutUpdatedOn => 'Actualizado el';

  @override
  String get aboutUnavailable => 'No disponible';

  @override
  String get aboutProjectSection => 'Proyecto y soporte';

  @override
  String get aboutRepository => 'Repositorio de GitHub';

  @override
  String get aboutRepositorySubtitle => 'Ver el código fuente de Zumi';

  @override
  String get aboutReadme => 'Leer el README';

  @override
  String get aboutReadmeSubtitle => 'Aprender sobre Zumi en GitHub';

  @override
  String get aboutIssues => 'Reportar un problema';

  @override
  String get aboutIssuesSubtitle => 'Ver y crear issues en GitHub';

  @override
  String get aboutLatestRelease => 'Última versión';

  @override
  String get aboutLatestReleaseSubtitle => 'Ver versiones y descargas';

  @override
  String get aboutDonate => 'Apoyar a Zumi';

  @override
  String get aboutDonateSubtitle => 'Abrir la página oficial de donaciones';

  @override
  String get aboutLinkError =>
      'No se pudo abrir el enlace. Por favor, inténtelo de nuevo.';

  @override
  String get aboutDeveloperSection => 'Desarrollador';

  @override
  String get aboutDeveloperName => 'Mostafa Sensei';

  @override
  String get aboutDeveloperProfile => 'Perfil de GitHub';

  @override
  String get aboutDeveloperProfileSubtitle =>
      'Ver proyectos y detalles de contacto';

  @override
  String get maintenanceInProgress => 'Mantenimiento en curso';

  @override
  String get maintenanceMessage =>
      'Zumi no está disponible temporalmente. Por favor, intente nuevamente más tarde.';

  @override
  String get comingSoon => 'Próximamente';

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

/// The translations for Spanish Castilian, as used in Mexico (`es_MX`).
class AppLocalizationsEsMx extends AppLocalizationsEs {
  AppLocalizationsEsMx() : super('es_MX');

  @override
  String get zumi => 'Zumi';

  @override
  String get downloadFile => 'Descargar archivo';

  @override
  String fileOpenedInBrowser(String fileName) {
    return 'Archivo abierto en el navegador: $fileName';
  }

  @override
  String fileSavedToDcim(String fileName) {
    return 'Archivo guardado en la galería: $fileName';
  }

  @override
  String fileSavedToDocuments(String fileName) {
    return 'Archivo guardado en documentos: $fileName';
  }

  @override
  String get fileAlreadySaved => 'El archivo ya está guardado';

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
  String get error_address_line_cant_be_empty =>
      'La línea de dirección no puede estar vacía';

  @override
  String get error_address_line_too_long =>
      'La línea de dirección es demasiado larga';

  @override
  String get error_address_invalid_special_characters =>
      'No se permiten caracteres especiales';

  @override
  String get error_address_emoji_not_allowed => 'No se permiten emojis';

  @override
  String get error_city_cant_be_empty => 'La ciudad no puede estar vacía';

  @override
  String get error_city_too_long => 'El nombre de la ciudad es demasiado largo';

  @override
  String get error_city_invalid_special_characters =>
      'La ciudad contiene caracteres especiales no válidos';

  @override
  String get error_address_label_cant_be_empty =>
      'La etiqueta de la dirección no puede estar vacía';

  @override
  String get error_address_label_too_long =>
      'La etiqueta de la dirección es demasiado larga';

  @override
  String get error_email_cant_be_empty =>
      'El correo electrónico no puede estar vacío';

  @override
  String get error_email_not_invalid_format =>
      'Formato de correo electrónico no válido';

  @override
  String get error_email_contains_invalid_characters =>
      'El correo electrónico contiene caracteres no válidos';

  @override
  String get error_email_must_contain_at_symbol =>
      'El correo electrónico debe contener @';

  @override
  String get error_email_must_be_in_lowercase =>
      'El correo electrónico debe estar en minúsculas';

  @override
  String get error_arabic_not_allowed => 'No se permiten caracteres árabes';

  @override
  String get error_email_emoji_not_allowed =>
      'No se permiten emojis en el correo electrónico';

  @override
  String get error_phone_number_cant_be_empty =>
      'El número de teléfono no puede estar vacío';

  @override
  String get error_phone_number_invalid => 'Número de teléfono no válido';

  @override
  String get error_phone_number_min_length =>
      'El número de teléfono debe tener al menos 11 dígitos';

  @override
  String get error_name_cant_be_empty => 'El nombre no puede estar vacío';

  @override
  String get error_name_invalid => 'Nombre no válido';

  @override
  String get error_name_too_short_at_least_3_characters =>
      'El nombre debe tener al menos 3 caracteres';

  @override
  String get error_name_too_long_maximum_20_characters =>
      'El nombre no puede exceder los 20 caracteres';

  @override
  String get error_name_invalid_special_characters =>
      'El nombre contiene caracteres especiales no válidos';

  @override
  String get error_name_emoji_not_allowed =>
      'No se permiten emojis en el nombre';

  @override
  String get error_password_cant_be_empty =>
      'La contraseña no puede estar vacía';

  @override
  String
  get error_password_must_contain_uppercase_lowercase_number_and_special_character =>
      'La contraseña debe contener mayúsculas, minúsculas, números y un carácter especial';

  @override
  String get error_password_must_be_at_least_8_characters_long =>
      'La contraseña debe tener al menos 8 caracteres';

  @override
  String get noInternetConnection => 'Sin conexión a internet';

  @override
  String get internetConnectionRestored => 'Conexión a internet restaurada';

  @override
  String get retry => 'Reintentar';

  @override
  String get cancel => 'Cancelar';

  @override
  String get confirm => 'Confirmar';

  @override
  String get pleaseWait => 'Por favor espera...';

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
  String get openSourceLicenses => 'Licencias de código abierto';

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
  String get settingsGroupAppearance => 'Apariencia y idioma';

  @override
  String get settingsGroupCompression => 'Compresión';

  @override
  String get settingsGroupAi => 'IA en el dispositivo';

  @override
  String get settingsGroupPrivacy => 'Notificaciones y privacidad';

  @override
  String get settingsGroupPlans => 'Planes y compras';

  @override
  String get settingsGroupAbout => 'Acerca de';

  @override
  String get settingsGroupLegal => 'Legal';

  @override
  String get settingsGroupHelp => 'Ayuda y comentarios';

  @override
  String get settingsGroupAccount => 'Cuenta';

  @override
  String get settingsAppearanceSubtitle => 'Tema e idioma de la aplicación';

  @override
  String get settingsLanguageSubtitle => 'Idioma y dirección de la aplicación';

  @override
  String get settingsCompressionSubtitle => 'Calidad y formato predeterminados';

  @override
  String get settingsStorageSubtitle => 'Uso de caché y almacenamiento';

  @override
  String get aiSettings => 'Configuración de IA';

  @override
  String get zumiAssistant => 'Asistente Zumi';

  @override
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere =>
      'Pronto llegará un asistente privado para tus videos. Podrás preguntar sobre compresión, organización y videos guardados aquí.';

  @override
  String get settingsAiSubtitle =>
      'Modelos locales y herramientas inteligentes';

  @override
  String get exploreLocalModelsAndFutureAiToolsTheseOptionsAreNotActiveYet =>
      'Explora modelos locales y futuras herramientas de IA. Estas opciones aún no están activas.';

  @override
  String get localModels => 'Modelos locales';

  @override
  String get aiModelsSubtitle => 'Explora y descarga modelos compatibles';

  @override
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere =>
      'Elige un modelo compatible, descárgalo en este dispositivo y administra los modelos instalados aquí.';

  @override
  String get importAModel => 'Importar un modelo';

  @override
  String get aiImportSubtitle => 'Usa un modelo compatible desde tus archivos';

  @override
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt =>
      'Seleccione un archivo de modelo local compatible y revise sus requisitos antes de usarlo.';

  @override
  String get smartFeatures => 'Funciones inteligentes';

  @override
  String get aiFeaturesSubtitle => 'Compresión, organización y búsqueda';

  @override
  String
  get chooseWhichLocalAiSuggestionsToUseForVideoCompressionOrganizationNamingAndSearch =>
      'Elija qué sugerencias de IA locales utilizar para la compresión de video, organización, nombrado y búsqueda.';

  @override
  String get modelPerformance => 'Rendimiento del modelo';

  @override
  String get aiRuntimeSubtitle => 'Preferencias de procesamiento y recursos';

  @override
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels =>
      'Controle el backend de procesamiento y los límites de recursos para los modelos compatibles.';

  @override
  String get conversationSettings => 'Configuración de la conversación';

  @override
  String get aiChatSettingsSubtitle =>
      'Transmisión, pensamiento y longitud de respuesta';

  @override
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits =>
      'Configura cómo responde el asistente, incluyendo transmisión, modo de pensamiento, muestreo y límites de respuesta.  ';

  @override
  String get imagesAndAudio => 'Imágenes y audio  ';

  @override
  String get aiMediaSubtitle => 'Controla las entradas multimodales  ';

  @override
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos =>
      'Elige si los modelos compatibles pueden analizar imágenes y audio seleccionados de tus videos.  ';

  @override
  String get semanticSearch => 'Búsqueda semántica  ';

  @override
  String get aiSearchSubtitle => 'Embeddings e indexación local  ';

  @override
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning =>
      'Gestiona el modelo de embeddings local y el índice de búsqueda para encontrar videos y momentos por significado.  ';

  @override
  String get toolsAndStructuredOutput => 'Herramientas y salida estructurada  ';

  @override
  String get aiToolsSubtitle => 'Acciones, esquemas y confirmaciones';

  @override
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation =>
      'Gestiona las acciones de asistente compatibles y las respuestas estructuradas. Las acciones que afecten archivos requerirán tu confirmación.';

  @override
  String get aiGroupModels => 'Modelos';

  @override
  String get aiGroupExperience => 'Experiencia del asistente';

  @override
  String get aiGroupCapabilities => 'Capacidades inteligentes';

  @override
  String get aiGroupPerformance => 'Rendimiento';

  @override
  String get compressionHistorySubtitle => 'Tu historial de videos comprimidos';

  @override
  String get settingsNotificationsSubtitle =>
      'Alertas de finalización y actualización';

  @override
  String get settingsPrivacySubtitle => 'Tus datos se mantienen locales';

  @override
  String get plansSubtitle => 'Comparar planes y actualizar';

  @override
  String get plansMethodsSubtitle => 'Métodos de pago y facturación';

  @override
  String get plansRestoreSubtitle => 'Restaurar tu compra anterior';

  @override
  String get aboutAppSubtitle => 'Detalles de versión y compilación';

  @override
  String get aboutDeveloperSubtitle => 'El desarrollador detrás de Zumi';

  @override
  String get aboutLicensesSubtitle => 'Licencias de paquetes de código abierto';

  @override
  String get legalPrivacySubtitle => 'Cómo se maneja la información';

  @override
  String get legalTermsSubtitle => 'Reglas para usar Zumi';

  @override
  String get legalDataSafetySubtitle => 'Qué datos recopilamos';

  @override
  String get legalPermissionsSubtitle => 'Por qué necesitamos permisos';

  @override
  String get helpFaqSubtitle => 'Respuestas a preguntas comunes';

  @override
  String get helpSupportSubtitle => 'Contactar al desarrollador directamente';

  @override
  String get helpFeedbackSubtitle => 'Envíanos tus comentarios';

  @override
  String get compressionPickVideo => 'Seleccionar video';

  @override
  String get compressionTargetMb => 'Tamaño objetivo (MB)';

  @override
  String get compressionStart => 'Comenzar compresión';

  @override
  String get compressionPause => 'Pausar';

  @override
  String get compressionResume => 'Reanudar';

  @override
  String get compressionViewResult => 'Ver resultado';

  @override
  String get compressionSaveGallery => 'Guardar en la galería';

  @override
  String get compressionShare => 'Compartir video';

  @override
  String get compressionOriginalSize => 'Tamaño original';

  @override
  String get compressionOutputSize => 'Tamaño de salida';

  @override
  String get compressionEmptyHistory => 'Aún no hay videos comprimidos';

  @override
  String get compressionSavedGallery => 'Guardar en la galería';

  @override
  String get compressionInvalidTarget =>
      'Introduce un tamaño objetivo mayor que cero';

  @override
  String get compressionCancelled => 'Compresión cancelada';

  @override
  String get compressionTargetExceeded =>
      'Este video no pudo alcanzar el tamaño seleccionado. Intenta un tamaño objetivo mayor.';

  @override
  String get compressionTargetInfeasible =>
      'El tamaño seleccionado es demasiado pequeño para este video. Elige un tamaño mayor.';

  @override
  String get compressionPreviewBefore => 'Vista previa original';

  @override
  String get compressionPreviewAfter => 'Vista previa comprimida';

  @override
  String get compressionPreset => 'Preestablecido de destino';

  @override
  String get compressionCustom => 'Tamaño personalizado';

  @override
  String get compressionPreviewUnavailable => 'Vista previa no disponible';

  @override
  String get compressionAdvanced => 'Controles avanzados';

  @override
  String get compressionAutomatic => 'Automático';

  @override
  String get compressionResolutionLimit => 'Resolución máxima';

  @override
  String get compressionSourceResolution => 'Resolución original';

  @override
  String get compressionFrameRateLimit => 'Frecuencia de cuadros máxima';

  @override
  String get compressionAudioQuality => 'Tasa de bits de audio';

  @override
  String get compressionRemoveAudio => 'Eliminar audio';

  @override
  String get compressionVideoBitrateLimit =>
      'Límite de tasa de bits de video (kbps)';

  @override
  String get compressionHdrPolicy => 'Manejo HDR';

  @override
  String get compressionHdrConvert => 'Convertir a SDR';

  @override
  String get compressionHdrPreserve => 'Mantener HDR cuando sea compatible';

  @override
  String get compressionPlanPreview => 'Antes de empezar';

  @override
  String get compressionPlanLoading => 'Calculando plan de compresión…';

  @override
  String get compressionPlanResolution => 'Resolución planificada';

  @override
  String get compressionPlanVideoBitrate => 'Tasa de bits de video planificada';

  @override
  String get compressionPlanAudioBitrate => 'Tasa de bits de audio planificada';

  @override
  String get compressionAudioConversionNote =>
      'La re-codificación convierte el audio a AAC estéreo. Dolby Atmos y audio espacial DTS no se conservarán.';

  @override
  String get compressionPlanTooSmall =>
      'Este objetivo es demasiado pequeño para un video usable. Aumente el tamaño o reduzca otros límites.';

  @override
  String get compressionPlanLowQuality =>
      'El objetivo seleccionado puede reducir la calidad del video.';

  @override
  String get compressionPlanAlreadyWithinLimit =>
      'La fuente ya está dentro del límite de tamaño.';

  @override
  String get compressionInvalidBitrate =>
      'Ingrese una tasa de bits de al menos 150 kbps, o deje en blanco para automático';

  @override
  String get compressionInvalidResolution =>
      'Ingrese una resolución par de 240 a 16384, o deje en blanco para automático';

  @override
  String get compressionSeek => 'Posición del video';

  @override
  String get compressionInterrupted =>
      'Una compresión anterior fue interrumpida. Sus archivos temporales fueron eliminados; puede seleccionar el video e intentarlo de nuevo.';

  @override
  String get compressionDismiss => 'Cerrar';

  @override
  String get compressionClearHistory => 'Borrar historial';

  @override
  String get compressionClearHistoryConfirm =>
      '¿Eliminar todas las entradas del historial? Los videos guardados permanecerán en tu dispositivo.';

  @override
  String get compressionAttempts => 'Intentos';

  @override
  String get compressionTargetSize => 'Tamaño objetivo';

  @override
  String get compressionOutputResolution => 'Resolución de salida';

  @override
  String get compressionInvalidVideo =>
      'No se pudo leer este video. Elige otro archivo.';

  @override
  String get compressionInvalidOutput =>
      'El video codificado no pasó la verificación. Tu video original no fue cambiado.';

  @override
  String get compressionEncoderUnsupported =>
      'Este dispositivo no puede codificar la resolución o velocidad de fotogramas seleccionada. Reduce esa configuración e inténtalo de nuevo.';

  @override
  String get compressionAudioDecoderUnsupported =>
      'Este dispositivo no puede decodificar este formato de audio para comprimir. Elimina el audio o utiliza una fuente compatible.';

  @override
  String get compressionVideoDecoderUnsupported =>
      'Este dispositivo no puede decodificar este formato de video o perfil de compresión. Elija otra fuente o dispositivo.';

  @override
  String get compressionMp4NotStreamable =>
      'El MP4 exportado no está listo para transmisión. Intente con otro video o dispositivo.';

  @override
  String get compressionNoSpace =>
      'No hay suficiente almacenamiento libre para comprimir este video.';

  @override
  String get compressionHdrUnsupported =>
      'Este dispositivo no puede procesar el modo HDR seleccionado. Intente convertir a SDR.';

  @override
  String get compressionGeneralFailure =>
      'No se pudo completar la compresión. Intente con otra configuración o video.';

  @override
  String get aboutIdentitySection => 'Identidad de la aplicación';

  @override
  String get aboutAppName => 'Nombre de la aplicación';

  @override
  String get aboutPackageName => 'Nombre del paquete';

  @override
  String get aboutVersion => 'Versión';

  @override
  String get aboutBuildNumber => 'Número de compilación';

  @override
  String get aboutEnvironmentSection => 'Dispositivo y compilación';

  @override
  String get aboutOperatingSystem => 'Sistema operativo';

  @override
  String get aboutOsVersion => 'Versión del SO';

  @override
  String get aboutBuildMode => 'Modo de compilación';

  @override
  String get aboutDebug => 'Depuración';

  @override
  String get aboutRelease => 'Publicación';

  @override
  String get aboutToolchainSection => 'Construido con';

  @override
  String get aboutInstallationSection => 'Instalación';

  @override
  String get aboutInstaller => 'Instalado desde';

  @override
  String get aboutInstalledOn => 'Instalado en';

  @override
  String get aboutUpdatedOn => 'Actualizado el';

  @override
  String get aboutUnavailable => 'No disponible';

  @override
  String get aboutProjectSection => 'Proyecto y soporte';

  @override
  String get aboutRepository => 'Repositorio de GitHub';

  @override
  String get aboutRepositorySubtitle => 'Ver el código fuente de Zumi';

  @override
  String get aboutReadme => 'Leer el README';

  @override
  String get aboutReadmeSubtitle => 'Aprender sobre Zumi en GitHub';

  @override
  String get aboutIssues => 'Reportar un problema';

  @override
  String get aboutIssuesSubtitle => 'Ver y crear issues en GitHub';

  @override
  String get aboutLatestRelease => 'Última versión';

  @override
  String get aboutLatestReleaseSubtitle => 'Ver versiones y descargas';

  @override
  String get aboutDonate => 'Apoyar a Zumi';

  @override
  String get aboutDonateSubtitle => 'Abrir la página oficial de donaciones';

  @override
  String get aboutLinkError =>
      'No se pudo abrir el enlace. Por favor, inténtelo de nuevo.';

  @override
  String get aboutDeveloperSection => 'Desarrollador';

  @override
  String get aboutDeveloperName => 'Mostafa Sensei';

  @override
  String get aboutDeveloperProfile => 'Perfil de GitHub';

  @override
  String get aboutDeveloperProfileSubtitle =>
      'Ver proyectos y detalles de contacto';

  @override
  String get maintenanceInProgress => 'Mantenimiento en curso';

  @override
  String get maintenanceMessage =>
      'Zumi no está disponible temporalmente. Por favor, intente nuevamente más tarde.';

  @override
  String get comingSoon => 'Próximamente';

  @override
  String get languageName => 'Español';

  @override
  String get countryCode => 'MX';

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
      'SA': 'Arabia Saudita',
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
