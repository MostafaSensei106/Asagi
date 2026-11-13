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
  String fileSavedToDcim(String fileName) {
    return 'Ficheiro guardado na galeria: $fileName';
  }

  @override
  String fileSavedToDocuments(String fileName) {
    return 'Ficheiro guardado nos documentos: $fileName';
  }

  @override
  String get fileAlreadySaved => 'O ficheiro já está guardado';

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
  String get error_address_line_cant_be_empty =>
      'A linha de endereço não pode estar vazia';

  @override
  String get error_address_line_too_long =>
      'A linha de endereço é demasiado longa';

  @override
  String get error_address_invalid_special_characters =>
      'Não são permitidos caracteres especiais';

  @override
  String get error_address_emoji_not_allowed => 'Emojis não são permitidos';

  @override
  String get error_city_cant_be_empty => 'A cidade não pode estar vazia';

  @override
  String get error_city_too_long => 'O nome da cidade é demasiado longo';

  @override
  String get error_city_invalid_special_characters =>
      'A cidade contém caracteres especiais inválidos';

  @override
  String get error_address_label_cant_be_empty =>
      'O rótulo do endereço não pode estar vazio';

  @override
  String get error_address_label_too_long =>
      'O rótulo do endereço é demasiado longo';

  @override
  String get error_email_cant_be_empty => 'O email não pode estar vazio';

  @override
  String get error_email_not_invalid_format => 'Formato de email inválido';

  @override
  String get error_email_contains_invalid_characters =>
      'O email contém caracteres inválidos';

  @override
  String get error_email_must_contain_at_symbol => 'O email deve conter @';

  @override
  String get error_email_must_be_in_lowercase =>
      'O email deve estar em minúsculas';

  @override
  String get error_arabic_not_allowed => 'Caracteres árabes não são permitidos';

  @override
  String get error_email_emoji_not_allowed =>
      'Emojis não são permitidos no email';

  @override
  String get error_phone_number_cant_be_empty =>
      'O número de telefone não pode estar vazio';

  @override
  String get error_phone_number_invalid => 'Número de telefone inválido';

  @override
  String get error_phone_number_min_length =>
      'O número de telefone deve ter pelo menos 11 dígitos';

  @override
  String get error_name_cant_be_empty => 'O nome não pode estar vazio';

  @override
  String get error_name_invalid => 'Nome inválido';

  @override
  String get error_name_too_short_at_least_3_characters =>
      'O nome deve ter pelo menos 3 caracteres';

  @override
  String get error_name_too_long_maximum_20_characters =>
      'O nome não pode exceder 20 caracteres';

  @override
  String get error_name_invalid_special_characters =>
      'O nome contém caracteres especiais inválidos';

  @override
  String get error_name_emoji_not_allowed =>
      'Emojis não são permitidos no nome';

  @override
  String get error_password_cant_be_empty =>
      'A palavra-passe não pode estar vazia';

  @override
  String
  get error_password_must_contain_uppercase_lowercase_number_and_special_character =>
      'A palavra-passe deve conter maiúsculas, minúsculas, números e caracteres especiais';

  @override
  String get error_password_must_be_at_least_8_characters_long =>
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
  String get settingsGroupAppearance => 'Aparência e idioma';

  @override
  String get settingsGroupCompression => 'Compressão';

  @override
  String get settingsGroupAi => 'IA no dispositivo';

  @override
  String get settingsGroupPrivacy => 'Notificações e privacidade';

  @override
  String get settingsGroupPlans => 'Planos e compras';

  @override
  String get settingsGroupAbout => 'Sobre';

  @override
  String get settingsGroupLegal => 'Legal';

  @override
  String get settingsGroupHelp => 'Ajuda e feedback';

  @override
  String get settingsGroupAccount => 'Conta';

  @override
  String get settingsAppearanceSubtitle => 'Tema e idioma da aplicação';

  @override
  String get settingsLanguageSubtitle => 'Idioma da aplicação e direção';

  @override
  String get settingsCompressionSubtitle => 'Qualidade e formato padrão';

  @override
  String get settingsStorageSubtitle => 'Uso de cache e armazenamento';

  @override
  String get aiSettings => 'Definições de IA';

  @override
  String get zumiAssistant => 'Assistente Zumi';

  @override
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere =>
      'Um assistente privado para os seus vídeos estará disponível em breve. Poderá perguntar sobre compressão, organização e vídeos guardados aqui.';

  @override
  String get settingsAiSubtitle => 'Modelos locais e ferramentas inteligentes';

  @override
  String get exploreLocalModelsAndFutureAiToolsTheseOptionsAreNotActiveYet =>
      'Explore modelos locais e futuras ferramentas de IA. Estas opções ainda não estão ativas.';

  @override
  String get localModels => 'Modelos locais';

  @override
  String get aiModelsSubtitle => 'Navegue e descarregue modelos suportados';

  @override
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere =>
      'Escolha um modelo suportado, descarregue-o para este dispositivo e gere os modelos instalados aqui.';

  @override
  String get importAModel => 'Importar um modelo';

  @override
  String get aiImportSubtitle =>
      'Utilize um modelo compatível a partir dos seus ficheiros';

  @override
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt =>
      'Selecione um ficheiro de modelo local compatível e reveja os seus requisitos antes de o usar.';

  @override
  String get smartFeatures => 'Funcionalidades inteligentes';

  @override
  String get aiFeaturesSubtitle => 'Compressão, organização e pesquisa';

  @override
  String
  get chooseWhichLocalAiSuggestionsToUseForVideoCompressionOrganizationNamingAndSearch =>
      'Escolha quais sugestões de IA locais usar para compressão de vídeo, organização, nomeação e pesquisa.';

  @override
  String get modelPerformance => 'Desempenho do modelo';

  @override
  String get aiRuntimeSubtitle => 'Preferências de processamento e recursos';

  @override
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels =>
      'Controle o backend de processamento e os limites de recursos para modelos suportados.';

  @override
  String get conversationSettings => 'Definições de conversação';

  @override
  String get aiChatSettingsSubtitle =>
      'Transmissão, reflexão e comprimento da resposta';

  @override
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits =>
      'Configure como o assistente responde, incluindo streaming, modo de pensamento, amostragem e limites de respostas.';

  @override
  String get imagesAndAudio => 'Imagens e áudio';

  @override
  String get aiMediaSubtitle => 'Controlar entradas multimodais';

  @override
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos =>
      'Escolha se os modelos compatíveis podem analisar imagens e áudio selecionados dos seus vídeos.';

  @override
  String get semanticSearch => 'Pesquisa semântica';

  @override
  String get aiSearchSubtitle => 'Embeddings e indexação local';

  @override
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning =>
      'Gerir o modelo de embeddings local e o índice de pesquisa para encontrar vídeos e momentos por significado.';

  @override
  String get toolsAndStructuredOutput => 'Ferramentas e saída estruturada';

  @override
  String get aiToolsSubtitle => 'Ações, esquemas e confirmações';

  @override
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation =>
      'Gerir ações suportadas pelo assistente e respostas estruturadas. Ações que afetem ficheiros irão requerer a sua confirmação.';

  @override
  String get aiGroupModels => 'Modelos';

  @override
  String get aiGroupExperience => 'Experiência do assistente';

  @override
  String get aiGroupCapabilities => 'Capacidades inteligentes';

  @override
  String get aiGroupPerformance => 'Desempenho';

  @override
  String get compressionHistorySubtitle =>
      'O seu histórico de vídeos comprimidos';

  @override
  String get settingsNotificationsSubtitle =>
      'Alertas de conclusão e atualização';

  @override
  String get settingsPrivacySubtitle => 'Os seus dados permanecem localmente';

  @override
  String get plansSubtitle => 'Comparar planos e atualizar';

  @override
  String get plansMethodsSubtitle => 'Métodos de pagamento e faturação';

  @override
  String get plansRestoreSubtitle => 'Restaurar a sua compra anterior';

  @override
  String get aboutAppSubtitle => 'Detalhes da versão e compilação';

  @override
  String get aboutDeveloperSubtitle => 'O desenvolvedor por trás do Zumi';

  @override
  String get aboutLicensesSubtitle => 'Licenças de pacotes open source';

  @override
  String get legalPrivacySubtitle => 'Como os dados são tratados';

  @override
  String get legalTermsSubtitle => 'Regras para usar o Zumi';

  @override
  String get legalDataSafetySubtitle => 'Quais dados recolhemos';

  @override
  String get legalPermissionsSubtitle => 'Por que precisamos de permissões';

  @override
  String get helpFaqSubtitle => 'Respostas a perguntas comuns';

  @override
  String get helpSupportSubtitle => 'Contacte diretamente o desenvolvedor';

  @override
  String get helpFeedbackSubtitle => 'Envie-nos o seu feedback';

  @override
  String get compressionPickVideo => 'Escolher vídeo';

  @override
  String get compressionTargetMb => 'Tamanho alvo (MB)';

  @override
  String get compressionStart => 'Iniciar compressão';

  @override
  String get compressionPause => 'Pausar';

  @override
  String get compressionResume => 'Retomar';

  @override
  String get compressionViewResult => 'Ver resultado';

  @override
  String get compressionSaveGallery => 'Guardar na galeria';

  @override
  String get compressionShare => 'Partilhar vídeo';

  @override
  String get compressionOriginalSize => 'Tamanho original';

  @override
  String get compressionOutputSize => 'Tamanho de saída';

  @override
  String get compressionEmptyHistory => 'Ainda não há vídeos comprimidos';

  @override
  String get compressionSavedGallery => 'Guardado na galeria';

  @override
  String get compressionInvalidTarget =>
      'Introduza um tamanho alvo maior que zero';

  @override
  String get compressionCancelled => 'Compressão cancelada';

  @override
  String get compressionTargetExceeded =>
      'Este vídeo não conseguiu atingir o tamanho selecionado. Experimente um tamanho alvo maior.';

  @override
  String get compressionTargetInfeasible =>
      'O tamanho selecionado é demasiado pequeno para este vídeo. Escolha um tamanho maior.';

  @override
  String get compressionPreviewBefore => 'Pré-visualização original';

  @override
  String get compressionPreviewAfter => 'Pré-visualização comprimida';

  @override
  String get compressionPreset => 'Definição de destino';

  @override
  String get compressionCustom => 'Tamanho personalizado';

  @override
  String get compressionPreviewUnavailable => 'Pré-visualização indisponível';

  @override
  String get compressionAdvanced => 'Controles avançados';

  @override
  String get compressionAutomatic => 'Automático';

  @override
  String get compressionResolutionLimit => 'Resolução máxima';

  @override
  String get compressionSourceResolution => 'Resolução original';

  @override
  String get compressionFrameRateLimit => 'Taxa máxima de fotogramas';

  @override
  String get compressionAudioQuality => 'Taxa de bits de áudio';

  @override
  String get compressionRemoveAudio => 'Remover áudio';

  @override
  String get compressionVideoBitrateLimit =>
      'Teto da taxa de bits de vídeo (kbps)';

  @override
  String get compressionHdrPolicy => 'Gestão de HDR';

  @override
  String get compressionHdrConvert => 'Converter para SDR';

  @override
  String get compressionHdrPreserve => 'Manter HDR quando suportado';

  @override
  String get compressionPlanPreview => 'Antes de começar';

  @override
  String get compressionPlanLoading => 'A calcular plano de compressão…';

  @override
  String get compressionPlanResolution => 'Resolução planeada';

  @override
  String get compressionPlanVideoBitrate => 'Taxa de bits de vídeo planeada';

  @override
  String get compressionPlanAudioBitrate => 'Taxa de bits de áudio planeada';

  @override
  String get compressionAudioConversionNote =>
      'A nova codificação converte o áudio para AAC estéreo. Dolby Atmos e áudio espacial DTS não serão preservados.';

  @override
  String get compressionPlanTooSmall =>
      'Este alvo é demasiado pequeno para um vídeo utilizável. Aumente o tamanho ou reduza outros limites.';

  @override
  String get compressionPlanLowQuality =>
      'O alvo selecionado pode reduzir a qualidade do vídeo.';

  @override
  String get compressionPlanAlreadyWithinLimit =>
      'A fonte já está dentro do limite de tamanho.';

  @override
  String get compressionInvalidBitrate =>
      'Introduza uma taxa de bits de pelo menos 150 kbps ou deixe em branco para automático.';

  @override
  String get compressionInvalidResolution =>
      'Introduza uma resolução par entre 240 e 16384, ou deixe em branco para automático.';

  @override
  String get compressionSeek => 'Posição do vídeo';

  @override
  String get compressionInterrupted =>
      'Uma compressão anterior foi interrompida. Os seus ficheiros temporários foram limpos; pode selecionar o vídeo e tentar novamente.';

  @override
  String get compressionDismiss => 'Fechar';

  @override
  String get compressionClearHistory => 'Limpar histórico';

  @override
  String get compressionClearHistoryConfirm =>
      'Remover todas as entradas de histórico? Os vídeos guardados permanecerão no seu dispositivo.';

  @override
  String get compressionAttempts => 'Tentativas';

  @override
  String get compressionTargetSize => 'Tamanho alvo';

  @override
  String get compressionOutputResolution => 'Resolução de saída';

  @override
  String get compressionInvalidVideo =>
      'Não foi possível ler este vídeo. Escolha outro ficheiro.';

  @override
  String get compressionInvalidOutput =>
      'O vídeo codificado falhou na verificação. O seu vídeo original não foi alterado.';

  @override
  String get compressionEncoderUnsupported =>
      'Este dispositivo não consegue codificar a resolução ou taxa de fotogramas selecionada. Baixe essa definição e tente novamente.';

  @override
  String get compressionAudioDecoderUnsupported =>
      'Este dispositivo não consegue decodificar este formato de áudio para compressão. Remova o áudio ou utilize uma fonte suportada.';

  @override
  String get compressionVideoDecoderUnsupported =>
      'Este dispositivo não consegue decodificar este formato de vídeo ou perfil de compressão. Escolha outra fonte ou dispositivo.';

  @override
  String get compressionMp4NotStreamable =>
      'O MP4 exportado não está pronto para streaming. Experimente outro vídeo ou dispositivo.';

  @override
  String get compressionNoSpace =>
      'Não há armazenamento livre suficiente para comprimir este vídeo.';

  @override
  String get compressionHdrUnsupported =>
      'Este dispositivo não consegue processar o modo HDR selecionado. Tente converter para SDR.';

  @override
  String get compressionGeneralFailure =>
      'A compressão não pôde ser concluída. Experimente outra configuração ou vídeo.';

  @override
  String get aboutIdentitySection => 'Identificação da aplicação';

  @override
  String get aboutAppName => 'Nome da aplicação';

  @override
  String get aboutPackageName => 'Nome do pacote';

  @override
  String get aboutVersion => 'Versão';

  @override
  String get aboutBuildNumber => 'Número da compilação';

  @override
  String get aboutEnvironmentSection => 'Dispositivo e compilação';

  @override
  String get aboutOperatingSystem => 'Sistema operativo';

  @override
  String get aboutOsVersion => 'Versão do SO';

  @override
  String get aboutBuildMode => 'Modo de compilação';

  @override
  String get aboutDebug => 'Depuração';

  @override
  String get aboutRelease => 'Versão de lançamento';

  @override
  String get aboutToolchainSection => 'Construído com';

  @override
  String get aboutInstallationSection => 'Instalação';

  @override
  String get aboutInstaller => 'Instalado a partir de';

  @override
  String get aboutInstalledOn => 'Instalado em';

  @override
  String get aboutUpdatedOn => 'Atualizado em';

  @override
  String get aboutUnavailable => 'Indisponível';

  @override
  String get aboutProjectSection => 'Projeto e suporte';

  @override
  String get aboutRepository => 'Repositório GitHub';

  @override
  String get aboutRepositorySubtitle => 'Ver código-fonte do Zumi';

  @override
  String get aboutReadme => 'Ler o README';

  @override
  String get aboutReadmeSubtitle => 'Saiba mais sobre o Zumi no GitHub';

  @override
  String get aboutIssues => 'Reportar um problema';

  @override
  String get aboutIssuesSubtitle => 'Ver e criar issues no GitHub';

  @override
  String get aboutLatestRelease => 'Última versão';

  @override
  String get aboutLatestReleaseSubtitle => 'Ver versões e downloads';

  @override
  String get aboutDonate => 'Suporte ao Zumi';

  @override
  String get aboutDonateSubtitle => 'Abrir a página oficial de doações';

  @override
  String get aboutLinkError =>
      'Não foi possível abrir o link. Por favor, tente novamente.';

  @override
  String get aboutDeveloperSection => 'Desenvolvedor';

  @override
  String get aboutDeveloperName => 'Mostafa Sensei';

  @override
  String get aboutDeveloperProfile => 'Perfil GitHub';

  @override
  String get aboutDeveloperProfileSubtitle =>
      'Ver projetos e detalhes de contacto';

  @override
  String get maintenanceInProgress => 'Manutenção em curso';

  @override
  String get maintenanceMessage =>
      'O Zumi está temporariamente indisponível. Por favor, tente novamente mais tarde.';

  @override
  String get comingSoon => 'Em breve';

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
  String fileSavedToDcim(String fileName) {
    return 'Arquivo salvo na galeria: $fileName';
  }

  @override
  String fileSavedToDocuments(String fileName) {
    return 'Arquivo salvo nos documentos: $fileName';
  }

  @override
  String get fileAlreadySaved => 'Arquivo já está salvo';

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
  String get error_address_line_cant_be_empty =>
      'A linha do endereço não pode estar vazia';

  @override
  String get error_address_line_too_long => 'A linha do endereço é muito longa';

  @override
  String get error_address_invalid_special_characters =>
      'Caracteres especiais não são permitidos';

  @override
  String get error_address_emoji_not_allowed => 'Emojis não são permitidos';

  @override
  String get error_city_cant_be_empty => 'A cidade não pode estar vazia';

  @override
  String get error_city_too_long => 'O nome da cidade é muito longo';

  @override
  String get error_city_invalid_special_characters =>
      'A cidade contém caracteres especiais inválidos';

  @override
  String get error_address_label_cant_be_empty =>
      'O rótulo do endereço não pode estar vazio';

  @override
  String get error_address_label_too_long =>
      'O rótulo do endereço é muito longo';

  @override
  String get error_email_cant_be_empty => 'O e-mail não pode estar vazio';

  @override
  String get error_email_not_invalid_format => 'Formato de e-mail inválido';

  @override
  String get error_email_contains_invalid_characters =>
      'O email contém caracteres inválidos';

  @override
  String get error_email_must_contain_at_symbol => 'O email deve conter @';

  @override
  String get error_email_must_be_in_lowercase =>
      'O email deve estar em letras minúsculas';

  @override
  String get error_arabic_not_allowed => 'Caracteres árabes não são permitidos';

  @override
  String get error_email_emoji_not_allowed =>
      'Emojis não são permitidos no email';

  @override
  String get error_phone_number_cant_be_empty =>
      'O número de telefone não pode estar vazio';

  @override
  String get error_phone_number_invalid => 'Número de telefone inválido';

  @override
  String get error_phone_number_min_length =>
      'O número de telefone deve ter pelo menos 11 dígitos';

  @override
  String get error_name_cant_be_empty => 'O nome não pode estar vazio';

  @override
  String get error_name_invalid => 'Nome inválido';

  @override
  String get error_name_too_short_at_least_3_characters =>
      'O nome deve ter pelo menos 3 caracteres';

  @override
  String get error_name_too_long_maximum_20_characters =>
      'O nome não pode exceder 20 caracteres';

  @override
  String get error_name_invalid_special_characters =>
      'O nome contém caracteres especiais inválidos';

  @override
  String get error_name_emoji_not_allowed =>
      'Emojis não são permitidos no nome';

  @override
  String get error_password_cant_be_empty => 'A senha não pode estar vazia';

  @override
  String
  get error_password_must_contain_uppercase_lowercase_number_and_special_character =>
      'A senha deve conter letra maiúscula, letra minúscula, número e caractere especial';

  @override
  String get error_password_must_be_at_least_8_characters_long =>
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
  String get settingsGroupAppearance => 'Aparência e idioma';

  @override
  String get settingsGroupCompression => 'Compressão';

  @override
  String get settingsGroupAi => 'IA no dispositivo';

  @override
  String get settingsGroupPrivacy => 'Notificações e privacidade';

  @override
  String get settingsGroupPlans => 'Planos e compras';

  @override
  String get settingsGroupAbout => 'Sobre';

  @override
  String get settingsGroupLegal => 'Legal';

  @override
  String get settingsGroupHelp => 'Ajuda e feedback';

  @override
  String get settingsGroupAccount => 'Conta';

  @override
  String get settingsAppearanceSubtitle => 'Tema e idioma do aplicativo';

  @override
  String get settingsLanguageSubtitle => 'Idioma e direção do aplicativo';

  @override
  String get settingsCompressionSubtitle => 'Qualidade e formato padrão';

  @override
  String get settingsStorageSubtitle => 'Uso de cache e armazenamento';

  @override
  String get aiSettings => 'Configurações de IA';

  @override
  String get zumiAssistant => 'Assistente Zumi';

  @override
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere =>
      'Um assistente privado para seus vídeos chegará em breve. Você poderá perguntar sobre compressão, organização e vídeos salvos aqui.';

  @override
  String get settingsAiSubtitle => 'Modelos locais e ferramentas inteligentes';

  @override
  String get exploreLocalModelsAndFutureAiToolsTheseOptionsAreNotActiveYet =>
      'Explore modelos locais e futuras ferramentas de IA. Essas opções ainda não estão ativas.';

  @override
  String get localModels => 'Modelos locais';

  @override
  String get aiModelsSubtitle => 'Navegue e baixe modelos suportados';

  @override
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere =>
      'Escolha um modelo compatível, baixe-o para este dispositivo e gerencie os modelos instalados aqui.';

  @override
  String get importAModel => 'Importar um modelo';

  @override
  String get aiImportSubtitle =>
      'Use um modelo compatível a partir de seus arquivos';

  @override
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt =>
      'Selecione um arquivo de modelo local compatível e revise seus requisitos antes de usá-lo.';

  @override
  String get smartFeatures => 'Recursos inteligentes';

  @override
  String get aiFeaturesSubtitle => 'Compactação, organização e pesquisa';

  @override
  String
  get chooseWhichLocalAiSuggestionsToUseForVideoCompressionOrganizationNamingAndSearch =>
      'Escolha quais sugestões de IA local usar para compactação de vídeo, organização, nomenclatura e pesquisa.';

  @override
  String get modelPerformance => 'Desempenho do modelo';

  @override
  String get aiRuntimeSubtitle => 'Preferências de processamento e recursos';

  @override
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels =>
      'Controle o backend de processamento e os limites de recursos para modelos suportados.';

  @override
  String get conversationSettings => 'Configurações de conversa';

  @override
  String get aiChatSettingsSubtitle =>
      'Transmissão, raciocínio e comprimento da resposta';

  @override
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits =>
      'Configure como o assistente responde, incluindo streaming, modo de pensamento, amostragem e limites de respostas.';

  @override
  String get imagesAndAudio => 'Imagens e áudio';

  @override
  String get aiMediaSubtitle => 'Controle entradas multimodais';

  @override
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos =>
      'Escolha se modelos compatíveis podem analisar imagens selecionadas e áudio dos seus vídeos.';

  @override
  String get semanticSearch => 'Busca semântica';

  @override
  String get aiSearchSubtitle => 'Incorporações e indexação local';

  @override
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning =>
      'Gerencie o modelo de incorporação local e o índice de busca para encontrar vídeos e momentos por significado.';

  @override
  String get toolsAndStructuredOutput => 'Ferramentas e saída estruturada';

  @override
  String get aiToolsSubtitle => 'Ações, esquemas e confirmações';

  @override
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation =>
      'Gerencie ações de assistente suportadas e respostas estruturadas. Ações que afetam arquivos exigirão sua confirmação.';

  @override
  String get aiGroupModels => 'Modelos';

  @override
  String get aiGroupExperience => 'Experiência do assistente';

  @override
  String get aiGroupCapabilities => 'Capacidades inteligentes';

  @override
  String get aiGroupPerformance => 'Desempenho';

  @override
  String get compressionHistorySubtitle =>
      'Seu histórico de vídeos compactados';

  @override
  String get settingsNotificationsSubtitle =>
      'Alertas de conclusão e atualização';

  @override
  String get settingsPrivacySubtitle => 'Seus dados permanecem locais';

  @override
  String get plansSubtitle => 'Compare planos e faça upgrade';

  @override
  String get plansMethodsSubtitle => 'Métodos de pagamento e faturamento';

  @override
  String get plansRestoreSubtitle => 'Restaure sua compra anterior';

  @override
  String get aboutAppSubtitle => 'Detalhes de versão e build';

  @override
  String get aboutDeveloperSubtitle => 'O desenvolvedor por trás do Zumi';

  @override
  String get aboutLicensesSubtitle => 'Licenças de pacotes de código aberto';

  @override
  String get legalPrivacySubtitle => 'Como os dados são tratados';

  @override
  String get legalTermsSubtitle => 'Regras para usar o Zumi';

  @override
  String get legalDataSafetySubtitle => 'Quais dados coletamos';

  @override
  String get legalPermissionsSubtitle => 'Por que precisamos de permissões';

  @override
  String get helpFaqSubtitle => 'Respostas a perguntas comuns';

  @override
  String get helpSupportSubtitle =>
      'Entre em contato diretamente com o desenvolvedor';

  @override
  String get helpFeedbackSubtitle => 'Envie-nos seu feedback';

  @override
  String get compressionPickVideo => 'Escolher vídeo';

  @override
  String get compressionTargetMb => 'Tamanho alvo (MB)';

  @override
  String get compressionStart => 'Iniciar compressão';

  @override
  String get compressionPause => 'Pausar';

  @override
  String get compressionResume => 'Retomar';

  @override
  String get compressionViewResult => 'Ver resultado';

  @override
  String get compressionSaveGallery => 'Salvar na galeria';

  @override
  String get compressionShare => 'Compartilhar vídeo';

  @override
  String get compressionOriginalSize => 'Tamanho original';

  @override
  String get compressionOutputSize => 'Tamanho de saída';

  @override
  String get compressionEmptyHistory => 'Nenhum vídeo comprimido ainda';

  @override
  String get compressionSavedGallery => 'Salvo na galeria';

  @override
  String get compressionInvalidTarget =>
      'Digite um tamanho alvo maior que zero';

  @override
  String get compressionCancelled => 'Compressão cancelada';

  @override
  String get compressionTargetExceeded =>
      'Este vídeo não pôde atingir o tamanho selecionado. Tente um tamanho alvo maior.';

  @override
  String get compressionTargetInfeasible =>
      'O tamanho selecionado é muito pequeno para este vídeo. Escolha um tamanho maior.';

  @override
  String get compressionPreviewBefore => 'Visualização original';

  @override
  String get compressionPreviewAfter => 'Visualização comprimida';

  @override
  String get compressionPreset => 'Predefinição de destino';

  @override
  String get compressionCustom => 'Tamanho personalizado';

  @override
  String get compressionPreviewUnavailable => 'Pré-visualização indisponível';

  @override
  String get compressionAdvanced => 'Controles avançados';

  @override
  String get compressionAutomatic => 'Automático';

  @override
  String get compressionResolutionLimit => 'Resolução máxima';

  @override
  String get compressionSourceResolution => 'Resolução original';

  @override
  String get compressionFrameRateLimit => 'Taxa de quadros máxima';

  @override
  String get compressionAudioQuality => 'Taxa de bits de áudio';

  @override
  String get compressionRemoveAudio => 'Remover áudio';

  @override
  String get compressionVideoBitrateLimit =>
      'Teto de taxa de bits de vídeo (kbps)';

  @override
  String get compressionHdrPolicy => 'Manipulação de HDR';

  @override
  String get compressionHdrConvert => 'Converter para SDR';

  @override
  String get compressionHdrPreserve => 'Manter HDR quando suportado';

  @override
  String get compressionPlanPreview => 'Antes de começar';

  @override
  String get compressionPlanLoading => 'Calculando plano de compressão…';

  @override
  String get compressionPlanResolution => 'Resolução planejada';

  @override
  String get compressionPlanVideoBitrate => 'Taxa de bits de vídeo planejada';

  @override
  String get compressionPlanAudioBitrate => 'Taxa de bits de áudio planejada';

  @override
  String get compressionAudioConversionNote =>
      'A recodificação converte o áudio para AAC estéreo. Dolby Atmos e áudio espacial DTS não serão preservados.';

  @override
  String get compressionPlanTooSmall =>
      'Este alvo é pequeno demais para um vídeo utilizável. Aumente o tamanho ou reduza outros limites.';

  @override
  String get compressionPlanLowQuality =>
      'O alvo selecionado pode reduzir a qualidade do vídeo.';

  @override
  String get compressionPlanAlreadyWithinLimit =>
      'A fonte já está dentro do limite de tamanho.';

  @override
  String get compressionInvalidBitrate =>
      'Digite uma taxa de bits de pelo menos 150 kbps, ou deixe em branco para automático.';

  @override
  String get compressionInvalidResolution =>
      'Digite uma resolução par de 240 a 16384, ou deixe em branco para automático.';

  @override
  String get compressionSeek => 'Posição do vídeo';

  @override
  String get compressionInterrupted =>
      'Uma compressão anterior foi interrompida. Seus arquivos temporários foram limpos; você pode selecionar o vídeo e tentar novamente.';

  @override
  String get compressionDismiss => 'Fechar';

  @override
  String get compressionClearHistory => 'Limpar histórico';

  @override
  String get compressionClearHistoryConfirm =>
      'Remover todos os registros de histórico? Os vídeos salvos permanecerão no seu dispositivo.';

  @override
  String get compressionAttempts => 'Tentativas';

  @override
  String get compressionTargetSize => 'Tamanho alvo';

  @override
  String get compressionOutputResolution => 'Resolução de saída';

  @override
  String get compressionInvalidVideo =>
      'Este vídeo não pôde ser lido. Escolha outro arquivo.';

  @override
  String get compressionInvalidOutput =>
      'O vídeo codificado falhou na verificação. Seu vídeo original não foi alterado.';

  @override
  String get compressionEncoderUnsupported =>
      'Este dispositivo não pode codificar a resolução ou taxa de quadros selecionada. Reduza essa configuração e tente novamente.';

  @override
  String get compressionAudioDecoderUnsupported =>
      'Este dispositivo não pode decodificar este formato de áudio para compressão. Remova o áudio ou use uma fonte suportada.';

  @override
  String get compressionVideoDecoderUnsupported =>
      'Este dispositivo não pode decodificar este formato de vídeo ou perfil de compressão. Escolha outra fonte ou dispositivo.';

  @override
  String get compressionMp4NotStreamable =>
      'O MP4 exportado não está pronto para streaming. Tente outro vídeo ou dispositivo.';

  @override
  String get compressionNoSpace =>
      'Não há armazenamento livre suficiente para comprimir este vídeo.';

  @override
  String get compressionHdrUnsupported =>
      'Este dispositivo não pode processar o modo HDR selecionado. Tente converter para SDR.';

  @override
  String get compressionGeneralFailure =>
      'A compressão não pôde ser concluída. Tente outra configuração ou vídeo.';

  @override
  String get aboutIdentitySection => 'Identificação do aplicativo';

  @override
  String get aboutAppName => 'Nome do aplicativo';

  @override
  String get aboutPackageName => 'Nome do pacote';

  @override
  String get aboutVersion => 'Versão';

  @override
  String get aboutBuildNumber => 'Número da compilação';

  @override
  String get aboutEnvironmentSection => 'Dispositivo e compilação';

  @override
  String get aboutOperatingSystem => 'Sistema operacional';

  @override
  String get aboutOsVersion => 'Versão do SO';

  @override
  String get aboutBuildMode => 'Modo de compilação';

  @override
  String get aboutDebug => 'Depuração';

  @override
  String get aboutRelease => 'Release';

  @override
  String get aboutToolchainSection => 'Construído com';

  @override
  String get aboutInstallationSection => 'Instalação';

  @override
  String get aboutInstaller => 'Instalado de';

  @override
  String get aboutInstalledOn => 'Instalado em';

  @override
  String get aboutUpdatedOn => 'Atualizado em';

  @override
  String get aboutUnavailable => 'Indisponível';

  @override
  String get aboutProjectSection => 'Projeto e suporte';

  @override
  String get aboutRepository => 'Repositório no GitHub';

  @override
  String get aboutRepositorySubtitle => 'Ver código-fonte do Zumi';

  @override
  String get aboutReadme => 'Ler o README';

  @override
  String get aboutReadmeSubtitle => 'Saiba sobre o Zumi no GitHub';

  @override
  String get aboutIssues => 'Reportar um problema';

  @override
  String get aboutIssuesSubtitle => 'Ver e criar issues no GitHub';

  @override
  String get aboutLatestRelease => 'Última versão';

  @override
  String get aboutLatestReleaseSubtitle => 'Ver lançamentos e downloads';

  @override
  String get aboutDonate => 'Apoiar o Zumi';

  @override
  String get aboutDonateSubtitle => 'Abrir a página oficial de doações';

  @override
  String get aboutLinkError =>
      'Não foi possível abrir o link. Por favor, tente novamente.';

  @override
  String get aboutDeveloperSection => 'Desenvolvedor';

  @override
  String get aboutDeveloperName => 'Mostafa Sensei';

  @override
  String get aboutDeveloperProfile => 'Perfil no GitHub';

  @override
  String get aboutDeveloperProfileSubtitle =>
      'Ver projetos e detalhes de contato';

  @override
  String get maintenanceInProgress => 'Manutenção em andamento';

  @override
  String get maintenanceMessage =>
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

