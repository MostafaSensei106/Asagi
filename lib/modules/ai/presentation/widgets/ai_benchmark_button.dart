import 'dart:async';

import 'package:bloc_signals_flutter/bloc_signals_flutter.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/kuymo_icons.dart';
import '../../../../core/di/di.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/repositories/ai_runtime_repository.dart';
import '../cubit/ai_benchmark_cubit.dart';

final class AiBenchmarkButton extends StatelessWidget {
  const AiBenchmarkButton({super.key});
  @override
  Widget build(BuildContext context) => BlocSignalProvider(
    create: (_) => AiBenchmarkCubit(getIt<AiRuntimeRepository>()),
    child: BlocSignalListener<AiBenchmarkCubit, AiBenchmarkState>(
      listener: (context, state) {
        if (state.failed) {
          context.toast.showError(
            context,
            context.localeKeys.aiOperationFailed,
          );
        }
        if (state.elapsedMs != null) {
          context.toast.showSuccess(
            context,
            context.localeKeys.aiBenchmarkElapsed(state.elapsedMs!),
          );
        }
      },
      child: BlocSignalBuilder<AiBenchmarkCubit, AiBenchmarkState>(
        builder: (context, state) => FilledTonalButtonComponent.icon(
          icon: KuymoIcons.aiRuntime,
          label: state.busy
              ? context.localeKeys.benchmarking
              : context.localeKeys.benchmarkEngineNow,
          onPressed: state.busy
              ? null
              : () => unawaited(
                  BlocSignalProvider.of<AiBenchmarkCubit>(context).run(),
                ),
        ),
      ),
    ),
  );
}
