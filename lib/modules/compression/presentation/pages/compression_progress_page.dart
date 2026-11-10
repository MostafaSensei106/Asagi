import 'dart:async';

import 'package:bloc_signals_flutter/bloc_signals_flutter.dart';
import 'package:kaisel/kaisel.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/extensions/extensions.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/widgets/navigation/app_bar/app_bar_component.dart';
import '../cubit/compression_cubit.dart';
import '../cubit/compression_state.dart';
import '../widgets/compression_error_text.dart';

final class CompressionProgressPage extends StatelessWidget {
  const CompressionProgressPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBarComponent(title: context.localeKeys.compressionProgressTitle),
    body: BlocSignalBuilder<CompressionCubit, CompressionState>(
      builder: (context, state) {
        final cubit = BlocSignalProvider.of<CompressionCubit>(context);
        return Center(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                LinearProgressIndicator(value: state.progress),
                const SizedBox(height: 16),
                Text('${(state.progress * 100).round()}%'),
                const SizedBox(height: 24),
                if (state.phase == CompressionPhase.running)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () => unawaited(cubit.pause()),
                        child: Text(context.localeKeys.compressionPause),
                      ),
                      TextButton(
                        onPressed: () => unawaited(cubit.cancel()),
                        child: Text(context.localeKeys.cancel),
                      ),
                    ],
                  ),
                if (state.phase == CompressionPhase.paused)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () => unawaited(cubit.resume()),
                        child: Text(context.localeKeys.compressionResume),
                      ),
                      TextButton(
                        onPressed: () => unawaited(cubit.cancel()),
                        child: Text(context.localeKeys.cancel),
                      ),
                    ],
                  ),
                if (state.phase == CompressionPhase.completed)
                  FilledButton(
                    onPressed: () =>
                        unawaited(context.push(const CompressionResultRoute())),
                    child: Text(context.localeKeys.compressionViewResult),
                  ),
                if (state.phase == CompressionPhase.cancelled)
                  Text(context.localeKeys.compressionCancelled),
                if (state.phase == CompressionPhase.failure) ...[
                  Text(
                    compressionErrorText(context, state.error),
                    textAlign: TextAlign.center,
                  ),
                  TextButton(
                    onPressed: () => unawaited(cubit.start()),
                    child: Text(context.localeKeys.retry),
                  ),
                ],
              ],
            ),
          ),
        );
      },
    ),
  );
}