/// The translations for Portuguese, as used in Portugal (`pt_PT`).
class AppLocalizationsPtPt extends AppLocalizationsPt {
  AppLocalizationsPtPt() : super('pt_PT');

  @override
  String get zumi => 'Zumi';

  @override
  String get downloadFile => 'Descarregar ficheiro';

  @override
  String fileOpenedInBrowser(String fileName) {
    return 'Ficheiro aberto no navegador: $fileName';
  }

  @override
  String fileSavedToDcim(String fileName) {
    return 'Ficheiro guardado na galeria: $fileName';
  }

  @override
  String fileSavedToDocuments(String fileName) {
    return 'Ficheiro guardado nos documentos: $fileName';
  }

  @override
  String get fileAlreadySaved => 'O ficheiro já está guardado';

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
  String get error_address_line_cant_be_empty =>
      'A linha de endereço não pode estar vazia';

  @override
  String get error_address_line_too_long =>
      'A linha de endereço é demasiado longa';

  @override
  String get error_address_invalid_special_characters =>
      'Não são permitidos caracteres especiais';

  @override
  String get error_address_emoji_not_allowed => 'Emojis não são permitidos';

  @override
  String get error_city_cant_be_empty => 'A cidade não pode estar vazia';

  @override
  String get error_city_too_long => 'O nome da cidade é demasiado longo';

