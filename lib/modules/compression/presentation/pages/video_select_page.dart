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

import '../widgets/unsupported_compression_page.dart';

final class VideoSelectPage extends StatelessWidget {
  const VideoSelectPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.localeKeys;
    final colorScheme = context.colorScheme;
    final textTheme = context.textTheme;

    if (!supportsVideoCompression) return const UnsupportedCompressionPage();

    return Scaffold(
      appBar: SidePageAppBarComponent(title: l10n.chooseAVideo),
      body: SafeArea(
        child: BlocSignalBuilder<CompressionCubit, CompressionState>(
          builder: (context, state) {
            final isBusy =
                state.phase == CompressionPhase.picking ||
                state.phase == CompressionPhase.running ||
                state.phase == CompressionPhase.paused ||
                state.phase == CompressionPhase.saving;

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
                      const ExpressiveIcon(
                        icon: LucideIcons.video,
                        shape: ExpressiveIconShape.gem,
                      ),
                      const Gap(AppSpacing.large),
                      Text(
                        l10n.chooseAVideo,
                        style: textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const Gap(AppSpacing.small),
                      Text(
                        l10n.pickAVideoFromYourGalleryToStartCompressing,
                        textAlign: TextAlign.center,
                        style: textTheme.bodySmall?.copyWith(
                          color: colorScheme.onSurfaceVariant,
                        ),
                      ),
                      if (state.phase == CompressionPhase.failure) ...[
                        const Gap(AppSpacing.medium),
                        Text(
                          compressionErrorText(context, state.error),
                          style: textTheme.bodySmall?.copyWith(
                            color: colorScheme.error,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                      const Gap(AppSpacing.xLarge),
                      FilledButtonComponent.icon(
                        icon: isBusy ? LucideIcons.loader : LucideIcons.film,
                        label: state.phase == CompressionPhase.picking
                            ? l10n.pleaseWait
                            : l10n.pickVideo,
                        expand: true,
                        isLoading: state.phase == CompressionPhase.picking,
                        isEnabled: !isBusy,
                        onPressed: () async {
                          unawaited(HapticFeedback.mediumImpact());
                          final cubit = BlocSignalProvider.of<CompressionCubit>(
                            context,
                          );
                          final selected = await cubit.pickVideo();
                          if (selected && context.mounted) {
                            unawaited(
                              context.push(
                                CompressionSetupRoute(
                                  sourcePath: cubit.stateValue.video?.path,
                                ),
                              ),
                            );
                          }
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
