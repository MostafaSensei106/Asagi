import 'dart:async';

import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/design_system/tokens/tokens.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/services/haptics/haptics_service.dart';
import '../../../../core/widgets/widgets.dart';

final class HomeTargetSizeCard extends StatelessWidget {
  const HomeTargetSizeCard({
    required this.targetMb,
    required this.controller,
    required this.isValid,
    required this.onPresetSelected,
    required this.onCustomSizeChanged,
    super.key,
  });

  final double targetMb;
  final TextEditingController controller;
  final bool isValid;
  final ValueChanged<double> onPresetSelected;
  final ValueChanged<String> onCustomSizeChanged;

  String get _formattedTarget => targetMb == targetMb.roundToDouble()
      ? targetMb.toStringAsFixed(0)
      : targetMb.toStringAsFixed(1);

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    final l10n = context.localeKeys;

    return CardComponent.filled(
      color: scheme.surfaceContainerLow,
      padding: const EdgeInsets.all(AppSpacing.large),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ExpressiveIcon(
                icon: LucideIcons.target,
                shape: ExpressiveIconShape.gem,
                size: 42,
                backgroundColor: scheme.primaryContainer,
                foregroundColor: scheme.onPrimaryContainer,
              ),
              const Gap.horizontal(AppSpacing.medium),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      l10n.targetPreset,
                      style: context.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const Gap(AppSpacing.xSmall),
                    Text(
                      l10n.targetSizeMB,
                      style: context.textTheme.bodySmall?.copyWith(
                        color: scheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                '$_formattedTarget MB',
                style: context.textTheme.titleLarge?.copyWith(
                  color: scheme.primary,
                  fontWeight: FontWeight.w800,
                  fontFeatures: const [FontFeature.tabularFigures()],
                ),
              ),
            ],
          ),
          const Gap(AppSpacing.large),
          Wrap(
            spacing: AppSpacing.small,
            runSpacing: AppSpacing.small,
            children: [
              for (final preset in const [8.0, 16.0, 25.0])
                ChoiceChip(
                  label: Text('${preset.toInt()} MB'),
                  selected: targetMb == preset,
                  onSelected: (_) {
                    unawaited(AppHaptics.selection());
                    onPresetSelected(preset);
                  },
                ),
            ],
          ),
          const Gap(AppSpacing.medium),
          TextField(
            controller: controller,
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(
              labelText: l10n.customSize,
              hintText: _formattedTarget,
              suffixText: 'MB',
              errorText: isValid ? null : l10n.enterATargetSizeGreaterThanZero,
              prefixIcon: const Icon(LucideIcons.pencilLine),
              filled: true,
              fillColor: scheme.surface,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.large,
                vertical: AppSpacing.medium,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(AppRadii.large),
                borderSide: BorderSide.none,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(AppRadii.large),
                borderSide: BorderSide(color: scheme.outlineVariant),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(AppRadii.large),
                borderSide: BorderSide(color: scheme.primary, width: 2),
              ),
            ),
            onChanged: onCustomSizeChanged,
          ),
        ],
      ),
    );
  }
}