  @override
  String get error_city_invalid_special_characters =>
      'A cidade contém caracteres especiais inválidos';

  @override
  String get error_address_label_cant_be_empty =>
      'O rótulo do endereço não pode estar vazio';

  @override
  String get error_address_label_too_long =>
      'O rótulo do endereço é demasiado longo';

  @override
  String get error_email_cant_be_empty => 'O email não pode estar vazio';

  @override
  String get error_email_not_invalid_format => 'Formato de email inválido';

  @override
  String get error_email_contains_invalid_characters =>
      'O email contém caracteres inválidos';

  @override
  String get error_email_must_contain_at_symbol => 'O email deve conter @';

  @override
  String get error_email_must_be_in_lowercase =>
      'O email deve estar em minúsculas';

  @override
  String get error_arabic_not_allowed => 'Caracteres árabes não são permitidos';

  @override
  String get error_email_emoji_not_allowed =>
      'Emojis não são permitidos no email';

  @override
  String get error_phone_number_cant_be_empty =>
      'O número de telefone não pode estar vazio';

  @override
  String get error_phone_number_invalid => 'Número de telefone inválido';

  @override
  String get error_phone_number_min_length =>
      'O número de telefone deve ter pelo menos 11 dígitos';

  @override
  String get error_name_cant_be_empty => 'O nome não pode estar vazio';

