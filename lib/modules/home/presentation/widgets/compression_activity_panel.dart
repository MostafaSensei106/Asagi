import 'package:intl/intl.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/compression/domain/models/compression_step.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/design_system/tokens/tokens.dart';
import '../../../../core/widgets/widgets.dart';
import '../../../compression/presentation/cubit/compression_state.dart';

/// The running job is the primary surface; controls live in the action dock.
final class CompressionActivityPanel extends StatelessWidget {
  const CompressionActivityPanel({required this.state, super.key});
  final CompressionState state;

  @override
  Widget build(BuildContext context) {
    final l10n = context.localeKeys;
    final paused = state.phase == CompressionPhase.paused;
    final progress = state.progress.clamp(0.0, 1.0).toDouble();
    final label = paused
        ? l10n.pause
        : switch (state.step) {
            CompressionStep.preparing => l10n.calculatingCompressionPlan,
            CompressionStep.encoding => l10n.encodingHardwareLive,
            CompressionStep.verifying => l10n.verifyingCompressedVideo,
            CompressionStep.replanning => l10n.retryingCompression,
            CompressionStep.saving => l10n.savingCompressedVideo,
          };
    final percent = NumberFormat.percentPattern(
      Localizations.localeOf(context).toString(),
    ).format(progress);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          state.video?.name ?? '',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: context.textTheme.titleMedium,
        ),
        const Gap(AppSpacing.xxxLarge),
        Text(l10n.compressing, style: context.textTheme.titleLarge),
        const Gap(AppSpacing.small),
        Text(
          percent,
          style: context.textTheme.displayLarge?.copyWith(
            fontWeight: FontWeight.w700,
            color: context.colorScheme.primary,
          ),
        ),
        const Gap(AppSpacing.xLarge),
        // Announce stage changes, not every percentage tick.
        Semantics(
          liveRegion: true,
          child: Text(label, style: context.textTheme.titleMedium),
        ),
        const Gap(AppSpacing.large),
        LinearProgressIndicator(
          value: progress == 0 && !paused ? null : progress,
          minHeight: 8,
        ),
        const Gap(AppSpacing.xxxLarge),
        Text(
          l10n.onDeviceProcessingLabel,
          style: context.textTheme.bodySmall?.copyWith(
            color: context.colorScheme.onSurfaceVariant,
          ),
        ),
      ],
    );
  }
}
