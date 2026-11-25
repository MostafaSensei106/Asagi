import 'dart:async';

import 'package:bloc_signals_flutter/bloc_signals_flutter.dart';
import 'package:kaisel/kaisel.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/di/di.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/services/url_launcher/base_url_launcher_services.dart';
import '../../../compression/domain/use_cases/has_saved_compression_result.dart';
import '../../../compression/presentation/cubit/compression_cubit.dart';
import '../../../compression/presentation/cubit/compression_state.dart';
import '../../application/notification_interactions.dart';
import '../../domain/entities/notification_target.dart';

final class NotificationNavigationListener extends StatefulWidget {
  const NotificationNavigationListener({required this.child, super.key});
  final Widget child;
  @override
  State<NotificationNavigationListener> createState() =>
      _NotificationNavigationListenerState();
}

final class _NotificationNavigationListenerState
    extends State<NotificationNavigationListener> {
  late final NotificationInteractions _interactions;
  StreamSubscription<void>? _subscription;
  bool _ready = false, _opening = false;
  final _queued = <NotificationTarget>[];
  @override
  void initState() {
    super.initState();
    _interactions = getIt<NotificationInteractions>();
    _subscription = _interactions.changes.listen((_) => _receive());
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      _ready = true;
      _receive();
    });
  }

  void _receive() {
    if (!_ready || !mounted) return;
    _queued.addAll(_interactions.takePending());
    if (!_opening) unawaited(_openQueued());
  }

  Future<void> _openQueued() async {
    _opening = true;
    try {
      while (mounted && _queued.isNotEmpty) {
        await _open(_queued.removeAt(0));
      }
    } finally {
      _opening = false;
    }
  }

  Future<void> _open(NotificationTarget target) async {
    final compression = BlocSignalProvider.of<CompressionCubit>(context);
    switch (target) {
      case NotificationResultTarget(:final jobId):
        final exists = (await getIt<HasSavedCompressionResultUseCase>()(jobId))
            .when(success: (value) => value, failure: (_) => false);
        if (!mounted) return;
        if (exists) {
          unawaited(context.push(CompressionResultRoute(jobId: jobId)));
        } else {
          context.toast.showInfo(
            context,
            context.localeKeys.notificationJobUnavailable,
          );
          unawaited(context.push(const CompressionHistoryRoute()));
        }
      case NotificationProgressTarget(:final jobId):
        final state = compression.stateValue;
        if (state.jobId == jobId &&
            (state.phase == CompressionPhase.running ||
                state.phase == CompressionPhase.paused ||
                state.phase == CompressionPhase.saving)) {
          unawaited(context.push(CompressionProgressRoute(jobId: jobId)));
        } else {
          await compression.recoverInterrupted();
          if (mounted) {
            await AppRouter.showHome(context);
            if (!mounted) return;
            context.toast.showInfo(
              context,
              context.localeKeys.notificationRecoveryHint,
            );
          }
        }
      case NotificationRecoveryTarget():
        await compression.recoverInterrupted();
        if (mounted) {
          await AppRouter.showHome(context);
          if (!mounted) return;
          context.toast.showInfo(
            context,
            context.localeKeys.notificationRecoveryHint,
          );
        }
      case NotificationHistoryTarget():
        unawaited(context.push(const CompressionHistoryRoute()));
      case NotificationReleaseTarget(:final url):
        try {
          await getIt<BaseUrlLauncherServices>().launchWebsite(
            url: url.toString(),
          );
        } catch (_) {
          if (mounted) {
            context.toast.showInfo(
              context,
              context.localeKeys.notificationSetupFailed,
            );
          }
        }
    }
  }

  @override
  Widget build(BuildContext context) => widget.child;
  @override
  void dispose() {
    unawaited(_subscription?.cancel());
    super.dispose();
  }
}