  @override
  String get error_name_invalid => 'Nome inválido';

  @override
  String get error_name_too_short_at_least_3_characters =>
      'O nome deve ter pelo menos 3 caracteres';

  @override
  String get error_name_too_long_maximum_20_characters =>
      'O nome não pode exceder 20 caracteres';

  @override
  String get error_name_invalid_special_characters =>
      'O nome contém caracteres especiais inválidos';

  @override
  String get error_name_emoji_not_allowed =>
      'Emojis não são permitidos no nome';

  @override
  String get error_password_cant_be_empty =>
      'A palavra-passe não pode estar vazia';

  @override
  String
  get error_password_must_contain_uppercase_lowercase_number_and_special_character =>
      'A palavra-passe deve conter maiúsculas, minúsculas, números e caracteres especiais';

  @override
  String get error_password_must_be_at_least_8_characters_long =>
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
  String get settingsGroupAppearance => 'Aparência e idioma';

  @override
  String get settingsGroupCompression => 'Compressão';

  @override
  String get settingsGroupAi => 'IA no dispositivo';

  @override
  String get settingsGroupPrivacy => 'Notificações e privacidade';

  @override
  String get settingsGroupPlans => 'Planos e compras';

  @override
  String get settingsGroupAbout => 'Sobre';

  @override
  String get settingsGroupLegal => 'Legal';

