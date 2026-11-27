import 'dart:async';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl/intl.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/compression/domain/models/share_preset.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/design_system/tokens/tokens.dart';
import '../../../compression/presentation/cubit/compression_state.dart';
import '../../../compression/presentation/utils/compression_number_input.dart';
import '../../../compression/presentation/widgets/platform_presets_bar.dart';

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
    final mounted = useIsMounted();
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

    Future<void> allDestinations() async {
      final result = await context.showBottomSheetComponent<SharePresetId>(
        title: context.localeKeys.shareDestination,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            for (final preset in state.presets)
              ListTile(
                leading: Icon(_descriptor(preset.id).icon),
                title: Text(_descriptor(preset.id).name),
                subtitle: Text(_size(context, preset.targetMb)),
                trailing: state.selectedPresetId == preset.id
                    ? const Icon(LucideIcons.check)
                    : null,
                onTap: () => Navigator.of(context).pop(preset.id),
              ),
          ],
        ),
      );
      if (mounted() && result != null) select(result);
    }

    final l10n = context.localeKeys;
    final visible = state.presets
        .where(
          (p) => const {
            SharePresetId.whatsapp,
            SharePresetId.discord,
            SharePresetId.email,
          }.contains(p.id),
        )
        .toList();
    final selected = state.selectedPresetId;
    if (selected != null && !visible.any((p) => p.id == selected)) {
      visible.addAll(state.presets.where((p) => p.id == selected));
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          l10n.shareDestination,
          style: context.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: AppSpacing.medium),
        Wrap(
          spacing: AppSpacing.small,
          runSpacing: AppSpacing.small,
          children: [
            for (final preset in visible)
              ChoiceChip(
                avatar: Icon(_descriptor(preset.id).icon, size: 18),
                label: Text(
                  '${_descriptor(preset.id).name} · ${_size(context, preset.targetMb)}',
                ),
                selected: selected == preset.id,
                onSelected: (_) => select(preset.id),
              ),
            ChoiceChip(
              label: Text(l10n.customSize),
              selected: selected == null,
              onSelected: (_) => select(null),
            ),
          ],
        ),
        if (state.presets.isNotEmpty)
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: TextButton.icon(
              icon: const Icon(LucideIcons.grid2x2, size: 18),
              label: Text(l10n.moreDestinations),
              onPressed: () => unawaited(allDestinations()),
            ),
          ),
        if (selected == null) ...[
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

PresetDescriptor _descriptor(SharePresetId id) =>
    PresetDescriptor.catalog.firstWhere((p) => p.id == id);
String _size(BuildContext context, num size) =>
    '${NumberFormat('0.#', Localizations.localeOf(context).toString()).format(size)} ${context.localeKeys.megabytesShort}';

String _targetText(double target) =>
    target.toStringAsFixed(target == target.roundToDouble() ? 0 : 1);
