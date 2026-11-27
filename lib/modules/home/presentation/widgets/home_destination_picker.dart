import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/compression/domain/models/share_preset.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/design_system/tokens/tokens.dart';
import '../../../compression/presentation/cubit/compression_state.dart';
import '../../../compression/presentation/utils/compression_number_input.dart';
import '../../../compression/presentation/widgets/platform_presets_bar.dart';
import '../../../compression/presentation/widgets/social_preset_icon.dart';

/// Every platform is visible; names are accessible without occupying the canvas.
final class HomeDestinationPicker extends HookWidget {
  const HomeDestinationPicker({
    required this.state,
    required this.onPreset,
    required this.onTarget,
    required this.onValidityChanged,
    super.key,
  });
  final CompressionState state;
  final ValueChanged<SharePresetId?> onPreset;
  final ValueChanged<double> onTarget;
  final ValueChanged<bool> onValidityChanged;

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController(
      text: _targetText(state.targetMb),
    );
    final validInput = useState(true);
    useEffect(() {
      if (double.tryParse(normalizeCompressionNumber(controller.text)) !=
              state.targetMb ||
          state.selectedPresetId != null) {
        controller.text = _targetText(state.targetMb);
      }
      validInput.value = true;
      return null;
    }, [state.video, state.targetMb, state.selectedPresetId]);
    void select(SharePresetId? id) {
      validInput.value = true;
      onValidityChanged(true);
      onPreset(id);
    }

    final available = state.presets.map((p) => p.id).toSet();
    final l10n = context.localeKeys;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Wrap(
          spacing: AppSpacing.small,
          runSpacing: AppSpacing.small,
          children: [
            for (final descriptor in PresetDescriptor.social)
              if (available.contains(descriptor.id))
                Semantics(
                  selected: state.selectedPresetId == descriptor.id,
                  child: SizedBox.square(
                    dimension: 60,
                    child: IconButton.outlined(
                      key: ValueKey('destination-${descriptor.id.name}'),
                      tooltip: descriptor.name,
                      style: IconButton.styleFrom(
                        padding: const EdgeInsets.all(AppSpacing.large),
                        backgroundColor: state.selectedPresetId == descriptor.id
                            ? context.colorScheme.primaryContainer
                            : context.colorScheme.surface,
                        side: BorderSide(
                          color: state.selectedPresetId == descriptor.id
                              ? context.colorScheme.primary
                              : context.colorScheme.outlineVariant,
                          width: state.selectedPresetId == descriptor.id
                              ? 2
                              : 1,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(AppRadii.medium),
                        ),
                      ),
                      icon: SocialPresetIcon(
                        id: descriptor.id,
                        color: state.selectedPresetId == descriptor.id
                            ? context.colorScheme.onPrimaryContainer
                            : context.colorScheme.onSurface,
                      ),
                      onPressed: () => select(descriptor.id),
                    ),
                  ),
                ),
          ],
        ),
        const SizedBox(height: AppSpacing.medium),
        Align(
          alignment: AlignmentDirectional.centerStart,
          child: ChoiceChip(
            label: Text(l10n.customSize),
            selected: state.selectedPresetId == null,
            onSelected: (_) => select(null),
          ),
        ),
        if (state.selectedPresetId == null) ...[
          const SizedBox(height: AppSpacing.large),
          TextField(
            key: const ValueKey('home-custom-size'),
            controller: controller,
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(
              labelText: l10n.targetSize,
              suffixText: l10n.megabytesShort,
              errorText: validInput.value
                  ? null
                  : l10n.enterATargetSizeGreaterThanZero,
            ),
            onChanged: (text) {
              final value = double.tryParse(normalizeCompressionNumber(text));
              final valid = value != null && value.isFinite && value > 0;
              validInput.value = valid;
              onValidityChanged(valid);
              if (valid) onTarget(value);
            },
          ),
        ],
      ],
    );
  }
}

String _targetText(double target) =>
    target.toStringAsFixed(target == target.roundToDouble() ? 0 : 1);
