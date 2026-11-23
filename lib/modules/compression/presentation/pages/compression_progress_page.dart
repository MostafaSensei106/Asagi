import 'dart:async';

import 'package:bloc_signals_flutter/bloc_signals_flutter.dart';
import 'package:flutter/services.dart';
import 'package:kaisel/kaisel.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/design_system/tokens/tokens.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/widgets/widgets.dart';
import '../cubit/compression_cubit.dart';
import '../cubit/compression_state.dart';
import '../widgets/compression_error_text.dart';

final class CompressionProgressPage extends StatelessWidget {
  const CompressionProgressPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.localeKeys;
    final colorScheme = context.colorScheme;
    final textTheme = context.textTheme;

    return Scaffold(
      appBar: SidePageAppBarComponent(title: l10n.compressing),
      body: SafeArea(
        child: BlocSignalBuilder<CompressionCubit, CompressionState>(
          builder: (context, state) {
            final cubit = BlocSignalProvider.of<CompressionCubit>(context);
            final percent = (state.progress * 100).round();

            final statusText = switch (state.phase) {
              CompressionPhase.running => l10n.encodingHardwareLive,
              CompressionPhase.paused => l10n.pause,
              CompressionPhase.completed =>
                l10n.compressionCompletedSuccessfully,
              CompressionPhase.cancelled => l10n.compressionCancelled,
              CompressionPhase.failure => compressionErrorText(
                context,
                state.error,
              ),
              _ => l10n.followTheLiveProgressOfYourCompressionJob,
            };

            return Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSpacing.large,
                  vertical: AppSpacing.medium,
                ),
                child: CardComponent.filled(
                  padding: const EdgeInsets.all(AppSpacing.xLarge),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ExpressiveIcon(
                        icon: switch (state.phase) {
                          CompressionPhase.completed => LucideIcons.badgeCheck,
                          CompressionPhase.failure => LucideIcons.alertCircle,
                          CompressionPhase.paused => LucideIcons.pause,
                          _ => LucideIcons.gauge,
                        },
                        shape: ExpressiveIconShape.gem,
                      ),
                      const Gap(AppSpacing.large),
                      Text(
                        state.video?.name ?? '',
                        style: textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const Gap(AppSpacing.small),
                      Text(
                        statusText,
                        style: textTheme.bodySmall?.copyWith(
                          color: state.phase == CompressionPhase.failure
                              ? colorScheme.error
                              : colorScheme.onSurfaceVariant,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const Gap(AppSpacing.xLarge),

                      // Percentage Hero
                      Text(
                        '$percent%',
                        style: textTheme.displayLarge?.copyWith(
                          fontWeight: FontWeight.w800,
                          color: colorScheme.primary,
                        ),
                      ),
                      const Gap(AppSpacing.large),

                      ClipRRect(
                        borderRadius: BorderRadius.circular(AppRadii.pill),
                        child: LinearProgressIndicator(
                          value: state.phase == CompressionPhase.completed
                              ? 1.0
                              : state.progress,
                          minHeight: 10,
                          backgroundColor: colorScheme.surfaceContainerHighest,
                        ),
                      ),
                      const Gap(AppSpacing.xLarge),

                      // Action Controls
                      if (state.phase == CompressionPhase.running)
                        Row(
                          children: [
                            Expanded(
                              child: FilledTonalButtonComponent.icon(
                                icon: LucideIcons.pause,
                                label: l10n.pause,
                                onPressed: () {
                                  unawaited(HapticFeedback.selectionClick());
                                  unawaited(cubit.pause());
                                },
                              ),
                            ),
                            const Gap(AppSpacing.medium),
                            Expanded(
                              child: OutlinedButtonComponent.icon(
                                icon: LucideIcons.x,
                                label: l10n.cancel,
                                isDestructive: true,
                                onPressed: () {
                                  unawaited(HapticFeedback.selectionClick());
                                  unawaited(cubit.cancel());
                                },
                              ),
                            ),
                          ],
                        ),

                      if (state.phase == CompressionPhase.paused)
                        Row(
                          children: [
                            Expanded(
                              child: FilledButtonComponent.icon(
                                icon: LucideIcons.play,
                                label: l10n.resume,
                                onPressed: () {
                                  unawaited(HapticFeedback.selectionClick());
                                  unawaited(cubit.resume());
                                },
                              ),
                            ),
                            const Gap(AppSpacing.medium),
                            Expanded(
                              child: OutlinedButtonComponent.icon(
                                icon: LucideIcons.x,
                                label: l10n.cancel,
                                isDestructive: true,
                                onPressed: () {
                                  unawaited(HapticFeedback.selectionClick());
                                  unawaited(cubit.cancel());
                                },
                              ),
                            ),
                          ],
                        ),

                      if (state.phase == CompressionPhase.completed)
                        FilledButtonComponent.icon(
                          icon: LucideIcons.badgeCheck,
                          label: l10n.viewResult,
                          expand: true,
                          onPressed: () {
                            unawaited(HapticFeedback.vibrate());
                            unawaited(
                              context.push(const CompressionResultRoute()),
                            );
                          },
                        ),

                      if (state.phase == CompressionPhase.failure)
                        FilledButtonComponent.icon(
                          icon: LucideIcons.refreshCw,
                          label: l10n.retry,
                          expand: true,
                          onPressed: () {
                            unawaited(HapticFeedback.selectionClick());
                            unawaited(cubit.start());
                          },
                        ),

                      if (state.phase == CompressionPhase.cancelled)
                        OutlinedButtonComponent.icon(
                          icon: LucideIcons.arrowLeft,
                          label: l10n.cancel,
                          expand: true,
                          onPressed: () {
                            unawaited(HapticFeedback.selectionClick());
                            Navigator.of(context).pop();
                          },
                        ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
