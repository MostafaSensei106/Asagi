import 'dart:async';

import 'package:bloc_signals_flutter/bloc_signals_flutter.dart';
import 'package:flutter/foundation.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/compression/domain/models/compression_step.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/design_system/tokens/tokens.dart';
import '../../../../core/widgets/widgets.dart';
import '../../../compression/presentation/cubit/compression_cubit.dart';
import '../../../compression/presentation/cubit/compression_state.dart';
import '../cubit/home_result_actions_cubit.dart';
import 'home_state.dart';

final class HomeActionDock extends StatelessWidget {
  const HomeActionDock({required this.validTarget, super.key});
  final ValueListenable<bool> validTarget;

  @override
  Widget build(BuildContext context) =>
      BlocSignalBuilder<CompressionCubit, CompressionState>(
        buildWhen: (a, b) =>
            a.phase != b.phase ||
            a.planning != b.planning ||
            a.previewPlan != b.previewPlan ||
            a.video != b.video ||
            a.output != b.output ||
            a.step != b.step,
        builder: (context, state) {
          final cubit = BlocSignalProvider.of<CompressionCubit>(context);
          final l10n = context.localeKeys;
          return Material(
            color: context.colorScheme.surface,
            child: SafeArea(
              top: false,
              child: Center(
                heightFactor: 1,
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 1100),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(
                      AppSpacing.large,
                      AppSpacing.medium,
                      AppSpacing.large,
                      AppSpacing.medium,
                    ),
                    child: state.hasResult
                        ? const _ResultActions()
                        : state.isWorking
                        ? Wrap(
                            alignment: WrapAlignment.center,
                            spacing: AppSpacing.medium,
                            runSpacing: AppSpacing.small,
                            children: [
                              if (state.phase == CompressionPhase.paused)
                                FilledButtonComponent.icon(
                                  icon: LucideIcons.play,
                                  label: l10n.resume,
                                  onPressed: () => unawaited(cubit.resume()),
                                )
                              else if (state.step == CompressionStep.encoding)
                                FilledTonalButtonComponent.icon(
                                  icon: LucideIcons.pause,
                                  label: l10n.pause,
                                  onPressed: () => unawaited(cubit.pause()),
                                ),
                              if (state.phase != CompressionPhase.saving)
                                OutlinedButtonComponent(
                                  label: l10n.cancel,
                                  isDestructive: true,
                                  onPressed: () => unawaited(cubit.cancel()),
                                )
                              else
                                Padding(
                                  padding: const EdgeInsets.all(
                                    AppSpacing.small,
                                  ),
                                  child: Text(l10n.savingCompressedVideo),
                                ),
                            ],
                          )
                        : ValueListenableBuilder<bool>(
                            valueListenable: validTarget,
                            builder: (context, valid, _) =>
                                FilledButtonComponent.icon(
                                  key: const ValueKey('home-primary-action'),
                                  expand: true,
                                  icon: state.video == null
                                      ? LucideIcons.plus
                                      : LucideIcons.arrowDownToLine,
                                  label: state.isPicking
                                      ? l10n.preparingSelectedVideo
                                      : state.video == null
                                      ? l10n.pickVideo
                                      : state.planning
                                      ? l10n.calculatingCompressionPlan
                                      : l10n.startCompression,
                                  isLoading: state.isPicking || state.planning,
                                  isEnabled:
                                      !state.isPicking &&
                                      (state.video == null ||
                                          (valid && state.canStart)),
                                  onPressed: () => unawaited(
                                    state.video == null
                                        ? cubit.pickVideo()
                                        : cubit.start(),
                                  ),
                                ),
                          ),
                  ),
                ),
              ),
            ),
          );
        },
      );
}

final class _ResultActions extends StatelessWidget {
  const _ResultActions();
  @override
  Widget build(BuildContext context) =>
      BlocSignalBuilder<HomeResultActionsCubit, HomeResultActionsState>(
        builder: (context, state) {
          final actions = BlocSignalProvider.of<HomeResultActionsCubit>(
            context,
          );
          final l10n = context.localeKeys;
          final busy = state is HomeResultBusy;
          return Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Builder(
                builder: (buttonContext) => FilledButtonComponent.icon(
                  key: const ValueKey('home-share-result'),
                  expand: true,
                  icon: LucideIcons.share2,
                  label: l10n.shareVideo,
                  isEnabled: !busy,
                  isLoading: busy && state.action == HomeResultAction.share,
                  onPressed: () {
                    final box = buttonContext.findRenderObject() as RenderBox?;
                    final origin = box == null || !box.hasSize
                        ? null
                        : box.localToGlobal(Offset.zero) & box.size;
                    unawaited(actions.share(origin));
                  },
                ),
              ),
              const Gap(AppSpacing.small),
              Wrap(
                alignment: WrapAlignment.center,
                spacing: AppSpacing.large,
                children: [
                  TextButton.icon(
                    onPressed: busy || state.saved
                        ? null
                        : () => unawaited(actions.save()),
                    icon: Icon(
                      state.saved ? LucideIcons.check : LucideIcons.download,
                      size: 18,
                    ),
                    label: Text(
                      state.saved ? l10n.savedToGallery : l10n.saveToGallery,
                    ),
                  ),
                  TextButton(
                    onPressed: busy
                        ? null
                        : () => unawaited(
                            BlocSignalProvider.of<CompressionCubit>(context)
                                .pickVideo(),
                          ),
                    child: Text(l10n.homeNewVideo),
                  ),
                ],
              ),
            ],
          );
        },
      );
}
