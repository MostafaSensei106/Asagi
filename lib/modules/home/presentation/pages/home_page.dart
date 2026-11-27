import 'dart:async';

import 'package:bloc_signals_flutter/bloc_signals_flutter.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:kaisel/kaisel.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/kuymo_icons.dart';
import '../../../../core/di/di.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/widgets/design_system/tokens/tokens.dart';
import '../../../../core/widgets/widgets.dart';
import '../../../compression/presentation/cubit/compression_cubit.dart';
import '../../../compression/presentation/cubit/compression_state.dart';
import '../../../compression/presentation/widgets/compression_error_text.dart';
import '../../../compression/presentation/widgets/unsupported_compression_page.dart';
import '../cubit/home_result_actions_cubit.dart';
import '../widgets/compression_activity_panel.dart';
import '../widgets/home_action_dock.dart';
import '../widgets/home_recovery_panel.dart';
import '../widgets/home_result_summary.dart';
import '../widgets/home_setup_panel.dart';
import '../widgets/home_state.dart';
import '../widgets/home_video_state_cards.dart';

/// Composition root for the video workspace and its result actions.
final class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) => BlocSignalProvider(
    create: (_) => getIt<HomeResultActionsCubit>(),
    child: const _HomeWorkspace(),
  );
}

final class _HomeWorkspace extends HookWidget {
  const _HomeWorkspace();
  @override
  Widget build(BuildContext context) {
    final compression = BlocSignalProvider.of<CompressionCubit>(context);
    final results = BlocSignalProvider.of<HomeResultActionsCubit>(context);
    final validTarget = useValueNotifier(true);
    useEffect(() {
      results.setOutput(compression.stateValue.output);
      return null;
    }, [compression, results]);
    final l10n = context.localeKeys;
    return BlocSignalListener<CompressionCubit, CompressionState>(
      listenWhen: (a, b) =>
          a.output != b.output ||
          a.targetMb != b.targetMb ||
          a.selectedPresetId != b.selectedPresetId ||
          a.video != b.video,
      listener: (_, state) {
        results.setOutput(state.output);
        validTarget.value = true;
      },
      child: Scaffold(
        appBar: AppBarComponent(
          title: l10n.kuymo,
          leading: IconButtonComponent(
            icon: KuymoIcons.settings,
            tooltip: l10n.settings,
            foregroundColor: context.colorScheme.onSurface,
            onPressed: () => unawaited(context.push(const SettingsRoute())),
          ),
          actions: [
            IconButtonComponent(
              icon: KuymoIcons.compressionHistory,
              tooltip: l10n.compressionHistory,
              foregroundColor: context.colorScheme.onSurface,
              onPressed: () =>
                  unawaited(context.push(const CompressionHistoryRoute())),
            ),
            IconButtonComponent(
              icon: KuymoIcons.ai,
              tooltip: l10n.kuymoAssistant,
              foregroundColor: context.colorScheme.primary,
              onPressed: () => unawaited(context.push(const AiChatRoute())),
            ),
          ],
        ),
        bottomNavigationBar: supportsVideoCompression
            ? HomeActionDock(validTarget: validTarget)
            : null,
        body: !supportsVideoCompression
            ? Center(
                child: Padding(
                  padding: const EdgeInsets.all(AppSpacing.large),
                  child: Text(l10n.compressionAndroidOnly),
                ),
              )
            : BlocSignalBuilder<CompressionCubit, CompressionState>(
                // Progress is observed only by the activity panel; the player
                // and editable controls keep their controllers and focus.
                buildWhen: (a, b) =>
                    a.phase != b.phase ||
                    a.video != b.video ||
                    a.targetMb != b.targetMb ||
                    a.output != b.output ||
                    a.error != b.error ||
                    a.preferences != b.preferences ||
                    a.previewPlan != b.previewPlan ||
                    a.planning != b.planning ||
                    a.recoverableJobs != b.recoverableJobs ||
                    a.selectedPresetId != b.selectedPresetId ||
                    a.presets != b.presets ||
                    a.resolvedPresetPlan != b.resolvedPresetPlan,
                builder: (context, state) => SafeArea(
                  top: false,
                  bottom: false,
                  child: SingleChildScrollView(
                    key: const PageStorageKey('home-workspace'),
                    padding: const EdgeInsets.all(AppSpacing.large),
                    child: Center(
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 1100),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            if (state.recoverableJobs.isNotEmpty) ...[
                              HomeRecoveryPanel(
                                state: state,
                                cubit: compression,
                              ),
                              const Gap(AppSpacing.large),
                            ],
                            if (state.isPicking)
                              const HomeVideoPickingCard()
                            else if (state.video == null)
                              const HomeImportSurface()
                            else if (state.isWorking)
                              const _ActiveWorkspace()
                            else
                              _EditorLayout(
                                preview: HomeVideoPreview(
                                  key: ValueKey(state.video!.path),
                                  video: state.video!,
                                  outputPath: state.hasResult
                                      ? state.output!.path
                                      : null,
                                  onReplace: state.hasResult
                                      ? null
                                      : () =>
                                            unawaited(compression.pickVideo()),
                                ),
                                controls: state.hasResult
                                    ? HomeResultSummary(state: state)
                                    : HomeSetupPanel(
                                        state: state,
                                        cubit: compression,
                                        onValidityChanged: (value) =>
                                            validTarget.value = value,
                                      ),
                              ),
                            if (state.phase == CompressionPhase.failure &&
                                (state.video == null ||
                                    state.previewPlan != null)) ...[
                              const Gap(AppSpacing.large),
                              Semantics(
                                liveRegion: true,
                                child: Text(
                                  compressionErrorText(context, state.error),
                                  style: TextStyle(
                                    color: context.colorScheme.error,
                                  ),
                                ),
                              ),
                            ],
                            if (state.phase == CompressionPhase.cancelled) ...[
                              const Gap(AppSpacing.large),
                              Text(l10n.compressionCancelled),
                            ],
                            const Gap(AppSpacing.large),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
      ),
    );
  }
}

final class _EditorLayout extends StatelessWidget {
  const _EditorLayout({required this.preview, required this.controls});
  final Widget preview, controls;
  @override
  Widget build(BuildContext context) => LayoutBuilder(
    builder: (context, constraints) {
      if (constraints.maxWidth >= 800 &&
          MediaQuery.textScalerOf(context).scale(16) <= 24) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(flex: 5, child: preview),
            const Gap.horizontal(AppSpacing.xxLarge),
            Expanded(flex: 4, child: controls),
          ],
        );
      }
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [preview, const Gap(AppSpacing.xLarge), controls],
      );
    },
  );
}

final class _ActiveWorkspace extends StatelessWidget {
  const _ActiveWorkspace();
  @override
  Widget build(BuildContext context) =>
      BlocSignalBuilder<CompressionCubit, CompressionState>(
        builder: (context, state) => CompressionActivityPanel(state: state),
      );
}
