// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get zumi => 'Zumi';

  @override
  String get downloadFile => 'Descarregar ficheiro';

  @override
  String fileOpenedInBrowser(String fileName) {
    return 'Ficheiro aberto no navegador: $fileName';
  }

  @override
  String fileSavedToGallery(String fileName) {
    return 'Ficheiro guardado na galeria: $fileName';
  }

  @override
  String fileSavedToDocuments(String fileName) {
    return 'Ficheiro guardado nos documentos: $fileName';
  }

  @override
  String get fileIsAlreadySaved => 'O ficheiro já está guardado';

  @override
  String get error => 'Erro';

  @override
  String get info => 'Informação';

  @override
  String get success => 'Sucesso';

  @override
  String get warning => 'Aviso';

  @override
  String get paid => 'Pago';

  @override
  String get unpaid => 'Por pagar';

  @override
  String get partial => 'Parcial';

  @override
  String get addressLineCannotBeEmpty =>
      'A linha de endereço não pode estar vazia';

  @override
  String get addressLineIsTooLong => 'A linha de endereço é demasiado longa';

  @override
  String get specialCharactersAreNotAllowed =>
      'Não são permitidos caracteres especiais';

  @override
  String get emojisAreNotAllowed => 'Emojis não são permitidos';

  @override
  String get cityCannotBeEmpty => 'A cidade não pode estar vazia';

  @override
  String get cityNameIsTooLong => 'O nome da cidade é demasiado longo';

  @override
  String get cityContainsInvalidSpecialCharacters =>
      'A cidade contém caracteres especiais inválidos';

  @override
  String get addressLabelCannotBeEmpty =>
      'O rótulo do endereço não pode estar vazio';

  @override
  String get addressLabelIsTooLong => 'O rótulo do endereço é demasiado longo';

  @override
  String get emailCannotBeEmpty => 'O email não pode estar vazio';

  @override
  String get invalidEmailFormat => 'Formato de email inválido';

  @override
  String get emailContainsInvalidCharacters =>
      'O email contém caracteres inválidos';

  @override
  String get emailMustContain => 'O email deve conter @';

  @override
  String get emailMustBeInLowercase => 'O email deve estar em minúsculas';

  @override
  String get arabicCharactersAreNotAllowed =>
      'Caracteres árabes não são permitidos';

  @override
  String get emojisAreNotAllowedInEmail => 'Emojis não são permitidos no email';

  @override
  String get phoneNumberCannotBeEmpty =>
      'O número de telefone não pode estar vazio';

  @override
  String get invalidPhoneNumber => 'Número de telefone inválido';

  @override
  String get phoneNumberMustBeAtLeast11Digits =>
      'O número de telefone deve ter pelo menos 11 dígitos';

  @override
  String get nameCannotBeEmpty => 'O nome não pode estar vazio';

  @override
  String get invalidName => 'Nome inválido';

  @override
  String get nameMustBeAtLeast3Characters =>
      'O nome deve ter pelo menos 3 caracteres';

  @override
  String get nameCannotExceed20Characters =>
      'O nome não pode exceder 20 caracteres';

  @override
  String get nameContainsInvalidSpecialCharacters =>
      'O nome contém caracteres especiais inválidos';

  @override
  String get emojisAreNotAllowedInName => 'Emojis não são permitidos no nome';

  @override
  String get passwordCannotBeEmpty => 'A palavra-passe não pode estar vazia';

  @override
  String get passwordMustContainUppercaseLowercaseNumberAndSpecialCharacter =>
      'A palavra-passe deve conter maiúsculas, minúsculas, números e caracteres especiais';

  @override
  String get passwordMustBeAtLeast8CharactersLong =>
      'A palavra-passe deve ter pelo menos 8 caracteres';

  @override
  String get noInternetConnection => 'Sem ligação à Internet';

  @override
  String get internetConnectionRestored => 'Ligação à Internet restabelecida';

  @override
  String get retry => 'Tentar novamente';

  @override
  String get cancel => 'Cancelar';

  @override
  String get confirm => 'Confirmar';

  @override
  String get pleaseWait => 'Por favor, aguarde...';

  @override
  String get ok => 'OK';

  @override
  String get compressVideosPrivatelyOnYourDevice =>
      'Comprima vídeos em privado no seu dispositivo.';

  @override
  String get welcomeToZumi => 'Bem-vindo ao Zumi';

  @override
  String get learnHowZumiCompressesYourVideosWithoutEverLeavingYourPhone =>
      'Aprenda como o Zumi comprime os seus vídeos sem nunca sair do seu telemóvel.';

  @override
  String get signIn => 'Iniciar sessão';

  @override
  String get signInToSyncYourPlanAndKeepYourPurchasesAvailableOnEveryDevice =>
      'Inicie sessão para sincronizar o seu plano e manter as suas compras disponíveis em todos os dispositivos.';

  @override
  String get chooseAVideo => 'Escolher um vídeo';

  @override
  String get pickAVideoFromYourGalleryToStartCompressing =>
      'Escolha um vídeo da sua galeria para começar a comprimir.';

  @override
  String get compressionSetup => 'Configuração de compressão';

  @override
  String get chooseResolutionBitrateAndOutputFormatBeforeYouStart =>
      'Escolha a resolução, taxa de bits e formato de saída antes de começar.';

  @override
  String get compressing => 'A comprimir';

  @override
  String get followTheLiveProgressOfYourCompressionJob =>
      'Acompanhe o progresso em tempo real do seu trabalho de compressão.';

  @override
  String get compressionResult => 'Resultado da compressão';

  @override
  String get compareTheBeforeAndAfterSizeThenSaveOrShareTheResult =>
      'Compare o tamanho antes e depois, depois guarde ou partilhe o resultado.';

  @override
  String get compressionHistory => 'Histórico de compressão';

  @override
  String get reviewTheVideosYouHaveCompressedOnThisDevice =>
      'Revise os vídeos que comprimiu neste dispositivo.';

  @override
  String get settings => 'Definições';

  @override
  String get appearance => 'Aparência';

  @override
  String get themeColorSchemeAndMotionPreferences =>
      'Tema, esquema de cores e preferências de movimento.';

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
      'Idioma da aplicação e direção do texto.';

  @override
  String get compressionDefaults => 'Predefinições de compressão';

  @override
  String get defaultResolutionBitrateAndOutputFormat =>
      'Resolução, taxa de bits e formato de saída padrão.';

  @override
  String get storageCleanup => 'Armazenamento e limpeza';

  @override
  String get storageUsageCacheSizeAndTemporaryFileCleanup =>
      'Uso de armazenamento, tamanho da cache e limpeza de ficheiros temporários.';

  @override
  String get notifications => 'Notificações';

  @override
  String get jobCompletionAndProductUpdateNotifications =>
      'Notificações de conclusão de tarefas e atualizações de produtos.';

  @override
  String get privacy => 'Privacidade';

  @override
  String get onDeviceProcessingLocalLogsAndOptionalCrashReports =>
      'Processamento no dispositivo, registos locais e relatórios de falhas opcionais.';

  @override
  String get aboutZumi => 'Sobre o Zumi';

  @override
  String get versionBuildNumberAndApplicationDetails =>
      'Versão, número de compilação e detalhes da aplicação.';

  @override
  String get aboutTheDeveloper => 'Sobre o desenvolvedor';

  @override
  String get theDeveloperAndToolsBehindZumi =>
      'O desenvolvedor e as ferramentas por trás do Zumi.';

  @override
  String get openSourceLicenses => 'Licenças de código aberto';

  @override
  String get openSourcePackagesBundledWithZumi =>
      'Pacotes de código aberto incluídos no Zumi.';

  @override
  String get privacyPolicy => 'Política de privacidade';

  @override
  String get howZumiHandlesYourVideosAndData =>
      'Como o Zumi trata os seus vídeos e dados.';

  @override
  String get termsOfService => 'Termos de serviço';

  @override
  String get theTermsThatApplyToZumiAndItsPurchases =>
      'Os termos que se aplicam ao Zumi e às suas compras.';

  @override
  String get dataSafety => 'Segurança de dados';

  @override
  String get summaryOfTheDataZumiCollectsAndWhy =>
      'Resumo dos dados que a Zumi recolhe e porquê.';

  @override
  String get permissions => 'Permissões';

  @override
  String get runtimePermissionsZumiRequestsAndWhyEachIsNeeded =>
      'Permissões em tempo de execução que a Zumi solicita e porquê cada uma é necessária.';

  @override
  String get faq => 'FAQ';

  @override
  String get answersToCommonQuestionsAboutCompressionAndBilling =>
      'Respostas a perguntas comuns sobre compressão e faturação.';

  @override
  String get support => 'Suporte';

  @override
  String get getHelpWithYourAccountOrAPurchase =>
      'Obtenha ajuda com a sua conta ou uma compra.';

  @override
  String get sendFeedback => 'Enviar feedback';

  @override
  String get reportAProblemOrSuggestAnImprovement =>
      'Reportar um problema ou sugerir uma melhoria.';

  @override
  String get plans => 'Planos';

  @override
  String get comparePlansAndSeeWhatEachOneUnlocks =>
      'Compare planos e veja o que cada um desbloqueia.';

  @override
  String get planDetails => 'Detalhes do plano';

  @override
  String get benefitsLimitsAndPricingForThisPlan =>
      'Benefícios, limites e preços deste plano.';

  @override
  String get paymentMethods => 'Métodos de pagamento';

  @override
  String get supportedWaysToPayIncludingStoreBilling =>
      'Formas de pagamento suportadas, incluindo faturação na loja.';

  @override
  String get restorePurchases => 'Restaurar compras';

  @override
  String get reApplyAPurchaseMadeOnAnotherDevice =>
      'Reaplicar uma compra feita noutro dispositivo.';

  @override
  String get profile => 'Perfil';

  @override
  String get yourIdentityPlanStatusAndAccountPreferences =>
      'A sua identidade, estado do plano e preferências da conta.';

  @override
  String get deleteAccount => 'Eliminar conta';

  @override
  String get permanentlyRemoveYourAccountAndItsServerSideData =>
      'Remover permanentemente a sua conta e os seus dados no servidor.';

  @override
  String get rateZumi => 'Avaliar o Zumi';

  @override
  String get tellOthersHowZumiWorkedForYouOnTheStore =>
      'Diga aos outros como o Zumi funcionou para si na loja.';

  @override
  String get shareZumi => 'Partilhar o Zumi';

  @override
  String get recommendZumiToAFriend => 'Recomende o Zumi a um amigo.';

  @override
  String get appearanceLanguage => 'Aparência e idioma';

  @override
  String get compression => 'Compressão';

  @override
  String get onDeviceAI => 'IA no dispositivo';

  @override
  String get notificationsPrivacy => 'Notificações e privacidade';

  @override
  String get plansPurchases => 'Planos e compras';

  @override
  String get about => 'Sobre';

  @override
  String get legal => 'Legal';

  @override
  String get helpFeedback => 'Ajuda e feedback';

  @override
  String get account => 'Conta';

  @override
  String get themeAndAppLanguage => 'Tema e idioma da aplicação';

  @override
  String get appLanguageAndDirection => 'Idioma da aplicação e direção';

  @override
  String get defaultQualityAndFormat => 'Qualidade e formato padrão';

  @override
  String get cacheAndStorageUsage => 'Uso de cache e armazenamento';

  @override
  String get aiSettings => 'Definições de IA';

  @override
  String get zumiAssistant => 'Assistente Zumi';

  @override
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere =>
      'Um assistente privado para os seus vídeos estará disponível em breve. Poderá perguntar sobre compressão, organização e vídeos guardados aqui.';

  @override
  String get localModelsAndSmartTools =>
      'Modelos locais e ferramentas inteligentes';

  @override
  String get exploreLocalModelsAndFutureAIToolsTheseOptionsAreNotActiveYet =>
      'Explore modelos locais e futuras ferramentas de IA. Estas opções ainda não estão ativas.';

  @override
  String get localModels => 'Modelos locais';

  @override
  String get browseAndDownloadSupportedModels =>
      'Navegue e descarregue modelos suportados';

  @override
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere =>
      'Escolha um modelo suportado, descarregue-o para este dispositivo e gere os modelos instalados aqui.';

  @override
  String get importAModel => 'Importar um modelo';

  @override
  String get useACompatibleModelFromYourFiles =>
      'Utilize um modelo compatível a partir dos seus ficheiros';

  @override
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt =>
      'Selecione um ficheiro de modelo local compatível e reveja os seus requisitos antes de o usar.';

  @override
  String get smartFeatures => 'Funcionalidades inteligentes';

  @override
  String get compressionOrganizationAndSearch =>
      'Compressão, organização e pesquisa';

  @override
  String
  get chooseWhichLocalAISuggestionsToUseForVideoCompressionOrganizationNamingAndSearch =>
      'Escolha quais sugestões de IA locais usar para compressão de vídeo, organização, nomeação e pesquisa.';

  @override
  String get modelPerformance => 'Desempenho do modelo';

  @override
  String get processingAndResourcePreferences =>
      'Preferências de processamento e recursos';

  @override
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels =>
      'Controle o backend de processamento e os limites de recursos para modelos suportados.';

  @override
  String get conversationSettings => 'Definições de conversação';

  @override
  String get streamingThinkingAndResponseLength =>
      'Transmissão, reflexão e comprimento da resposta';

  @override
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits =>
      'Configure como o assistente responde, incluindo streaming, modo de pensamento, amostragem e limites de respostas.';

  @override
  String get imagesAndAudio => 'Imagens e áudio';

  @override
  String get controlMultimodalInputs => 'Controlar entradas multimodais';

  @override
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos =>
      'Escolha se os modelos compatíveis podem analisar imagens e áudio selecionados dos seus vídeos.';

  @override
  String get semanticSearch => 'Pesquisa semântica';

  @override
  String get embeddingsAndLocalIndexing => 'Embeddings e indexação local';

  @override
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning =>
      'Gerir o modelo de embeddings local e o índice de pesquisa para encontrar vídeos e momentos por significado.';

  @override
  String get toolsAndStructuredOutput => 'Ferramentas e saída estruturada';

  @override
  String get actionsSchemasAndConfirmations => 'Ações, esquemas e confirmações';

  @override
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation =>
      'Gerir ações suportadas pelo assistente e respostas estruturadas. Ações que afetem ficheiros irão requerer a sua confirmação.';

  @override
  String get models => 'Modelos';

  @override
  String get assistantExperience => 'Experiência do assistente';

  @override
  String get smartCapabilities => 'Capacidades inteligentes';

  @override
  String get performance => 'Desempenho';

  @override
  String get yourCompressedVideoHistory =>
      'O seu histórico de vídeos comprimidos';

  @override
  String get completionAndUpdateAlerts => 'Alertas de conclusão e atualização';

  @override
  String get yourDataStaysLocal => 'Os seus dados permanecem localmente';

  @override
  String get comparePlansAndUpgrade => 'Comparar planos e atualizar';

  @override
  String get paymentMethodsAndBilling => 'Métodos de pagamento e faturação';

  @override
  String get restoreYourPreviousPurchase => 'Restaurar a sua compra anterior';

  @override
  String get versionAndBuildDetails => 'Detalhes da versão e compilação';

  @override
  String get theDeveloperBehindZumi => 'O desenvolvedor por trás do Zumi';

  @override
  String get openSourcePackageLicenses => 'Licenças de pacotes open source';

  @override
  String get howDataIsHandled => 'Como os dados são tratados';

  @override
  String get rulesForUsingZumi => 'Regras para usar o Zumi';

  @override
  String get whatDataWeCollect => 'Quais dados recolhemos';

  @override
  String get whyWeNeedPermissions => 'Por que precisamos de permissões';

  @override
  String get answersToCommonQuestions => 'Respostas a perguntas comuns';

  @override
  String get reachTheDeveloperDirectly =>
      'Contacte diretamente o desenvolvedor';

  @override
  String get sendUsYourFeedback => 'Envie-nos o seu feedback';

  @override
  String get pickVideo => 'Escolher vídeo';

  @override
  String get targetSizeMB => 'Tamanho alvo (MB)';

  @override
  String get startCompression => 'Iniciar compressão';

  @override
  String get pause => 'Pausar';

  @override
  String get resume => 'Retomar';

  @override
  String get viewResult => 'Ver resultado';

  @override
  String get saveToGallery => 'Guardar na galeria';

  @override
  String get shareVideo => 'Partilhar vídeo';

  @override
  String get originalSize => 'Tamanho original';

  @override
  String get outputSize => 'Tamanho de saída';

  @override
  String get noCompressedVideosYet => 'Ainda não há vídeos comprimidos';

  @override
  String get savedToGallery => 'Guardado na galeria';

  @override
  String get enterATargetSizeGreaterThanZero =>
      'Introduza um tamanho alvo maior que zero';

  @override
  String get compressionCancelled => 'Compressão cancelada';

  @override
  String get thisVideoCouldNotReachTheSelectedSizeTryALargerTargetSize =>
      'Este vídeo não conseguiu atingir o tamanho selecionado. Experimente um tamanho alvo maior.';

  @override
  String get theSelectedSizeIsTooSmallForThisVideoChooseALargerSize =>
      'O tamanho selecionado é demasiado pequeno para este vídeo. Escolha um tamanho maior.';

  @override
  String get originalPreview => 'Pré-visualização original';

  @override
  String get compressedPreview => 'Pré-visualização comprimida';

  @override
  String get targetPreset => 'Definição de destino';

  @override
  String get customSize => 'Tamanho personalizado';

  @override
  String get previewUnavailable => 'Pré-visualização indisponível';

  @override
  String get advancedControls => 'Controles avançados';

  @override
  String get automatic => 'Automático';

  @override
  String get maximumResolution => 'Resolução máxima';

  @override
  String get originalResolution => 'Resolução original';

  @override
  String get maximumFrameRate => 'Taxa máxima de fotogramas';

  @override
  String get audioBitrate => 'Taxa de bits de áudio';

  @override
  String get removeAudio => 'Remover áudio';

  @override
  String get videoBitrateCeilingKbps => 'Teto da taxa de bits de vídeo (kbps)';

  @override
  String get hdrHandling => 'Gestão de HDR';

  @override
  String get convertToSDR => 'Converter para SDR';

  @override
  String get keepHDRWhenSupported => 'Manter HDR quando suportado';

  @override
  String get beforeYouStart => 'Antes de começar';

  @override
  String get calculatingCompressionPlan => 'A calcular plano de compressão…';

  @override
  String get plannedResolution => 'Resolução planeada';

  @override
  String get plannedVideoBitrate => 'Taxa de bits de vídeo planeada';

  @override
  String get plannedAudioBitrate => 'Taxa de bits de áudio planeada';

  @override
  String
  get reEncodingConvertsAudioToAACStereoDolbyAtmosAndDTSSpatialAudioWillNotBePreserved =>
      'A nova codificação converte o áudio para AAC estéreo. Dolby Atmos e áudio espacial DTS não serão preservados.';

  @override
  String
  get thisTargetIsTooSmallForAUsableVideoIncreaseTheSizeOrLowerOtherLimits =>
      'Este alvo é demasiado pequeno para um vídeo utilizável. Aumente o tamanho ou reduza outros limites.';

  @override
  String get theSelectedTargetMayReduceVideoQuality =>
      'O alvo selecionado pode reduzir a qualidade do vídeo.';

  @override
  String get theSourceIsAlreadyWithinTheSizeLimit =>
      'A fonte já está dentro do limite de tamanho.';

  @override
  String get enterABitrateOfAtLeast150KbpsOrLeaveBlankForAutomatic =>
      'Introduza uma taxa de bits de pelo menos 150 kbps ou deixe em branco para automático.';

  @override
  String get enterAnEvenResolutionFrom240To16384OrLeaveBlankForAutomatic =>
      'Introduza uma resolução par entre 240 e 16384, ou deixe em branco para automático.';

  @override
  String get videoPosition => 'Posição do vídeo';

  @override
  String
  get aPreviousCompressionWasInterruptedItsTemporaryFilesWereCleanedUpYouCanSelectTheVideoAndTryAgain =>
      'Uma compressão anterior foi interrompida. Os seus ficheiros temporários foram limpos; pode selecionar o vídeo e tentar novamente.';

  @override
  String get dismiss => 'Fechar';

  @override
  String get clearHistory => 'Limpar histórico';

  @override
  String get removeAllHistoryEntriesSavedVideosWillRemainOnYourDevice =>
      'Remover todas as entradas de histórico? Os vídeos guardados permanecerão no seu dispositivo.';

  @override
  String get attempts => 'Tentativas';

  @override
  String get targetSize => 'Tamanho alvo';

  @override
  String get outputResolution => 'Resolução de saída';

  @override
  String get thisVideoCouldNotBeReadChooseAnotherFile =>
      'Não foi possível ler este vídeo. Escolha outro ficheiro.';

  @override
  String get theEncodedVideoFailedVerificationYourOriginalVideoWasNotChanged =>
      'O vídeo codificado falhou na verificação. O seu vídeo original não foi alterado.';

  @override
  String
  get thisDeviceCannotEncodeTheSelectedResolutionOrFrameRateLowerThatSettingAndTryAgain =>
      'Este dispositivo não consegue codificar a resolução ou taxa de fotogramas selecionada. Baixe essa definição e tente novamente.';

  @override
  String
  get thisDeviceCannotDecodeThisAudioFormatForCompressionRemoveAudioOrUseASupportedSource =>
      'Este dispositivo não consegue decodificar este formato de áudio para compressão. Remova o áudio ou utilize uma fonte suportada.';

  @override
  String
  get thisDeviceCannotDecodeThisVideoFormatOrProfileForCompressionChooseAnotherSourceOrDevice =>
      'Este dispositivo não consegue decodificar este formato de vídeo ou perfil de compressão. Escolha outra fonte ou dispositivo.';

  @override
  String get theExportedMP4IsNotReadyForStreamingTryAnotherVideoOrDevice =>
      'O MP4 exportado não está pronto para streaming. Experimente outro vídeo ou dispositivo.';

  @override
  String get thereIsNotEnoughFreeStorageToCompressThisVideo =>
      'Não há armazenamento livre suficiente para comprimir este vídeo.';

  @override
  String get thisDeviceCannotProcessTheSelectedHDRModeTryConvertingToSDR =>
      'Este dispositivo não consegue processar o modo HDR selecionado. Tente converter para SDR.';

  @override
  String get compressionCouldNotBeCompletedTryAnotherSettingOrVideo =>
      'A compressão não pôde ser concluída. Experimente outra configuração ou vídeo.';

  @override
  String get appIdentity => 'Identificação da aplicação';

  @override
  String get appName => 'Nome da aplicação';

  @override
  String get packageName => 'Nome do pacote';

  @override
  String get version => 'Versão';

  @override
  String get buildNumber => 'Número da compilação';

  @override
  String get deviceAndBuild => 'Dispositivo e compilação';

  @override
  String get operatingSystem => 'Sistema operativo';

  @override
  String get osVersion => 'Versão do SO';

  @override
  String get buildMode => 'Modo de compilação';

  @override
  String get debug => 'Depuração';

  @override
  String get release => 'Versão de lançamento';

  @override
  String get builtWith => 'Construído com';

  @override
  String get installation => 'Instalação';

  @override
  String get installedFrom => 'Instalado a partir de';

  @override
  String get installedOn => 'Instalado em';

  @override
  String get updatedOn => 'Atualizado em';

  @override
  String get unavailable => 'Indisponível';

  @override
  String get projectAndSupport => 'Projeto e suporte';

  @override
  String get githubRepository => 'Repositório GitHub';

  @override
  String get viewZumiSourceCode => 'Ver código-fonte do Zumi';

  @override
  String get readTheREADME => 'Ler o README';

  @override
  String get learnAboutZumiOnGitHub => 'Saiba mais sobre o Zumi no GitHub';

  @override
  String get reportAnIssue => 'Reportar um problema';

  @override
  String get viewAndCreateGitHubIssues => 'Ver e criar issues no GitHub';

  @override
  String get latestRelease => 'Última versão';

  @override
  String get viewReleasesAndDownloads => 'Ver versões e downloads';

  @override
  String get supportZumi => 'Suporte ao Zumi';

  @override
  String get openTheOfficialDonationPage => 'Abrir a página oficial de doações';

  @override
  String get couldNotOpenTheLinkPleaseTryAgain =>
      'Não foi possível abrir o link. Por favor, tente novamente.';

  @override
  String get developer => 'Desenvolvedor';

  @override
  String get mostafaSensei => 'Mostafa Sensei';

  @override
  String get githubProfile => 'Perfil GitHub';

  @override
  String get seeProjectsAndContactDetails =>
      'Ver projetos e detalhes de contacto';

  @override
  String get maintenanceInProgress => 'Manutenção em curso';

  @override
  String get zumiIsTemporarilyUnavailablePleaseTryAgainLater =>
      'O Zumi está temporariamente indisponível. Por favor, tente novamente mais tarde.';

  @override
  String get comingSoon => 'Em breve';

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
  String get languageName => 'Português';

  @override
  String get countryCode => 'PT';

  @override
  String countryName(String countryCode) {
    String _temp0 = intl.Intl.selectLogic(countryCode, {
      'AE': 'Emirados Árabes Unidos',
      'AT': 'Áustria',
      'AU': 'Austrália',
      'BE': 'Bélgica',
      'BH': 'Barein',
      'BR': 'Brasil',
      'CA': 'Canadá',
      'CH': 'Suíça',
      'CN': 'China',
      'DE': 'Alemanha',
      'DJ': 'Djibuti',
      'DZ': 'Argélia',
      'EG': 'Egito',
      'ES': 'Espanha',
      'FR': 'França',
      'GB': 'Reino Unido',
      'HK': 'Hong Kong, RAE da China',
      'ID': 'Indonésia',
      'IQ': 'Iraque',
      'IT': 'Itália',
      'JO': 'Jordânia',
      'JP': 'Japão',
      'KM': 'Comores',
      'KR': 'Coreia do Sul',
      'KW': 'Kuwait',
      'LB': 'Líbano',
      'LY': 'Líbia',
      'MA': 'Marrocos',
      'MR': 'Mauritânia',
      'MX': 'México',
      'NL': 'Países Baixos',
      'OM': 'Omã',
      'PL': 'Polônia',
      'PS': 'Territórios palestinos',
      'PT': 'Portugal',
      'QA': 'Catar',
      'RU': 'Rússia',
      'SA': 'Arábia Saudita',
      'SD': 'Sudão',
      'SE': 'Suécia',
      'SG': 'Singapura',
      'SO': 'Somália',
      'SY': 'Síria',
      'TH': 'Tailândia',
      'TN': 'Tunísia',
      'TR': 'Turquia',
      'TW': 'Taiwan',
      'US': 'Estados Unidos',
      'VN': 'Vietnã',
      'YE': 'Iêmen',
      'other': 'País',
    });
    return '$_temp0';
  }
}

