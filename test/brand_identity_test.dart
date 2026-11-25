import 'dart:io';
import 'dart:ui' as ui;

import 'package:cupertino_ui/cupertino_ui.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kuymo/core/utils/theme/app_theme.dart';
import 'package:kuymo/core/widgets/widgets.dart';
import 'package:kuymo/l10n/app_localizations.dart';
import 'package:kuymo/modules/ai/presentation/pages/ai_chat_page.dart';
import 'package:kuymo/modules/home/presentation/widgets/home_welcome_card.dart';
import 'package:material_ui/material_ui.dart';

const capture = bool.fromEnvironment('KUYMO_CAPTURE');
final boundaryKey = GlobalKey();

Future<void> pumpBrand(
  WidgetTester tester,
  Widget page, {
  required Locale locale,
  bool dark = false,
  double scale = 1,
}) async {
  tester.view.physicalSize = const Size(390, 844);
  tester.view.devicePixelRatio = 1;
  addTearDown(tester.view.resetPhysicalSize);
  addTearDown(tester.view.resetDevicePixelRatio);
  await tester.pumpWidget(
    RepaintBoundary(
      key: boundaryKey,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        locale: locale,
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          ...AppLocalizations.localizationsDelegates,
        ],
        supportedLocales: AppLocalizations.supportedLocales,
        theme: dark ? AppTheme.dark() : AppTheme.light(),
        builder: (context, child) => MediaQuery(
          data: MediaQuery.of(context)
              .copyWith(textScaler: TextScaler.linear(scale)),
          child: child!,
        ),
        home: page,
      ),
    ),
  );
  await tester.pumpAndSettle();
}

Future<void> screenshot(WidgetTester tester, String name) async {
  if (!capture) return;
  await tester.runAsync(() async {
    final boundary =
        boundaryKey.currentContext!.findRenderObject()!
            as RenderRepaintBoundary;
    final image = await boundary.toImage(pixelRatio: 2);
    final data = await image.toByteData(format: ui.ImageByteFormat.png);
    final file = File('brand/kuymo/presentation/screens/$name.png');
    await file.parent.create(recursive: true);
    await file.writeAsBytes(data!.buffer.asUint8List());
    image.dispose();
  });
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  setUpAll(() async {
    if (!capture) return;
    for (final font in [
      ('GoogleSans', 'assets/fonts/Google_Sans/static/GoogleSans-Regular.ttf'),
      ('GoogleSans', 'assets/fonts/Google_Sans/static/GoogleSans-Bold.ttf'),
      (
        'packages/lucide_icons_flutter/Lucide',
        'packages/lucide_icons_flutter/assets/lucide.ttf',
      ),
      (
        'NotoSansArabic',
        'assets/fonts/Noto_Sans_Arabic/NotoSansArabic-Regular.ttf',
      ),
    ]) {
      await (FontLoader(font.$1)..addFont(rootBundle.load(font.$2))).load();
    }
  });

  for (final locale in [const Locale('en'), const Locale('ar')]) {
    for (final dark in [false, true]) {
      final name = '${locale.languageCode}-${dark ? 'dark' : 'light'}';
      testWidgets('branded picker stays usable in $name with large text', (
        tester,
      ) async {
        var selected = 0;
        final page = Scaffold(
          appBar: AppBar(title: const Text('Kuymo')),
          body: ListView(
            padding: const EdgeInsets.all(16),
            children: [HomeWelcomeCard(onPickVideo: () => selected++)],
          ),
        );
        await pumpBrand(tester, page, locale: locale, dark: dark);
        await screenshot(tester, 'home-$name');
        await pumpBrand(tester, page, locale: locale, dark: dark, scale: 2);
        tester.view.physicalSize = const Size(320, 640);
        await tester.pumpAndSettle();
        final context = tester.element(find.byType(HomeWelcomeCard));
        final label = AppLocalizations.of(context)!.pickVideo;
        await tester.ensureVisible(find.text(label));
        await tester.pumpAndSettle();
        await tester.tap(find.text(label));
        expect(selected, 1);
        expect(find.byType(BrandMark), findsOneWidget);
        expect(tester.takeException(), isNull);
      });
      testWidgets('assistant explains availability in $name', (tester) async {
        await pumpBrand(
          tester,
          const AiChatPage(),
          locale: locale,
          dark: dark,
          scale: 1,
        );
        await screenshot(tester, 'assistant-$name');
        final context = tester.element(find.byType(AiChatPage));
        expect(
          find.text(AppLocalizations.of(context)!.comingSoon),
          findsOneWidget,
        );
        expect(find.byType(TextField), findsNothing);
        await pumpBrand(
          tester,
          const AiChatPage(),
          locale: locale,
          dark: dark,
          scale: 2,
        );
        expect(tester.takeException(), isNull);
      });
    }
  }
}
