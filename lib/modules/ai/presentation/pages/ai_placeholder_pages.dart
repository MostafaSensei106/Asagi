import 'dart:async';

import 'package:flutter/services.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/design_system/tokens/tokens.dart';
import '../../../../core/constants/zumi_icons.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/widgets.dart';

// ---------------------------------------------------------------------------
// 1. AiModelsPage
// ---------------------------------------------------------------------------

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
      name: 'Zumi Bitrate Optimizer (0.2B)',
      desc: 'Local neural rate-control model for optimal scene quantization.',
      size: '48 MB',
      ram: '85 MB RAM',
      isInstalled: true,
    ),
    (
      id: 'scene_v4',
      name: 'MobileNetV4 Scene Classifier',
      desc: 'Detects fast motion and camera cuts to place clean keyframes.',
      size: '34 MB',
      ram: '60 MB RAM',
      isInstalled: true,
    ),
    (
      id: 'whisper_tiny',
      name: 'Whisper Tiny Audio Transcriber',
      desc: 'High-speed local speech-to-text for automatic video subtitles.',
      size: '78 MB',
      ram: '140 MB RAM',
      isInstalled: false,
    ),
    (
      id: 'llama_1b',
      name: 'Llama 3.2 1B Mobile Assistant',
      desc: 'Conversational assistant for video questions and editing advice.',
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
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.large,
            vertical: AppSpacing.medium,
          ),
          children: [
            CardComponent.filled(
              padding: const EdgeInsets.all(AppSpacing.large),
              child: Row(
                children: [
                  ExpressiveIcon(
                    icon: ZumiIcons.aiModels,
                    shape: ExpressiveIconShape.gem,
                    size: 52,
                    backgroundColor: colorScheme.primaryContainer,
                    foregroundColor: colorScheme.onPrimaryContainer,
                  ),
                  const Gap.horizontal(AppSpacing.large),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          l10n.localModels,
                          style: context.textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Gap(AppSpacing.xSmall),
                        Text(
                          l10n.chooseASupportedModelDownloadItToThisDeviceAndManageInstalledModelsHere,
                          style: context.textTheme.bodySmall?.copyWith(
                            color: colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Gap(AppSpacing.xLarge),
            const ExpressiveSectionHeader(title: 'Supported On-Device Models'),
            const Gap(AppSpacing.small),
            for (final model in _models) ...[
              CardComponent.outlined(
                padding: const EdgeInsets.all(AppSpacing.large),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        ExpressiveIcon(
                          icon: ZumiIcons.ai,
                          shape: ExpressiveIconShape.cookie,
                          size: 36,
                          backgroundColor: _activeModelId == model.id
                              ? colorScheme.primaryContainer
                              : colorScheme.surfaceContainerHighest,
                          foregroundColor: _activeModelId == model.id
                              ? colorScheme.onPrimaryContainer
                              : colorScheme.onSurfaceVariant,
                        ),
                        const Gap.horizontal(AppSpacing.medium),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                model.name,
                                style: context.textTheme.titleSmall?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '${model.size} • ${model.ram}',
                                style: context.textTheme.bodySmall?.copyWith(
                                  color: colorScheme.primary,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                        if (_activeModelId == model.id)
                          const ChipComponent(
                            label: 'Active',
                            showBorder: false,
                          ),
                      ],
                    ),
                    const Gap(AppSpacing.small),
                    Text(
                      model.desc,
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
                              label: 'Set Active',
                              onPressed: () {
                                unawaited(HapticFeedback.selectionClick());
                                setState(() => _activeModelId = model.id);
                                context.toast.showSuccess(
                                  context,
                                  '${model.name} activated',
                                );
                              },
                            )
                          else
                            const OutlinedButtonComponent(
                              label: 'Installed',
                              isEnabled: false,
                            ),
                        ] else
                          FilledButtonComponent.icon(
                            icon: LucideIcons.download,
                            label: 'Download (${model.size})',
                            onPressed: () {
                              unawaited(HapticFeedback.mediumImpact());
                              context.toast.showInfo(
                                context,
                                'Download queued for ${model.name}',
                              );
                            },
                          ),
                      ],
                    ),
                  ],
                ),
              ),
              const Gap(AppSpacing.medium),
            ],
          ],
        ),
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// 2. AiImportModelPage
// ---------------------------------------------------------------------------

