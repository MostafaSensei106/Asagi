import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/zumi_icons.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/display/placeholder/app_placeholder_page.dart';

final class AiModelsPage extends StatelessWidget {
  const AiModelsPage({super.key});

  @override
  Widget build(BuildContext context) => AppPlaceholderPage(
    title: context.localeKeys.localModels,
    description: context
        .localeKeys
        .chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere,
    icon: ZumiIcons.aiModels,
  );
}

final class AiImportModelPage extends StatelessWidget {
  const AiImportModelPage({super.key});

  @override
  Widget build(BuildContext context) => AppPlaceholderPage(
    title: context.localeKeys.importAModel,
    description: context
        .localeKeys
        .selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt,
    icon: ZumiIcons.aiImport,
  );
}

final class AiFeaturesPage extends StatelessWidget {
  const AiFeaturesPage({super.key});

  @override
  Widget build(BuildContext context) => AppPlaceholderPage(
    title: context.localeKeys.smartFeatures,
    description: context
        .localeKeys
        .chooseWhichLocalAISuggestionsToUseForVideoCompressionOrganizationNamingAndSearch,
    icon: ZumiIcons.aiFeatures,
  );
}

final class AiRuntimePage extends StatelessWidget {
  const AiRuntimePage({super.key});

  @override
  Widget build(BuildContext context) => AppPlaceholderPage(
    title: context.localeKeys.modelPerformance,
    description: context
        .localeKeys
        .controlTheProcessingBackendAndResourceLimitsForSupportedModels,
    icon: ZumiIcons.aiRuntime,
  );
}

final class AiChatSettingsPage extends StatelessWidget {
  const AiChatSettingsPage({super.key});

  @override
  Widget build(BuildContext context) => AppPlaceholderPage(
    title: context.localeKeys.conversationSettings,
    description: context
        .localeKeys
        .configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits,
    icon: ZumiIcons.aiChatSettings,
  );
}

final class AiMediaPage extends StatelessWidget {
  const AiMediaPage({super.key});

  @override
  Widget build(BuildContext context) => AppPlaceholderPage(
    title: context.localeKeys.imagesAndAudio,
    description: context
        .localeKeys
        .chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos,
    icon: ZumiIcons.aiMedia,
  );
}

final class AiSearchPage extends StatelessWidget {
  const AiSearchPage({super.key});

  @override
  Widget build(BuildContext context) => AppPlaceholderPage(
    title: context.localeKeys.semanticSearch,
    description: context
        .localeKeys
        .manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning,
    icon: ZumiIcons.aiSearch,
  );
}

final class AiToolsPage extends StatelessWidget {
  const AiToolsPage({super.key});

  @override
  Widget build(BuildContext context) => AppPlaceholderPage(
    title: context.localeKeys.toolsAndStructuredOutput,
    description: context
        .localeKeys
        .manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation,
    icon: ZumiIcons.aiTools,
  );
}