/// The translations for Portuguese, as used in Brazil (`pt_BR`).
class AppLocalizationsPtBr extends AppLocalizationsPt {
  AppLocalizationsPtBr() : super('pt_BR');

  @override
  String get zumi => 'Zumi';

  @override
  String get downloadFile => 'Baixar Arquivo';

  @override
  String fileOpenedInBrowser(String fileName) {
    return 'Arquivo aberto no navegador: $fileName';
  }

  @override
  String fileSavedToGallery(String fileName) {
    return 'Arquivo salvo na galeria: $fileName';
  }

  @override
  String fileSavedToDocuments(String fileName) {
    return 'Arquivo salvo nos documentos: $fileName';
  }

  @override
  String get fileIsAlreadySaved => 'Arquivo já está salvo';

  @override
  String get error => 'Erro';

  @override
  String get info => 'Informação';

  @override
  String get success => 'Sucesso';

  @override
  String get warning => 'Aviso';

  @override
  String get paid => 'Pago';

  @override
  String get unpaid => 'Não pago';

  @override
  String get partial => 'Parcial';

  @override
  String get addressLineCannotBeEmpty =>
      'A linha do endereço não pode estar vazia';

  @override
  String get addressLineIsTooLong => 'A linha do endereço é muito longa';

  @override
  String get specialCharactersAreNotAllowed =>
      'Caracteres especiais não são permitidos';

