import 'dart:async';

import 'package:bloc_signals_hydrate/bloc_signals_hydrate.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/services/app_info/interface/base_package_info_adapter.dart';
import '../../../../core/services/haptics/haptics_service.dart';
import '../../../../core/services/notifications/notification_request.dart';
import '../../../../core/utils/use_case/use_case_base.dart';
import '../../../../l10n/app_localizations.dart';
import '../../data/mappers/notification_payload_codec.dart';
import '../../data/models/notification_preferences_dto.dart';
import '../../domain/models/notification_data.dart';
import '../../domain/models/notification_event.dart';
import '../../domain/models/notification_insights.dart';
import '../../domain/models/notification_settings.dart';
import '../../domain/models/notification_target.dart';
import '../../domain/repositories/notification_repository.dart';
import '../../domain/use_cases/check_app_update.dart';
import '../../domain/use_cases/initialize_notifications.dart';
import '../../domain/use_cases/read_notification_access.dart';
import '../../domain/use_cases/read_notification_insights.dart';
import '../../domain/use_cases/request_notification_access.dart';
import '../../domain/use_cases/show_notification.dart';
import '../../presentation/notification_message_factory.dart';
import 'notifications_state.dart';

@lazySingleton
final class NotificationsCubit extends HydratedCubitSignal<NotificationsState> {
  NotificationsCubit(
    this._repository,
    this._checkAppUpdate,
    this._haptics,
    this._readInsights,
    this._packageInfo,
    this._initializeNotifications,
    this._readNotificationAccess,
    this._requestNotificationAccess,
    this._showNotification,
  ) : super(initialState: const NotificationsState.initializing()) {
    _applyHaptics();
  }
  final NotificationRepository _repository;
  final InitializeNotifications _initializeNotifications;
  final ReadNotificationAccess _readNotificationAccess;
  final RequestNotificationAccess _requestNotificationAccess;
  final ShowNotification _showNotification;
  final CheckAppUpdate _checkAppUpdate;
  final HapticsService _haptics;
  final ReadNotificationInsights _readInsights;
  final BasePackageInfoAdapter _packageInfo;
  StreamSubscription<void>? _interactionSubscription;
  final _destinations = StreamController<void>.broadcast();
  final List<NotificationTarget> _pending = [];
  Stream<void> get destinations => _destinations.stream;
  List<NotificationTarget> takeDestinations() {
    final pending = List<NotificationTarget>.of(_pending);
    _pending.clear();
    return pending;
  }

  Future<void>? _initialization;
  Future<void> _configuration = Future<void>.value();
  bool _checking = false;
  NotificationMessageFactory? _messages;
  String? _activeJob;
  String _phase = 'running';

  NotificationSettings get settings => stateValue.data.settings;
  @override
  NotificationsState? fromJson(dynamic json) {
    final data = NotificationPreferencesDto.decode(json);
    return data == null ? null : NotificationsState.initializing(data: data);
  }

  @override
  Map<String, dynamic> toJson(NotificationsState state) =>
      NotificationPreferencesDto.encode(state.data);

  Future<void> initialize(AppLocalizations text) {
    _messages = NotificationMessageFactory(text);
    return _initialization ??= _initialize().catchError((Object error) {
      _initialization = null;
      _failure();
    });
  }

  Future<void> _initialize() async {
    (await _initializeNotifications(const NoParams())).getOrThrow();
    _interactionSubscription ??= _repository.interactions.listen(
      (_) => _drainInteractions(),
    );
    _drainInteractions();
    if (stateValue.data.digestSince == null) {
      _data(stateValue.data.copyWith(digestSince: DateTime.now().toUtc()));
    }
    await refresh();
  }

  void _drainInteractions() {
    for (final payload in _repository.takePendingInteractions()) {
      final target = NotificationPayloadCodec.decode(payload);
      if (target != null) _pending.add(target);
    }
    if (_pending.isNotEmpty) _destinations.add(null);
  }