  @override
  String get settingsGroupHelp => 'Ajuda e feedback';

  @override
  String get settingsGroupAccount => 'Conta';

  @override
  String get settingsAppearanceSubtitle => 'Tema e idioma da aplicação';

  @override
  String get settingsLanguageSubtitle => 'Idioma da aplicação e direção';

  @override
  String get settingsCompressionSubtitle => 'Qualidade e formato padrão';

  @override
  String get settingsStorageSubtitle => 'Uso de cache e armazenamento';

  @override
  String get aiSettings => 'Definições de IA';

  @override
  String get zumiAssistant => 'Assistente Zumi';

  @override
  String
  get aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere =>
      'Um assistente privado para os seus vídeos estará disponível em breve. Poderá perguntar sobre compressão, organização e vídeos guardados aqui.';

  @override
  String get settingsAiSubtitle => 'Modelos locais e ferramentas inteligentes';

  @override
  String get exploreLocalModelsAndFutureAiToolsTheseOptionsAreNotActiveYet =>
      'Explore modelos locais e futuras ferramentas de IA. Estas opções ainda não estão ativas.';

  @override
  String get localModels => 'Modelos locais';

  @override
  String get aiModelsSubtitle => 'Navegue e descarregue modelos suportados';

  @override
  String
  get chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere =>
      'Escolha um modelo suportado, descarregue-o para este dispositivo e gere os modelos instalados aqui.';

