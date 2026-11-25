import 'dart:async';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/design_system/tokens/tokens.dart';
import '../../../../core/di/di.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/preferences/domain/entities/compression_defaults.dart';
import '../../../../core/preferences/domain/repositories/settings_repository.dart';
import '../../../../core/preferences/presentation/settings_view.dart';
import '../../../../core/services/haptics/haptics_service.dart';
import '../../../../core/widgets/widgets.dart';
import '../widgets/compression_advanced_controls.dart';
import '../widgets/unsupported_compression_page.dart';

final class _CompressionDefaultsBody extends HookWidget {
  const _CompressionDefaultsBody({
    required this.defaults,
    required this.update,
  });
  final CompressionDefaults defaults;
  final Future<void> Function(CompressionDefaults Function(CompressionDefaults))
  update;

  @override
  Widget build(BuildContext context) {
    final repository = getIt<SettingsRepository<CompressionDefaults>>();
    final targetController = useTextEditingController(
      text: '${defaults.targetMb.toInt()}',
    );
    final valid = useState(true);
    useEffect(() {
      targetController.text = defaults.targetMb.toString();
      valid.value = true;
      return null;
    }, [defaults.targetMb]);

    final l10n = context.localeKeys;
    final colorScheme = context.colorScheme;
    final textTheme = context.textTheme;

    return Scaffold(
      appBar: SidePageAppBarComponent(
        title: l10n.compressionDefaults,
        actions: const [SettingsResetAction<CompressionDefaults>()],
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.large,
            vertical: AppSpacing.small,
          ),
          children: [
            // Target Size Section
            ExpressiveSectionHeader(title: l10n.targetPlatformOrSize),
            const Gap(AppSpacing.small),
            CardComponent.filled(
              padding: const EdgeInsets.all(AppSpacing.large),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const ExpressiveIcon(
                        icon: LucideIcons.hardDrive,
                        shape: ExpressiveIconShape.gem,
                      ),
                      const Gap(AppSpacing.medium),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              l10n.targetSizeMB,
                              style: textTheme.titleSmall?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              l10n.defaultResolutionBitrateAndOutputFormat,
                              style: textTheme.bodySmall?.copyWith(
                                color: colorScheme.onSurfaceVariant,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Gap(AppSpacing.large),
                  Text(
                    l10n.targetSizeMB,
                    style: textTheme.labelMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Gap(AppSpacing.small),
                  TextField(
                    controller: targetController,
                    keyboardType: const TextInputType.numberWithOptions(
                      decimal: true,
                    ),
                    decoration: InputDecoration(
                      hintText: '16',
                      suffixText: l10n.megabytesShort,
                      errorText: valid.value
                          ? null
                          : l10n.enterATargetSizeGreaterThanZero,
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: AppSpacing.medium,
                        vertical: AppSpacing.small,
                      ),
                      filled: true,
                      fillColor: colorScheme.surfaceContainer,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(AppRadii.medium),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    onChanged: (text) {
                      final value = double.tryParse(text.replaceAll(',', '.'));
                      valid.value =
                          value != null && value.isFinite && value > 0;
                    },
                  ),
                  const Gap(AppSpacing.medium),
                  Wrap(
                    spacing: AppSpacing.small,
                    runSpacing: AppSpacing.small,
                    children: [
                      for (final size in const [10, 16, 25, 50, 100])
                        ActionChip(
                          avatar: const Icon(LucideIcons.sparkles, size: 14),
                          label: Text('$size ${l10n.megabytesShort}'),
                          onPressed: () {
                            unawaited(AppHaptics.selection());
                            targetController.text = '$size';
                            valid.value = true;
                          },
                        ),
                    ],
                  ),
                ],
              ),
            ),

            const Gap(AppSpacing.large),

            // Advanced Engine Tuning
            if (supportsVideoCompression) ...[
              CompressionAdvancedControls(
                preferences: defaults.preferences,
                sourceShortEdge: null,
                collapsible: false,
                onChanged: (value) =>
                    unawaited(update((s) => s.copyWith(preferences: value))),
              ),
              const Gap(AppSpacing.large),
            ],

            // Save confirmation
            FilledButtonComponent.icon(
              icon: LucideIcons.check,
              label: l10n.confirm,
              expand: true,
              isEnabled: valid.value,
              onPressed: () async {
                unawaited(AppHaptics.button());
                final value = double.parse(
                  targetController.text.replaceAll(',', '.'),
                );
                try {
                  await repository.update((s) => s.copyWith(targetMb: value));
                } on Object {
                  if (context.mounted) {
                    context.toast.showError(context, l10n.settingsSaveFailed);
                  }
                  return;
                }
                if (context.mounted) {
                  context.toast.showSuccess(context, l10n.compressionDefaults);
                  Navigator.of(context).pop();
                }
              },
            ),
            const Gap(AppSpacing.large),
          ],
        ),
      ),
    );
  }
}

final class CompressionDefaultsPage extends StatelessWidget {
  const CompressionDefaultsPage({super.key});
  @override
  Widget build(BuildContext context) => SettingsView<CompressionDefaults>(
    repository: getIt<SettingsRepository<CompressionDefaults>>(),
    builder: (context, defaults, update) =>
        _CompressionDefaultsBody(defaults: defaults, update: update),
  );
}