final class AiImportModelPage extends StatefulWidget {
  const AiImportModelPage({super.key});

  @override
  State<AiImportModelPage> createState() => _AiImportModelPageState();
}

final class _AiImportModelPageState extends State<AiImportModelPage> {
  String? _selectedFileName;
  bool _isValidating = false;

  void _pickModelFile() {
    unawaited(HapticFeedback.selectionClick());
    setState(() {
      _selectedFileName = 'custom-compression-v1.gguf (214 MB)';
    });
    context.toast.showInfo(context, 'Model file selected');
  }

  Future<void> _validateAndImport() async {
    setState(() => _isValidating = true);
    unawaited(HapticFeedback.mediumImpact());
    await Future<void>.delayed(const Duration(milliseconds: 750));
    if (!mounted) return;
    setState(() => _isValidating = false);
    context.toast.showSuccess(
      context,
      'Model imported & verified for local inference',
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.localeKeys;
    final colorScheme = context.colorScheme;

    return Scaffold(
      appBar: SidePageAppBarComponent(title: l10n.importAModel),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.large,
            vertical: AppSpacing.medium,
          ),
          children: [
            CardComponent.filled(
              padding: const EdgeInsets.all(AppSpacing.large),
              child: Row(
                children: [
                  ExpressiveIcon(
                    icon: ZumiIcons.aiImport,
                    shape: ExpressiveIconShape.fan,
                    size: 52,
                    backgroundColor: colorScheme.primaryContainer,
                    foregroundColor: colorScheme.onPrimaryContainer,
                  ),
                  const Gap.horizontal(AppSpacing.large),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          l10n.importAModel,
                          style: context.textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Gap(AppSpacing.xSmall),
                        Text(
                          l10n.selectACompatibleLocalModelFileAndReviewItsRequirementsBeforeUsingIt,
                          style: context.textTheme.bodySmall?.copyWith(
                            color: colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Gap(AppSpacing.xLarge),
            CardComponent.outlined(
              padding: const EdgeInsets.all(AppSpacing.large),
              child: Column(
                children: [
                  Icon(
                    LucideIcons.fileUp,
                    size: 44,
                    color: colorScheme.primary,
                  ),
                  const Gap(AppSpacing.medium),
                  Text(
                    _selectedFileName ?? 'No Model File Selected',
                    style: context.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Gap(AppSpacing.xSmall),
                  Text(
                    'Compatible formats: .gguf, .onnx, .tflite',
                    style: context.textTheme.bodySmall?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),
                  const Gap(AppSpacing.large),
                  FilledTonalButtonComponent.icon(
                    icon: LucideIcons.folderOpen,
                    label: 'Browse Files',
                    onPressed: _pickModelFile,
                  ),
                ],
              ),
            ),
            const Gap(AppSpacing.xLarge),
            const ExpressiveSectionHeader(
              title: 'Import Compatibility Checklist',
            ),
            const Gap(AppSpacing.small),
            CardComponent.outlined(
              padding: const EdgeInsets.all(AppSpacing.large),
              child: Column(
                children: [
                  _ChecklistRow(
                    label: 'Format & Quantization (GGUF / ONNX / TFLite)',
                    isValid: _selectedFileName != null,
                  ),
                  const Gap(AppSpacing.small),
                  _ChecklistRow(
                    label: 'Memory Cap Verification (< 2GB Peak RAM)',
                    isValid: _selectedFileName != null,
                  ),
                  const Gap(AppSpacing.small),
                  _ChecklistRow(
                    label: 'Architecture (Llama / MobileNet / Whisper)',
                    isValid: _selectedFileName != null,
                  ),
                ],
              ),
            ),
            const Gap(AppSpacing.large),
            FilledButtonComponent(
              expand: true,
              label: _isValidating ? 'Validating…' : 'Validate & Import Model',
              icon: ZumiIcons.aiImport,
              isEnabled: _selectedFileName != null && !_isValidating,
              isLoading: _isValidating,
              onPressed: _selectedFileName != null ? _validateAndImport : null,
            ),
          ],
        ),
      ),
    );
  }
}

final class _ChecklistRow extends StatelessWidget {
  const _ChecklistRow({required this.label, required this.isValid});

  final String label;
  final bool isValid;

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.colorScheme;
    return Row(
      children: [
        Icon(
          isValid ? ZumiIcons.compressionResult : LucideIcons.circleDashed,
          size: 18,
          color: isValid ? colorScheme.primary : colorScheme.onSurfaceVariant,
        ),
        const Gap.horizontal(AppSpacing.small),
        Expanded(
          child: Text(
            label,
            style: context.textTheme.bodySmall?.copyWith(
              color: colorScheme.onSurface,
            ),
          ),
        ),
      ],
    );
  }
}

// ---------------------------------------------------------------------------
// 3. AiFeaturesPage
// ---------------------------------------------------------------------------

final class AiFeaturesPage extends StatefulWidget {
  const AiFeaturesPage({super.key});

  @override
  State<AiFeaturesPage> createState() => _AiFeaturesPageState();
}

final class _AiFeaturesPageState extends State<AiFeaturesPage> {
  bool _bitrateRecommender = true;
  bool _sceneKeyframes = true;
  bool _noiseReduction = true;
  bool _silentTrim = false;
  bool _facePriority = true;

  void _onToggle(String name, bool val, void Function() apply) {
    unawaited(HapticFeedback.selectionClick());
    setState(apply);
    context.toast.showInfo(context, '$name ${val ? 'enabled' : 'disabled'}');
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.localeKeys;
    final colorScheme = context.colorScheme;

    return Scaffold(
      appBar: SidePageAppBarComponent(title: l10n.smartFeatures),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.large,
            vertical: AppSpacing.medium,
          ),
          children: [
            CardComponent.filled(
              padding: const EdgeInsets.all(AppSpacing.large),
              child: Row(
                children: [
                  ExpressiveIcon(
                    icon: ZumiIcons.aiFeatures,
                    shape: ExpressiveIconShape.puffyDiamond,
                    size: 52,
                    backgroundColor: colorScheme.primaryContainer,
                    foregroundColor: colorScheme.onPrimaryContainer,
                  ),
                  const Gap.horizontal(AppSpacing.large),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          l10n.smartFeatures,
                          style: context.textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Gap(AppSpacing.xSmall),
                        Text(
                          l10n.chooseWhichLocalAISuggestionsToUseForVideoCompressionOrganizationNamingAndSearch,
                          style: context.textTheme.bodySmall?.copyWith(
                            color: colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Gap(AppSpacing.xLarge),
            const ExpressiveSectionHeader(title: 'Compression Intelligence'),
            const Gap(AppSpacing.small),
            ListTileGroup(
              children: [
                ListTileComponent.top(
                  title: const Text('Smart Bitrate Recommender'),
                  subtitle: const Text(
                    'Estimates motion complexity to allocate bitrate exactly where needed',
                  ),
                  showChevron: false,
                  trailing: SwitchComponent(
                    label: 'Bitrate Recommender',
                    value: _bitrateRecommender,
                    onChanged: (val) => _onToggle(
                      'Bitrate recommender',
                      val,
                      () => _bitrateRecommender = val,
                    ),
                  ),
                ),
                ListTileComponent.middle(
                  title: const Text('Scene-Aware Keyframe Placement'),
                  subtitle: const Text(
                    'Places I-frames at camera angle transitions for smooth seeking',
                  ),
                  showChevron: false,
                  trailing: SwitchComponent(
                    label: 'Scene Keyframes',
                    value: _sceneKeyframes,
                    onChanged: (val) => _onToggle(
                      'Scene keyframes',
                      val,
                      () => _sceneKeyframes = val,
                    ),
                  ),
                ),
                ListTileComponent.middle(
                  title: const Text('Camera Sensor De-Noising'),
                  subtitle: const Text(
                    'Filters low-light sensor grain to boost compression efficiency',
                  ),
                  showChevron: false,
                  trailing: SwitchComponent(
                    label: 'Noise Reduction',
                    value: _noiseReduction,
                    onChanged: (val) => _onToggle(
                      'Noise reduction',
                      val,
                      () => _noiseReduction = val,
                    ),
                  ),
                ),
                ListTileComponent.middle(
                  title: const Text('Silent Audio Trimming'),
                  subtitle: const Text(
                    'Skips inactive audio samples to save bandwidth',
                  ),
                  showChevron: false,
                  trailing: SwitchComponent(
                    label: 'Silent Trim',
                    value: _silentTrim,
                    onChanged: (val) =>
                        _onToggle('Silent trim', val, () => _silentTrim = val),
                  ),
                ),
                ListTileComponent.bottom(
                  title: const Text('Subject & Face Priority'),
                  subtitle: const Text(
                    'Allocates higher quantization fidelity to detected faces',
                  ),
                  showChevron: false,
                  trailing: SwitchComponent(
                    label: 'Face Priority',
                    value: _facePriority,
                    onChanged: (val) => _onToggle(
                      'Face priority',
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

// ---------------------------------------------------------------------------
// 4. AiRuntimePage
// ---------------------------------------------------------------------------

final class AiRuntimePage extends StatefulWidget {
  const AiRuntimePage({super.key});

  @override
  State<AiRuntimePage> createState() => _AiRuntimePageState();
}

final class _AiRuntimePageState extends State<AiRuntimePage> {
  String _backend = 'Auto (Neural Engine / GPU)';
  double _threadCount = 4;
  String _memoryCap = '1.0 GB';
  bool _lowPowerMode = false;
  bool _isBenchmarking = false;

  Future<void> _runBenchmark() async {
    setState(() => _isBenchmarking = true);
    unawaited(HapticFeedback.mediumImpact());
    await Future<void>.delayed(const Duration(milliseconds: 800));
    if (!mounted) return;
    setState(() => _isBenchmarking = false);
    context.toast.showSuccess(
      context,
      'Benchmark score: 4,820 tokens/sec • Hardware optimal',
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.localeKeys;
    final colorScheme = context.colorScheme;

    return Scaffold(
      appBar: SidePageAppBarComponent(title: l10n.modelPerformance),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.large,
            vertical: AppSpacing.medium,
          ),
          children: [
            CardComponent.filled(
              padding: const EdgeInsets.all(AppSpacing.large),
              child: Row(
                children: [
                  ExpressiveIcon(
                    icon: ZumiIcons.aiRuntime,
                    shape: ExpressiveIconShape.arch,
                    size: 52,
                    backgroundColor: colorScheme.primaryContainer,
                    foregroundColor: colorScheme.onPrimaryContainer,
                  ),
                  const Gap.horizontal(AppSpacing.large),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          l10n.modelPerformance,
                          style: context.textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Gap(AppSpacing.xSmall),
                        Text(
                          l10n.controlTheProcessingBackendAndResourceLimitsForSupportedModels,
                          style: context.textTheme.bodySmall?.copyWith(
                            color: colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Gap(AppSpacing.xLarge),
            const ExpressiveSectionHeader(title: 'Hardware Acceleration'),
            const Gap(AppSpacing.small),
            CardComponent.outlined(
              padding: const EdgeInsets.all(AppSpacing.large),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Compute Backend',
                    style: context.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Gap(AppSpacing.small),
                  DropdownButtonFormField<String>(
                    initialValue: _backend,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: AppSpacing.medium,
                        vertical: AppSpacing.small,
                      ),
                    ),
                    items: const [
                      DropdownMenuItem(
                        value: 'Auto (Neural Engine / GPU)',
                        child: Text('Auto (Neural Engine / GPU)'),
                      ),
                      DropdownMenuItem(
                        value: 'Vulkan / GPU Compute',
                        child: Text('Vulkan / GPU Compute'),
                      ),
                      DropdownMenuItem(
                        value: 'CPU Multi-Threading',
                        child: Text('CPU Multi-Threading'),
                      ),
                    ],
                    onChanged: (val) => setState(() => _backend = val!),
                  ),
                  const Gap(AppSpacing.large),
                  Text(
                    'CPU Thread Allocation: ${_threadCount.toInt()} Threads',
                    style: context.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Slider(
                    value: _threadCount,
                    min: 1,
                    max: 8,
                    divisions: 7,
                    label: '${_threadCount.toInt()} Threads',
                    onChanged: (val) => setState(() => _threadCount = val),
                  ),
                  const Gap(AppSpacing.medium),
                  Text(
                    'Memory Budget Cap',
                    style: context.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Gap(AppSpacing.small),
                  DropdownButtonFormField<String>(
                    initialValue: _memoryCap,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: AppSpacing.medium,
                        vertical: AppSpacing.small,
                      ),
                    ),
                    items: const [
                      DropdownMenuItem(value: '512 MB', child: Text('512 MB')),
                      DropdownMenuItem(value: '1.0 GB', child: Text('1.0 GB')),
                      DropdownMenuItem(value: '2.0 GB', child: Text('2.0 GB')),
                      DropdownMenuItem(value: '4.0 GB', child: Text('4.0 GB')),
                    ],
                    onChanged: (val) => setState(() => _memoryCap = val!),
                  ),
                ],
              ),
            ),
            const Gap(AppSpacing.xLarge),
            ListTileGroup(
              children: [
                ListTileComponent.single(
                  title: const Text('Battery Saver Mode'),
                  subtitle: const Text(
                    'Throttle heavy compute when battery level is below 20%',
                  ),
                  showChevron: false,
                  trailing: SwitchComponent(
                    label: 'Battery Saver',
                    value: _lowPowerMode,
                    onChanged: (val) {
                      unawaited(HapticFeedback.selectionClick());
                      setState(() => _lowPowerMode = val);
                    },
                  ),
                ),
              ],
            ),
            const Gap(AppSpacing.large),
            FilledTonalButtonComponent.icon(
              icon: ZumiIcons.aiRuntime,
              label: _isBenchmarking ? 'Testing…' : 'Benchmark Engine Now',
              onPressed: _runBenchmark,
            ),
          ],
        ),
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// 5. AiChatSettingsPage
// ---------------------------------------------------------------------------

final class AiChatSettingsPage extends StatefulWidget {
  const AiChatSettingsPage({super.key});

  @override
  State<AiChatSettingsPage> createState() => _AiChatSettingsPageState();
}

final class _AiChatSettingsPageState extends State<AiChatSettingsPage> {
  bool _streaming = true;
  bool _showThinking = true;
  double _temperature = 0.7;
  String _maxTokens = '1024';

  @override
  Widget build(BuildContext context) {
    final l10n = context.localeKeys;
    final colorScheme = context.colorScheme;

    return Scaffold(
      appBar: SidePageAppBarComponent(title: l10n.conversationSettings),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.large,
            vertical: AppSpacing.medium,
          ),
          children: [
            CardComponent.filled(
              padding: const EdgeInsets.all(AppSpacing.large),
              child: Row(
                children: [
                  ExpressiveIcon(
                    icon: ZumiIcons.aiChatSettings,
                    shape: ExpressiveIconShape.clover,
                    size: 52,
                    backgroundColor: colorScheme.primaryContainer,
                    foregroundColor: colorScheme.onPrimaryContainer,
                  ),
                  const Gap.horizontal(AppSpacing.large),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          l10n.conversationSettings,
                          style: context.textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Gap(AppSpacing.xSmall),
                        Text(
                          l10n.configureHowTheAssistantRespondsIncludingStreamingThinkingModeSamplingAndResponseLimits,
                          style: context.textTheme.bodySmall?.copyWith(
                            color: colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Gap(AppSpacing.xLarge),
            const ExpressiveSectionHeader(title: 'Interaction Style'),
            const Gap(AppSpacing.small),
            ListTileGroup(
              children: [
                ListTileComponent.top(
                  title: const Text('Stream Text Output'),
                  subtitle: const Text(
                    'Render assistant tokens continuously as they are generated',
                  ),
                  showChevron: false,
                  trailing: SwitchComponent(
                    label: 'Streaming',
                    value: _streaming,
                    onChanged: (val) {
                      unawaited(HapticFeedback.selectionClick());
                      setState(() => _streaming = val);
                    },
                  ),
                ),
                ListTileComponent.bottom(
                  title: const Text('Show Reasoning / Thinking'),
                  subtitle: const Text(
                    'Display step-by-step reasoning blocks inside chat bubbles',
                  ),
                  showChevron: false,
                  trailing: SwitchComponent(
                    label: 'Thinking Mode',
                    value: _showThinking,
                    onChanged: (val) {
                      unawaited(HapticFeedback.selectionClick());
                      setState(() => _showThinking = val);
                    },
                  ),
                ),
              ],
            ),
            const Gap(AppSpacing.xLarge),
            const ExpressiveSectionHeader(title: 'Generation Sampling'),
            const Gap(AppSpacing.small),
            CardComponent.outlined(
              padding: const EdgeInsets.all(AppSpacing.large),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Creativity & Temperature: ${_temperature.toStringAsFixed(1)}',
                    style: context.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Slider(
                    value: _temperature,
                    min: 0.1,
                    divisions: 9,
                    label: _temperature.toStringAsFixed(1),
                    onChanged: (val) => setState(() => _temperature = val),
                  ),
                  const Gap(AppSpacing.medium),
                  Text(
                    'Max Generation Tokens',
                    style: context.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Gap(AppSpacing.small),
                  DropdownButtonFormField<String>(
                    initialValue: _maxTokens,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: AppSpacing.medium,
                        vertical: AppSpacing.small,
                      ),
                    ),
                    items: const [
                      DropdownMenuItem(value: '256', child: Text('256 Tokens')),
                      DropdownMenuItem(value: '512', child: Text('512 Tokens')),
                      DropdownMenuItem(
                        value: '1024',
                        child: Text('1024 Tokens'),
                      ),
                      DropdownMenuItem(
                        value: '2048',
                        child: Text('2048 Tokens'),
                      ),
                    ],
                    onChanged: (val) => setState(() => _maxTokens = val!),
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

// ---------------------------------------------------------------------------
// 6. AiMediaPage
// ---------------------------------------------------------------------------

final class AiMediaPage extends StatefulWidget {
  const AiMediaPage({super.key});

  @override
  State<AiMediaPage> createState() => _AiMediaPageState();
}

final class _AiMediaPageState extends State<AiMediaPage> {
  bool _analyzeThumbnails = true;
  bool _transcribeAudio = true;
  String _sampleRate = '2 Frames/sec';
  bool _autoLang = true;

  @override
  Widget build(BuildContext context) {
    final l10n = context.localeKeys;
    final colorScheme = context.colorScheme;

    return Scaffold(
      appBar: SidePageAppBarComponent(title: l10n.imagesAndAudio),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.large,
            vertical: AppSpacing.medium,
          ),
          children: [
            CardComponent.filled(
              padding: const EdgeInsets.all(AppSpacing.large),
              child: Row(
                children: [
                  ExpressiveIcon(
                    icon: ZumiIcons.aiMedia,
                    shape: ExpressiveIconShape.gem,
                    size: 52,
                    backgroundColor: colorScheme.primaryContainer,
                    foregroundColor: colorScheme.onPrimaryContainer,
                  ),
                  const Gap.horizontal(AppSpacing.large),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          l10n.imagesAndAudio,
                          style: context.textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Gap(AppSpacing.xSmall),
                        Text(
                          l10n.chooseWhetherCompatibleModelsCanAnalyzeSelectedImagesAndAudioFromYourVideos,
                          style: context.textTheme.bodySmall?.copyWith(
                            color: colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Gap(AppSpacing.xLarge),
            const ExpressiveSectionHeader(title: 'Visual Sampling'),
            const Gap(AppSpacing.small),
            ListTileGroup(
              children: [
                ListTileComponent.top(
                  title: const Text('Analyze Video Thumbnails'),
                  subtitle: const Text(
                    'Extract keyframes to identify scene type, action, and lighting',
                  ),
                  showChevron: false,
                  trailing: SwitchComponent(
                    label: 'Analyze Thumbnails',
                    value: _analyzeThumbnails,
                    onChanged: (val) {
                      unawaited(HapticFeedback.selectionClick());
                      setState(() => _analyzeThumbnails = val);
                    },
                  ),
                ),
                ListTileComponent.bottom(
                  title: const Text('Keyframe Sampling Density'),
                  subtitle: Text(_sampleRate),
                  showChevron: false,
                  trailing: DropdownButton<String>(
                    value: _sampleRate,
                    underline: const SizedBox.shrink(),
                    items: const [
                      DropdownMenuItem(
                        value: '1 Frame/sec',
                        child: Text('1 Frame/sec'),
                      ),
                      DropdownMenuItem(
                        value: '2 Frames/sec',
                        child: Text('2 Frames/sec'),
                      ),
                      DropdownMenuItem(
                        value: '4 Frames/sec',
                        child: Text('4 Frames/sec'),
                      ),
                    ],
                    onChanged: (val) => setState(() => _sampleRate = val!),
                  ),
                ),
              ],
            ),
            const Gap(AppSpacing.xLarge),
            const ExpressiveSectionHeader(title: 'Audio Transcription'),
            const Gap(AppSpacing.small),
            ListTileGroup(
              children: [
                ListTileComponent.top(
                  title: const Text('Speech-to-Text Transcription'),
                  subtitle: const Text(
                    'Extract audio tracks for automatic subtitle generation',
                  ),
                  showChevron: false,
                  trailing: SwitchComponent(
                    label: 'Transcribe Audio',
                    value: _transcribeAudio,
                    onChanged: (val) {
                      unawaited(HapticFeedback.selectionClick());
                      setState(() => _transcribeAudio = val);
                    },
                  ),
                ),
                ListTileComponent.bottom(
                  title: const Text('Spoken Language Auto-Detect'),
                  subtitle: const Text(
                    'Automatically detect audio language from speech stream',
                  ),
                  showChevron: false,
                  trailing: SwitchComponent(
                    label: 'Auto Detect Language',
                    value: _autoLang,
                    onChanged: (val) {
                      unawaited(HapticFeedback.selectionClick());
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

// ---------------------------------------------------------------------------
// 7. AiSearchPage
// ---------------------------------------------------------------------------

final class AiSearchPage extends StatefulWidget {
  const AiSearchPage({super.key});

  @override
  State<AiSearchPage> createState() => _AiSearchPageState();
}

final class _AiSearchPageState extends State<AiSearchPage> {
  bool _semanticIndexing = true;
  bool _indexWhileCharging = true;
  bool _isRebuilding = false;

  Future<void> _rebuildIndex() async {
    setState(() => _isRebuilding = true);
    unawaited(HapticFeedback.mediumImpact());
    await Future<void>.delayed(const Duration(milliseconds: 700));
    if (!mounted) return;
    setState(() => _isRebuilding = false);
    context.toast.showSuccess(
      context,
      'Semantic video search index rebuilt (142 videos indexed)',
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.localeKeys;
    final colorScheme = context.colorScheme;

    return Scaffold(
      appBar: SidePageAppBarComponent(title: l10n.semanticSearch),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.large,
            vertical: AppSpacing.medium,
          ),
          children: [
            CardComponent.filled(
              padding: const EdgeInsets.all(AppSpacing.large),
              child: Row(
                children: [
                  ExpressiveIcon(
                    icon: ZumiIcons.aiSearch,
                    shape: ExpressiveIconShape.diamond,
                    size: 52,
                    backgroundColor: colorScheme.primaryContainer,
                    foregroundColor: colorScheme.onPrimaryContainer,
                  ),
                  const Gap.horizontal(AppSpacing.large),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          l10n.semanticSearch,
                          style: context.textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Gap(AppSpacing.xSmall),
                        Text(
                          l10n.manageTheLocalEmbeddingModelAndSearchIndexForFindingVideosAndMomentsByMeaning,
                          style: context.textTheme.bodySmall?.copyWith(
                            color: colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Gap(AppSpacing.xLarge),
            CardComponent.outlined(
              padding: const EdgeInsets.all(AppSpacing.large),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Vector Database Status',
                        style: context.textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const ChipComponent(
                        label: '142 Videos Indexed',
                        showBorder: false,
                      ),
                    ],
                  ),
                  const Gap(AppSpacing.small),
                  Text(
                    'Embedding dimension: 384-dim • Storage used: 12.4 MB',
                    style: context.textTheme.bodySmall?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),
                  const Gap(AppSpacing.large),
                  FilledTonalButtonComponent.icon(
                    icon: LucideIcons.refreshCw,
                    label: _isRebuilding ? 'Rebuilding…' : 'Rebuild Index',
                    onPressed: _isRebuilding ? () {} : _rebuildIndex,
                  ),
                ],
              ),
            ),
            const Gap(AppSpacing.xLarge),
            const ExpressiveSectionHeader(title: 'Indexing Preferences'),
            const Gap(AppSpacing.small),
            ListTileGroup(
              children: [
                ListTileComponent.top(
                  title: const Text('Enable Semantic Search'),
                  subtitle: const Text(
                    'Search library by descriptive phrases (e.g. "beach sunset 4k")',
                  ),
                  showChevron: false,
                  trailing: SwitchComponent(
                    label: 'Semantic Search',
                    value: _semanticIndexing,
                    onChanged: (val) {
                      unawaited(HapticFeedback.selectionClick());
                      setState(() => _semanticIndexing = val);
                    },
                  ),
                ),
                ListTileComponent.bottom(
                  title: const Text('Index Only When Charging'),
                  subtitle: const Text(
                    'Conserve battery by scheduling embedding generation while plugged in',
                  ),
                  showChevron: false,
                  trailing: SwitchComponent(
                    label: 'Index When Charging',
                    value: _indexWhileCharging,
                    onChanged: (val) {
                      unawaited(HapticFeedback.selectionClick());
                      setState(() => _indexWhileCharging = val);
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

// ---------------------------------------------------------------------------
// 8. AiToolsPage
// ---------------------------------------------------------------------------

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
    context.toast.showInfo(context, '$name ${val ? 'enabled' : 'disabled'}');
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.localeKeys;
    final colorScheme = context.colorScheme;

    return Scaffold(
      appBar: SidePageAppBarComponent(title: l10n.toolsAndStructuredOutput),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.large,
            vertical: AppSpacing.medium,
          ),
          children: [
            CardComponent.filled(
              padding: const EdgeInsets.all(AppSpacing.large),
              child: Row(
                children: [
                  ExpressiveIcon(
                    icon: ZumiIcons.aiTools,
                    shape: ExpressiveIconShape.cookie,
                    size: 52,
                    backgroundColor: colorScheme.primaryContainer,
                    foregroundColor: colorScheme.onPrimaryContainer,
                  ),
                  const Gap.horizontal(AppSpacing.large),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          l10n.toolsAndStructuredOutput,
                          style: context.textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Gap(AppSpacing.xSmall),
                        Text(
                          l10n.manageSupportedAssistantActionsAndStructuredResponsesActionsThatAffectFilesWillRequireYourConfirmation,
                          style: context.textTheme.bodySmall?.copyWith(
                            color: colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Gap(AppSpacing.xLarge),
            const ExpressiveSectionHeader(title: 'Assistant Capabilities'),
            const Gap(AppSpacing.small),
            ListTileGroup(
              children: [
                ListTileComponent.top(
                  title: const Text('Direct Video Trimming'),
                  subtitle: const Text(
                    'Allows assistant to execute fast stream-copy trims on videos',
                  ),
                  showChevron: false,
                  trailing: SwitchComponent(
                    label: 'Video Trimmer',
                    value: _trimTool,
                    onChanged: (val) =>
                        _onToggle('Video trimmer', val, () => _trimTool = val),
                  ),
                ),
                ListTileComponent.middle(
                  title: const Text('Audio Track Extraction'),
                  subtitle: const Text(
                    'Export audio directly to MP3 or AAC without re-encoding video',
                  ),
                  showChevron: false,
                  trailing: SwitchComponent(
                    label: 'Audio Extractor',
                    value: _audioExtractTool,
                    onChanged: (val) => _onToggle(
                      'Audio extractor',
                      val,
                      () => _audioExtractTool = val,
                    ),
                  ),
                ),
                ListTileComponent.bottom(
                  title: const Text('Metadata Scrubber'),
                  subtitle: const Text(
                    'Strip personal EXIF and GPS tags from media before sharing',
                  ),
                  showChevron: false,
                  trailing: SwitchComponent(
                    label: 'Metadata Scrubber',
                    value: _metadataStripTool,
                    onChanged: (val) => _onToggle(
                      'Metadata scrubber',
                      val,
                      () => _metadataStripTool = val,
                    ),
                  ),
                ),
              ],
            ),
            const Gap(AppSpacing.xLarge),
            const ExpressiveSectionHeader(title: 'Safety & Guardrails'),
            const Gap(AppSpacing.small),
            ListTileGroup(
              children: [
                ListTileComponent.top(
                  title: const Text('Require Confirmation For Changes'),
                  subtitle: const Text(
                    'Always prompt before overwriting, saving, or deleting files',
                  ),
                  showChevron: false,
                  trailing: SwitchComponent(
                    label: 'Require Confirmation',
                    value: _confirmDestructive,
                    onChanged: (val) => _onToggle(
                      'Safety confirmation',
                      val,
                      () => _confirmDestructive = val,
                    ),
                  ),
                ),
                ListTileComponent.bottom(
                  title: const Text('Sandboxed Temp Scratchpad'),
                  subtitle: const Text(
                    'Perform all intermediate edits in isolated staging directories',
                  ),
                  showChevron: false,
                  trailing: SwitchComponent(
                    label: 'Sandboxed Scratchpad',
                    value: _sandboxScratchpad,
                    onChanged: (val) => _onToggle(
                      'Sandboxed scratchpad',
                      val,
                      () => _sandboxScratchpad = val,
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