  @override
  String get importAModel => 'Importar um modelo';

  @override
  String get aiImportSubtitle =>
      'Utilize um modelo compatível a partir dos seus ficheiros';

  @override
  String
  get selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt =>
      'Selecione um ficheiro de modelo local compatível e reveja os seus requisitos antes de o usar.';

  @override
  String get smartFeatures => 'Funcionalidades inteligentes';

  @override
  String get aiFeaturesSubtitle => 'Compressão, organização e pesquisa';

  @override
  String
  get chooseWhichLocalAiSuggestionsToUseForVideoCompressionOrganizationNamingAndSearch =>
      'Escolha quais sugestões de IA locais usar para compressão de vídeo, organização, nomeação e pesquisa.';

  @override
  String get modelPerformance => 'Desempenho do modelo';

  @override
  String get aiRuntimeSubtitle => 'Preferências de processamento e recursos';

  @override
  String get controlTheProcessingBackendAndResourceLimitsForSupportedModels =>
      'Controle o backend de processamento e os limites de recursos para modelos suportados.';

  @override
  String get conversationSettings => 'Definições de conversação';

  @override
  String get aiChatSettingsSubtitle =>
      'Transmissão, reflexão e comprimento da resposta';

  @override
  String
  get configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits =>
      'Configure como o assistente responde, incluindo streaming, modo de pensamento, amostragem e limites de respostas.';

