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
  String get confirm => 'Confirmar';

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
      'Custom compression, sharing presets, on-device AI tools, and loyalty savings.';

  @override
  String get pleaseWait => 'Por favor, aguarde...';

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
  String get proBenefitsTitle => 'Pro features';

  @override
  String get proCustomCompressionGroup => 'Custom compression';

  @override
  String get proSharingPresetsGroup => 'Exclusive sharing presets';

  @override
  String get proAiGroupTitle => 'On-device AI toolkit';

  @override
  String get proLoyaltyGroup => 'Loyalty savings';

  @override
  String get proCustomSizeBenefit =>
      'Set a precise maximum size for every video export.';

  @override
  String get proResolutionBenefit =>
      'Choose output resolution from 240p to source quality.';

  @override
  String get proFrameRateBenefit => 'Cap exports at 24, 30, 60, or 120 fps.';

  @override
  String get proVideoBitrateBenefit =>
      'Control the maximum video bitrate on Android.';

  @override
  String get proAudioBitrateBenefit =>
      'Choose audio bitrate or remove audio entirely.';

  @override
  String get proDiscordBenefit =>
      'Export videos within Discord size and encoding limits.';

  @override
  String get proYouTubeShortsBenefit =>
      'Prepare vertical videos for YouTube Shorts limits.';

  @override
  String get proAiAssistantBenefit =>
      'Get AI guidance for compression and app features.';

  @override
  String get proAiSceneBenefit =>
      'Understand video scenes with on-device AI analysis.';

  @override
  String get proAiTranscriptionBenefit =>
      'Transcribe speech and find moments by meaning.';

  @override
  String get proLoyaltyBenefit =>
      'Earn monthly loyalty discounts up to thirty percent.';

  @override
  String get proCustomSizeTitle => 'Choose a target file size';

  @override
  String get proCustomSizeDetails =>
      'Set a precise size ceiling for each custom compression.';

  @override
  String get proResolutionTitle => 'Set maximum resolution';

  @override
  String get proResolutionDetails =>
      'Limit output resolution from 240p up to the source size.';

  @override
  String get proFrameRateTitle => 'Control maximum frame rate';

  @override
  String get proFrameRateDetails =>
      'Choose a 24, 30, 60, or 120 fps output cap on Android.';

  @override
  String get proVideoBitrateTitle => 'Set a video bitrate ceiling';

  @override
  String get proVideoBitrateDetails =>
      'Set the maximum video bitrate on Android.';

  @override
  String get proAudioBitrateTitle => 'Choose audio quality';

  @override
  String get proAudioBitrateDetails =>
      'Pick an audio bitrate or remove audio on Android.';

  @override
  String get proDiscordTitle => 'Discord-targeted export';

  @override
  String get proDiscordDetails =>
      'Use a preset tuned to Discord size and encoding limits.';

  @override
  String get proYouTubeShortsTitle => 'YouTube Shorts export';

  @override
  String get proYouTubeShortsDetails =>
      'Use Shorts size, resolution, and frame-rate limits.';

  @override
  String get proAiAssistantTitle => 'AI assistant';

  @override
  String get proAiAssistantDetails =>
      'Get help with video compression and app features.';

  @override
  String get proAiSceneTitle => 'Scene understanding';

  @override
  String get proAiSceneDetails =>
      'Explore video content with on-device AI analysis.';

  @override
  String get proAiTranscriptionTitle => 'Transcription and search';

  @override
  String get proAiTranscriptionDetails =>
      'Transcribe speech and find moments by meaning.';

  @override
  String get proLoyaltyTitle => 'Monthly loyalty discount';

  @override
  String get proLoyaltyDetails => 'Earn 2% per consecutive month, up to 30%.';

  @override
  String get proPlatformAvailabilityNote =>
      'Advanced resolution, frame-rate, and bitrate controls are available on Android. Export limits depend on device support.';

  @override
  String get proAiAvailabilityNote =>
      'AI features require a compatible on-device model.';

  @override
  String get loyaltySavingsTitle => 'Loyalty savings';

  @override
  String get loyaltyProgressLabel => 'Progress toward your next discount';

  @override
  String get subscriptionSecureBilling =>
      'Secure billing through your app store';

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
  String get openSourceLicenses => 'Licenças de código aberto';

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
  String get nativeRustEngineSpeed => 'Native Rust engine speed';

  @override
  String
  get engineeredWithRustAndNativeGpuAccelerationForLightningFastCompressionAndLowBatteryDraw =>
      'Engineered with Rust and native GPU acceleration for lightning-fast compression and low battery draw.';

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
  String get zumiIsStudyingThePlatformAlgorithmAndCalculatingTheBudget =>
      '🐾 Zumi is studying the platform\'s algorithm and calculating the budget...';

  @override
  String get customControlMode => 'Custom control mode';

  @override
  String
  get youSetTheTargetSizeManuallyTheEngineWillApplyTheHighestPossibleQualityWithinThatCap =>
      'You set the target size manually. The engine will apply the highest possible resolution and quality within that cap.';

  @override
  String zumiIsPuzzledAnImpossibleTargetForTheNameCap(String name) {
    return 'Zumi is puzzled (impossible target for the $name cap)';
  }

  @override
  String
  theVideoIsTooLongToFitWithinTheSizeCapWithoutSevereDistortionWeSuggestTrimmingTheVideoOrChoosingAnotherPlatformWithAHigherCap(
    String size,
  ) {
    return 'The video is too long to fit within the $size cap without severe image distortion. We suggest trimming the video or choosing another platform with a higher cap.';
  }

  @override
  String get zumiAlertProtectingQualityFromDistortion =>
      'Zumi alert: protecting quality from distortion';

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
      '1. Acceptance of Terms\nBy downloading, accessing, or using Zumi (\"the Application\"), you agree to be bound by these Terms of Service. If you disagree with any part of these terms, you must discontinue using the application.\n\n2. Personal License\nWe grant you a personal, revocable, non-exclusive, non-transferable license to use Zumi strictly for your personal, non-commercial, or internal creative media compression workflows on compatible devices.\n\n3. On-Device Execution & Content Ownership\nZumi executes compression pipelines exclusively on your device hardware using local encoders. You retain 100% of all intellectual property rights and copyrights in and to your video files and media. Zumi never uploads, hosts, replicates, or claims ownership over any videos you select or process. You are solely responsible for ensuring you have all requisite permissions and licenses for any media you compress.\n\n4. In-App Subscriptions & Billing\nOptional premium features (such as Zumi Pro) may be offered as recurring subscriptions or one-time unlock purchases. All billing, renewals, cancellations, and tax collections are processed exclusively through the official platform store (Google Play or Apple App Store). Subscriptions renew automatically unless cancelled at least 24 hours prior to the conclusion of the active billing cycle.\n\n5. Disclaimer of Warranties\nThe Application is provided \"as is\" and \"as available,\" without warranty of any kind, express or implied. While we employ rigorous testing and standard-compliant codecs, we do not guarantee that media compression will achieve specific file reduction percentages without visual changes for every source codec.\n';

  @override
  String get termsCopiedToClipboard => 'Terms copied to clipboard';

  @override
  String get termsAcceptanceLicenseTitle => '1. Acceptance & License';

  @override
  String get termsAcceptanceLicenseBody =>
      'By using Zumi, you agree to these Terms. We grant you a personal, non-exclusive, non-transferable license to compress media locally on your devices.';

  @override
  String get termsContentOwnershipTitle => '2. 100% Content Ownership';

  @override
  String get termsContentOwnershipBody =>
      'You retain all copyrights and ownership over your videos. Zumi does not transmit, store, or claim any rights to your media files.';

  @override
  String get termsLocalOnDeviceProcessingTitle =>
      '3. Local On-Device Processing';

  @override
  String get termsLocalOnDeviceProcessingBody =>
      'All compression pipelines run completely on your device hardware without external server dependencies or remote media processing.';

  @override
  String get termsSubscriptionsAndBillingTitle => '4. Subscriptions & Billing';

  @override
  String get termsSubscriptionsAndBillingBody =>
      'Purchases and subscriptions are managed securely via official Google Play and Apple App Store billing. Cancellations can be performed anytime in your store account.';

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
  String get financialInfoAndPayment => 'Financial Info & Payment';

  @override
  String
  get allPaymentDetailsAreHandledDirectlyByGooglePlayStoreOrAppleAppStoreZumiNeverAccessesCardDetails =>
      'All payment details are handled directly by Google Play Store or Apple App Store. Zumi never accesses card details.';

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
  String get dataEncryptedInTransitStorePurchases =>
      'Data encrypted in transit (store purchases)';

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
      'Zumi was built with a fundamental architectural guarantee: your videos, clips, and audio tracks are encoded exclusively on your device hardware using local native codecs. At no point is your media streamed, stored, or processed on external cloud infrastructure.';

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
  String get thirdPartyStorePaymentsTitle => '4. Third-Party Store Payments';

  @override
  String get thirdPartyStorePaymentsBody =>
      'Subscription and in-app purchase operations are executed directly through the official Apple App Store or Google Play Store. Zumi does not process or retain your credit card or financial billing information.';

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
  String get zumiBitrateOptimizer => 'Zumi Bitrate Optimizer (0.2B)';

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
  String get privacyPolicySummary => 'How Zumi handles data';

  @override
  String get dataSafetySummary => 'Collected data and purpose';

  @override
  String get permissionsSummary => 'Why Zumi needs access';

  @override
  String get supportedPaymentOptions => 'Supported Payment Options';

  @override
  String get paymentProtectionTitle => 'Protection & Safety Guarantee';

  @override
  String get storeBillingTitle => 'App Store / Google Play Billing';

  @override
  String get storeBillingSummary => 'Secure store checkout';

  @override
  String get storeBillingDetails =>
      'Purchases are completed securely through your device’s official app store account. Payment is authenticated using the security options configured on your device.';

  @override
  String get creditDebitCardsTitle => 'Credit & Debit Cards';

  @override
  String get creditDebitCardsSummary => 'Cards through your store';

  @override
  String get creditDebitCardsDetails =>
      'Use a card saved to your Google Play or Apple App Store account. The store processes the payment, so Zumi never receives your card number.';

  @override
  String get storeBalanceGiftCardsTitle => 'Store Balance & Gift Cards';

  @override
  String get storeBalanceGiftCardsSummary => 'Redeem store credit';

  @override
  String get storeBalanceGiftCardsDetails =>
      'Use eligible store balance, redeemed gift cards, or promotional credit toward a Zumi subscription. Availability depends on your store and region.';

  @override
  String get digitalWalletsTitle => 'Digital Wallets & Local Methods';

  @override
  String get digitalWalletsSummary => 'Store-supported payment methods';

  @override
  String get digitalWalletsDetails =>
      'Your store may offer Google Pay, Apple Pay, PayPal, or regional payment methods. Available options depend on your account, device, and region.';

  @override
  String get storeProtectedPurchases => 'Store-Protected Purchases';

  @override
  String get storeProtectedPurchasesSummary => 'Billing stays with stores';

  @override
  String get storeProtectedPurchasesDetails =>
      'Zumi never sees or retains your financial billing data. Google Play or Apple App Store authenticates and encrypts every transaction. You can cancel anytime through your store account, without hidden fees.';
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
  String get confirm => 'Confirmar';

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
  String get pleaseWait => 'Aguarde...';

  @override
  String get cancel => 'Cancelar';

  @override
  String get openSourceLicenses => 'Licenças de código aberto';

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
