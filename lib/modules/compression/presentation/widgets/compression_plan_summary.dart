import 'package:material_ui/material_ui.dart';

import '../../../../core/compression/domain/models/compression_plan.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/design_system/tokens/tokens.dart';
import '../../../../core/widgets/display/expressive_section_header.dart';

final class CompressionPlanSummary extends StatelessWidget {
  const CompressionPlanSummary({
    required this.plan,
    required this.isLoading,
    required this.hasAudio,
    super.key,
  });

  final CompressionPlan? plan;
  final bool isLoading;
  final bool hasAudio;

  @override
  Widget build(BuildContext context) {
    final current = plan;
    final scheme = Theme.of(context).colorScheme;
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.large),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ExpressiveSectionHeader(
              title: context.localeKeys.compressionPlanPreview,
            ),
            const SizedBox(height: AppSpacing.small),
            if (isLoading)
              Text(context.localeKeys.compressionPlanLoading)
            else if (current == null)
              Text(context.localeKeys.compressionGeneralFailure)
            else ...[
              if (!current.isInfeasible)
                _line(
                  context.localeKeys.compressionPlanResolution,
                  '${current.targetWidth} × ${current.targetHeight}',
                ),
              _line(
                context.localeKeys.compressionPlanVideoBitrate,
                '${(current.targetVideoBitrateBps / 1000).round()} kbps',
              ),
              _line(
                context.localeKeys.compressionPlanAudioBitrate,
                '${(current.targetAudioBitrateBps / 1000).round()} kbps',
              ),
              if (hasAudio &&
                  current.targetAudioBitrateBps > 0 &&
                  !current.isInfeasible &&
                  current.warningMessage != 'ALREADY_WITHIN_LIMIT')
                Padding(
                  padding: const EdgeInsets.only(top: AppSpacing.small),
                  child: Text(
                    context.localeKeys.compressionAudioConversionNote,
                    style: TextStyle(color: scheme.onSurfaceVariant),
                  ),
                ),
              if (current.isInfeasible || current.warningMessage != null)
                Padding(
                  padding: const EdgeInsets.only(top: AppSpacing.small),
                  child: Text(
                    current.isInfeasible
                        ? context.localeKeys.compressionPlanTooSmall
                        : switch (current.warningMessage) {
                            'ALREADY_WITHIN_LIMIT' =>
                              context
                                  .localeKeys
                                  .compressionPlanAlreadyWithinLimit,
                            _ => context.localeKeys.compressionPlanLowQuality,
                          },
                    style: TextStyle(
                      color: current.isInfeasible
                          ? scheme.error
                          : scheme.onSurfaceVariant,
                    ),
                  ),
                ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _line(String label, String value) => Padding(
    padding: const EdgeInsets.only(top: AppSpacing.small),
    child: Row(
      children: [
        Expanded(child: Text(label)),
        Text(value),
      ],
    ),
  );
}