  Future<void> refresh() async {
    try {
      final access = (await _readNotificationAccess(const NoParams()))
          .getOrThrow();
      final permission = access.permission;
      final blocked = access.blockedChannels;
      if (isClosed) return;
      emit(
        NotificationsState.ready(
          data: stateValue.data,
          permission: permission,
          blockedChannels: blocked,
        ),
      );
      await _configureProgress();
    } catch (_) {
      _failure();
    }
  }

  Future<void> requestPermission() async {
    if (stateValue is NotificationsRequestingPermission) return;
    emit(
      NotificationsState.requestingPermission(
        data: stateValue.data,
        permission: stateValue.permission,
        blockedChannels: stateValue.blockedChannels,
      ),
    );
    try {
      (await _requestNotificationAccess(const NoParams())).getOrThrow();
      await refresh();
      await checkInsights();
    } catch (_) {
      _failure();
    }
  }

  Future<void> updateSettings(NotificationSettings next) async {
    final prior = settings;
    final now = DateTime.now().toUtc();
    _data(
      stateValue.data.copyWith(
        settings: next,
        digestSince: !prior.savingsDigest && next.savingsDigest
            ? now
            : stateValue.data.digestSince,
      ),
    );
    _applyHaptics();
    _configuration = _configuration.then((_) async {
      try {
        await _configureProgress();
      } catch (_) {
        _failure();
      }
    });
    await _configuration;
  }

  void _applyHaptics() => _haptics.configure({
    HapticCategory.buttons: settings.buttonHaptics,
    HapticCategory.selections: settings.selectionHaptics,
    HapticCategory.gestures: settings.gestureHaptics,
    HapticCategory.success: settings.successHaptics,
    HapticCategory.errors: settings.errorHaptics,
  });

  Future<void> configureLanguage(AppLocalizations text) async {
    _messages = NotificationMessageFactory(text);
    try {
      await _configureProgress();
    } catch (_) {
      _failure();
    }
  }

  Future<void> setCurrentJob(String? jobId, String phase) async {
    if (_activeJob == jobId && _phase == phase) return;
    _activeJob = jobId;
    _phase = phase;
    try {
      await _configureProgress();
    } catch (_) {
      _failure();
    }
  }

  Future<void> _configureProgress() async {
    final text = _messages?.text;
    if (text == null ||
        stateValue.permission == NotificationPermission.unsupported) {
      return;
    }
    await _repository.configureProgress({
      'channelId': NotificationChannels.progress,
      'channelName': text.notificationProgressChannel,
      'title': switch (_phase) {
        'paused' => text.notificationPausedTitle,
        'saving' => text.notificationSavingTitle,
        _ => text.notificationProgressTitle,
      },
      'body': text.notificationProgressBody,
      'showDetails': settings.backgroundStatus,
      'payload': NotificationPayloadCodec.encode(
        _activeJob == null
            ? const NotificationTarget.recovery()
            : NotificationTarget.progress(_activeJob!),
      ),
    });
  }

  Future<bool> publish(
    NotificationEvent event, {
    required bool foreground,
  }) async {
    final allowed = switch (event) {
      JobCompletedNotification() => settings.jobCompletion,
      JobFailedNotification() ||
      JobsInterruptedNotification() => settings.errorAlerts,
      ReleaseNotification() => settings.productUpdates,
      SavingsNotification() => settings.savingsDigest,
    };
    if (foreground && event is JobCompletedNotification) {
      await _haptics.play(HapticCategory.success);
    }
    if (foreground && event is JobFailedNotification) {
      await _haptics.play(HapticCategory.errors);
    }
    if (!allowed ||
        _messages == null ||
        stateValue.permission != NotificationPermission.granted) {
      return false;
    }
    if (foreground &&
        (event is JobCompletedNotification || event is JobFailedNotification)) {
      return false;
    }
    try {
      return (await _showNotification(_messages!.create(event, settings)))
          .getOrThrow();
    } catch (_) {
      _failure();
      return false;
    }
  }

