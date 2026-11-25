import 'dart:async';

import 'package:bloc_signals_flutter/bloc_signals_flutter.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/di/di.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../l10n/app_localizations.dart';
import '../../../compression/application/notifications/compression_insights_service.dart';
import '../../../compression/application/notifications/compression_notification_service.dart';
import '../../../compression/presentation/widgets/compression_notification_listener.dart';
import '../../../updates/application/app_update_service.dart';
import '../../application/notification_dispatcher.dart';
import '../../application/notification_interactions.dart';
import '../cubit/notification_access_cubit.dart';
import '../cubit/notifications_cubit.dart';
import 'notification_navigation_listener.dart';

/// Home-route lifetime and platform lifecycle only; policies belong to the services.
final class NotificationCoordinator extends StatefulWidget {
  const NotificationCoordinator({required this.child, super.key});
  final Widget child;
  @override
  State<NotificationCoordinator> createState() =>
      _NotificationCoordinatorState();
}

final class _NotificationCoordinatorState extends State<NotificationCoordinator>
    with WidgetsBindingObserver {
  AppLocalizations? _text;
  bool _ready = false;
  Future<void>? _starting;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final text = context.localeKeys;
    if (identical(_text, text)) return;
    final first = _text == null;
    _text = text;
    getIt<NotificationDispatcher>().configureLanguage(text);
    if (first) {
      WidgetsBinding.instance.addPostFrameCallback((_) => unawaited(_start()));
    } else {
      unawaited(getIt<CompressionNotificationService>().start(text));
    }
  }

  Future<void> _start() => _starting ??= _boot().whenComplete(() {
    _starting = null;
  });
  Future<void> _boot() async {
    await BlocSignalProvider.of<NotificationsCubit>(context).initialize();
    try {
      await Future.wait([
        getIt<AppUpdateService>().start().catchError((Object _) {}),
        getIt<NotificationInteractions>().start().catchError((Object _) {}),
        getIt<CompressionNotificationService>()
            .start(_text!)
            .catchError((Object _) {}),
        getIt<CompressionInsightsService>().start().catchError((Object _) {}),
      ]);
      if (!mounted) return;
      _ready = true;
      await _resume();
    } on Object {
      // The access component exposes initialization errors and can retry.
      if (mounted) {
        await BlocSignalProvider.of<NotificationAccessCubit>(context).refresh();
      }
    }
  }

  Future<void> _resume() async {
    if (!mounted) return;
    await BlocSignalProvider.of<NotificationAccessCubit>(context).refresh();
    await Future.wait([
      getIt<AppUpdateService>().check(),
      getIt<CompressionInsightsService>().check(),
    ]);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      if (_ready) {
        unawaited(_resume());
      } else {
        unawaited(_start());
      }
    }
  }

  @override
  Widget build(BuildContext context) => NotificationNavigationListener(
    child: CompressionNotificationListener(child: widget.child),
  );
  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    unawaited(getIt<CompressionNotificationService>().dispose());
    unawaited(getIt<CompressionInsightsService>().dispose());
    unawaited(getIt<AppUpdateService>().dispose());
    super.dispose();
  }
}
