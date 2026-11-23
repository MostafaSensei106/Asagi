import 'dart:async';

import 'package:bloc_signals_flutter/bloc_signals_flutter.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:material_ui/material_ui.dart';
import 'package:open_filex/open_filex.dart';

import '../../../../core/constants/design_system/tokens/tokens.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/widgets.dart';
import '../cubit/compression_cubit.dart';
import '../cubit/compression_state.dart';

final class CompressionHistoryPage extends HookWidget {
  const CompressionHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocSignalProvider.of<CompressionCubit>(context);
    final l10n = context.localeKeys;
    final colorScheme = context.colorScheme;
    final textTheme = context.textTheme;

    useEffect(() {
      unawaited(cubit.loadHistory());
      return null;
    }, [cubit]);

    Future<void> confirmClearHistory() async {
      final confirmed = await showDialog<bool>(
        context: context,
        builder: (dialogContext) => AlertDialog(
          title: Text(l10n.clearHistory),
          content: Text(
            l10n.removeAllHistoryEntriesSavedVideosWillRemainOnYourDevice,
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(dialogContext, false),
              child: Text(l10n.cancel),
            ),
            FilledButton(
              onPressed: () => Navigator.pop(dialogContext, true),
              child: Text(l10n.clearHistory),
            ),
          ],
        ),
      );
      if (confirmed == true) {
        unawaited(HapticFeedback.vibrate());
        await cubit.clearHistory();
        if (context.mounted) {
          context.toast.showSuccess(context, l10n.clearHistory);
        }
      }
    }

    return Scaffold(
      appBar: SidePageAppBarComponent(
        title: l10n.compressionHistory,
        actions: [
          BlocSignalBuilder<CompressionCubit, CompressionState>(
            builder: (context, state) {
              if (state.history.isEmpty) return const SizedBox.shrink();
              return IconButtonComponent(
                icon: LucideIcons.trash2,
                tooltip: l10n.clearHistory,
                onPressed: confirmClearHistory,
              );
            },
          ),
        ],
      ),
      body: SafeArea(
        child: BlocSignalBuilder<CompressionCubit, CompressionState>(
          builder: (context, state) {
            if (state.history.isEmpty) {
              return EmptyStateWidget(
                icon: LucideIcons.history,
                title: l10n.noCompressedVideosYet,
                subtitle: l10n.yourCompressedVideoHistory,
              );
            }

            final totalOriginal = state.history.fold<int>(
              0,
              (sum, item) => sum + item.originalBytes,
            );
            final totalCompressed = state.history.fold<int>(
              0,
              (sum, item) => sum + item.bytes,
            );
            final totalSavedMb = (totalOriginal > totalCompressed)
                ? (totalOriginal - totalCompressed) / 1000000
                : 0.0;

            return ListView(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.large,
                vertical: AppSpacing.small,
              ),
              children: [
                // Metrics / Summary Card
                CardComponent.filled(
                  padding: const EdgeInsets.all(AppSpacing.large),
                  child: Row(
                    children: [
                      const ExpressiveIcon(
                        icon: LucideIcons.sparkles,
                        shape: ExpressiveIconShape.gem,
                      ),
                      const Gap(AppSpacing.medium),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              l10n.compressionIntelligence,
                              style: textTheme.titleSmall?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Gap(AppSpacing.small),
                            Text(
                              l10n.historySummarySubtitle(
                                state.history.length,
                                totalSavedMb.toStringAsFixed(1),
                              ),
                              style: textTheme.bodySmall?.copyWith(
                                color: colorScheme.onSurfaceVariant,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                const Gap(AppSpacing.large),
                ExpressiveSectionHeader(title: l10n.compressionHistory),
                const Gap(AppSpacing.small),

                for (final record in state.history) ...[
                  CardComponent.filled(
                    padding: EdgeInsets.zero,
                    child: ExpansionTile(
                      shape: const Border(),
                      collapsedShape: const Border(),
                      tilePadding: const EdgeInsets.symmetric(
                        horizontal: AppSpacing.large,
                        vertical: AppSpacing.small,
                      ),
                      leading: const ExpressiveIcon(
                        icon: LucideIcons.video,
                        shape: ExpressiveIconShape.clover,
                      ),
                      title: Text(
                        record.sourceName,
                        style: textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      subtitle: Text(
                        record.createdAt.toLocal().toString().split('.').first,
                        style: textTheme.bodySmall?.copyWith(
                          color: colorScheme.onSurfaceVariant,
                        ),
                      ),
                      trailing: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: AppSpacing.small,
                          vertical: AppSpacing.small,
                        ),
                        decoration: BoxDecoration(
                          color: colorScheme.primaryContainer.withValues(
                            alpha: 0.5,
                          ),
                          borderRadius: BorderRadius.circular(AppRadii.small),
                        ),
                        child: Text(
                          '${(record.bytes / 1000000).toStringAsFixed(1)} ${l10n.megabytesShort}',
                          style: textTheme.labelSmall?.copyWith(
                            color: colorScheme.primary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      childrenPadding: const EdgeInsets.fromLTRB(
                        AppSpacing.large,
                        0,
                        AppSpacing.large,
                        AppSpacing.large,
                      ),
                      children: [
                        const Divider(),
                        const Gap(AppSpacing.small),
                        if (record.originalBytes > 0)
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: AppSpacing.small,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  l10n.originalSize,
                                  style: textTheme.bodySmall?.copyWith(
                                    color: colorScheme.onSurfaceVariant,
                                  ),
                                ),
                                Text(
                                  '${(record.originalBytes / 1000000).toStringAsFixed(1)} ${l10n.megabytesShort}',
                                  style: textTheme.bodySmall?.copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        if (record.targetMb > 0)
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: AppSpacing.small,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  l10n.targetSize,
                                  style: textTheme.bodySmall?.copyWith(
                                    color: colorScheme.onSurfaceVariant,
                                  ),
                                ),
                                Text(
                                  '${record.targetMb} ${l10n.megabytesShort}',
                                  style: textTheme.bodySmall?.copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        if (record.width > 0 && record.height > 0)
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: AppSpacing.small,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  l10n.outputResolution,
                                  style: textTheme.bodySmall?.copyWith(
                                    color: colorScheme.onSurfaceVariant,
                                  ),
                                ),
                                Text(
                                  '${record.width} × ${record.height}',
                                  style: textTheme.bodySmall?.copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: AppSpacing.small,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                l10n.attempts,
                                style: textTheme.bodySmall?.copyWith(
                                  color: colorScheme.onSurfaceVariant,
                                ),
                              ),
                              Text(
                                '${record.attempts}',
                                style: textTheme.bodySmall?.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Gap(AppSpacing.medium),
                        FilledTonalButtonComponent.icon(
                          icon: LucideIcons.play,
                          label: l10n.viewResult,
                          expand: true,
                          onPressed: () {
                            unawaited(HapticFeedback.selectionClick());
                            unawaited(OpenFilex.open(record.path));
                          },
                        ),
                      ],
                    ),
                  ),
                  const Gap(AppSpacing.small),
                ],
              ],
            );
          },
        ),
      ),
    );
  }
}