  @override
  String get emojisAreNotAllowed => 'Emojis não são permitidos';

  @override
  String get cityCannotBeEmpty => 'A cidade não pode estar vazia';

  @override
  String get cityNameIsTooLong => 'O nome da cidade é muito longo';

  @override
  String get cityContainsInvalidSpecialCharacters =>
      'A cidade contém caracteres especiais inválidos';

  @override
  String get addressLabelCannotBeEmpty =>
      'O rótulo do endereço não pode estar vazio';

  @override
  String get addressLabelIsTooLong => 'O rótulo do endereço é muito longo';

  @override
  String get emailCannotBeEmpty => 'O e-mail não pode estar vazio';

  @override
  String get invalidEmailFormat => 'Formato de e-mail inválido';

  @override
  String get emailContainsInvalidCharacters =>
      'O email contém caracteres inválidos';

  @override
  String get emailMustContain => 'O email deve conter @';

  @override
  String get emailMustBeInLowercase =>
      'O email deve estar em letras minúsculas';

  @override
  String get arabicCharactersAreNotAllowed =>
      'Caracteres árabes não são permitidos';

  @override
  String get emojisAreNotAllowedInEmail => 'Emojis não são permitidos no email';

  @override
  String get phoneNumberCannotBeEmpty =>
      'O número de telefone não pode estar vazio';

