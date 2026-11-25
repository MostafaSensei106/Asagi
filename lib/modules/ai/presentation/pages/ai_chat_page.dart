import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/design_system/tokens/tokens.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/widgets.dart';

/// Branded entry point until a real local conversation runtime is connected.
final class AiChatPage extends StatelessWidget {
  const AiChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.localeKeys;
    return Scaffold(
      appBar: AppBarComponent(title: l10n.kuymoAi),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(AppSpacing.large),
          children: [
            CardComponent.filled(
              padding: const EdgeInsets.all(AppSpacing.xLarge),
              child: Column(
                children: [
                  const BrandLogo(size: 96, elevated: false),
                  const Gap(AppSpacing.large),
                  Text(l10n.kuymoAi, style: context.textTheme.headlineMedium),
                  const Gap(AppSpacing.small),
                  ChipComponent(label: l10n.comingSoon, showBorder: false),
                  const Gap(AppSpacing.large),
                  Text(
                    l10n.aPrivateAssistantForYourVideosIsComingSoonYouWillBeAbleToAskAboutCompressionOrganizationAndSavedVideosHere,
                    textAlign: TextAlign.center,
                    style: context.textTheme.bodyLarge,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
