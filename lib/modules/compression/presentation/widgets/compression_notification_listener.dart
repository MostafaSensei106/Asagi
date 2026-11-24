import 'dart:async';

import 'package:bloc_signals_flutter/bloc_signals_flutter.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/di/di.dart';
import '../../../notifications/domain/entities/notification_event.dart';
import '../../application/notifications/compression_notification_service.dart';
import '../cubit/compression_cubit.dart';
import '../cubit/compression_state.dart';

final class CompressionNotificationListener extends StatefulWidget {
  const CompressionNotificationListener({required this.child, super.key});
  final Widget child;
  @override
  State<CompressionNotificationListener> createState() =>
      _CompressionNotificationListenerState();
}

final class _CompressionNotificationListenerState
    extends State<CompressionNotificationListener> {
  final _service = getIt<CompressionNotificationService>();
  String? _lastResult;
  bool get _foreground =>
      WidgetsBinding.instance.lifecycleState == null ||
      WidgetsBinding.instance.lifecycleState == AppLifecycleState.resumed;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        unawaited(
          _compressionChanged(
            BlocSignalProvider.of<CompressionCubit>(context).stateValue,
          ),
        );
      }
    });
  }

  Future<void> _compressionChanged(CompressionState state) async {
    final running =
        state.phase == CompressionPhase.running ||
        state.phase == CompressionPhase.paused ||
        state.phase == CompressionPhase.saving;
    await _service.setCurrentJob(
      running ? state.jobId : null,
      state.phase.name,
    );
    if (!mounted) return;
    final output = state.output;
    if (state.phase == CompressionPhase.completed &&
        output != null &&
        output.path != _lastResult) {
      _lastResult = output.path;
      await _service.publish(
        NotificationEvent.completed(
          jobId: output.jobId ?? state.jobId ?? '',
          sourceName: state.video?.name ?? '',
          originalBytes: state.video?.metadata.fileSizeBytes ?? output.bytes,
          outputBytes: output.bytes,
          warning: output.warning,
        ),
        foreground: _foreground,
      );
    } else if (state.phase == CompressionPhase.failure && state.jobId != null) {
      await _service.publish(
        NotificationEvent.failed(
          jobId: state.jobId!,
          errorCode: state.error ?? '',
        ),
        foreground: _foreground,
      );
    }
  }

  @override
  Widget build(BuildContext context) =>
      BlocSignalListener<CompressionCubit, CompressionState>(
        listenWhen: (before, after) =>
            before.phase != after.phase || before.output != after.output,
        listener: (context, state) => unawaited(_compressionChanged(state)),
        child: widget.child,
      );
}