  Future<void> checkInsights() async {
    if (_checking ||
        _messages == null ||
        stateValue.permission != NotificationPermission.granted) {
      return;
    }
    _checking = true;
    try {
      await _checkReleases();
      final insights = await _readInsights(
        NotificationInsightsWindow(
          since: stateValue.data.digestSince ?? DateTime.now().toUtc(),
          until: DateTime.now().toUtc(),
        ),
      );
      await insights.when<Future<void>>(
        success: (data) async {
          await _checkSavings(data);
          await _checkInterrupted(data);
        },
        failure: (_) async {},
      );
    } catch (_) {
      // Optional insights never block settings or compression.
    } finally {
      _checking = false;
    }
  }

  Future<void> _checkReleases() async {
    final now = DateTime.now().toUtc();
    if (!settings.productUpdates ||
        stateValue.data.nextReleaseCheck?.isAfter(now) == true) {
      return;
    }
    final result = await _checkAppUpdate(_packageInfo.packageInfo.version);
    if (isClosed) return;
    await result.when<Future<void>>(
      success: (release) async {
        _data(
          stateValue.data.copyWith(
            nextReleaseCheck: now.add(const Duration(days: 1)),
          ),
        );
        if (release != null &&
            release.id != stateValue.data.lastNotifiedReleaseId &&
            settings.productUpdates) {
          final shown = await publish(
            NotificationEvent.release(release: release),
            foreground: false,
          );
          if (shown) {
            _data(stateValue.data.copyWith(lastNotifiedReleaseId: release.id));
          } else {
            _data(
              stateValue.data.copyWith(
                nextReleaseCheck: now.add(const Duration(minutes: 15)),
              ),
            );
          }
        }
      },
      failure: (failure) async {
        final retry = failure is RateLimitFailure ? failure.retryAt : null;
        _data(
          stateValue.data.copyWith(
            nextReleaseCheck: retry != null && retry.isAfter(now)
                ? retry
                : now.add(const Duration(minutes: 15)),
          ),
        );
      },
    );
  }

  Future<void> _checkSavings(NotificationInsights insights) async {
    final now = DateTime.now().toUtc();
    final since = stateValue.data.digestSince ?? now;
    if (!settings.savingsDigest ||
        now.difference(since) < const Duration(days: 7)) {
      return;
    }
    final saved = insights.savedBytes;
    if (saved <= 0) {
      _data(stateValue.data.copyWith(digestSince: now));
      return;
    }
    if (await publish(
      NotificationEvent.savings(
        count: insights.completedCount,
        savedBytes: saved,
      ),
      foreground: false,
    )) {
      _data(stateValue.data.copyWith(digestSince: now));
    }
  }

  Future<void> _checkInterrupted(NotificationInsights insights) async {
    if (!settings.errorAlerts) return;
    final ids = insights.interruptedJobIds;
    final signature = ids.join('|');
    if (ids.isEmpty) {
      if (stateValue.data.interruptedSignature != null) {
        _data(stateValue.data.copyWith(interruptedSignature: null));
      }
      return;
    }
    if (signature == stateValue.data.interruptedSignature) return;
    if (await publish(
      NotificationEvent.interrupted(count: ids.length),
      foreground: false,
    )) {
      _data(stateValue.data.copyWith(interruptedSignature: signature));
    }
  }

  Future<void> openChannelSettings(String id) =>
      _repository.openChannelSettings(id);
  void _data(NotificationData data) {
    if (!isClosed) {
      emit(
        NotificationsState.ready(
          data: data,
          permission: stateValue.permission,
          blockedChannels: stateValue.blockedChannels,
        ),
      );
    }
  }

  void _failure() {
    if (!isClosed) {
      emit(
        NotificationsState.failure(
          data: stateValue.data,
          permission: stateValue.permission,
          blockedChannels: stateValue.blockedChannels,
        ),
      );
    }
  }

  @override
  Future<void> close() async {
    await _interactionSubscription?.cancel();
    await _destinations.close();
    return super.close();
  }
}
