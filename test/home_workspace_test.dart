import 'dart:async';
import 'dart:io';
import 'dart:ui' as ui;

import 'package:bloc_signals_flutter/bloc_signals_flutter.dart';
import 'package:cupertino_ui/cupertino_ui.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kuymo/core/compression/domain/models/compression_output.dart';
import 'package:kuymo/core/compression/domain/models/compression_plan.dart';
import 'package:kuymo/core/compression/domain/models/compression_preferences.dart';
import 'package:kuymo/core/compression/domain/models/compression_step.dart';
import 'package:kuymo/core/compression/domain/models/share_preset.dart';
import 'package:kuymo/core/compression/domain/models/video_metadata.dart';
import 'package:kuymo/core/di/di.dart';
import 'package:kuymo/core/preferences/domain/entities/compression_defaults.dart';
import 'package:kuymo/core/preferences/domain/repositories/settings_repository.dart';
import 'package:kuymo/core/services/share/base_share_service.dart';
import 'package:kuymo/core/utils/theme/app_theme.dart';
import 'package:kuymo/l10n/app_localizations.dart';
import 'package:kuymo/modules/compression/domain/models/selected_video.dart';
import 'package:kuymo/modules/compression/domain/repositories/video_compression_repository.dart';
import 'package:kuymo/modules/compression/presentation/cubit/compression_cubit.dart';
import 'package:kuymo/modules/compression/presentation/widgets/compression_advanced_controls.dart';
import 'package:kuymo/modules/compression/presentation/widgets/platform_presets_bar.dart';
import 'package:kuymo/modules/compression/presentation/widgets/social_preset_icon.dart';
import 'package:kuymo/modules/home/presentation/cubit/home_result_actions_cubit.dart';
import 'package:kuymo/modules/home/presentation/pages/home_page.dart';
import 'package:kuymo/modules/home/presentation/widgets/home_video_state_cards.dart';
import 'package:material_ui/material_ui.dart';
import 'package:mocktail/mocktail.dart';

class _Videos extends Mock implements VideoCompressionRepository {}

class _Defaults extends Mock
    implements SettingsRepository<CompressionDefaults> {}

class _Share extends Mock implements BaseShareService {}

const _video = SelectedVideo(
  path: '/sample.mp4',
  name: 'A day by the sea.mp4',
  metadata: VideoMetadata(
    durationSecs: 60,
    width: 1920,
    height: 1080,
    rotation: 0,
    bitrateBps: 10000000,
    fileSizeBytes: 120000000,
    hasAudio: true,
  ),
);
const _plan = CompressionPlan(
  targetVideoBitrateBps: 1800000,
  targetAudioBitrateBps: 128000,
  targetWidth: 1280,
  targetHeight: 720,
  hardLimitBytes: 16000000,
  safetyMargin: .98,
  maxAttempts: 2,
  isInfeasible: false,
);

