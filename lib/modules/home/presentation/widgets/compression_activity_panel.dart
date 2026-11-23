import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/compression/domain/models/compression_step.dart';
import '../../../../core/constants/design_system/tokens/tokens.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/widgets.dart';
import '../../../compression/presentation/cubit/compression_state.dart';

final class CompressionActivityPanel extends StatelessWidget {
  const CompressionActivityPanel({
    required this.state,
    required this.onPause,
    required this.onResume,
    required this.onCancel,
    super.key,
  });

  final CompressionState state;
  final VoidCallback onPause;
  final VoidCallback onResume;
  final VoidCallback onCancel;

  @override
  Widget build(BuildContext context) {
    final l10n = context.localeKeys;
    final scheme = context.colorScheme;
    final steps = <(CompressionStep, String)>[
      (CompressionStep.preparing, l10n.calculatingCompressionPlan),
      (CompressionStep.encoding, l10n.encodingHardwareLive),
      (CompressionStep.verifying, l10n.verifyingCompressedVideo),
      (CompressionStep.saving, l10n.savingCompressedVideo),
    ];
    final progress = state.progress.clamp(0.0, 1.0).toDouble();
    final isRunning = state.phase == CompressionPhase.running;
    final isPaused = state.phase == CompressionPhase.paused;
    final canPause = isRunning && state.step == CompressionStep.encoding;
    final canCancel =
        (isRunning || isPaused) && state.step != CompressionStep.saving;

    return CardComponent.filled(
      color: scheme.surfaceContainerLow,
      padding: const EdgeInsets.all(AppSpacing.large),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ExpressiveIcon(
                icon: LucideIcons.gauge,
                shape: ExpressiveIconShape.softBurst,
                size: 44,
                backgroundColor: scheme.primaryContainer,
                foregroundColor: scheme.onPrimaryContainer,
              ),
              const Gap.horizontal(AppSpacing.medium),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      l10n.compressing,
                      style: context.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const Gap(AppSpacing.xSmall),
                    Text(
                      l10n.followTheLiveProgressOfYourCompressionJob,
                      style: context.textTheme.bodySmall?.copyWith(
                        color: scheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                '${(progress * 100).round()}%',
                style: context.textTheme.titleMedium?.copyWith(
                  color: scheme.primary,
                  fontWeight: FontWeight.w800,
                  fontFeatures: const [FontFeature.tabularFigures()],
                ),
              ),
            ],
          ),
          const Gap(AppSpacing.large),
          Semantics(
            liveRegion: true,
            label: steps[state.step.index].$2,
            value: '${(progress * 100).round()}%',
            child: ClipRRect(
              borderRadius: BorderRadius.circular(AppRadii.pill),
              child: LinearProgressIndicator(
                value: progress > 0 ? progress : null,
                minHeight: 10,
                backgroundColor: scheme.surfaceContainerHighest,
              ),
            ),
          ),
          const Gap(AppSpacing.large),
          for (final (step, label) in steps)
            _CompressionStepRow(
              label: label,
              isComplete: step.index < state.step.index,
              isCurrent: step == state.step,
              isPaused: state.phase == CompressionPhase.paused,
            ),
          const Gap(AppSpacing.medium),
          Row(
            children: [
              if (canPause)
                Expanded(
                  child: FilledTonalButtonComponent.icon(
                    icon: LucideIcons.pause,
                    label: l10n.pause,
                    onPressed: onPause,
                  ),
                )
              else if (isPaused)
                Expanded(
                  child: FilledButtonComponent.icon(
                    icon: LucideIcons.play,
                    label: l10n.resume,
                    onPressed: onResume,
                  ),
                ),
              if (canCancel) ...[
                if (canPause || isPaused)
                  const Gap.horizontal(AppSpacing.medium),
                Expanded(
                  child: OutlinedButtonComponent.icon(
                    icon: LucideIcons.x,
                    label: l10n.cancel,
                    isDestructive: true,
                    onPressed: onCancel,
                  ),
                ),
              ],
            ],
          ),
        ],
      ),
    );
  }
}

final class _CompressionStepRow extends StatelessWidget {
  const _CompressionStepRow({
    required this.label,
    required this.isComplete,
    required this.isCurrent,
    required this.isPaused,
  });

  final String label;
  final bool isComplete;
  final bool isCurrent;
  final bool isPaused;

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    final color = isComplete || isCurrent
        ? scheme.primary
        : scheme.onSurfaceVariant;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppSpacing.xSmall),
      child: Row(
        children: [
          if (isCurrent && !isPaused)
            SizedBox.square(
              dimension: 19,
              child: CircularProgressIndicator(strokeWidth: 2, color: color),
            )
          else
            Icon(
              isComplete
                  ? LucideIcons.circleCheck
                  : isCurrent
                  ? LucideIcons.pauseCircle
                  : LucideIcons.circle,
              size: 19,
              color: color,
            ),
          const Gap.horizontal(AppSpacing.small),
          Expanded(
            child: Text(
              label,
              style: context.textTheme.bodySmall?.copyWith(
                color: color,
                fontWeight: isCurrent ? FontWeight.w700 : null,
              ),
            ),
          ),
          if (isCurrent && !isPaused)
            Text(
              context.localeKeys.pleaseWait,
              style: context.textTheme.labelSmall?.copyWith(color: color),
            ),
        ],
      ),
    );
  }
}