  @override
  String get imagesAndAudio => 'Imagens e áudio';

  @override
  String get aiMediaSubtitle => 'Controlar entradas multimodais';

  @override
  String
  get chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos =>
      'Escolha se os modelos compatíveis podem analisar imagens e áudio selecionados dos seus vídeos.';

  @override
  String get semanticSearch => 'Pesquisa semântica';

  @override
  String get aiSearchSubtitle => 'Embeddings e indexação local';

  @override
  String
  get manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning =>
      'Gerir o modelo de embeddings local e o índice de pesquisa para encontrar vídeos e momentos por significado.';

  @override
  String get toolsAndStructuredOutput => 'Ferramentas e saída estruturada';

  @override
  String get aiToolsSubtitle => 'Ações, esquemas e confirmações';

  @override
  String
  get manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation =>
      'Gerir ações suportadas pelo assistente e respostas estruturadas. Ações que afetem ficheiros irão requerer a sua confirmação.';

  @override
  String get aiGroupModels => 'Modelos';

  @override
  String get aiGroupExperience => 'Experiência do assistente';

  @override
  String get aiGroupCapabilities => 'Capacidades inteligentes';

  @override
  String get aiGroupPerformance => 'Desempenho';

  @override
  String get compressionHistorySubtitle =>
      'O seu histórico de vídeos comprimidos';

  @override
  String get settingsNotificationsSubtitle =>
      'Alertas de conclusão e atualização';

  @override
  String get settingsPrivacySubtitle => 'Os seus dados permanecem localmente';

  @override
  String get plansSubtitle => 'Comparar planos e atualizar';

  @override
  String get plansMethodsSubtitle => 'Métodos de pagamento e faturação';

  @override
  String get plansRestoreSubtitle => 'Restaurar a sua compra anterior';

  @override
  String get aboutAppSubtitle => 'Detalhes da versão e compilação';

  @override
  String get aboutDeveloperSubtitle => 'O desenvolvedor por trás do Zumi';

  @override
  String get aboutLicensesSubtitle => 'Licenças de pacotes open source';

  @override
  String get legalPrivacySubtitle => 'Como os dados são tratados';

  @override
  String get legalTermsSubtitle => 'Regras para usar o Zumi';

  @override
  String get legalDataSafetySubtitle => 'Quais dados recolhemos';

  @override
  String get legalPermissionsSubtitle => 'Por que precisamos de permissões';

  @override
  String get helpFaqSubtitle => 'Respostas a perguntas comuns';

  @override
  String get helpSupportSubtitle => 'Contacte diretamente o desenvolvedor';

  @override
  String get helpFeedbackSubtitle => 'Envie-nos o seu feedback';

  @override
  String get compressionPickVideo => 'Escolher vídeo';

  @override
  String get compressionTargetMb => 'Tamanho alvo (MB)';

  @override
  String get compressionStart => 'Iniciar compressão';

  @override
  String get compressionPause => 'Pausar';

  @override
  String get compressionResume => 'Retomar';

  @override
  String get compressionViewResult => 'Ver resultado';

  @override
  String get compressionSaveGallery => 'Guardar na galeria';

  @override
  String get compressionShare => 'Partilhar vídeo';

  @override
  String get compressionOriginalSize => 'Tamanho original';

  @override
  String get compressionOutputSize => 'Tamanho de saída';

  @override
  String get compressionEmptyHistory => 'Ainda não há vídeos comprimidos';

  @override
  String get compressionSavedGallery => 'Guardado na galeria';

  @override
  String get compressionInvalidTarget =>
      'Introduza um tamanho alvo maior que zero';

  @override
  String get compressionCancelled => 'Compressão cancelada';

  @override
  String get compressionTargetExceeded =>
      'Este vídeo não conseguiu atingir o tamanho selecionado. Experimente um tamanho alvo maior.';

  @override
  String get compressionTargetInfeasible =>
      'O tamanho selecionado é demasiado pequeno para este vídeo. Escolha um tamanho maior.';

  @override
  String get compressionPreviewBefore => 'Pré-visualização original';

  @override
  String get compressionPreviewAfter => 'Pré-visualização comprimida';

  @override
  String get compressionPreset => 'Definição de destino';

  @override
  String get compressionCustom => 'Tamanho personalizado';

  @override
  String get compressionPreviewUnavailable => 'Pré-visualização indisponível';

  @override
  String get compressionAdvanced => 'Controles avançados';

  @override
  String get compressionAutomatic => 'Automático';

  @override
  String get compressionResolutionLimit => 'Resolução máxima';

  @override
  String get compressionSourceResolution => 'Resolução original';

  @override
  String get compressionFrameRateLimit => 'Taxa máxima de fotogramas';

  @override
  String get compressionAudioQuality => 'Taxa de bits de áudio';

  @override
  String get compressionRemoveAudio => 'Remover áudio';

  @override
  String get compressionVideoBitrateLimit =>
      'Teto da taxa de bits de vídeo (kbps)';

  @override
  String get compressionHdrPolicy => 'Gestão de HDR';

  @override
  String get compressionHdrConvert => 'Converter para SDR';

  @override
  String get compressionHdrPreserve => 'Manter HDR quando suportado';

  @override
  String get compressionPlanPreview => 'Antes de começar';

  @override
  String get compressionPlanLoading => 'A calcular plano de compressão…';

