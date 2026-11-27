import 'package:bloc_signals_flutter/bloc_signals_flutter.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/design_system/tokens/tokens.dart';
import '../../../../core/widgets/widgets.dart';
import '../../../compression/presentation/cubit/compression_state.dart';
import '../../../compression/presentation/widgets/compression_error_text.dart';
import '../cubit/home_result_actions_cubit.dart';
import 'home_video_state_cards.dart';

final class HomeResultSummary extends StatelessWidget {
  const HomeResultSummary({required this.state, super.key});
  final CompressionState state;
  @override
  Widget build(BuildContext context) {
    final l10n = context.localeKeys;
    final output = state.output!;
    final original = state.video!.metadata.fileSizeBytes;
    final percent = original <= 0
        ? 0
        : ((original - output.bytes) / original * 100).clamp(0, 100).round();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Icon(
          LucideIcons.circleCheck,
          size: 36,
          color: context.colorScheme.primary,
        ),
        const Gap(AppSpacing.medium),
        Text(
          l10n.homeReadyToShare,
          style: context.textTheme.headlineMedium?.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        const Gap(AppSpacing.small),
        Text(
          l10n.percentSmaller(percent),
          style: context.textTheme.titleLarge?.copyWith(
            color: context.colorScheme.primary,
          ),
        ),
        const Gap(AppSpacing.xLarge),
        _Metric(
          label: l10n.originalSize,
          value: homeMegabytes(context, original),
        ),
        const Gap(AppSpacing.large),
        _Metric(
          label: l10n.outputSize,
          value: homeMegabytes(context, output.bytes),
          prominent: true,
        ),
        if (output.warning != null) ...[
          const Gap(AppSpacing.large),
          Text(
            compressionWarningText(context, output.warning!, output.bytes),
            style: context.textTheme.bodyMedium,
          ),
        ],
        BlocSignalBuilder<HomeResultActionsCubit, HomeResultActionsState>(
          builder: (context, action) {
            if (action is! HomeResultFailure) return const SizedBox.shrink();
            return Padding(
              padding: const EdgeInsets.only(top: AppSpacing.large),
              child: Semantics(
                liveRegion: true,
                child: Text(
                  action.action == HomeResultAction.save
                      ? l10n.homeSaveFailed
                      : l10n.homeShareFailed,
                  style: TextStyle(color: context.colorScheme.error),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}

final class _Metric extends StatelessWidget {
  const _Metric({
    required this.label,
    required this.value,
    this.prominent = false,
  });
  final String label, value;
  final bool prominent;
  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: context.textTheme.labelLarge?.copyWith(
          color: context.colorScheme.onSurfaceVariant,
        ),
      ),
      const Gap(AppSpacing.xSmall),
      Text(
        value,
        style:
            (prominent
                    ? context.textTheme.headlineLarge
                    : context.textTheme.titleLarge)
                ?.copyWith(fontWeight: FontWeight.w700),
      ),
    ],
  );
}
