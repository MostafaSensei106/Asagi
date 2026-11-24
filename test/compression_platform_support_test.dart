import 'dart:io';

import 'package:asagi/l10n/app_localizations.dart';
import 'package:asagi/modules/about/presentation/pages/licenses_page.dart';
import 'package:asagi/modules/compression/data/repositories/device_video_compression_repository.dart';
import 'package:asagi/modules/compression/presentation/pages/video_select_page.dart';
import 'package:asagi/modules/compression/presentation/widgets/unsupported_compression_page.dart';
import 'package:flutter/foundation.dart';
import 'package:material_ui/material_ui.dart';
import 'package:flutter_test/flutter_test.dart';

Widget app(Widget home) => MaterialApp(
  localizationsDelegates: AppLocalizations.localizationsDelegates,
  supportedLocales: AppLocalizations.supportedLocales,
  home: home,
);

void main() {
  tearDown(() {
    debugDefaultTargetPlatformOverride = null;
  });

  testWidgets('non-Android selection shows localized unsupported state', (
    tester,
  ) async {
    debugDefaultTargetPlatformOverride = TargetPlatform.iOS;
    await tester.pumpWidget(app(const VideoSelectPage()));
    await tester.pumpAndSettle();
    expect(
      find.text('Video compression is currently available only on Android.'),
      findsOneWidget,
    );
    expect(find.byType(UnsupportedCompressionPage), findsOneWidget);
    expect(find.byType(FilledButton), findsNothing);
  });

  test('Android enables compression and other platforms do not', () {
    for (final platform in TargetPlatform.values) {
      debugDefaultTargetPlatformOverride = platform;
      expect(supportsVideoCompression, platform == TargetPlatform.android);
    }
  });

  test(
    'repository rejects unsupported picking and planning before native calls',
    () async {
      if (Platform.isAndroid) return;
      final repository = DeviceVideoCompressionRepository();
      await expectLater(
        repository.pickVideo(),
        throwsA(isA<UnsupportedError>()),
      );
      await expectLater(repository.presets(), throwsA(isA<UnsupportedError>()));
    },
  );

  testWidgets('license route renders package notices without FFmpeg assets', (
    tester,
  ) async {
    await tester.pumpWidget(app(const LicensesPage()));
    await tester.pumpAndSettle();
    expect(find.byType(LicensePage), findsOneWidget);
    expect(find.textContaining('FFmpeg'), findsNothing);
    expect(tester.takeException(), isNull);
  });
}