  @override
  String get compressionPlanResolution => 'Resolução planeada';

  @override
  String get compressionPlanVideoBitrate => 'Taxa de bits de vídeo planeada';

  @override
  String get compressionPlanAudioBitrate => 'Taxa de bits de áudio planeada';

  @override
  String get compressionAudioConversionNote =>
      'A nova codificação converte o áudio para AAC estéreo. Dolby Atmos e áudio espacial DTS não serão preservados.';

  @override
  String get compressionPlanTooSmall =>
      'Este alvo é demasiado pequeno para um vídeo utilizável. Aumente o tamanho ou reduza outros limites.';

  @override
  String get compressionPlanLowQuality =>
      'O alvo selecionado pode reduzir a qualidade do vídeo.';

  @override
  String get compressionPlanAlreadyWithinLimit =>
      'A fonte já está dentro do limite de tamanho.';

  @override
  String get compressionInvalidBitrate =>
      'Introduza uma taxa de bits de pelo menos 150 kbps ou deixe em branco para automático.';

  @override
  String get compressionInvalidResolution =>
      'Introduza uma resolução par entre 240 e 16384, ou deixe em branco para automático.';

  @override
  String get compressionSeek => 'Posição do vídeo';

  @override
  String get compressionInterrupted =>
      'Uma compressão anterior foi interrompida. Os seus ficheiros temporários foram limpos; pode selecionar o vídeo e tentar novamente.';

  @override
  String get compressionDismiss => 'Fechar';

  @override
  String get compressionClearHistory => 'Limpar histórico';

  @override
  String get compressionClearHistoryConfirm =>
      'Remover todas as entradas de histórico? Os vídeos guardados permanecerão no seu dispositivo.';

  @override
  String get compressionAttempts => 'Tentativas';

  @override
  String get compressionTargetSize => 'Tamanho alvo';

  @override
  String get compressionOutputResolution => 'Resolução de saída';

  @override
  String get compressionInvalidVideo =>
      'Não foi possível ler este vídeo. Escolha outro ficheiro.';

  @override
  String get compressionInvalidOutput =>
      'O vídeo codificado falhou na verificação. O seu vídeo original não foi alterado.';

  @override
  String get compressionEncoderUnsupported =>
      'Este dispositivo não consegue codificar a resolução ou taxa de fotogramas selecionada. Baixe essa definição e tente novamente.';

  @override
  String get compressionAudioDecoderUnsupported =>
      'Este dispositivo não consegue decodificar este formato de áudio para compressão. Remova o áudio ou utilize uma fonte suportada.';

  @override
  String get compressionVideoDecoderUnsupported =>
      'Este dispositivo não consegue decodificar este formato de vídeo ou perfil de compressão. Escolha outra fonte ou dispositivo.';

  @override
  String get compressionMp4NotStreamable =>
      'O MP4 exportado não está pronto para streaming. Experimente outro vídeo ou dispositivo.';

  @override
  String get compressionNoSpace =>
      'Não há armazenamento livre suficiente para comprimir este vídeo.';

  @override
  String get compressionHdrUnsupported =>
      'Este dispositivo não consegue processar o modo HDR selecionado. Tente converter para SDR.';

  @override
  String get compressionGeneralFailure =>
      'A compressão não pôde ser concluída. Experimente outra configuração ou vídeo.';

  @override
  String get aboutIdentitySection => 'Identificação da aplicação';

  @override
  String get aboutAppName => 'Nome da aplicação';

  @override
  String get aboutPackageName => 'Nome do pacote';

  @override
  String get aboutVersion => 'Versão';

  @override
  String get aboutBuildNumber => 'Número da compilação';

  @override
  String get aboutEnvironmentSection => 'Dispositivo e compilação';

  @override
  String get aboutOperatingSystem => 'Sistema operativo';

  @override
  String get aboutOsVersion => 'Versão do SO';

  @override
  String get aboutBuildMode => 'Modo de compilação';

  @override
  String get aboutDebug => 'Depuração';

  @override
  String get aboutRelease => 'Versão de lançamento';

  @override
  String get aboutToolchainSection => 'Construído com';

  @override
  String get aboutInstallationSection => 'Instalação';

  @override
  String get aboutInstaller => 'Instalado a partir de';

  @override
  String get aboutInstalledOn => 'Instalado em';

  @override
  String get aboutUpdatedOn => 'Atualizado em';

  @override
  String get aboutUnavailable => 'Indisponível';

  @override
  String get aboutProjectSection => 'Projeto e suporte';

  @override
  String get aboutRepository => 'Repositório GitHub';

  @override
  String get aboutRepositorySubtitle => 'Ver código-fonte do Zumi';

  @override
  String get aboutReadme => 'Ler o README';

  @override
  String get aboutReadmeSubtitle => 'Saiba mais sobre o Zumi no GitHub';

  @override
  String get aboutIssues => 'Reportar um problema';

  @override
  String get aboutIssuesSubtitle => 'Ver e criar issues no GitHub';

  @override
  String get aboutLatestRelease => 'Última versão';

  @override
  String get aboutLatestReleaseSubtitle => 'Ver versões e downloads';

  @override
  String get aboutDonate => 'Suporte ao Zumi';

  @override
  String get aboutDonateSubtitle => 'Abrir a página oficial de doações';

  @override
  String get aboutLinkError =>
      'Não foi possível abrir o link. Por favor, tente novamente.';

  @override
  String get aboutDeveloperSection => 'Desenvolvedor';

  @override
  String get aboutDeveloperName => 'Mostafa Sensei';

  @override
  String get aboutDeveloperProfile => 'Perfil GitHub';

  @override
  String get aboutDeveloperProfileSubtitle =>
      'Ver projetos e detalhes de contacto';

  @override
  String get maintenanceInProgress => 'Manutenção em curso';

  @override
  String get maintenanceMessage =>
      'O Zumi está temporariamente indisponível. Por favor, tente novamente mais tarde.';

  @override
  String get comingSoon => 'Em breve';

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
      'BH': 'Barém',
      'BR': 'Brasil',
      'CA': 'Canadá',
      'CH': 'Suíça',
      'CN': 'China',
      'DE': 'Alemanha',
      'DJ': 'Jibuti',
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
      'KW': 'Koweit',
      'LB': 'Líbano',
      'LY': 'Líbia',
      'MA': 'Marrocos',
      'MR': 'Mauritânia',
      'MX': 'México',
      'NL': 'Países Baixos',
      'OM': 'Omã',
      'PL': 'Polónia',
      'PS': 'Territórios palestinianos',
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
      'VN': 'Vietname',
      'YE': 'Iémen',
      'other': 'País',
    });
    return '$_temp0';
  }
}
