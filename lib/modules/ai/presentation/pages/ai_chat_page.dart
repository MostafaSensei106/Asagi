import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/zumi_icons.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/display/placeholder/app_placeholder_page.dart';

/// Assistant tab. Conversation controls appear when a local runtime is ready.
final class AiChatPage extends StatelessWidget {
  const AiChatPage({super.key});

  @override
  Widget build(BuildContext context) => AppPlaceholderPage(
    title: context.localeKeys.aiChatTitle,
    description: context.localeKeys.aiChatDescription,
    icon: ZumiIcons.ai,
    showBackButton: false,
  );
}
