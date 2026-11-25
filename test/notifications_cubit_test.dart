import 'dart:async';

import 'package:bloc_signals_flutter/bloc_signals_flutter.dart';
import 'package:bloc_signals_hydrate/bloc_signals_hydrate.dart';
import 'package:cupertino_ui/cupertino_ui.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kuymo/core/constants/types/type_def.dart';
import 'package:kuymo/core/preferences/data/repositories/shared_notification_preferences.dart';
import 'package:kuymo/core/preferences/domain/use_cases/load_notification_settings.dart';
import 'package:kuymo/core/preferences/domain/use_cases/save_notification_settings.dart';
import 'package:kuymo/core/services/app_info/interface/base_package_info_adapter.dart';
import 'package:kuymo/core/services/haptics/haptics_service.dart';
import 'package:kuymo/core/services/notifications/notification_request.dart';
import 'package:kuymo/core/utils/result/result.dart';
import 'package:kuymo/core/widgets/widgets.dart';
import 'package:kuymo/l10n/app_localizations.dart';
import 'package:kuymo/modules/compression/application/notifications/compression_insights_service.dart';
import 'package:kuymo/modules/compression/application/notifications/compression_notification_service.dart';
import 'package:kuymo/modules/compression/data/repositories/local_compression_alert_repository.dart';
import 'package:kuymo/modules/compression/domain/models/compression_record.dart';
import 'package:kuymo/modules/compression/domain/repositories/video_compression_repository.dart';
import 'package:kuymo/modules/compression/domain/use_cases/read_notification_insights.dart';
import 'package:kuymo/modules/notifications/application/notification_dispatcher.dart';
import 'package:kuymo/modules/notifications/application/notification_interactions.dart';
import 'package:kuymo/modules/notifications/data/mappers/notification_payload_codec.dart';
import 'package:kuymo/modules/notifications/domain/entities/notification_event.dart';
import 'package:kuymo/modules/notifications/domain/entities/notification_target.dart';
import 'package:kuymo/modules/notifications/domain/repositories/notification_repository.dart';
import 'package:kuymo/modules/notifications/domain/use_cases/initialize_notifications.dart';
import 'package:kuymo/modules/notifications/domain/use_cases/open_notification_channel.dart';
import 'package:kuymo/modules/notifications/domain/use_cases/read_notification_access.dart';
import 'package:kuymo/modules/notifications/domain/use_cases/request_notification_access.dart';
import 'package:kuymo/modules/notifications/domain/use_cases/show_notification.dart';
import 'package:kuymo/modules/notifications/presentation/cubit/notification_access_cubit.dart';
import 'package:kuymo/modules/notifications/presentation/cubit/notifications_cubit.dart';
import 'package:kuymo/modules/notifications/presentation/cubit/notifications_state.dart';
import 'package:kuymo/modules/notifications/presentation/pages/notifications_settings_page.dart';
import 'package:kuymo/modules/updates/application/app_update_service.dart';
import 'package:kuymo/modules/updates/data/repositories/local_update_check_repository.dart';
import 'package:kuymo/modules/updates/domain/entities/app_release.dart';
import 'package:kuymo/modules/updates/domain/repositories/release_repository.dart';
import 'package:kuymo/modules/updates/domain/use_cases/check_app_update.dart';
import 'package:material_ui/material_ui.dart';
import 'package:mocktail/mocktail.dart';
import 'package:package_info_plus/package_info_plus.dart';

import 'support/memory_preference_storage.dart';

class Videos extends Mock implements VideoCompressionRepository {}

class PackageAdapter extends Fake implements BasePackageInfoAdapter {
  @override
  PackageInfo get packageInfo => PackageInfo(
    appName: 'Kuymo',
    packageName: 'test.kuymo',
    version: '1.0.0',
    buildNumber: '1',
  );
}

class Releases extends Fake implements ReleaseRepository {
  @override
  Future<ApiResult<AppRelease?>> byVersion(String version) async =>
      Result.success(data: release);
  @override
  Future<AppRelease?> cached(String version) async => release;
  int checks = 0;
  AppRelease? release;
  @override
  Future<ApiResult<AppRelease?>> latest() async {
    checks++;
    return Result.success(data: release);
  }
}

class Notifications extends Fake implements NotificationRepository {
  NotificationPermission status = NotificationPermission.denied;
  int initialized = 0, requested = 0;
  bool deliver = true;
  final shown = <LocalNotificationRequest>[];
  final pending = <String>[];
  final controller = StreamController<void>.broadcast();
  Map<String, Object?> configuration = {};
  @override
  Stream<void> get interactions => controller.stream;
  @override
  List<String> takePendingInteractions() {
    final copy = List<String>.of(pending);
    pending.clear();
    return copy;
  }