  @override
  String get invalidPhoneNumber => 'Número de telefone inválido';

  @override
  String get phoneNumberMustBeAtLeast11Digits =>
      'O número de telefone deve ter pelo menos 11 dígitos';

  @override
  String get nameCannotBeEmpty => 'O nome não pode estar vazio';

  @override
  String get invalidName => 'Nome inválido';

  @override
  String get nameMustBeAtLeast3Characters =>
      'O nome deve ter pelo menos 3 caracteres';

  @override
  String get nameCannotExceed20Characters =>
      'O nome não pode exceder 20 caracteres';

  @override
  String get nameContainsInvalidSpecialCharacters =>
      'O nome contém caracteres especiais inválidos';

  @override
  String get emojisAreNotAllowedInName => 'Emojis não são permitidos no nome';

  @override
  String get passwordCannotBeEmpty => 'A senha não pode estar vazia';

  @override
  String get passwordMustContainUppercaseLowercaseNumberAndSpecialCharacter =>
      'A senha deve conter letra maiúscula, letra minúscula, número e caractere especial';

  @override
  String get passwordMustBeAtLeast8CharactersLong =>
      'A senha deve ter pelo menos 8 caracteres';

  @override
  String get noInternetConnection => 'Sem conexão com a internet';

  @override
  String get internetConnectionRestored =>
      'Conexão com a internet restabelecida';

