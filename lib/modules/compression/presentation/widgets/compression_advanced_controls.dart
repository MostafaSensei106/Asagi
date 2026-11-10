import 'package:material_ui/material_ui.dart';

import '../../../../core/compression/domain/models/compression_preferences.dart';
import '../../../../core/compression/domain/models/encode_request.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/design_system/tokens/tokens.dart';

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
        (value != null && value >= 150 && value <= 500000);
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
    final source = widget.sourceShortEdge & ~1;
    final resolutions = <int>{
      720,
      1080,
      1440,
      2160,
      4320,
      source,
    }.where((value) => value >= 240 && value <= source).toList()..sort();
    return ExpansionTile(
      title: Text(context.localeKeys.compressionAdvanced),
      childrenPadding: const EdgeInsets.all(AppSpacing.large),
      expandedCrossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(context.localeKeys.compressionResolutionLimit),
        const SizedBox(height: AppSpacing.small),
        Wrap(
          spacing: AppSpacing.small,
          runSpacing: AppSpacing.small,
          children: [
            ChoiceChip(
              label: Text(context.localeKeys.compressionAutomatic),
              selected: p.maxShortEdge == null,
              onSelected: (_) =>
                  widget.onChanged(p.copyWith(clearMaxShortEdge: true)),
            ),
            for (final value in resolutions.reversed)
              ChoiceChip(
                label: Text(
                  value == source
                      ? '${context.localeKeys.compressionSourceResolution} ($value)'
                      : value == 2160
                      ? '4K'
                      : value == 4320
                      ? '8K'
                      : '${value}p',
                ),
                selected: p.maxShortEdge == value,
                onSelected: (_) =>
                    widget.onChanged(p.copyWith(maxShortEdge: value)),
              ),
          ],
        ),
        const SizedBox(height: AppSpacing.medium),
        TextField(
          controller: _resolution,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            labelText: context.localeKeys.compressionResolutionLimit,
            hintText: context.localeKeys.compressionAutomatic,
            errorText: _invalidResolution
                ? context.localeKeys.compressionInvalidResolution
                : null,
          ),
          onSubmitted: (_) => _applyResolution(),
          onEditingComplete: _applyResolution,
        ),
        const SizedBox(height: AppSpacing.xLarge),
        Text(context.localeKeys.compressionFrameRateLimit),
        const SizedBox(height: AppSpacing.small),
        Wrap(
          spacing: AppSpacing.small,
          children: [
            for (final fps in const [24, 30, 60, 120])
              ChoiceChip(
                label: Text('$fps fps'),
                selected: p.maxFrameRate == fps,
                onSelected: (_) =>
                    widget.onChanged(p.copyWith(maxFrameRate: fps)),
              ),
          ],
        ),
        const SizedBox(height: AppSpacing.xLarge),
        Text(context.localeKeys.compressionAudioQuality),
        const SizedBox(height: AppSpacing.small),
        Wrap(
          spacing: AppSpacing.small,
          children: [
            ChoiceChip(
              label: Text(context.localeKeys.compressionAutomatic),
              selected: p.audioBitrateKbps == null,
              onSelected: (_) =>
                  widget.onChanged(p.copyWith(clearAudioBitrate: true)),
            ),
            for (final rate in const [0, 48, 64, 96, 128])
              ChoiceChip(
                label: Text(
                  rate == 0
                      ? context.localeKeys.compressionRemoveAudio
                      : '$rate kbps',
                ),
                selected: p.audioBitrateKbps == rate,
                onSelected: (_) =>
                    widget.onChanged(p.copyWith(audioBitrateKbps: rate)),
              ),
          ],
        ),
        const SizedBox(height: AppSpacing.xLarge),
        TextField(
          controller: _videoBitrate,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            labelText: context.localeKeys.compressionVideoBitrateLimit,
            hintText: context.localeKeys.compressionAutomatic,
            errorText: _invalidBitrate
                ? context.localeKeys.compressionInvalidBitrate
                : null,
          ),
          onSubmitted: (_) => _applyVideoBitrate(),
          onEditingComplete: _applyVideoBitrate,
        ),
        const SizedBox(height: AppSpacing.xLarge),
        Text(context.localeKeys.compressionHdrPolicy),
        const SizedBox(height: AppSpacing.small),
        SegmentedButton<HdrMode>(
          segments: [
            ButtonSegment(
              value: HdrMode.toneMapToSdr,
              label: Text(context.localeKeys.compressionHdrConvert),
            ),
            ButtonSegment(
              value: HdrMode.preserve,
              label: Text(context.localeKeys.compressionHdrPreserve),
            ),
          ],
          selected: {p.hdrMode},
          onSelectionChanged: (selection) =>
              widget.onChanged(p.copyWith(hdrMode: selection.first)),
        ),
      ],
    );
  }
}
