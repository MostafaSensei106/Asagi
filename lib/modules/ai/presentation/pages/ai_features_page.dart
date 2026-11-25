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

final class AiFeaturesPage extends StatefulWidget {
  const AiFeaturesPage({super.key});

  @override
  State<AiFeaturesPage> createState() => _AiFeaturesPageState();
}

final class _AiFeaturesPageState
    extends SettingsPageState<AiFeaturesPage, AiFeatureSettings> {
  @override
  SettingsRepository<AiFeatureSettings> get repository =>
      getIt<SettingsRepository<AiFeatureSettings>>();

  bool get _bitrateRecommender => settings.bitrateRecommender;
  set _bitrateRecommender(bool value) =>
      updateSettings((s) => s.copyWith(bitrateRecommender: value));
  bool get _sceneKeyframes => settings.sceneKeyframes;
  set _sceneKeyframes(bool value) =>
      updateSettings((s) => s.copyWith(sceneKeyframes: value));
  bool get _noiseReduction => settings.noiseReduction;
  set _noiseReduction(bool value) =>
      updateSettings((s) => s.copyWith(noiseReduction: value));
  bool get _silentTrim => settings.silentTrim;
  set _silentTrim(bool value) =>
      updateSettings((s) => s.copyWith(silentTrim: value));
  bool get _facePriority => settings.facePriority;
  set _facePriority(bool value) =>
      updateSettings((s) => s.copyWith(facePriority: value));

  void _onToggle(String name, bool val, void Function() apply) {
    unawaited(AppHaptics.button());
    setState(apply);
  }

  @override
  Widget buildSettings(BuildContext context) {
    final l10n = context.localeKeys;

    return Scaffold(
      appBar: SidePageAppBarComponent(
        title: l10n.smartFeatures,
        actions: const [SettingsResetAction<AiFeatureSettings>()],
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.large,
            vertical: AppSpacing.small,
          ),
          children: [
            ExpressiveSectionHeader(title: l10n.compressionIntelligence),
            const Gap(AppSpacing.small),
            ListTileGroup(
              children: [
                ListTileIconComponent.top(
                  leading: LucideIcons.gauge,
                  title: l10n.smartBitrateRecommender,
                  onLongPress: () => context.showInfoBottomSheet(
                    title: l10n.smartBitrateRecommender,
                    icon: LucideIcons.gauge,
                    illustrationKind: InfoIllustrationKind.bitrateControl,
                    description: l10n.bitrateRecommenderDetails,
                  ),
                  subtitle: l10n.bitrateRecommenderDescription,
                  onTap: () => _onToggle(
                    l10n.bitrateRecommender,
                    !_bitrateRecommender,
                    () => _bitrateRecommender = !_bitrateRecommender,
                  ),
                  showChevron: false,
                  trailing: SwitchComponent(
                    value: _bitrateRecommender,
                    onChanged: (val) => _onToggle(
                      l10n.bitrateRecommender,
                      val,
                      () => _bitrateRecommender = val,
                    ),
                  ),
                ),
                ListTileIconComponent.middle(
                  leading: LucideIcons.scanLine,
                  title: l10n.sceneAwareKeyframePlacement,
                  onLongPress: () => context.showInfoBottomSheet(
                    title: l10n.sceneAwareKeyframePlacement,
                    icon: LucideIcons.scanLine,
                    illustrationKind: InfoIllustrationKind.frameRate,
                    description: l10n.sceneKeyframeDetails,
                  ),
                  subtitle: l10n.sceneKeyframeDescription,
                  onTap: () => _onToggle(
                    l10n.sceneKeyframes,
                    !_sceneKeyframes,
                    () => _sceneKeyframes = !_sceneKeyframes,
                  ),
                  showChevron: false,
                  trailing: SwitchComponent(
                    value: _sceneKeyframes,
                    onChanged: (val) => _onToggle(
                      l10n.sceneKeyframes,
                      val,
                      () => _sceneKeyframes = val,
                    ),
                  ),
                ),
                ListTileIconComponent.middle(
                  leading: LucideIcons.sparkles,
                  title: l10n.cameraSensorDenoising,
                  onLongPress: () => context.showInfoBottomSheet(
                    title: l10n.cameraSensorDenoising,
                    icon: LucideIcons.sparkles,
                    illustrationKind: InfoIllustrationKind.videoQuality,
                    description: l10n.noiseReductionDetails,
                  ),
                  subtitle: l10n.noiseReductionDescription,
                  onTap: () => _onToggle(
                    l10n.noiseReduction,
                    !_noiseReduction,
                    () => _noiseReduction = !_noiseReduction,
                  ),
                  showChevron: false,
                  trailing: SwitchComponent(
                    value: _noiseReduction,
                    onChanged: (val) => _onToggle(
                      l10n.noiseReduction,
                      val,
                      () => _noiseReduction = val,
                    ),
                  ),
                ),
                ListTileIconComponent.middle(
                  leading: LucideIcons.volumeX,
                  title: l10n.silentAudioTrimming,
                  onLongPress: () => context.showInfoBottomSheet(
                    title: l10n.silentAudioTrimming,
                    icon: LucideIcons.volumeX,
                    illustrationKind: InfoIllustrationKind.audio,
                    description: l10n.silentAudioDetails,
                  ),
                  subtitle: l10n.silentAudioDescription,
                  onTap: () => _onToggle(
                    l10n.silentTrim,
                    !_silentTrim,
                    () => _silentTrim = !_silentTrim,
                  ),
                  showChevron: false,
                  trailing: SwitchComponent(
                    value: _silentTrim,
                    onChanged: (val) => _onToggle(
                      l10n.silentTrim,
                      val,
                      () => _silentTrim = val,
                    ),
                  ),
                ),
                ListTileIconComponent.bottom(
                  leading: LucideIcons.scanFace,
                  title: l10n.subjectFacePriority,
                  onLongPress: () => context.showInfoBottomSheet(
                    title: l10n.subjectFacePriority,
                    icon: LucideIcons.scanFace,
                    illustrationKind: InfoIllustrationKind.mediaAnalysis,
                    description: l10n.facePriorityDetails,
                  ),
                  subtitle: l10n.facePriorityDescription,
                  onTap: () => _onToggle(
                    l10n.facePriority,
                    !_facePriority,
                    () => _facePriority = !_facePriority,
                  ),
                  showChevron: false,
                  trailing: SwitchComponent(
                    value: _facePriority,
                    onChanged: (val) => _onToggle(
                      l10n.facePriority,
                      val,
                      () => _facePriority = val,
                    ),
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