  @override
  String get retry => 'Tentar novamente';

  @override
  String get cancel => 'Cancelar';

  @override
  String get confirm => 'Confirmar';

  @override
  String get pleaseWait => 'Aguarde...';

  @override
  String get ok => 'OK';

  @override
  String get compressVideosPrivatelyOnYourDevice =>
      'Comprima vídeos com privacidade no seu dispositivo.';

  @override
  String get welcomeToZumi => 'Bem-vindo ao Zumi';

  @override
  String get learnHowZumiCompressesYourVideosWithoutEverLeavingYourPhone =>
      'Aprenda como o Zumi comprime seus vídeos sem nunca sair do seu telefone.';

  @override
  String get signIn => 'Entrar';

  @override
  String get signInToSyncYourPlanAndKeepYourPurchasesAvailableOnEveryDevice =>
      'Faça login para sincronizar seu plano e manter suas compras disponíveis em todos os dispositivos.';

  @override
  String get chooseAVideo => 'Escolher um vídeo';

  @override
  String get pickAVideoFromYourGalleryToStartCompressing =>
      'Escolha um vídeo da sua galeria para começar a comprimir.';

  @override
  String get compressionSetup => 'Configuração de compressão';

  @override
  String get chooseResolutionBitrateAndOutputFormatBeforeYouStart =>
      'Escolha a resolução, taxa de bits e formato de saída antes de começar.';

  @override
  String get compressing => 'Comprimindo';

  @override
  String get followTheLiveProgressOfYourCompressionJob =>
      'Acompanhe o progresso ao vivo do seu trabalho de compressão.';

  @override
  String get compressionResult => 'Resultado da compressão';

  @override
  String get compareTheBeforeAndAfterSizeThenSaveOrShareTheResult =>
      'Compare o tamanho antes e depois, e então salve ou compartilhe o resultado.';

  @override
  String get compressionHistory => 'Histórico de compressão';

  @override
  String get reviewTheVideosYouHaveCompressedOnThisDevice =>
      'Revise os vídeos que você comprimuiu neste dispositivo.';

  @override
  String get settings => 'Configurações';

  @override
  String get appearance => 'Aparência';

  @override
  String get themeColorSchemeAndMotionPreferences =>
      'Tema, esquema de cores e preferências de movimento.';

  @override
  String get language => 'Idioma';

  @override
  String get appLanguageAndTextDirection =>
      'Idioma do aplicativo e direção do texto.';

  @override
  String get compressionDefaults => 'Padrões de compressão';

  @override
  String get defaultResolutionBitrateAndOutputFormat =>
      'Resolução, taxa de bits e formato de saída padrão.';

  @override
  String get storageCleanup => 'Armazenamento e limpeza';

  @override
  String get storageUsageCacheSizeAndTemporaryFileCleanup =>
      'Uso de armazenamento, tamanho do cache e limpeza de arquivos temporários.';

  @override
  String get notifications => 'Notificações';