void main() {
  late _Videos videos;
  late CompressionCubit cubit;
  late StreamController<double> progress;
  late Completer<CompressionOutput> completion;
  late void Function(CompressionStep) step;
  final capture = GlobalKey();
  setUpAll(() async {
    final fonts = FontLoader('GoogleSans')
      ..addFont(
        rootBundle.load(
          'assets/fonts/Google_Sans/static/GoogleSans-Regular.ttf',
        ),
      );
    await fonts.load();
    registerFallbackValue(_video);
    registerFallbackValue(const CompressionPreferences());
    registerFallbackValue(SharePresetId.whatsapp);
  });
  setUp(() async {
    await getIt.reset();
    videos = _Videos();
    final defaults = _Defaults();
    progress = StreamController<double>.broadcast();
    completion = Completer<CompressionOutput>();
    when(() => defaults.load())
        .thenAnswer((_) async => const CompressionDefaults());
    when(() => videos.presets()).thenAnswer(
      (_) async => [
        for (final descriptor in PresetDescriptor.social)
          SharePreset(
            id: descriptor.id,
            targetMb: 16,
            relaxedTargetMb: 32,
            maxShortEdge: 720,
            maxFps: 30,
            videoBitrateCeilingKbps: 2500,
            requireFaststart: false,
            verifiedOn: '2026-11-27',
          ),
      ],
    );
    when(() => videos.recoverInterrupted()).thenAnswer((_) async => []);
    when(() => videos.history()).thenAnswer((_) async => []);
    when(() => videos.pickVideo()).thenAnswer((_) async => _video);
    when(() => videos.previewPlan(any(), any(), any()))
        .thenAnswer((_) async => _plan);
    when(() => videos.resolvePreset(any(), any())).thenAnswer(
      (invocation) async => SharePresetPlan(
        preset: SharePreset(
          id: invocation.positionalArguments[1] as SharePresetId,
          targetMb: 16,
          relaxedTargetMb: 32,
          maxShortEdge: 720,
          maxFps: 30,
          videoBitrateCeilingKbps: 2500,
          requireFaststart: false,
          verifiedOn: '2026-11-27',
        ),
        tier: SharePresetTier.exact,
        effectiveTargetMb: 16,
        plan: _plan,
      ),
    );
    when(() => videos.progress).thenAnswer((_) => progress.stream);
    when(
      () => videos.compress(
        any(),
        any(),
        any(),
        presetId: any(named: 'presetId'),
        onStep: any(named: 'onStep'),
        onAttemptRange: any(named: 'onAttemptRange'),
      ),
    ).thenAnswer((invocation) {
      step =
          invocation.namedArguments[#onStep] as void Function(CompressionStep);
      return completion.future;
    });
    when(() => videos.pause()).thenAnswer((_) async {});
    when(() => videos.resume()).thenAnswer((_) async {});
    when(() => videos.cancel()).thenAnswer((_) async {});
    getIt.registerFactory<HomeResultActionsCubit>(
      () => HomeResultActionsCubit(videos, _Share()),
    );
    cubit = CompressionCubit(videos, defaults: defaults);
    await Future<void>.delayed(Duration.zero);
  });
  tearDown(() async {
    await cubit.close();
    await progress.close();
    await getIt.reset();
  });

  Future<void> render(
    WidgetTester tester, {
    Locale locale = const Locale('en'),
    double width = 390,
    double scale = 1,
    bool dark = false,
  }) async {
    tester.view.physicalSize = Size(width, 844);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    await tester.pumpWidget(
      RepaintBoundary(
        key: capture,
        child: BlocSignalProvider.value(
          value: cubit,
          child: MaterialApp(
            theme: dark ? AppTheme.dark() : AppTheme.light(),
            locale: locale,
            localizationsDelegates: const [
              GlobalMaterialLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              ...AppLocalizations.localizationsDelegates,
            ],
            supportedLocales: AppLocalizations.supportedLocales,
            builder: (context, child) => MediaQuery(
              data: MediaQuery.of(context)
                  .copyWith(textScaler: TextScaler.linear(scale)),
              child: child!,
            ),
            home: const HomePage(),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
  }

  Future<void> screenshot(WidgetTester tester, String name) async {
    if (!const bool.fromEnvironment('KUYMO_HOME_CAPTURE')) return;
    await tester.pump();
    final boundary =
        capture.currentContext!.findRenderObject()! as RenderRepaintBoundary;
    await tester.runAsync(() async {
      final image = await boundary.toImage(pixelRatio: 1);
      final data = await image.toByteData(format: ui.ImageByteFormat.png);
      await File('/tmp/kuymo-home-$name.png')
          .writeAsBytes(data!.buffer.asUint8List());
      image.dispose();
    });
  }

  testWidgets(
    'all ten platform logos are visible and advanced controls live only in a sheet',
    (tester) async {
      await render(tester);
      await screenshot(tester, 'empty-en');
      await tester.tap(find.byKey(const ValueKey('home-primary-action')));
      await tester.pumpAndSettle();
      expect(find.byType(SocialPresetIcon), findsNWidgets(10));
      expect(find.text('LinkedIn'), findsNothing);
      expect(find.byTooltip('LinkedIn'), findsOneWidget);
      expect(find.byType(CompressionAdvancedControls), findsNothing);
      await screenshot(tester, 'ready-en');
      await tester.ensureVisible(
        find.byKey(const ValueKey('open-advanced-settings')),
      );
      await tester.tap(find.byKey(const ValueKey('open-advanced-settings')));
      await tester.pumpAndSettle();
      expect(find.byType(CompressionAdvancedControls), findsOneWidget);
      await screenshot(tester, 'advanced-en');
      await tester.tap(find.text('Cancel'));
      await tester.pumpAndSettle();
      expect(cubit.stateValue.preferences, const CompressionPreferences());
      expect(tester.takeException(), isNull);
    },
  );

  testWidgets(
    'destination, custom size and unchanged draft preserve their contracts',
    (tester) async {
      await cubit.pickVideo();
      await tester.pump();
      await render(tester);
      await tester.tap(find.byKey(const ValueKey('destination-linkedIn')));
      await tester.pumpAndSettle();
      expect(cubit.stateValue.selectedPresetId, SharePresetId.linkedIn);
      await tester.ensureVisible(
        find.byKey(const ValueKey('open-advanced-settings')),
      );
      await tester.tap(find.byKey(const ValueKey('open-advanced-settings')));
      await tester.pumpAndSettle();
      await tester.tap(find.byKey(const ValueKey('apply-advanced-settings')));
      await tester.pumpAndSettle();
      expect(cubit.stateValue.selectedPresetId, SharePresetId.linkedIn);
      await tester.ensureVisible(find.text('Custom size'));
      await tester.tap(find.text('Custom size'));
      await tester.pumpAndSettle();
      await tester.enterText(
        find.byKey(const ValueKey('home-custom-size')),
        '٠',
      );
      await tester.pump();
      final button = tester.widget<FilledButton>(
        find.descendant(
          of: find.byKey(const ValueKey('home-primary-action')),
          matching: find.byType(FilledButton),
        ),
      );
      expect(button.onPressed, isNull);
      await tester.enterText(
        find.byKey(const ValueKey('home-custom-size')),
        '٢٥٫٥',
      );
      await tester.pumpAndSettle();
      expect(cubit.stateValue.targetMb, 25.5);
      expect(cubit.stateValue.selectedPresetId, isNull);
    },
  );

  testWidgets(
    'progress does not rebuild the video editor and completion shows sharing',
    (tester) async {
      await cubit.pickVideo();
      await tester.pump();
      await render(tester);
      final task = cubit.start();
      await tester.pump();
      step(CompressionStep.encoding);
      progress.add(.42);
      await tester.pump();
      expect(find.byType(HomeVideoPreview), findsNothing);
      expect(
        find.byKey(const ValueKey('open-advanced-settings')),
        findsNothing,
      );
      await screenshot(tester, 'progress-en');
      await cubit.pause();
      await tester.pump();
      await screenshot(tester, 'paused-en');
      await cubit.resume();
      step(CompressionStep.saving);
      await tester.pump();
      expect(find.text('Cancel'), findsNothing);
      completion.complete(
        const CompressionOutput('/output.mp4', 15000000, 1, null),
      );
      await task;
      await tester.pumpAndSettle();
      expect(find.byKey(const ValueKey('home-share-result')), findsOneWidget);
      await screenshot(tester, 'result-en');
      expect(tester.takeException(), isNull);
    },
  );

  for (final size in [320.0, 390.0, 1000.0]) {
    testWidgets('Arabic workspace fits width $size at 200% text', (
      tester,
    ) async {
      await cubit.pickVideo();
      await tester.pump();
      await render(
        tester,
        locale: const Locale('ar'),
        width: size,
        scale: 2,
        dark: true,
      );
      expect(tester.takeException(), isNull);
      await screenshot(tester, 'ready-ar-${size.toInt()}');
      await tester.ensureVisible(
        find.byKey(const ValueKey('open-advanced-settings')),
      );
      await tester.tap(find.byKey(const ValueKey('open-advanced-settings')));
      await tester.pumpAndSettle();
      expect(tester.takeException(), isNull);
      await screenshot(tester, 'advanced-ar-${size.toInt()}');
    });
  }
}
