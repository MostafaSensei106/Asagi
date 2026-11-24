import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/compression/domain/models/compression_plan.dart';
import '../../../../core/constants/design_system/tokens/tokens.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/widgets.dart';
import 'compression_error_text.dart';

final class CompressionPlanSummary extends StatelessWidget {
  const CompressionPlanSummary({
    required this.plan,
    required this.isLoading,
    required this.hasAudio,
    this.error,
    super.key,
  });

  final CompressionPlan? plan;
  final bool isLoading;
  final bool hasAudio;
  final String? error;

  @override
  Widget build(BuildContext context) {
    final current = plan;
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
                icon: LucideIcons.listChecks,
                shape: ExpressiveIconShape.gem,
                size: 42,
                backgroundColor: scheme.secondaryContainer,
                foregroundColor: scheme.onSecondaryContainer,
              ),
              const Gap.horizontal(AppSpacing.medium),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      l10n.beforeYouStart,
                      style: context.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const Gap(AppSpacing.xSmall),
                    Text(
                      l10n.defaultResolutionBitrateAndOutputFormat,
                      style: context.textTheme.bodySmall?.copyWith(
                        color: scheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),
              if (isLoading)
                SizedBox.square(
                  dimension: 22,
                  child: CircularProgressIndicator(
                    strokeWidth: 2.5,
                    color: scheme.primary,
                  ),
                ),
            ],
          ),
          const Gap(AppSpacing.large),
          if (isLoading)
            Text(
              l10n.calculatingCompressionPlan,
              style: context.textTheme.bodyMedium?.copyWith(
                color: scheme.onSurfaceVariant,
              ),
            )
          else if (current == null)
            _notice(
              context,
              compressionErrorText(context, error),
              isError: true,
            )
          else ...[
            if (!current.isInfeasible)
              Row(
                children: [
                  Expanded(
                    child: _PlanMetric(
                      icon: LucideIcons.maximize,
                      label: l10n.plannedResolution,
                      value: '${current.targetWidth} × ${current.targetHeight}',
                    ),
                  ),
                  const Gap.horizontal(AppSpacing.medium),
                  Expanded(
                    child: _PlanMetric(
                      icon: LucideIcons.gauge,
                      label: l10n.plannedVideoBitrate,
                      value:
                          '${(current.targetVideoBitrateBps / 1000).round()} kbps',
                    ),
                  ),
                ],
              ),
            if (hasAudio && current.targetAudioBitrateBps > 0)
              Padding(
                padding: const EdgeInsets.only(top: AppSpacing.medium),
                child: _PlanMetric(
                  icon: LucideIcons.audioLines,
                  label: l10n.plannedAudioBitrate,
                  value:
                      '${(current.targetAudioBitrateBps / 1000).round()} kbps',
                ),
              ),
            if (hasAudio &&
                current.targetAudioBitrateBps > 0 &&
                !current.isInfeasible &&
                current.warningMessage != 'ALREADY_WITHIN_LIMIT')
              Padding(
                padding: const EdgeInsets.only(top: AppSpacing.medium),
                child: _notice(
                  context,
                  l10n.reEncodingConvertsAudioToAACStereoDolbyAtmosAndDTSSpatialAudioWillNotBePreserved,
                ),
              ),
            if (current.isInfeasible || current.warningMessage != null)
              Padding(
                padding: const EdgeInsets.only(top: AppSpacing.medium),
                child: _notice(
                  context,
                  current.isInfeasible
                      ? l10n.thisTargetIsTooSmallForAUsableVideoIncreaseTheSizeOrLowerOtherLimits
                      : switch (current.warningMessage) {
                          'ALREADY_WITHIN_LIMIT' =>
                            l10n.theSourceIsAlreadyWithinTheSizeLimit,
                          'TARGET_SIZE_UNREACHABLE' =>
                            l10n.requestedSettingsUnavailableBestQualityIs(
                              current.targetWidth.toString(),
                              current.targetHeight.toString(),
                            ),
                          _ => l10n.theSelectedTargetMayReduceVideoQuality,
                        },
                  isError: current.isInfeasible,
                ),
              ),
          ],
        ],
      ),
    );
  }

  Widget _notice(BuildContext context, String message, {bool isError = false}) {
    final scheme = context.colorScheme;
    final background = isError
        ? scheme.errorContainer
        : scheme.tertiaryContainer;
    final foreground = isError
        ? scheme.onErrorContainer
        : scheme.onTertiaryContainer;
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(AppSpacing.medium),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(AppRadii.large),
      ),
      child: Text(
        message,
        style: context.textTheme.bodySmall?.copyWith(color: foreground),
      ),
    );
  }
}

final class _PlanMetric extends StatelessWidget {
  const _PlanMetric({
    required this.icon,
    required this.label,
    required this.value,
  });

  final IconData icon;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    return Container(
      constraints: const BoxConstraints(minHeight: 86),
      padding: const EdgeInsets.all(AppSpacing.medium),
      decoration: BoxDecoration(
        color: scheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(AppRadii.large),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, size: 16, color: scheme.primary),
              const Gap.horizontal(AppSpacing.xSmall),
              Expanded(
                child: Text(
                  label,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: context.textTheme.labelSmall?.copyWith(
                    color: scheme.onSurfaceVariant,
                  ),
                ),
              ),
            ],
          ),
          const Gap(AppSpacing.small),
          Text(
            value,
            style: context.textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w800,
              fontFeatures: const [FontFeature.tabularFigures()],
            ),
          ),
        ],
      ),
    );
  }
}