  @override
  String get jobCompletionAndProductUpdateNotifications =>
      'Notificações de conclusão de tarefas e atualização de produtos.';

  @override
  String get privacy => 'Privacidade';

  @override
  String get onDeviceProcessingLocalLogsAndOptionalCrashReports =>
      'Processamento no dispositivo, logs locais e relatórios de falhas opcionais.';

  @override
  String get aboutZumi => 'Sobre o Zumi';

  @override
  String get versionBuildNumberAndApplicationDetails =>
      'Versão, número de compilação e detalhes do aplicativo.';

  @override
  String get aboutTheDeveloper => 'Sobre o desenvolvedor';

  @override
  String get theDeveloperAndToolsBehindZumi =>
      'O desenvolvedor e as ferramentas por trás do Zumi.';

  @override
  String get openSourceLicenses => 'Licenças de código aberto';

  @override
  String get openSourcePackagesBundledWithZumi =>
      'Pacotes de código aberto incluídos no Zumi.';

  @override
  String get privacyPolicy => 'Política de privacidade';

  @override
  String get howZumiHandlesYourVideosAndData =>
      'Como o Zumi lida com seus vídeos e dados.';

  @override
  String get termsOfService => 'Termos de serviço';

  @override
  String get theTermsThatApplyToZumiAndItsPurchases =>
      'Os termos que se aplicam ao Zumi e suas compras.';

  @override
  String get dataSafety => 'Segurança dos dados';

  @override
  String get summaryOfTheDataZumiCollectsAndWhy =>
      'Resumo dos dados que a Zumi coleta e por quê.';

  @override
  String get permissions => 'Permissões';

  @override
  String get runtimePermissionsZumiRequestsAndWhyEachIsNeeded =>
      'Permissões em tempo de execução que a Zumi solicita e por que cada uma é necessária.';

  @override
  String get faq => 'FAQ';

  @override
  String get answersToCommonQuestionsAboutCompressionAndBilling =>
      'Respostas para perguntas comuns sobre compressão e cobrança.';

  @override
  String get support => 'Suporte';

  @override
  String get getHelpWithYourAccountOrAPurchase =>
      'Obtenha ajuda com sua conta ou uma compra.';

  @override
  String get sendFeedback => 'Enviar feedback';

  @override
  String get reportAProblemOrSuggestAnImprovement =>
      'Relatar um problema ou sugerir uma melhoria.';

  @override
  String get plans => 'Planos';

  @override
  String get comparePlansAndSeeWhatEachOneUnlocks =>
      'Compare os planos e veja o que cada um desbloqueia.';

  @override
  String get planDetails => 'Detalhes do plano';

  @override
  String get benefitsLimitsAndPricingForThisPlan =>
      'Benefícios, limites e preços deste plano.';

  @override
  String get paymentMethods => 'Métodos de pagamento';

  @override
  String get supportedWaysToPayIncludingStoreBilling =>
      'Formas de pagamento suportadas, incluindo cobrança na loja.';

  @override
  String get restorePurchases => 'Restaurar compras';

  @override
  String get reApplyAPurchaseMadeOnAnotherDevice =>
      'Reaplicar uma compra feita em outro dispositivo.';

  @override
  String get profile => 'Perfil';

  @override
  String get yourIdentityPlanStatusAndAccountPreferences =>
      'Sua identidade, status do plano e preferências da conta.';

  @override
  String get deleteAccount => 'Excluir conta';

  @override
  String get permanentlyRemoveYourAccountAndItsServerSideData =>
      'Remova permanentemente sua conta e os dados no servidor.';

  @override
  String get rateZumi => 'Avaliar Zumi';

  @override
  String get tellOthersHowZumiWorkedForYouOnTheStore =>
      'Conte aos outros como o Zumi funcionou para você na loja.';

  @override
  String get shareZumi => 'Compartilhar Zumi';

  @override
  String get recommendZumiToAFriend => 'Recomende o Zumi a um amigo.';

  @override
  String get appearanceLanguage => 'Aparência e idioma';

  @override
  String get compression => 'Compressão';

  @override
  String get onDeviceAI => 'IA no dispositivo';

  @override
  String get notificationsPrivacy => 'Notificações e privacidade';

  @override
  String get plansPurchases => 'Planos e compras';

  @override
  String get about => 'Sobre';

  @override
  String get legal => 'Legal';

  @override
  String get helpFeedback => 'Ajuda e feedback';

  @override
  String get account => 'Conta';

  @override
  String get themeAndAppLanguage => 'Tema e idioma do aplicativo';

  @override
  String get appLanguageAndDirection => 'Idioma e direção do aplicativo';

  @override
  String get defaultQualityAndFormat => 'Qualidade e formato padrão';

  @override
  String get cacheAndStorageUsage => 'Uso de cache e armazenamento';

  @override
  String get aiSettings => 'Configurações de IA';

  @override
  String get zumiAssistant => 'Assistente Zumi';

  @override
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere =>
      'Um assistente privado para seus vídeos chegará em breve. Você poderá perguntar sobre compressão, organização e vídeos salvos aqui.';

  @override
  String get localModelsAndSmartTools =>
      'Modelos locais e ferramentas inteligentes';

  @override
  String get exploreLocalModelsAndFutureAIToolsTheseOptionsAreNotActiveYet =>
      'Explore modelos locais e futuras ferramentas de IA. Essas opções ainda não estão ativas.';

  @override
  String get localModels => 'Modelos locais';

  @override
  String get browseAndDownloadSupportedModels =>
      'Navegue e baixe modelos suportados';

  @override
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere =>
      'Escolha um modelo compatível, baixe-o para este dispositivo e gerencie os modelos instalados aqui.';

  @override
  String get importAModel => 'Importar um modelo';

  @override
  String get useACompatibleModelFromYourFiles =>
      'Use um modelo compatível a partir de seus arquivos';

  @override
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt =>
      'Selecione um arquivo de modelo local compatível e revise seus requisitos antes de usá-lo.';

  @override
  String get smartFeatures => 'Recursos inteligentes';

  @override
  String get compressionOrganizationAndSearch =>
      'Compactação, organização e pesquisa';

  @override
  String
  get chooseWhichLocalAISuggestionsToUseForVideoCompressionOrganizationNamingAndSearch =>
      'Escolha quais sugestões de IA local usar para compactação de vídeo, organização, nomenclatura e pesquisa.';

  @override
  String get modelPerformance => 'Desempenho do modelo';

  @override
  String get processingAndResourcePreferences =>
      'Preferências de processamento e recursos';

  @override
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels =>
      'Controle o backend de processamento e os limites de recursos para modelos suportados.';

  @override
  String get conversationSettings => 'Configurações de conversa';

  @override
  String get streamingThinkingAndResponseLength =>
      'Transmissão, raciocínio e comprimento da resposta';

  @override
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits =>
      'Configure como o assistente responde, incluindo streaming, modo de pensamento, amostragem e limites de respostas.';

