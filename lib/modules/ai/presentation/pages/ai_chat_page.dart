import 'dart:async';

import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/design_system/tokens/tokens.dart';
import '../../../../core/constants/kuymo_icons.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/widgets.dart';
import '../widgets/ai_conversation_sheet.dart';

/// Branded entry point until a real local conversation runtime is connected.
final class AiChatPage extends StatelessWidget {
  const AiChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.localeKeys;
    return Scaffold(
      appBar: AppBarComponent(
        title: l10n.kuymoAi,
        actions: [
          IconButtonComponent(
            icon: KuymoIcons.aiChatSettings,
            tooltip: l10n.aiSend,
            onPressed: () => unawaited(
              BottomSheetComponent.show<void>(
                context: context,
                child: SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.75,
                  child: const AiConversationSheet(),
                ),
              ),
            ),
          ),
        ],
      ),
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
                  ChipComponent(label: l10n.localModels, showBorder: false),
                  const Gap(AppSpacing.large),
                  Text(
                    l10n.aiChatWelcome,
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
