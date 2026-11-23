import 'dart:async';

import 'package:bloc_signals_flutter/bloc_signals_flutter.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:material_ui/material_ui.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../core/constants/design_system/tokens/tokens.dart';
import '../../../../core/di/di.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/services/share/base_share_service.dart';
import '../../../../core/widgets/widgets.dart';
import '../cubit/compression_cubit.dart';
import '../cubit/compression_state.dart';
import '../widgets/video_preview.dart';

final class CompressionResultPage extends HookWidget {
  const CompressionResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    final showAfter = useState(true);
    final l10n = context.localeKeys;
    final colorScheme = context.colorScheme;
    final textTheme = context.textTheme;

    return Scaffold(
      appBar: SidePageAppBarComponent(title: l10n.compressionResult),
      body: SafeArea(
        child: BlocSignalBuilder<CompressionCubit, CompressionState>(
          builder: (context, state) {
            final output = state.output;
            if (output == null) {
              return EmptyStateWidget(
                icon: LucideIcons.badgeCheck,
                title: l10n.compressionResult,
                subtitle:
                    l10n.compareTheBeforeAndAfterSizeThenSaveOrShareTheResult,
              );
            }

            final originalBytes =
                state.video?.metadata.fileSizeBytes ?? output.bytes;
            final compressedBytes = output.bytes;
            final savedPercent = originalBytes > 0
                ? (((originalBytes - compressedBytes) / originalBytes) * 100)
                      .clamp(0, 100)
                      .round()
                : 0;

            return ListView(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.large,
                vertical: AppSpacing.small,
              ),
              children: [
                // Celebration & Savings Hero Card
                CardComponent.filled(
                  padding: const EdgeInsets.all(AppSpacing.large),
                  child: Column(
                    children: [
                      const ExpressiveIcon(
                        icon: LucideIcons.badgeCheck,
                        shape: ExpressiveIconShape.gem,
                      ),
                      const Gap(AppSpacing.medium),
                      Text(
                        state.video?.name ?? '',
                        textAlign: TextAlign.center,
                        style: textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const Gap(AppSpacing.small),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: AppSpacing.medium,
                          vertical: AppSpacing.small,
                        ),
                        decoration: BoxDecoration(
                          color: colorScheme.primaryContainer,
                          borderRadius: BorderRadius.circular(AppRadii.pill),
                        ),
                        child: Text(
                          l10n.percentSmaller(savedPercent),
                          style: textTheme.labelMedium?.copyWith(
                            color: colorScheme.onPrimaryContainer,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const Gap(AppSpacing.large),

                // Comparison Preview Card
                CardComponent.filled(
                  padding: const EdgeInsets.all(AppSpacing.medium),
                  child: Column(
                    children: [
                      SegmentedButton<bool>(
                        segments: [
                          ButtonSegment(
                            value: false,
                            label: Text(l10n.originalPreview),
                            icon: const Icon(LucideIcons.film),
                          ),
                          ButtonSegment(
                            value: true,
                            label: Text(l10n.compressedPreview),
                            icon: const Icon(LucideIcons.sparkles),
                          ),
                        ],
                        selected: {showAfter.value},
                        onSelectionChanged: (val) {
                          unawaited(HapticFeedback.selectionClick());
                          showAfter.value = val.first;
                        },
                      ),
                      const Gap(AppSpacing.medium),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(AppRadii.medium),
                        child: VideoPreview(
                          key: ValueKey(
                            showAfter.value
                                ? output.path
                                : state.video?.path ?? output.path,
                          ),
                          path: showAfter.value
                              ? output.path
                              : state.video?.path ?? output.path,
                          title: showAfter.value
                              ? l10n.compressedPreview
                              : l10n.originalPreview,
                        ),
                      ),
                    ],
                  ),
                ),

                const Gap(AppSpacing.large),

                // Specs Breakdown
                ExpressiveSectionHeader(title: l10n.compressionResult),
                const Gap(AppSpacing.small),
                ListTileGroup(
                  children: [
                    ListTileIconComponent.top(
                      leading: LucideIcons.fileVideo,
                      title: l10n.originalSize,
                      trailing: Text(
                        '${(originalBytes / 1000000).toStringAsFixed(1)} ${l10n.megabytesShort}',
                        style: textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    ListTileIconComponent.middle(
                      leading: LucideIcons.checkCheck,
                      title: l10n.outputSize,
                      trailing: Text(
                        '${(compressedBytes / 1000000).toStringAsFixed(1)} ${l10n.megabytesShort}',
                        style: textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                          color: colorScheme.primary,
                        ),
                      ),
                    ),
                    ListTileIconComponent.bottom(
                      leading: LucideIcons.sparkles,
                      title: l10n.savingsDigestDetails,
                      trailing: Text(
                        l10n.percentSaved(savedPercent),
                        style: textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: colorScheme.primary,
                        ),
                      ),
                    ),
                  ],
                ),

                if (output.warning != null) ...[
                  const Gap(AppSpacing.medium),
                  CardComponent.outlined(
                    padding: const EdgeInsets.all(AppSpacing.medium),
                    child: Row(
                      children: [
                        Icon(
                          LucideIcons.info,
                          color: colorScheme.onSurfaceVariant,
                          size: AppIconSizes.small,
                        ),
                        const Gap(AppSpacing.small),
                        Expanded(
                          child: Text(
                            output.warning!,
                            style: textTheme.bodySmall?.copyWith(
                              color: colorScheme.onSurfaceVariant,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],

                const Gap(AppSpacing.xLarge),

                // Actions
                FilledButtonComponent.icon(
                  icon: LucideIcons.download,
                  label: l10n.saveToGallery,
                  expand: true,
                  onPressed: () async {
                    unawaited(HapticFeedback.vibrate());
                    try {
                      await BlocSignalProvider.of<CompressionCubit>(context)
                          .saveToGallery();
                      if (context.mounted) {
                        context.toast.showSuccess(context, l10n.savedToGallery);
                      }
                    } catch (_) {
                      if (context.mounted) {
                        context.toast.showError(
                          context,
                          l10n.compressionCouldNotBeCompletedTryAnotherSettingOrVideo,
                        );
                      }
                    }
                  },
                ),
                const Gap(AppSpacing.small),
                OutlinedButtonComponent.icon(
                  icon: LucideIcons.share2,
                  label: l10n.shareVideo,
                  expand: true,
                  onPressed: () async {
                    unawaited(HapticFeedback.selectionClick());
                    try {
                      await getIt<BaseShareService>().shareFile(
                        file: XFile(output.path),
                      );
                    } catch (_) {
                      if (context.mounted) {
                        context.toast.showError(
                          context,
                          l10n.compressionCouldNotBeCompletedTryAnotherSettingOrVideo,
                        );
                      }
                    }
                  },
                ),
                const Gap(AppSpacing.large),
              ],
            );
          },
        ),
      ),
    );
  }
}