  @override
  Future<void> initialize() async {
    initialized++;
  }

  @override
  Future<NotificationPermission> permission() async => status;
  @override
  Future<NotificationPermission> requestPermission() async {
    requested++;
    return status = NotificationPermission.granted;
  }

  @override
  Future<Set<String>> blockedChannels() async => {};
  @override
  Future<bool> show(LocalNotificationRequest request) async {
    if (deliver) shown.add(request);
    return deliver;
  }

  @override
  Future<void> configureProgress(Map<String, Object?> value) async {
    configuration = value;
  }
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  late Notifications native;
  late Releases releases;
  late Videos videos;
  late NotificationsCubit cubit;
  late NotificationAccessCubit access;
  late SharedNotificationPreferences preferences;
  late MemoryPreferenceStorage storage;
  late NotificationDispatcher dispatcher;
  late NotificationInteractions interactions;
  late CompressionNotificationService progress;
  late CompressionInsightsService insights;
  late AppUpdateService updates;
  late AppLocalizations text;

  Future<void> initialize() async {
    await cubit.initialize();
    dispatcher.configureLanguage(text);
    await interactions.start();
    await access.refresh();
    await progress.start(text);
    await insights.start();
  }

  setUp(() async {
    HydratedStorage.storage = MemoryHydratedStorage();
    native = Notifications();
    releases = Releases();
    videos = Videos();
    storage = MemoryPreferenceStorage();
    preferences = SharedNotificationPreferences(storage);
    when(() => videos.history()).thenAnswer((_) async => []);
    when(() => videos.recoverInterrupted()).thenAnswer((_) async => []);
    text = await AppLocalizations.delegate.load(const Locale('en'));
    cubit = NotificationsCubit(
      preferences,
      LoadNotificationSettingsUseCase(preferences),
      SaveNotificationSettingsUseCase(preferences),
    );
    access = NotificationAccessCubit(
      ReadNotificationAccessUseCase(native),
      RequestNotificationAccessUseCase(native),
      OpenNotificationChannelUseCase(native),
    );
    dispatcher = NotificationDispatcher(
      preferences,
      ReadNotificationAccessUseCase(native),
      ShowNotificationUseCase(native),
      HapticsService(preferences),
    );
    interactions = NotificationInteractions(
      native,
      InitializeNotificationsUseCase(native),
    );
    progress = CompressionNotificationService(preferences, native, dispatcher);
    insights = CompressionInsightsService(
      preferences,
      LocalCompressionAlertRepository(storage),
      ReadNotificationInsightsUseCase(videos),
      dispatcher,
    );
    updates = AppUpdateService(
      preferences,
      LocalUpdateCheckRepository(storage),
      CheckAppUpdateUseCase(releases),
      PackageAdapter(),
      dispatcher,
    );
  });
  tearDown(() async {
    await progress.dispose();
    await insights.dispose();
    await interactions.dispose();
    await cubit.close();
    await access.close();
    await preferences.dispose();
    await native.controller.close();
    HydratedStorage.storage = null;
  });

