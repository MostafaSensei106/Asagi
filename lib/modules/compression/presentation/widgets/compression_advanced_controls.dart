import 'dart:async';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/compression/domain/models/compression_preferences.dart';
import '../../../../core/compression/domain/models/encode_request.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/services/haptics/haptics_service.dart';
import '../../../../core/widgets/design_system/tokens/tokens.dart';
import '../../../../core/widgets/widgets.dart';
import '../utils/compression_number_input.dart';

/// Controls that the Android compression pipeline can actually honor.
final class CompressionAdvancedControls extends HookWidget {
  const CompressionAdvancedControls({
    required this.preferences,
    required this.sourceShortEdge,
    required this.onChanged,
    this.collapsible = true,
    this.liveEditing = false,
    super.key,
  });

  final CompressionPreferences preferences;
  final int? sourceShortEdge;
  final bool collapsible;

  /// Draft forms update their local value on every valid keystroke.
  final bool liveEditing;
  final ValueChanged<CompressionPreferences> onChanged;

  @override
  Widget build(BuildContext context) {
    final resolution = useTextEditingController(
      text: preferences.maxShortEdge?.toString() ?? '',
    );
    final videoBitrate = useTextEditingController(
      text: preferences.videoBitrateCeilingKbps?.toString() ?? '',
    );
    final invalidResolution = useState(false);
    final invalidBitrate = useState(false);
    useEffect(() {
      if (int.tryParse(normalizeCompressionNumber(resolution.text)) !=
          preferences.maxShortEdge) {
        resolution.text = preferences.maxShortEdge?.toString() ?? '';
        invalidResolution.value = false;
      }
      return null;
    }, [preferences.maxShortEdge]);
    useEffect(() {
      if (int.tryParse(normalizeCompressionNumber(videoBitrate.text)) !=
          preferences.videoBitrateCeilingKbps) {
        videoBitrate.text =
            preferences.videoBitrateCeilingKbps?.toString() ?? '';
        invalidBitrate.value = false;
      }
      return null;
    }, [preferences.videoBitrateCeilingKbps]);

    void applyResolution() {
      final value = int.tryParse(normalizeCompressionNumber(resolution.text));
      final valid =
          resolution.text.trim().isEmpty ||
          (value != null && value >= 240 && value <= 16384 && value.isEven);
      invalidResolution.value = !valid;
      if (valid)
        onChanged(
          preferences.copyWith(
            maxShortEdge: value,
            clearMaxShortEdge: value == null,
          ),
        );
    }

    void applyVideoBitrate() {
      final value = int.tryParse(normalizeCompressionNumber(videoBitrate.text));
      final valid =
          videoBitrate.text.trim().isEmpty ||
          (value != null && value >= 50 && value <= 500000);
      invalidBitrate.value = !valid;
      if (valid)
        onChanged(
          preferences.copyWith(
            videoBitrateCeilingKbps: value,
            clearVideoBitrate: value == null,
          ),
        );
    }

    final p = preferences;
    final l10n = context.localeKeys;
    final colorScheme = context.colorScheme;
    final textTheme = context.textTheme;
    final source = (sourceShortEdge ?? 16384) & ~1;
    final resolutions = <int>{
      480,
      720,
      1080,
      1440,
      2160,
      4320,
      if (sourceShortEdge != null) source,
    }.where((value) => value >= 240 && value <= source).toList()..sort();

    final sections = [
      (
        icon: LucideIcons.maximize,
        title: l10n.maximumResolution,
        controls: <Widget>[
          Wrap(
            spacing: AppSpacing.small,
            runSpacing: AppSpacing.small,
            children: [
              ChoiceChip(
                label: Text(l10n.automatic),
                selected: p.maxShortEdge == null,
                onSelected: (_) {
                  unawaited(AppHaptics.selection());
                  onChanged(p.copyWith(clearMaxShortEdge: true));
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
                    unawaited(AppHaptics.selection());
                    onChanged(p.copyWith(maxShortEdge: value));
                  },
                ),
            ],
          ),
          const Gap(AppSpacing.medium),
          TextFormField(
            key: const ValueKey('advanced-resolution'),
            controller: resolution,
            validator: (_) {
              final text = normalizeCompressionNumber(resolution.text);
              final value = int.tryParse(text);
              return text.isEmpty ||
                      (value != null &&
                          value >= 240 &&
                          value <= 16384 &&
                          value.isEven)
                  ? null
                  : l10n.enterAnEvenResolutionFrom240To16384OrLeaveBlankForAutomatic;
            },
            onChanged: liveEditing ? (_) => applyResolution() : null,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: l10n.maximumResolution,
              hintText: l10n.automatic,
              errorText: invalidResolution.value
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
            onFieldSubmitted: (_) => applyResolution(),
            onEditingComplete: applyResolution,
          ),
        ],
      ),
      (
        icon: LucideIcons.gauge,
        title: l10n.maximumFrameRate,
        controls: <Widget>[
          Wrap(
            spacing: AppSpacing.small,
            runSpacing: AppSpacing.small,
            children: [
              for (final fps in const [24, 25, 30, 60, 120])
                ChoiceChip(
                  label: Text('$fps fps'),
                  selected: p.maxFrameRate == fps,
                  onSelected: (_) {
                    unawaited(AppHaptics.selection());
                    onChanged(p.copyWith(maxFrameRate: fps));
                  },
                ),
            ],
          ),
        ],
      ),
      (
        icon: LucideIcons.audioLines,
        title: l10n.audioBitrate,
        controls: <Widget>[
          Wrap(
            spacing: AppSpacing.small,
            runSpacing: AppSpacing.small,
            children: [
              ChoiceChip(
                label: Text(l10n.automatic),
                selected: p.audioBitrateKbps == null,
                onSelected: (_) {
                  unawaited(AppHaptics.selection());
                  onChanged(p.copyWith(clearAudioBitrate: true));
                },
              ),
              for (final rate in const [0, 48, 64, 96, 128, 160, 192, 256, 320])
                ChoiceChip(
                  label: Text(rate == 0 ? l10n.removeAudio : '$rate kbps'),
                  selected: p.audioBitrateKbps == rate,
                  onSelected: (_) {
                    unawaited(AppHaptics.selection());
                    onChanged(p.copyWith(audioBitrateKbps: rate));
                  },
                ),
            ],
          ),
        ],
      ),
      (
        icon: LucideIcons.gauge,
        title: l10n.videoBitrateCeilingKbps,
        controls: <Widget>[
          TextFormField(
            key: const ValueKey('advanced-bitrate'),
            controller: videoBitrate,
            validator: (_) {
              final text = normalizeCompressionNumber(videoBitrate.text);
              final value = int.tryParse(text);
              return text.isEmpty ||
                      (value != null && value >= 50 && value <= 500000)
                  ? null
                  : l10n.enterABitrateOfAtLeast150KbpsOrLeaveBlankForAutomatic;
            },
            onChanged: liveEditing ? (_) => applyVideoBitrate() : null,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: l10n.videoBitrateCeilingKbps,
              hintText: l10n.automatic,
              errorText: invalidBitrate.value
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
            onFieldSubmitted: (_) => applyVideoBitrate(),
            onEditingComplete: applyVideoBitrate,
          ),
        ],
      ),
      (
        icon: LucideIcons.slidersHorizontal,
        title: l10n.compressionStrictness,
        controls: <Widget>[
          Wrap(
            spacing: AppSpacing.small,
            runSpacing: AppSpacing.small,
            children: [
              ChoiceChip(
                label: Text(l10n.strictnessDefault),
                selected: p.safetyMargin == null || p.safetyMargin == 0.98,
                onSelected: (_) {
                  unawaited(AppHaptics.selection());
                  onChanged(p.copyWith(safetyMargin: 0.98));
                },
              ),
              ChoiceChip(
                label: Text(l10n.strictnessSafe),
                selected: p.safetyMargin == 0.90,
                onSelected: (_) {
                  unawaited(AppHaptics.selection());
                  onChanged(p.copyWith(safetyMargin: 0.90));
                },
              ),
              ChoiceChip(
                label: Text(l10n.strictnessAggressive),
                selected: p.safetyMargin == 0.96,
                onSelected: (_) {
                  unawaited(AppHaptics.selection());
                  onChanged(p.copyWith(safetyMargin: 0.96));
                },
              ),
            ],
          ),
        ],
      ),
      (
        icon: LucideIcons.sun,
        title: l10n.hdrHandling,
        controls: <Widget>[
          SegmentedButton<HdrMode>(
            direction: collapsible ? Axis.horizontal : Axis.vertical,
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
              unawaited(AppHaptics.selection());
              onChanged(p.copyWith(hdrMode: selection.first));
            },
          ),
        ],
      ),
    ];
    if (!collapsible) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          for (var index = 0; index < sections.length; index++) ...[
            ExpressiveSectionHeader(title: sections[index].title),
            const Gap(AppSpacing.small),
            CardComponent.filled(
              padding: const EdgeInsets.all(AppSpacing.large),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: sections[index].controls,
              ),
            ),
            if (index < sections.length - 1) const Gap(AppSpacing.large),
          ],
        ],
      );
    }

    return CardComponent.filled(
      padding: EdgeInsets.zero,
      child: ExpansionTile(
        tilePadding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.large,
          vertical: AppSpacing.small,
        ),
        shape: const Border(),
        collapsedShape: const Border(),
        leading: ExpressiveIcon(
          icon: LucideIcons.slidersHorizontal,
          shape: ExpressiveIconShape.gem,
          size: 40,
          backgroundColor: colorScheme.secondaryContainer,
          foregroundColor: colorScheme.onSecondaryContainer,
        ),
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
          const Gap(AppSpacing.medium),
          for (var index = 0; index < sections.length; index++) ...[
            _sectionHeading(
              context,
              sections[index].icon,
              sections[index].title,
            ),
            const Gap(AppSpacing.medium),
            ...sections[index].controls,
            if (index < sections.length - 1) const Gap(AppSpacing.large),
          ],
        ],
      ),
    );
  }
}

Widget _sectionHeading(BuildContext context, IconData icon, String title) {
  final scheme = context.colorScheme;
  return Row(
    children: [
      Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          color: scheme.secondaryContainer,
          borderRadius: BorderRadius.circular(AppRadii.medium),
        ),
        child: Icon(icon, size: 16, color: scheme.onSecondaryContainer),
      ),
      const Gap.horizontal(AppSpacing.small),
      Expanded(
        child: Text(
          title,
          style: context.textTheme.titleSmall?.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    ],
  );
}