  @override
  String get imagesAndAudio => 'Imagens e áudio';

  @override
  String get controlMultimodalInputs => 'Controle entradas multimodais';

  @override
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos =>
      'Escolha se modelos compatíveis podem analisar imagens selecionadas e áudio dos seus vídeos.';

  @override
  String get semanticSearch => 'Busca semântica';

  @override
  String get embeddingsAndLocalIndexing => 'Incorporações e indexação local';

  @override
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning =>
      'Gerencie o modelo de incorporação local e o índice de busca para encontrar vídeos e momentos por significado.';

  @override
  String get toolsAndStructuredOutput => 'Ferramentas e saída estruturada';

  @override
  String get actionsSchemasAndConfirmations => 'Ações, esquemas e confirmações';

  @override
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation =>
      'Gerencie ações de assistente suportadas e respostas estruturadas. Ações que afetam arquivos exigirão sua confirmação.';

  @override
  String get models => 'Modelos';

  @override
  String get assistantExperience => 'Experiência do assistente';

  @override
  String get smartCapabilities => 'Capacidades inteligentes';

  @override
  String get performance => 'Desempenho';

  @override
  String get yourCompressedVideoHistory =>
      'Seu histórico de vídeos compactados';

  @override
  String get completionAndUpdateAlerts => 'Alertas de conclusão e atualização';

  @override
  String get yourDataStaysLocal => 'Seus dados permanecem locais';

  @override
  String get comparePlansAndUpgrade => 'Compare planos e faça upgrade';

  @override
  String get paymentMethodsAndBilling => 'Métodos de pagamento e faturamento';

  @override
  String get restoreYourPreviousPurchase => 'Restaure sua compra anterior';

  @override
  String get versionAndBuildDetails => 'Detalhes de versão e build';

  @override
  String get theDeveloperBehindZumi => 'O desenvolvedor por trás do Zumi';

  @override
  String get openSourcePackageLicenses =>
      'Licenças de pacotes de código aberto';

  @override
  String get howDataIsHandled => 'Como os dados são tratados';

  @override
  String get rulesForUsingZumi => 'Regras para usar o Zumi';

  @override
  String get whatDataWeCollect => 'Quais dados coletamos';

  @override
  String get whyWeNeedPermissions => 'Por que precisamos de permissões';

  @override
  String get answersToCommonQuestions => 'Respostas a perguntas comuns';

  @override
  String get reachTheDeveloperDirectly =>
      'Entre em contato diretamente com o desenvolvedor';

  @override
  String get sendUsYourFeedback => 'Envie-nos seu feedback';

  @override
  String get pickVideo => 'Escolher vídeo';

  @override
  String get targetSizeMB => 'Tamanho alvo (MB)';

  @override
  String get startCompression => 'Iniciar compressão';

  @override
  String get pause => 'Pausar';

  @override
  String get resume => 'Retomar';

  @override
  String get viewResult => 'Ver resultado';

  @override
  String get saveToGallery => 'Salvar na galeria';

  @override
  String get shareVideo => 'Compartilhar vídeo';

  @override
  String get originalSize => 'Tamanho original';

  @override
  String get outputSize => 'Tamanho de saída';

  @override
  String get noCompressedVideosYet => 'Nenhum vídeo comprimido ainda';

  @override
  String get savedToGallery => 'Salvo na galeria';

  @override
  String get enterATargetSizeGreaterThanZero =>
      'Digite um tamanho alvo maior que zero';

  @override
  String get compressionCancelled => 'Compressão cancelada';

  @override
  String get thisVideoCouldNotReachTheSelectedSizeTryALargerTargetSize =>
      'Este vídeo não pôde atingir o tamanho selecionado. Tente um tamanho alvo maior.';

  @override
  String get theSelectedSizeIsTooSmallForThisVideoChooseALargerSize =>
      'O tamanho selecionado é muito pequeno para este vídeo. Escolha um tamanho maior.';

  @override
  String get originalPreview => 'Visualização original';

  @override
  String get compressedPreview => 'Visualização comprimida';

  @override
  String get targetPreset => 'Predefinição de destino';

  @override
  String get customSize => 'Tamanho personalizado';

  @override
  String get previewUnavailable => 'Pré-visualização indisponível';

  @override
  String get advancedControls => 'Controles avançados';

  @override
  String get automatic => 'Automático';

  @override
  String get maximumResolution => 'Resolução máxima';

  @override
  String get originalResolution => 'Resolução original';

  @override
  String get maximumFrameRate => 'Taxa de quadros máxima';

  @override
  String get audioBitrate => 'Taxa de bits de áudio';

  @override
  String get removeAudio => 'Remover áudio';

  @override
  String get videoBitrateCeilingKbps => 'Teto de taxa de bits de vídeo (kbps)';

  @override
  String get hdrHandling => 'Manipulação de HDR';

  @override
  String get convertToSDR => 'Converter para SDR';

  @override
  String get keepHDRWhenSupported => 'Manter HDR quando suportado';

  @override
  String get beforeYouStart => 'Antes de começar';

  @override
  String get calculatingCompressionPlan => 'Calculando plano de compressão…';

  @override
  String get plannedResolution => 'Resolução planejada';

  @override
  String get plannedVideoBitrate => 'Taxa de bits de vídeo planejada';

  @override
  String get plannedAudioBitrate => 'Taxa de bits de áudio planejada';

  @override
  String
  get reEncodingConvertsAudioToAACStereoDolbyAtmosAndDTSSpatialAudioWillNotBePreserved =>
      'A recodificação converte o áudio para AAC estéreo. Dolby Atmos e áudio espacial DTS não serão preservados.';

  @override
  String
  get thisTargetIsTooSmallForAUsableVideoIncreaseTheSizeOrLowerOtherLimits =>
      'Este alvo é pequeno demais para um vídeo utilizável. Aumente o tamanho ou reduza outros limites.';

  @override
  String get theSelectedTargetMayReduceVideoQuality =>
      'O alvo selecionado pode reduzir a qualidade do vídeo.';

  @override
  String get theSourceIsAlreadyWithinTheSizeLimit =>
      'A fonte já está dentro do limite de tamanho.';

  @override
  String get enterABitrateOfAtLeast150KbpsOrLeaveBlankForAutomatic =>
      'Digite uma taxa de bits de pelo menos 150 kbps, ou deixe em branco para automático.';

  @override
  String get enterAnEvenResolutionFrom240To16384OrLeaveBlankForAutomatic =>
      'Digite uma resolução par de 240 a 16384, ou deixe em branco para automático.';

  @override
  String get videoPosition => 'Posição do vídeo';

  @override
  String
  get aPreviousCompressionWasInterruptedItsTemporaryFilesWereCleanedUpYouCanSelectTheVideoAndTryAgain =>
      'Uma compressão anterior foi interrompida. Seus arquivos temporários foram limpos; você pode selecionar o vídeo e tentar novamente.';

