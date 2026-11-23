import 'dart:async';

import 'package:flutter/services.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/compression/domain/models/compression_preferences.dart';
import '../../../../core/compression/domain/models/encode_request.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/design_system/tokens/tokens.dart';
import '../../../../core/widgets/widgets.dart';

/// Controls that the Android compression pipeline can actually honor.
final class CompressionAdvancedControls extends StatefulWidget {
  const CompressionAdvancedControls({
    required this.preferences,
    required this.sourceShortEdge,
    required this.onChanged,
    super.key,
  });

  final CompressionPreferences preferences;
  final int sourceShortEdge;
  final ValueChanged<CompressionPreferences> onChanged;

  @override
  State<CompressionAdvancedControls> createState() =>
      _CompressionAdvancedControlsState();
}

final class _CompressionAdvancedControlsState
    extends State<CompressionAdvancedControls> {
  late final TextEditingController _resolution;
  late final TextEditingController _videoBitrate;
  bool _invalidResolution = false;
  bool _invalidBitrate = false;

  @override
  void initState() {
    super.initState();
    _resolution = TextEditingController(
      text: widget.preferences.maxShortEdge?.toString() ?? '',
    );
    _videoBitrate = TextEditingController(
      text: widget.preferences.videoBitrateCeilingKbps?.toString() ?? '',
    );
  }

  @override
  void didUpdateWidget(covariant CompressionAdvancedControls oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.preferences.maxShortEdge != widget.preferences.maxShortEdge) {
      _resolution.text = widget.preferences.maxShortEdge?.toString() ?? '';
    }
    if (oldWidget.preferences.videoBitrateCeilingKbps !=
        widget.preferences.videoBitrateCeilingKbps) {
      _videoBitrate.text =
          widget.preferences.videoBitrateCeilingKbps?.toString() ?? '';
    }
  }

  @override
  void dispose() {
    _resolution.dispose();
    _videoBitrate.dispose();
    super.dispose();
  }

  void _applyResolution() {
    final value = int.tryParse(_resolution.text.trim());
    final valid =
        _resolution.text.trim().isEmpty ||
        (value != null && value >= 240 && value <= 16384 && value.isEven);
    setState(() => _invalidResolution = !valid);
    if (!valid) return;
    widget.onChanged(
      widget.preferences.copyWith(
        maxShortEdge: value,
        clearMaxShortEdge: value == null,
      ),
    );
  }

  void _applyVideoBitrate() {
    final value = int.tryParse(_videoBitrate.text.trim());
    final valid =
        _videoBitrate.text.trim().isEmpty ||
        (value != null && value >= 50 && value <= 500000);
    setState(() => _invalidBitrate = !valid);
    if (!valid) return;
    widget.onChanged(
      widget.preferences.copyWith(
        videoBitrateCeilingKbps: value,
        clearVideoBitrate: value == null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final p = widget.preferences;
    final l10n = context.localeKeys;
    final colorScheme = context.colorScheme;
    final textTheme = context.textTheme;
    final source = widget.sourceShortEdge & ~1;
    final resolutions = <int>{
      480,
      720,
      1080,
      1440,
      2160,
      4320,
      source,
    }.where((value) => value >= 240 && value <= source).toList()..sort();

    return CardComponent.filled(
      padding: EdgeInsets.zero,
      child: ExpansionTile(
        tilePadding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.large,
          vertical: AppSpacing.small,
        ),
        shape: const Border(),
        collapsedShape: const Border(),
        leading: const Icon(LucideIcons.slidersHorizontal),
        title: Text(
          l10n.advancedControls,
          style: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          l10n.defaultResolutionBitrateAndOutputFormat,
          style: textTheme.bodySmall?.copyWith(
            color: colorScheme.onSurfaceVariant,
          ),
        ),
        childrenPadding: const EdgeInsets.fromLTRB(
          AppSpacing.large,
          0,
          AppSpacing.large,
          AppSpacing.large,
        ),
        expandedCrossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Divider(),
          const Gap(AppSpacing.medium),

          // Maximum Resolution
          Text(
            l10n.maximumResolution,
            style: textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w600),
          ),
          const Gap(AppSpacing.small),
          Wrap(
            spacing: AppSpacing.small,
            runSpacing: AppSpacing.small,
            children: [
              ChoiceChip(
                label: Text(l10n.automatic),
                selected: p.maxShortEdge == null,
                onSelected: (_) {
                  unawaited(HapticFeedback.selectionClick());
                  widget.onChanged(p.copyWith(clearMaxShortEdge: true));
                },
              ),
              for (final value in resolutions.reversed)
                ChoiceChip(
                  label: Text(
                    value == source
                        ? '${l10n.originalResolution} ($value)'
                        : value == 2160
                        ? '4K'
                        : value == 4320
                        ? '8K'
                        : '${value}p',
                  ),
                  selected: p.maxShortEdge == value,
                  onSelected: (_) {
                    unawaited(HapticFeedback.selectionClick());
                    widget.onChanged(p.copyWith(maxShortEdge: value));
                  },
                ),
            ],
          ),
          const Gap(AppSpacing.medium),
          TextField(
            controller: _resolution,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: l10n.maximumResolution,
              hintText: l10n.automatic,
              errorText: _invalidResolution
                  ? l10n.enterAnEvenResolutionFrom240To16384OrLeaveBlankForAutomatic
                  : null,
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
            onSubmitted: (_) => _applyResolution(),
            onEditingComplete: _applyResolution,
          ),

          const Gap(AppSpacing.large),

          // Maximum Frame Rate
          Text(
            l10n.maximumFrameRate,
            style: textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w600),
          ),
          const Gap(AppSpacing.small),
          Wrap(
            spacing: AppSpacing.small,
            runSpacing: AppSpacing.small,
            children: [
              for (final fps in const [24, 30, 60, 120])
                ChoiceChip(
                  label: Text('$fps fps'),
                  selected: p.maxFrameRate == fps,
                  onSelected: (_) {
                    unawaited(HapticFeedback.selectionClick());
                    widget.onChanged(p.copyWith(maxFrameRate: fps));
                  },
                ),
            ],
          ),

          const Gap(AppSpacing.large),

          // Audio Bitrate
          Text(
            l10n.audioBitrate,
            style: textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w600),
          ),
          const Gap(AppSpacing.small),
          Wrap(
            spacing: AppSpacing.small,
            runSpacing: AppSpacing.small,
            children: [
              ChoiceChip(
                label: Text(l10n.automatic),
                selected: p.audioBitrateKbps == null,
                onSelected: (_) {
                  unawaited(HapticFeedback.selectionClick());
                  widget.onChanged(p.copyWith(clearAudioBitrate: true));
                },
              ),
              for (final rate in const [0, 48, 64, 96, 128, 160, 192, 256, 320])
                ChoiceChip(
                  label: Text(rate == 0 ? l10n.removeAudio : '$rate kbps'),
                  selected: p.audioBitrateKbps == rate,
                  onSelected: (_) {
                    unawaited(HapticFeedback.selectionClick());
                    widget.onChanged(p.copyWith(audioBitrateKbps: rate));
                  },
                ),
            ],
          ),

          const Gap(AppSpacing.large),

          // Video Bitrate Ceiling
          Text(
            l10n.videoBitrateCeilingKbps,
            style: textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w600),
          ),
          const Gap(AppSpacing.small),
          TextField(
            controller: _videoBitrate,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: l10n.videoBitrateCeilingKbps,
              hintText: l10n.automatic,
              errorText: _invalidBitrate
                  ? l10n.enterABitrateOfAtLeast150KbpsOrLeaveBlankForAutomatic
                  : null,
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
            onSubmitted: (_) => _applyVideoBitrate(),
            onEditingComplete: _applyVideoBitrate,
          ),

          const Gap(AppSpacing.large),

          // Safety Margin (Compression Strictness)
          Text(
            l10n.compressionStrictness,
            style: textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w600),
          ),
          const Gap(AppSpacing.small),
          Wrap(
            spacing: AppSpacing.small,
            runSpacing: AppSpacing.small,
            children: [
              ChoiceChip(
                label: Text(l10n.strictnessDefault),
                selected: p.safetyMargin == null || p.safetyMargin == 0.93,
                onSelected: (_) {
                  unawaited(HapticFeedback.selectionClick());
                  widget.onChanged(p.copyWith(safetyMargin: 0.93));
                },
              ),
              ChoiceChip(
                label: Text(l10n.strictnessSafe),
                selected: p.safetyMargin == 0.90,
                onSelected: (_) {
                  unawaited(HapticFeedback.selectionClick());
                  widget.onChanged(p.copyWith(safetyMargin: 0.90));
                },
              ),
              ChoiceChip(
                label: Text(l10n.strictnessAggressive),
                selected: p.safetyMargin == 0.96,
                onSelected: (_) {
                  unawaited(HapticFeedback.selectionClick());
                  widget.onChanged(p.copyWith(safetyMargin: 0.96));
                },
              ),
            ],
          ),

          const Gap(AppSpacing.large),

          // HDR Handling
          Text(
            l10n.hdrHandling,
            style: textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w600),
          ),
          const Gap(AppSpacing.small),
          SegmentedButton<HdrMode>(
            segments: [
              ButtonSegment(
                value: HdrMode.toneMapToSdr,
                label: Text(l10n.convertToSDR),
              ),
              ButtonSegment(
                value: HdrMode.preserve,
                label: Text(l10n.keepHDRWhenSupported),
              ),
            ],
            selected: {p.hdrMode},
            onSelectionChanged: (selection) {
              unawaited(HapticFeedback.selectionClick());
              widget.onChanged(p.copyWith(hdrMode: selection.first));
            },
          ),
        ],
      ),
    );
  }
}