  test('settings only save preferences; platform initialization and prompting are independent', () async {
    await cubit.initialize();
    await cubit.updateSettings(
      (current) =>
          current.copyWith(haptics: current.haptics.copyWith(buttons: false)),
    );
    expect(native.initialized, 0);
    expect(native.requested, 0);
    expect(releases.checks, 0);
    await Future.wait([interactions.start(), interactions.start()]);
    expect(native.initialized, 1);
    expect(native.requested, 0);
    await access.requestPermission();
    expect(native.requested, 1);
  });
  test('concurrent preference changes preserve both values; failed writes retain saved values', () async {
    await Future.wait([
      cubit.updateSettings(
        (current) =>
            current.copyWith(haptics: current.haptics.copyWith(buttons: false)),
      ),
      cubit.updateSettings(
        (current) =>
            current.copyWith(haptics: current.haptics.copyWith(success: false)),
      ),
    ]);
    expect(cubit.settings.haptics.buttons, isFalse);
    expect(cubit.settings.haptics.success, isFalse);
    storage.writable = false;
    await cubit.updateSettings(
      (current) => current.copyWith(jobCompletion: false),
    );
    expect(cubit.stateValue, isA<NotificationsFailure>());
    expect(cubit.settings.jobCompletion, isTrue);
    storage.writable = true;
    await cubit.updateSettings(
      (current) => current.copyWith(jobCompletion: false),
    );
    final restored = SharedNotificationPreferences(storage);
    expect((await restored.load()).jobCompletion, isFalse);
    await restored.dispose();
  });
  test('legacy settings and operational markers migrate once without overwriting newer data', () async {
    await HydratedStorage.storage!.write('NotificationsCubit', {
      'settings': {'hapticFeedback': false},
      'lastNotifiedReleaseId': 12,
      'digestSince': '2026-11-01T00:00:00Z',
    });
    await cubit.initialize();
    expect(cubit.settings.haptics.buttons, isFalse);
    expect(cubit.settings.haptics.errors, isFalse);
    expect(
      (storage.values['updates.runtime.v1'] as Map)['lastNotifiedReleaseId'],
      12,
    );
    expect(HydratedStorage.storage!.read('NotificationsCubit'), isNull);
    await cubit.updateSettings(
      (current) =>
          current.copyWith(haptics: current.haptics.copyWith(buttons: true)),
    );
    await HydratedStorage.storage!.write('NotificationsCubit', {
      'settings': {'buttonHaptics': false},
    });
    final restored = SharedNotificationPreferences(storage);
    expect((await restored.load()).haptics.buttons, isTrue);
    await restored.dispose();
  });
  test('failed migration preserves old hydration for retry', () async {
    await HydratedStorage.storage!.write('NotificationsCubit', {
      'settings': {'buttonHaptics': false},
    });
    storage.writable = false;
    await cubit.initialize();
    expect(cubit.stateValue, isA<NotificationsFailure>());
    expect(HydratedStorage.storage!.read('NotificationsCubit'), isNotNull);
    storage.writable = true;
    await cubit.initialize();
    expect(cubit.settings.haptics.buttons, isFalse);
  });
  test(
    'cold-start interaction is consumed once outside settings state',
    () async {
      native.pending.add(
        NotificationPayloadCodec.encode(
          const NotificationTarget.result('saved-1'),
        ),
      );
      await interactions.start();
      expect(interactions.takePending(), [
        const NotificationTarget.result('saved-1'),
      ]);
      expect(interactions.takePending(), isEmpty);
    },
  );
  test('delivery and progress immediately follow preference changes without settings service calls', () async {
    native.status = NotificationPermission.granted;
    await initialize();
    await cubit.updateSettings(
      (current) => current.copyWith(
        completionSound: true,
        haptics: current.haptics.copyWith(success: false),
      ),
    );
    const event = NotificationEvent.completed(
      jobId: 'saved-1',
      sourceName: 'clip.mp4',
      originalBytes: 20000000,
      outputBytes: 10000000,
    );
    expect(await dispatcher.publish(event, foreground: false), isTrue);
    expect(native.shown.single.channel.sound, isTrue);
    expect(native.shown.single.channel.vibration, isFalse);
    expect(await dispatcher.publish(event, foreground: true), isFalse);
    await cubit.updateSettings(
      (current) =>
          current.copyWith(jobCompletion: false, backgroundStatus: false),
    );
    expect(await dispatcher.publish(event, foreground: false), isFalse);
    await progress.setCurrentJob('running-1', 'paused');
    expect(native.configuration['showDetails'], isFalse);
    expect(native.configuration['title'], text.notificationPausedTitle);
  });
  test('weekly digest uses only new savings and does not repeat', () async {
    native.status = NotificationPermission.granted;
    storage.values['compression.alerts.v1'] = {
      'digestSince': DateTime.now()
          .toUtc()
          .subtract(const Duration(days: 8))
          .toIso8601String(),
    };
    when(() => videos.history()).thenAnswer(
      (_) async => [
        CompressionRecord(
          path: '/saved.mp4',
          sourceName: 'clip',
          bytes: 10,
          originalBytes: 100,
          createdAt: DateTime.now().subtract(const Duration(days: 1)),
        ),
        CompressionRecord(
          path: '/old.mp4',
          sourceName: 'old',
          bytes: 10,
          originalBytes: 100,
          createdAt: DateTime.now().subtract(const Duration(days: 10)),
        ),
      ],
    );
    await initialize();
    await insights.check();
    await insights.check();
    expect(native.shown.length, 1);
    expect(native.shown.single.channel.id, NotificationChannels.savings);
  });
  test('release checking works without notification permission and failed delivery does not consume eligibility', () async {
    releases.release = AppRelease(
      id: 100,
      version: '2.0.0',
      title: 'New codecs',
      notes: '',
      url: Uri.parse(
        'https://github.com/MostafaSensei106/Kuymo/releases/tag/v2.0.0',
      ),
      publishedAt: DateTime.now(),
    );
    await initialize();
    await updates.check();
    await updates.check();
    expect(releases.checks, 1);
    expect(native.shown, isEmpty);
    expect(
      (storage.values['updates.runtime.v1'] as Map)['lastNotifiedReleaseId'],
      isNull,
    );
  });
  testWidgets(
    'permission banner prompts only on tap and exposes five haptic choices',
    (tester) async {
      await tester.runAsync(initialize);
      await tester.pumpWidget(
        MultiBlocSignalProvider(
          providers: [
            BlocSignalProvider.value(value: cubit),
            BlocSignalProvider.value(value: access),
          ],
          child: const MaterialApp(
            localizationsDelegates: [
              GlobalMaterialLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              ...AppLocalizations.localizationsDelegates,
            ],
            supportedLocales: AppLocalizations.supportedLocales,
            home: NotificationsSettingsPage(),
          ),
        ),
      );
      await tester.pumpAndSettle();
      expect(native.requested, 0);
      expect(find.text(text.notificationPermissionTitle), findsOneWidget);
      await tester.tap(find.text(text.notificationPermissionTitle));
      await tester.pumpAndSettle();
      expect(native.requested, 1);
      expect(find.text(text.notificationPermissionTitle), findsNothing);
      await tester.scrollUntilVisible(find.text(text.hapticsButtons), 200);
      expect(find.text(text.hapticsButtons), findsOneWidget);
      await tester.scrollUntilVisible(find.text(text.hapticsErrors), 200);
      expect(find.text(text.hapticsErrors), findsOneWidget);
      // Release widget subscriptions before tearDown closes their cubits.
      await tester.pumpWidget(const SizedBox.shrink());
    },
  );
  testWidgets(
    'notification rows preserve icon tiles, short descriptions, and a distinct illustrated sheet',
    (tester) async {
      native.status = NotificationPermission.granted;
      await tester.runAsync(initialize);
      await tester.pumpWidget(
        MultiBlocSignalProvider(
          providers: [
            BlocSignalProvider.value(value: cubit),
            BlocSignalProvider.value(value: access),
          ],
          child: const MaterialApp(
            localizationsDelegates: [
              GlobalMaterialLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              ...AppLocalizations.localizationsDelegates,
            ],
            supportedLocales: AppLocalizations.supportedLocales,
            home: NotificationsSettingsPage(),
          ),
        ),
      );
      await tester.pumpAndSettle();
      expect(find.text(text.jobCompletedShort), findsOneWidget);
      expect(find.text(text.jobCompletedDetails), findsNothing);
      final cases = [
        (
          text.jobCompletedNotification,
          text.jobCompletedDetails,
          InfoIllustrationKind.notificationJobCompletion,
        ),
        (
          text.backgroundStatusNotification,
          text.notificationProgressDetails,
          InfoIllustrationKind.notificationBackgroundStatus,
        ),
        (
          text.interruptionErrorNotification,
          text.interruptionErrorDetails,
          InfoIllustrationKind.notificationInterruptionAlert,
        ),
        (
          text.completionSoundNotification,
          text.completionSoundDetails,
          InfoIllustrationKind.notificationCompletionSound,
        ),
        (
          text.hapticsButtons,
          text.hapticsButtonsDescription,
          InfoIllustrationKind.hapticButtons,
        ),
        (
          text.hapticsSelections,
          text.hapticsSelectionsDescription,
          InfoIllustrationKind.hapticSelections,
        ),
        (
          text.hapticsGestures,
          text.hapticsGesturesDescription,
          InfoIllustrationKind.hapticGestures,
        ),
        (
          text.hapticsSuccess,
          text.hapticsSuccessDescription,
          InfoIllustrationKind.hapticSuccess,
        ),
        (
          text.hapticsErrors,
          text.hapticsErrorsDescription,
          InfoIllustrationKind.hapticErrors,
        ),
        (
          text.productUpdatesNotification,
          text.productUpdatesDetails,
          InfoIllustrationKind.notificationProductUpdate,
        ),
        (
          text.savingsDigestNotification,
          text.savingsDigestDetails,
          InfoIllustrationKind.notificationStorageSavings,
        ),
      ];
      for (final entry in cases) {
        final row = find.byWidgetPredicate(
          (widget) =>
              widget is ListTileIconComponent && widget.title == entry.$1,
        );
        await tester.scrollUntilVisible(row, 150);
        final tile = tester.widget<ListTileIconComponent>(row);
        expect(tile.showChevron, isFalse);
        expect(tile.subtitle, isNot(entry.$2));
        await tester.longPress(row);
        await tester.pump(const Duration(milliseconds: 800));
        expect(find.text(entry.$2), findsOneWidget);
        expect(
          tester
              .widget<InfoBottomSheetIllustration>(
                find.byType(InfoBottomSheetIllustration),
              )
              .kind,
          entry.$3,
        );
        expect(tester.takeException(), isNull);
        Navigator.of(tester.element(find.byType(InfoBottomSheetIllustration)))
            .pop();
        await tester.pumpAndSettle();
      }
      await tester.pumpWidget(const SizedBox.shrink());
    },
  );
}
