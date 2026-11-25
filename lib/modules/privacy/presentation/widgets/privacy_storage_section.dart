import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/kuymo_icons.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/design_system/tokens/tokens.dart';
import '../../../../core/widgets/widgets.dart';

final class PrivacyStorageSection extends StatelessWidget {
  const PrivacyStorageSection({
    required this.preserveMetadata,
    required this.autoWipeTempCache,
    required this.isClearingCache,
    required this.onPreserveMetadataChanged,
    required this.onAutoWipeChanged,
    required this.onClearCache,
    this.saveChatHistory = false,
    this.onSaveChatHistoryChanged,
    super.key,
  });

  final bool saveChatHistory;
  final ValueChanged<bool>? onSaveChatHistoryChanged;
  final bool preserveMetadata;
  final bool autoWipeTempCache;
  final bool isClearingCache;
  final ValueChanged<bool> onPreserveMetadataChanged;
  final ValueChanged<bool> onAutoWipeChanged;
  final VoidCallback onClearCache;

  @override
  Widget build(BuildContext context) {
    final l10n = context.localeKeys;
    return Column(
      children: [
        ExpressiveSectionHeader(title: l10n.metadataAndTempFiles),
        ListTileGroup(
          children: [
            ListTileIconComponent.top(
              leading: KuymoIcons.privacyPolicy,
              title: l10n.preserveVideoMetadata,
              subtitle: l10n.metadataPreservationSummary,
              onTap: () => onPreserveMetadataChanged(!preserveMetadata),
              onLongPress: () => context.showInfoBottomSheet(
                title: l10n.preserveVideoMetadata,
                description: l10n.preserveVideoMetadataDescription,
                icon: KuymoIcons.privacyPolicy,
                illustrationKind: InfoIllustrationKind.metadataPreservation,
              ),
              trailing: SwitchComponent(
                value: preserveMetadata,
                onChanged: onPreserveMetadataChanged,
              ),
            ),
            ListTileIconComponent.middle(
              leading: KuymoIcons.storage,
              title: l10n.autoWipeTempBuffers,
              subtitle: l10n.automaticTempCleanupSummary,
              onTap: () => onAutoWipeChanged(!autoWipeTempCache),
              onLongPress: () => context.showInfoBottomSheet(
                title: l10n.autoWipeTempBuffers,
                description: l10n.autoWipeTempBuffersDescription,
                icon: KuymoIcons.storage,
                illustrationKind: InfoIllustrationKind.automaticTempCleanup,
              ),
              trailing: SwitchComponent(
                value: autoWipeTempCache,
                onChanged: onAutoWipeChanged,
              ),
            ),
            ListTileIconComponent.bottom(
              leading: KuymoIcons.storage,
              title: l10n.clearScratchpadNow,
              subtitle: l10n.scratchpadCleanupSummary,
              onTap: isClearingCache ? null : onClearCache,
              onLongPress: () => context.showInfoBottomSheet(
                title: l10n.clearScratchpadNow,
                description: l10n.clearScratchpadDescription,
                icon: KuymoIcons.storage,
                illustrationKind: InfoIllustrationKind.scratchpadCleanup,
              ),
              showChevron: false,
              trailing: OutlinedButtonComponent(
                label: isClearingCache ? l10n.clearing : l10n.clear,
                isLoading: isClearingCache,
                onPressed: isClearingCache ? null : onClearCache,
              ),
            ),
          ],
        ),
        if (onSaveChatHistoryChanged != null) ...[
          const Gap(AppSpacing.small),
          ListTileGroup(
            children: [
              ListTileIconComponent.single(
                leading: KuymoIcons.aiChatSettings,
                title: l10n.saveAiChatHistory,
                onTap: () => onSaveChatHistoryChanged!(!saveChatHistory),
                showChevron: false,
                trailing: SwitchComponent(
                  value: saveChatHistory,
                  onChanged: onSaveChatHistoryChanged!,
                ),
              ),
            ],
          ),
        ],
      ],
    );
  }
}
