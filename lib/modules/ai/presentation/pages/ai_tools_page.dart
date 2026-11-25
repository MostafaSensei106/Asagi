import 'dart:async';

import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/design_system/tokens/tokens.dart';
import '../../../../core/di/di.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/preferences/domain/repositories/settings_repository.dart';
import '../../../../core/preferences/presentation/settings_page_state.dart';
import '../../../../core/preferences/presentation/settings_view.dart';
import '../../../../core/services/haptics/haptics_service.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/ai_settings.dart';
import '../widgets/ai_tools_workbench.dart';

final class AiToolsPage extends StatefulWidget {
  const AiToolsPage({super.key});

  @override
  State<AiToolsPage> createState() => _AiToolsPageState();
}

final class _AiToolsPageState
    extends SettingsPageState<AiToolsPage, AiToolSettings> {
  @override
  SettingsRepository<AiToolSettings> get repository =>
      getIt<SettingsRepository<AiToolSettings>>();

  bool get _trimTool => settings.trimTool;
  set _trimTool(bool value) =>
      updateSettings((s) => s.copyWith(trimTool: value));
  bool get _audioExtractTool => settings.audioExtractTool;
  set _audioExtractTool(bool value) =>
      updateSettings((s) => s.copyWith(audioExtractTool: value));
  bool get _metadataStripTool => settings.metadataStripTool;
  set _metadataStripTool(bool value) =>
      updateSettings((s) => s.copyWith(metadataStripTool: value));
  bool get _confirmDestructive => settings.confirmDestructive;
  set _confirmDestructive(bool value) =>
      updateSettings((s) => s.copyWith(confirmDestructive: value));
  bool get _sandboxScratchpad => settings.sandboxScratchpad;
  set _sandboxScratchpad(bool value) =>
      updateSettings((s) => s.copyWith(sandboxScratchpad: value));

  void _onToggle(String name, bool val, void Function() apply) {
    unawaited(AppHaptics.button());
    setState(apply);
  }

  @override
  Widget buildSettings(BuildContext context) {
    final l10n = context.localeKeys;

    return Scaffold(
      appBar: SidePageAppBarComponent(
        title: l10n.toolsAndStructuredOutput,
        actions: [
          const SettingsResetAction<AiToolSettings>(),
          IconButtonComponent(
            icon: LucideIcons.workflow,
            tooltip: l10n.toolsAndStructuredOutput,
            onPressed: () => unawaited(
              BottomSheetComponent.show<void>(
                context: context,
                child: SingleChildScrollView(
                  child: AiToolsWorkbench(settings: settings),
                ),
              ),
            ),
          ),
        ],
      ),
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
