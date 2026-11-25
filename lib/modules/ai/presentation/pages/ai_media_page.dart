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

final class AiMediaPage extends StatefulWidget {
  const AiMediaPage({super.key});

  @override
  State<AiMediaPage> createState() => _AiMediaPageState();
}

final class _AiMediaPageState
    extends SettingsPageState<AiMediaPage, AiMediaSettings> {
  @override
  SettingsRepository<AiMediaSettings> get repository =>
      getIt<SettingsRepository<AiMediaSettings>>();

  bool get _analyzeThumbnails => settings.analyzeThumbnails;
  set _analyzeThumbnails(bool value) =>
      updateSettings((s) => s.copyWith(analyzeThumbnails: value));
  bool get _transcribeAudio => settings.transcribeAudio;
  set _transcribeAudio(bool value) =>
      updateSettings((s) => s.copyWith(transcribeAudio: value));
  int get _sampleRate => settings.sampleRate;
  set _sampleRate(int value) =>
      updateSettings((s) => s.copyWith(sampleRate: value));
  bool get _autoLang => settings.autoLang;
  set _autoLang(bool value) =>
      updateSettings((s) => s.copyWith(autoLang: value));

  @override
  Widget buildSettings(BuildContext context) {
    final l10n = context.localeKeys;

    return Scaffold(
      appBar: SidePageAppBarComponent(
        title: l10n.imagesAndAudio,
        actions: const [SettingsResetAction<AiMediaSettings>()],
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.large,
            vertical: AppSpacing.medium,
          ),
          children: [
            ExpressiveSectionHeader(title: l10n.visualSampling),
            ListTileGroup(
              children: [
                ListTileIconComponent.top(
                  leading: LucideIcons.galleryThumbnails,
                  title: l10n.analyzeVideoThumbnails,
                  onLongPress: () => context.showInfoBottomSheet(
                    title: l10n.analyzeVideoThumbnails,
                    icon: LucideIcons.galleryThumbnails,
                    illustrationKind: InfoIllustrationKind.mediaSearch,
                    description: l10n.analyzeThumbnailsDetails,
                  ),
                  subtitle: l10n.analyzeThumbnailsDescription,
                  onTap: () => setState(() {
                    _analyzeThumbnails = !_analyzeThumbnails;
                  }),
                  trailing: SwitchComponent(
                    value: _analyzeThumbnails,
                    onChanged: (val) {
                      unawaited(AppHaptics.button());
                      setState(() => _analyzeThumbnails = val);
                    },
                  ),
                ),
                ListTileIconComponent.bottom(
                  leading: LucideIcons.settings2,
                  title: l10n.keyframeSamplingDensity,
                  onLongPress: () => context.showInfoBottomSheet(
                    title: l10n.keyframeSamplingDensity,
                    icon: LucideIcons.settings2,
                    illustrationKind: InfoIllustrationKind.frameRate,
                    description: l10n.samplingDensityDetails,
                  ),
                  subtitle: _sampleRate == 1
                      ? l10n.framePerSecond(_sampleRate)
                      : l10n.framesPerSecond(_sampleRate),
                  trailing: DropdownButton<int>(
                    value: _sampleRate,
                    elevation: 0,
                    icon: const Icon(Icons.keyboard_arrow_down_outlined),
                    borderRadius: BorderRadius.circular(AppRadii.large),
                    underline: const SizedBox.shrink(),
                    items: [
                      DropdownMenuItem(
                        value: 1,
                        child: Text(l10n.framePerSecond(1)),
                      ),
                      DropdownMenuItem(
                        value: 2,
                        child: Text(l10n.framesPerSecond(2)),
                      ),
                      DropdownMenuItem(
                        value: 4,
                        child: Text(l10n.framesPerSecond(4)),
                      ),
                    ],
                    onChanged: (val) {
                      unawaited(AppHaptics.button());
                      setState(() => _sampleRate = val!);
                    },
                  ),
                ),
              ],
            ),
            const Gap(AppSpacing.xLarge),
            ExpressiveSectionHeader(title: l10n.audioTranscription),
            const Gap(AppSpacing.small),
            ListTileGroup(
              children: [
                ListTileIconComponent.top(
                  leading: LucideIcons.audioLines,
                  title: l10n.speechToText,
                  onLongPress: () => context.showInfoBottomSheet(
                    title: l10n.speechToText,
                    icon: LucideIcons.audioLines,
                    illustrationKind: InfoIllustrationKind.speechRecognition,
                    description: l10n.speechToTextDetails,
                  ),
                  subtitle: l10n.speechToTextDescription,
                  onTap: () => setState(() {
                    _transcribeAudio = !_transcribeAudio;
                  }),
                  trailing: SwitchComponent(
                    value: _transcribeAudio,
                    onChanged: (val) {
                      unawaited(AppHaptics.button());
                      setState(() => _transcribeAudio = val);
                    },
                  ),
                ),
                ListTileIconComponent.bottom(
                  leading: LucideIcons.languages,
                  title: l10n.spokenLanguageAutoDetect,
                  onLongPress: () => context.showInfoBottomSheet(
                    title: l10n.spokenLanguageAutoDetect,
                    icon: LucideIcons.languages,
                    illustrationKind: InfoIllustrationKind.subtitleGeneration,
                    description: l10n.spokenLanguageDetails,
                  ),
                  subtitle: l10n.spokenLanguageDescription,
                  showChevron: false,
                  onTap: () => setState(() {
                    _autoLang = !_autoLang;
                  }),
                  trailing: SwitchComponent(
                    value: _autoLang,
                    onChanged: (val) {
                      unawaited(AppHaptics.button());
                      setState(() => _autoLang = val);
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