  @override
  String get dismiss => 'Fechar';

  @override
  String get clearHistory => 'Limpar histórico';

  @override
  String get removeAllHistoryEntriesSavedVideosWillRemainOnYourDevice =>
      'Remover todos os registros de histórico? Os vídeos salvos permanecerão no seu dispositivo.';

  @override
  String get attempts => 'Tentativas';

  @override
  String get targetSize => 'Tamanho alvo';

  @override
  String get outputResolution => 'Resolução de saída';

  @override
  String get thisVideoCouldNotBeReadChooseAnotherFile =>
      'Este vídeo não pôde ser lido. Escolha outro arquivo.';

  @override
  String get theEncodedVideoFailedVerificationYourOriginalVideoWasNotChanged =>
      'O vídeo codificado falhou na verificação. Seu vídeo original não foi alterado.';

  @override
  String
  get thisDeviceCannotEncodeTheSelectedResolutionOrFrameRateLowerThatSettingAndTryAgain =>
      'Este dispositivo não pode codificar a resolução ou taxa de quadros selecionada. Reduza essa configuração e tente novamente.';

  @override
  String
  get thisDeviceCannotDecodeThisAudioFormatForCompressionRemoveAudioOrUseASupportedSource =>
      'Este dispositivo não pode decodificar este formato de áudio para compressão. Remova o áudio ou use uma fonte suportada.';

  @override
  String
  get thisDeviceCannotDecodeThisVideoFormatOrProfileForCompressionChooseAnotherSourceOrDevice =>
      'Este dispositivo não pode decodificar este formato de vídeo ou perfil de compressão. Escolha outra fonte ou dispositivo.';

  @override
  String get theExportedMP4IsNotReadyForStreamingTryAnotherVideoOrDevice =>
      'O MP4 exportado não está pronto para streaming. Tente outro vídeo ou dispositivo.';

  @override
  String get thereIsNotEnoughFreeStorageToCompressThisVideo =>
      'Não há armazenamento livre suficiente para comprimir este vídeo.';

  @override
  String get thisDeviceCannotProcessTheSelectedHDRModeTryConvertingToSDR =>
      'Este dispositivo não pode processar o modo HDR selecionado. Tente converter para SDR.';

  @override
  String get compressionCouldNotBeCompletedTryAnotherSettingOrVideo =>
      'A compressão não pôde ser concluída. Tente outra configuração ou vídeo.';

  @override
  String get appIdentity => 'Identificação do aplicativo';

  @override
  String get appName => 'Nome do aplicativo';

  @override
  String get packageName => 'Nome do pacote';

  @override
  String get version => 'Versão';

  @override
  String get buildNumber => 'Número da compilação';

  @override
  String get deviceAndBuild => 'Dispositivo e compilação';

  @override
  String get operatingSystem => 'Sistema operacional';

  @override
  String get osVersion => 'Versão do SO';

  @override
  String get buildMode => 'Modo de compilação';

  @override
  String get debug => 'Depuração';

  @override
  String get release => 'Release';

  @override
  String get builtWith => 'Construído com';

  @override
  String get installation => 'Instalação';

  @override
  String get installedFrom => 'Instalado de';

  @override
  String get installedOn => 'Instalado em';

  @override
  String get updatedOn => 'Atualizado em';

  @override
  String get unavailable => 'Indisponível';

  @override
  String get projectAndSupport => 'Projeto e suporte';

  @override
  String get githubRepository => 'Repositório no GitHub';

  @override
  String get viewZumiSourceCode => 'Ver código-fonte do Zumi';

  @override
  String get readTheREADME => 'Ler o README';

  @override
  String get learnAboutZumiOnGitHub => 'Saiba sobre o Zumi no GitHub';

  @override
  String get reportAnIssue => 'Reportar um problema';

  @override
  String get viewAndCreateGitHubIssues => 'Ver e criar issues no GitHub';

  @override
  String get latestRelease => 'Última versão';

  @override
  String get viewReleasesAndDownloads => 'Ver lançamentos e downloads';

  @override
  String get supportZumi => 'Apoiar o Zumi';

  @override
  String get openTheOfficialDonationPage => 'Abrir a página oficial de doações';

  @override
  String get couldNotOpenTheLinkPleaseTryAgain =>
      'Não foi possível abrir o link. Por favor, tente novamente.';

  @override
  String get developer => 'Desenvolvedor';

  @override
  String get mostafaSensei => 'Mostafa Sensei';

  @override
  String get githubProfile => 'Perfil no GitHub';

  @override
  String get seeProjectsAndContactDetails =>
      'Ver projetos e detalhes de contato';

  @override
  String get maintenanceInProgress => 'Manutenção em andamento';

  @override
  String get zumiIsTemporarilyUnavailablePleaseTryAgainLater =>
      'O Zumi está temporariamente indisponível. Por favor, tente novamente mais tarde.';

  @override
  String get comingSoon => 'Em breve';

  @override
  String get languageName => 'Português';

  @override
  String get countryCode => 'BR';

  @override
  String countryName(String countryCode) {
    String _temp0 = intl.Intl.selectLogic(countryCode, {
      'AE': 'Emirados Árabes Unidos',
      'AT': 'Áustria',
      'AU': 'Austrália',
      'BE': 'Bélgica',
      'BH': 'Barein',
      'BR': 'Brasil',
      'CA': 'Canadá',
      'CH': 'Suíça',
      'CN': 'China',
      'DE': 'Alemanha',
      'DJ': 'Djibuti',
      'DZ': 'Argélia',
      'EG': 'Egito',
      'ES': 'Espanha',
      'FR': 'França',
      'GB': 'Reino Unido',
      'HK': 'Hong Kong, RAE da China',
      'ID': 'Indonésia',
      'IQ': 'Iraque',
      'IT': 'Itália',
      'JO': 'Jordânia',
      'JP': 'Japão',
      'KM': 'Comores',
      'KR': 'Coreia do Sul',
      'KW': 'Kuwait',
      'LB': 'Líbano',
      'LY': 'Líbia',
      'MA': 'Marrocos',
      'MR': 'Mauritânia',
      'MX': 'México',
      'NL': 'Países Baixos',
      'OM': 'Omã',
      'PL': 'Polônia',
      'PS': 'Territórios palestinos',
      'PT': 'Portugal',
      'QA': 'Catar',
      'RU': 'Rússia',
      'SA': 'Arábia Saudita',
      'SD': 'Sudão',
      'SE': 'Suécia',
      'SG': 'Singapura',
      'SO': 'Somália',
      'SY': 'Síria',
      'TH': 'Tailândia',
      'TN': 'Tunísia',
      'TR': 'Turquia',
      'TW': 'Taiwan',
      'US': 'Estados Unidos',
      'VN': 'Vietnã',
      'YE': 'Iêmen',
      'other': 'País',
    });
    return '$_temp0';
  }
}
