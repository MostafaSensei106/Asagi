import 'dart:async';

import 'package:asagi/core/constants/types/type_def.dart';
import 'package:asagi/core/services/app_info/interface/base_package_info_adapter.dart';
import 'package:asagi/core/services/haptics/haptics_service.dart';
import 'package:asagi/core/services/notifications/notification_request.dart';
import 'package:asagi/core/utils/result/result.dart';
import 'package:asagi/core/widgets/widgets.dart';
import 'package:asagi/l10n/app_localizations.dart';
import 'package:asagi/modules/compression/domain/models/compression_record.dart';
import 'package:asagi/modules/compression/domain/repositories/video_compression_repository.dart';
import 'package:asagi/modules/notifications/data/mappers/notification_payload_codec.dart';
import 'package:asagi/modules/notifications/logic/entities/app_release.dart';
import 'package:asagi/modules/notifications/logic/entities/notification_event.dart';
import 'package:asagi/modules/notifications/logic/entities/notification_target.dart';
import 'package:asagi/modules/notifications/logic/repositories/notification_repository.dart';
import 'package:asagi/modules/notifications/logic/repositories/release_repository.dart';
import 'package:asagi/modules/notifications/domain/use_cases/check_app_update.dart';
import 'package:asagi/modules/notifications/logic/use_cases/initialize_notifications.dart';
import 'package:asagi/modules/notifications/logic/use_cases/read_notification_access.dart';
import 'package:asagi/modules/notifications/logic/use_cases/read_notification_insights.dart';
import 'package:asagi/modules/notifications/logic/use_cases/request_notification_access.dart';
import 'package:asagi/modules/notifications/logic/use_cases/show_notification.dart';
import 'package:asagi/modules/notifications/logic/cubit/notifications_cubit.dart';
import 'package:asagi/modules/notifications/logic/cubit/notifications_state.dart';
import 'package:asagi/modules/notifications/presentation/pages/notifications_settings_page.dart';
import 'package:bloc_signals_flutter/bloc_signals_flutter.dart';
import 'package:bloc_signals_hydrate/bloc_signals_hydrate.dart';
import 'package:cupertino_ui/cupertino_ui.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';
import 'package:mocktail/mocktail.dart';
import 'package:package_info_plus/package_info_plus.dart';

class Videos extends Mock implements VideoCompressionRepository {}

class PackageAdapter extends Fake implements BasePackageInfoAdapter {
  @override
  PackageInfo get packageInfo => PackageInfo(
    appName: 'Asagi',
    packageName: 'test.asagi',
    version: '1.0.0',
    buildNumber: '1',
  );
}

class Releases extends Fake implements ReleaseRepository {
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
  late AppLocalizations text;
  setUp(() async {
    HydratedStorage.storage = MemoryHydratedStorage();
    native = Notifications();
    releases = Releases();
    videos = Videos();
    when(() => videos.history()).thenAnswer((_) async => []);
    when(() => videos.recoverInterrupted()).thenAnswer((_) async => []);
    text = await AppLocalizations.delegate.load(const Locale('en'));
    cubit = NotificationsCubit(
      native,
      CheckAppUpdate(releases),
      HapticsService(),
      ReadNotificationInsights(videos),
      PackageAdapter(),
      InitializeNotifications(native),
      ReadNotificationAccess(native),
      RequestNotificationAccess(native),
      ShowNotification(native),
    );
  });
  tearDown(() async {
    await cubit.close();
    await native.controller.close();
    HydratedStorage.storage = null;
  });

  test(
    'initialization is single-flight and never prompts for permission',
    () async {
      await Future.wait([cubit.initialize(text), cubit.initialize(text)]);
      expect(native.initialized, 1);
      expect(native.requested, 0);
      expect(cubit.stateValue.permission, NotificationPermission.denied);
      await cubit.requestPermission();
      expect(native.requested, 1);
      expect(cubit.stateValue.permission, NotificationPermission.granted);
    },
  );

