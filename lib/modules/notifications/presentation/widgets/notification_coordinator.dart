import 'dart:async';

import 'package:bloc_signals_flutter/bloc_signals_flutter.dart';
import 'package:kaisel/kaisel.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/di/di.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/services/url_launcher/base_url_launcher_services.dart';
import '../../../../l10n/app_localizations.dart';
import '../../../compression/presentation/cubit/compression_cubit.dart';
import '../../../compression/presentation/cubit/compression_state.dart';
import '../../logic/entities/notification_event.dart';
import '../../logic/entities/notification_target.dart';
import '../../logic/cubit/notifications_cubit.dart';

/// Shell-lifetime bridge: services publish events; only presentation navigates.
final class NotificationCoordinator extends StatefulWidget {
  const NotificationCoordinator({required this.child, super.key});
  final Widget child;
  @override
  State<NotificationCoordinator> createState() =>
      _NotificationCoordinatorState();
}

final class _NotificationCoordinatorState extends State<NotificationCoordinator>
    with WidgetsBindingObserver {
  NotificationsCubit? _notifications;
  AppLocalizations? _text;
  StreamSubscription<void>? _destinations;
  bool _ready = false;
  bool _opening = false;
  final List<NotificationTarget> _queued = [];
  String? _lastResult;

  bool get _foreground =>
      WidgetsBinding.instance.lifecycleState == null ||
      WidgetsBinding.instance.lifecycleState == AppLifecycleState.resumed;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final text = context.localeKeys;
    if (_notifications == null) {
      _text = text;
      _notifications = BlocSignalProvider.of<NotificationsCubit>(context);
      _destinations = _notifications!.destinations.listen(
        (_) => _receiveDestinations(),
      );
      WidgetsBinding.instance.addPostFrameCallback(
        (_) => unawaited(_start(text)),
      );
    } else if (!identical(_text, text)) {
      _text = text;
      unawaited(_notifications!.configureLanguage(text));
    }
  }

  Future<void> _start(AppLocalizations text) async {
    await _notifications!.initialize(text);
    if (!mounted) return;
    _ready = true;
    _receiveDestinations();
    await _notifications!.checkInsights();
    if (mounted) {
      await _compressionChanged(
        BlocSignalProvider.of<CompressionCubit>(context).stateValue,
      );
    }
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed && _ready) {
      unawaited(_refresh());
    }
  }

  Future<void> _refresh() async {
    await _notifications!.refresh();
    if (mounted) await _notifications!.checkInsights();
  }

  void _receiveDestinations() {
    if (!_ready || !mounted) return;
    _queued.addAll(_notifications!.takeDestinations());
    if (!_opening) unawaited(_openQueued());
  }

  Future<void> _openQueued() async {
    _opening = true;
    try {
      while (mounted && _queued.isNotEmpty) {
        final target = _queued.removeAt(0);
        await _open(target);
      }
    } finally {
      _opening = false;
    }
  }

  Future<void> _open(NotificationTarget target) async {
    final compression = BlocSignalProvider.of<CompressionCubit>(context);
    switch (target) {
      case NotificationResultTarget(:final jobId):
        final records = await compression.repository.history();
        if (!mounted) return;
        if (records.any((record) => record.jobId == jobId)) {
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
            unawaited(context.push(const HomeTabRoute()));
            context.toast.showInfo(
              context,
              context.localeKeys.notificationRecoveryHint,
            );
          }
        }
      case NotificationRecoveryTarget():
        await compression.recoverInterrupted();
        if (mounted) {
          unawaited(context.push(const HomeTabRoute()));
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

  Future<void> _compressionChanged(CompressionState state) async {
    if (!_ready) return;
    final running =
        state.phase == CompressionPhase.running ||
        state.phase == CompressionPhase.paused ||
        state.phase == CompressionPhase.saving;
    await _notifications!.setCurrentJob(
      running ? state.jobId : null,
      state.phase.name,
    );
    if (!mounted) return;
    final output = state.output;
    if (state.phase == CompressionPhase.completed &&
        output != null &&
        output.path != _lastResult) {
      _lastResult = output.path;
      await _notifications!.publish(
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
      await _notifications!.publish(
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

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    unawaited(_destinations?.cancel());
    super.dispose();
  }
}
