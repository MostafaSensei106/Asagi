import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/zumi_icons.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/display/placeholder/app_placeholder_page.dart';

final class AiModelsPage extends StatelessWidget {
  const AiModelsPage({super.key});

  @override
  Widget build(BuildContext context) => AppPlaceholderPage(
    title: context.localeKeys.aiModelsTitle,
    description: context.localeKeys.aiModelsDescription,
    icon: ZumiIcons.aiModels,
  );
}

final class AiImportModelPage extends StatelessWidget {
  const AiImportModelPage({super.key});

  @override
  Widget build(BuildContext context) => AppPlaceholderPage(
    title: context.localeKeys.aiImportTitle,
    description: context.localeKeys.aiImportDescription,
    icon: ZumiIcons.aiImport,
  );
}

final class AiFeaturesPage extends StatelessWidget {
  const AiFeaturesPage({super.key});

  @override
  Widget build(BuildContext context) => AppPlaceholderPage(
    title: context.localeKeys.aiFeaturesTitle,
    description: context.localeKeys.aiFeaturesDescription,
    icon: ZumiIcons.aiFeatures,
  );
}

final class AiRuntimePage extends StatelessWidget {
  const AiRuntimePage({super.key});

  @override
  Widget build(BuildContext context) => AppPlaceholderPage(
    title: context.localeKeys.aiRuntimeTitle,
    description: context.localeKeys.aiRuntimeDescription,
    icon: ZumiIcons.aiRuntime,
  );
}