  test(
    'settings survive hydration; runtime permission is checked again',
    () async {
      await cubit.initialize(text);
      await cubit.updateSettings(
        cubit.settings.copyWith(buttonHaptics: false, successHaptics: false),
      );
      await cubit.close();
      cubit = NotificationsCubit(
        native,
        CheckAppUpdate(releases),
        HapticsService(),
        ReadNotificationInsights(videos),
        PackageAdapter(),
        InitializeNotifications(native),
        ReadNotificationAccess(native),
        RequestNotificationAccess(native),
        ShowNotification(native),
      );
      expect(cubit.settings.buttonHaptics, isFalse);
      expect(cubit.settings.successHaptics, isFalse);
      expect(cubit.settings.selectionHaptics, isTrue);
      expect(cubit.stateValue, isA<NotificationsInitializing>());
      expect(native.requested, 0);
    },
  );

  test(
    'a cold-start destination is queued until presentation consumes it once',
    () async {
      native.pending.add(
        NotificationPayloadCodec.encode(
          const NotificationTarget.result('saved-1'),
        ),
      );
      await cubit.initialize(text);
      expect(cubit.takeDestinations(), [
        const NotificationTarget.result('saved-1'),
      ]);
      expect(cubit.takeDestinations(), isEmpty);
    },
  );

  test('completion respects permission, background, sound/vibration and category toggles', () async {
    native.status = NotificationPermission.granted;
    await cubit.initialize(text);
    await cubit.updateSettings(
      cubit.settings.copyWith(completionSound: true, successHaptics: false),
    );
    const event = NotificationEvent.completed(
      jobId: 'saved-1',
      sourceName: 'clip.mp4',
      originalBytes: 20000000,
      outputBytes: 10000000,
    );
    expect(await cubit.publish(event, foreground: false), isTrue);
    expect(native.shown.single.channel.sound, isTrue);
    expect(native.shown.single.channel.vibration, isFalse);
    expect(native.shown.single.body, contains('10.0 MB'));
    expect(await cubit.publish(event, foreground: true), isFalse);
    await cubit.updateSettings(cubit.settings.copyWith(jobCompletion: false));
    expect(await cubit.publish(event, foreground: false), isFalse);
    expect(native.shown.length, 1);
    await cubit.setCurrentJob('running-1', 'paused');
    expect(native.configuration['title'], text.notificationPausedTitle);
    expect(
      NotificationPayloadCodec.decode(
        native.configuration['payload']! as String,
      ),
      const NotificationTarget.progress('running-1'),
    );
    await cubit.updateSettings(
      cubit.settings.copyWith(backgroundStatus: false),
    );
    expect(native.configuration['showDetails'], isFalse);
  });

  test(
    'weekly savings use only new actual savings and do not repeat',
    () async {
      native.status = NotificationPermission.granted;
      final hydrated = cubit.fromJson({
        'settings': {'productUpdates': false},
        'digestSince': DateTime.now()
            .toUtc()
            .subtract(const Duration(days: 8))
            .toIso8601String(),
      })!;
      cubit.emit(hydrated);
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
      await cubit.initialize(text);
      await cubit.checkInsights();
      expect(native.shown.length, 1);
      expect(native.shown.single.channel.id, NotificationChannels.savings);
      await cubit.checkInsights();
      expect(native.shown.length, 1);
    },
  );

  test('failed delivery does not consume release eligibility', () async {
    native.status = NotificationPermission.granted;
    native.deliver = false;
    releases.release = AppRelease(
      id: 100,
      version: '2.0.0',
      title: 'New codecs',
      notes: '',
      url: Uri.parse(
        'https://github.com/MostafaSensei106/Asagi/releases/tag/v2.0.0',
      ),
      publishedAt: DateTime.now(),
    );
    await cubit.initialize(text);
    await cubit.checkInsights();
    expect(cubit.stateValue.data.lastNotifiedReleaseId, isNull);
    expect(releases.checks, 1);
    await cubit.checkInsights();
    expect(releases.checks, 1);
  });

  testWidgets(
    'permission banner prompts only on tap and exposes five haptic choices',
    (tester) async {
      await cubit.initialize(text);
      await tester.pumpWidget(
        BlocSignalProvider.value(
          value: cubit,
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
    },
  );
  testWidgets(
    'notification rows preserve icon tiles, short descriptions, and a distinct illustrated sheet',
    (tester) async {
      native.status = NotificationPermission.granted;
      await cubit.initialize(text);
      await tester.pumpWidget(
        BlocSignalProvider.value(
          value: cubit,
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
    },
  );
}
