import 'package:material_ui/material_ui.dart';

import '../../../../core/compression/domain/models/compression_plan.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/design_system/tokens/tokens.dart';

final class CompressionPlanSummary extends StatelessWidget {
  const CompressionPlanSummary({
    required this.plan,
    required this.isLoading,
    super.key,
  });

  final CompressionPlan? plan;
  final bool isLoading;

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
            Text(
              context.localeKeys.compressionPlanPreview,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: AppSpacing.small),
            if (isLoading)
              Text(context.localeKeys.compressionPlanLoading)
            else if (current != null) ...[
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
