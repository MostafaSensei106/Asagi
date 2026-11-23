import 'dart:async';

import 'package:flutter/services.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/asagi_icons.dart';
import '../../../../core/constants/design_system/tokens/tokens.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/widgets.dart';
import '../../../../l10n/app_localizations.dart';

final class AiModelsPage extends StatefulWidget {
  const AiModelsPage({super.key});

  @override
  State<AiModelsPage> createState() => _AiModelsPageState();
}

final class _AiModelsPageState extends State<AiModelsPage> {
  String _activeModelId = 'compress_02b';

  final List<
    ({
      String id,
      String name,
      String desc,
      String size,
      String ram,
      bool isInstalled,
    })
  >
  _models = [
    (
      id: 'compress_02b',
      name: 'asagiBitrateOptimizer',
      desc: 'localRateControlDescription',
      size: '48 MB',
      ram: '85 MB RAM',
      isInstalled: true,
    ),
    (
      id: 'scene_v4',
      name: 'mobileNetSceneClassifier',
      desc: 'sceneClassifierDescription',
      size: '34 MB',
      ram: '60 MB RAM',
      isInstalled: true,
    ),
    (
      id: 'whisper_tiny',
      name: 'whisperTinyTranscriber',
      desc: 'whisperTranscriberDescription',
      size: '78 MB',
      ram: '140 MB RAM',
      isInstalled: false,
    ),
    (
      id: 'llama_1b',
      name: 'llamaMobileAssistant',
      desc: 'llamaAssistantDescription',
      size: '720 MB',
      ram: '1.2 GB RAM',
      isInstalled: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final l10n = context.localeKeys;
    final colorScheme = context.colorScheme;

    return Scaffold(
      appBar: SidePageAppBarComponent(title: l10n.localModels),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.large,
          vertical: AppSpacing.small,
        ),
        children: [
          ExpressiveSectionHeader(title: l10n.supportedOnDeviceModels),
          for (final model in _models) ...[
            CardComponent.filled(
              padding: const EdgeInsets.all(AppSpacing.small),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      ExpressiveIcon(
                        icon: AsagiIcons.ai,
                        shape: ExpressiveIconShape.cookie,
                        size: AppIconSizes.xlarge,
                        backgroundColor: _activeModelId == model.id
                            ? colorScheme.primaryContainer
                            : colorScheme.surfaceContainerHighest,
                        foregroundColor: _activeModelId == model.id
                            ? colorScheme.onPrimaryContainer
                            : colorScheme.onSurfaceVariant,
                      ),
                      const Gap.horizontal(AppSpacing.xSmall),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              _localizedModelName(l10n, model.id),
                              style: context.textTheme.titleSmall?.copyWith(),
                            ),
                            Text(
                              l10n.modelStorageUsage(model.size, model.ram),
                              style: context.textTheme.bodySmall?.copyWith(
                                color: colorScheme.primary,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      if (_activeModelId == model.id)
                        ChipComponent(label: l10n.active, showBorder: false),
                    ],
                  ),
                  const Gap(AppSpacing.small),
                  Text(
                    _localizedModelDescription(l10n, model.id),
                    style: context.textTheme.bodySmall?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                      height: 1.4,
                    ),
                  ),
                  const Gap(AppSpacing.medium),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      if (model.isInstalled) ...[
                        if (_activeModelId != model.id)
                          FilledTonalButtonComponent(
                            label: l10n.setActive,
                            useInBorderRadius: true,
                            onPressed: () {
                              unawaited(HapticFeedback.vibrate());
                              setState(() => _activeModelId = model.id);
                              context.toast.showSuccess(
                                context,
                                l10n.modelActivated(
                                  _localizedModelName(l10n, model.id),
                                ),
                              );
                            },
                          )
                        else
                          ChipComponent(label: l10n.installed),
                      ] else
                        FilledButtonComponent.icon(
                          icon: LucideIcons.download,
                          label: l10n.downloadModel(model.size),
                          useInBorderRadius: true,
                          onPressed: () {
                            unawaited(HapticFeedback.vibrate());
                            context.toast.showInfo(
                              context,
                              l10n.modelDownloadQueued(
                                _localizedModelName(l10n, model.id),
                              ),
                            );
                          },
                        ),
                    ],
                  ),
                ],
              ),
            ),
            const Gap(AppSpacing.small),
          ],
        ],
      ),
    );
  }

  String _localizedModelName(AppLocalizations l10n, String id) => switch (id) {
    'compress_02b' => l10n.asagiBitrateOptimizer,
    'scene_v4' => l10n.mobileNetSceneClassifier,
    'whisper_tiny' => l10n.whisperTinyTranscriber,
    'llama_1b' => l10n.llamaMobileAssistant,
    _ => id,
  };

  String _localizedModelDescription(AppLocalizations l10n, String id) =>
      switch (id) {
        'compress_02b' => l10n.localRateControlDescription,
        'scene_v4' => l10n.sceneClassifierDescription,
        'whisper_tiny' => l10n.whisperTranscriberDescription,
        'llama_1b' => l10n.llamaAssistantDescription,
        _ => '',
      };
}
