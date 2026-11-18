import 'dart:async';

import 'package:flutter/services.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/design_system/tokens/tokens.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/widgets.dart';

final class AiToolsPage extends StatefulWidget {
  const AiToolsPage({super.key});

  @override
  State<AiToolsPage> createState() => _AiToolsPageState();
}

final class _AiToolsPageState extends State<AiToolsPage> {
  bool _trimTool = true;
  bool _audioExtractTool = true;
  bool _metadataStripTool = true;
  bool _confirmDestructive = true;
  bool _sandboxScratchpad = true;

  void _onToggle(String name, bool val, void Function() apply) {
    unawaited(HapticFeedback.selectionClick());
    setState(apply);
    context.toast.showInfo(
      context,
      '$name ${val ? context.localeKeys.enabled : context.localeKeys.disabled}',
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.localeKeys;

    return Scaffold(
      appBar: SidePageAppBarComponent(title: l10n.toolsAndStructuredOutput),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.large,
          vertical: AppSpacing.small,
        ),
        children: [
          ExpressiveSectionHeader(title: l10n.assistantCapabilities),
          const Gap(AppSpacing.small),
          ListTileGroup(
            children: [
              ListTileIconComponent.top(
                leading: LucideIcons.scissors,
                title: l10n.directVideoTrimming,
                onLongPress: () => context.showInfoBottomSheet(
                  title: l10n.directVideoTrimming,
                  icon: LucideIcons.scissors,
                  illustrationKind: InfoIllustrationKind.videoCompression,
                  description: l10n.directTrimmingDetails,
                ),
                subtitle: l10n.directTrimmingDescription,
                onTap: () => _onToggle(
                  l10n.videoTrimmer,
                  !_trimTool,
                  () => _trimTool = !_trimTool,
                ),
                showChevron: false,
                trailing: SwitchComponent(
                  value: _trimTool,
                  onChanged: (val) =>
                      _onToggle(l10n.videoTrimmer, val, () => _trimTool = val),
                ),
              ),
              ListTileIconComponent.middle(
                leading: LucideIcons.audioLines,
                title: l10n.audioTrackExtraction,
                onLongPress: () => context.showInfoBottomSheet(
                  title: l10n.audioTrackExtraction,
                  icon: LucideIcons.audioLines,
                  illustrationKind: InfoIllustrationKind.audio,
                  description: l10n.audioExtractionDetails,
                ),
                subtitle: l10n.audioExtractionDescription,
                onTap: () => _onToggle(
                  l10n.audioExtractor,
                  !_audioExtractTool,
                  () => _audioExtractTool = !_audioExtractTool,
                ),
                showChevron: false,
                trailing: SwitchComponent(
                  value: _audioExtractTool,
                  onChanged: (val) => _onToggle(
                    l10n.audioExtractor,
                    val,
                    () => _audioExtractTool = val,
                  ),
                ),
              ),
              ListTileIconComponent.bottom(
                leading: LucideIcons.fileKey,
                title: l10n.metadataScrubber,
                onLongPress: () => context.showInfoBottomSheet(
                  title: l10n.metadataScrubber,
                  icon: LucideIcons.fileKey,
                  illustrationKind: InfoIllustrationKind.metadataRemoval,
                  description: l10n.metadataScrubberDetails,
                ),
                subtitle: l10n.metadataScrubberDescription,
                onTap: () => _onToggle(
                  l10n.metadataScrubberToast,
                  !_metadataStripTool,
                  () => _metadataStripTool = !_metadataStripTool,
                ),
                showChevron: false,
                trailing: SwitchComponent(
                  value: _metadataStripTool,
                  onChanged: (val) => _onToggle(
                    l10n.metadataScrubberToast,
                    val,
                    () => _metadataStripTool = val,
                  ),
                ),
              ),
            ],
          ),
          const Gap(AppSpacing.xLarge),
          ExpressiveSectionHeader(title: l10n.safetyGuardrails),
          ListTileGroup(
            children: [
              ListTileIconComponent.top(
                leading: LucideIcons.shieldCheck,
                title: l10n.requireConfirmation,
                onLongPress: () => context.showInfoBottomSheet(
                  title: l10n.requireConfirmation,
                  icon: LucideIcons.shieldCheck,
                  illustrationKind: InfoIllustrationKind.fileAccess,
                  description: l10n.requireConfirmationDetails,
                ),
                subtitle: l10n.requireConfirmationDescription,
                onTap: () => _onToggle(
                  l10n.safetyConfirmation,
                  !_confirmDestructive,
                  () => _confirmDestructive = !_confirmDestructive,
                ),
                showChevron: false,
                trailing: SwitchComponent(
                  value: _confirmDestructive,
                  onChanged: (val) => _onToggle(
                    l10n.safetyConfirmation,
                    val,
                    () => _confirmDestructive = val,
                  ),
                ),
              ),
              ListTileIconComponent.bottom(
                leading: LucideIcons.packageOpen,
                title: l10n.sandboxedScratchpad,
                onLongPress: () => context.showInfoBottomSheet(
                  title: l10n.sandboxedScratchpad,
                  icon: LucideIcons.packageOpen,
                  illustrationKind: InfoIllustrationKind.scratchpadCleanup,
                  description: l10n.sandboxedScratchpadDetails,
                ),
                subtitle: l10n.sandboxedScratchpadDescription,
                onTap: () => _onToggle(
                  l10n.sandboxedScratchpadToast,
                  !_sandboxScratchpad,
                  () => _sandboxScratchpad = !_sandboxScratchpad,
                ),
                showChevron: false,
                trailing: SwitchComponent(
                  value: _sandboxScratchpad,
                  onChanged: (val) => _onToggle(
                    l10n.sandboxedScratchpadToast,
                    val,
                    () => _sandboxScratchpad = val,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
