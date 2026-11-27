import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:kuymo/core/compression/domain/models/compression_preferences.dart';
import 'package:kuymo/core/extensions/extensions.dart';
import 'package:kuymo/core/utils/theme/app_theme.dart';
import 'package:kuymo/l10n/app_localizations.dart';
import 'package:kuymo/modules/compression/presentation/widgets/compression_advanced_settings_sheet.dart';
import 'package:material_ui/material_ui.dart';

void main() {
  late List<CompressionPreferences?> results;
  Future<void> open(WidgetTester tester, {Locale locale = const Locale('en'), double scale = 1}) async {
    results = [];
    tester.view.physicalSize = const Size(390, 844);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    await tester.pumpWidget(MaterialApp(
      theme: AppTheme.light(),
      locale: locale,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      builder: (context, child) => MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaler: TextScaler.linear(scale)), child: child!,
      ),
      home: Scaffold(body: Builder(builder: (context) => TextButton(
        onPressed: () => unawaited(context.showBottomSheetComponent<CompressionPreferences>(
          builder: (_) => const CompressionAdvancedSettingsSheet(preferences: CompressionPreferences(), sourceShortEdge: 1080),
        ).then(results.add)),
        child: const Text('Open'),
      ))),
    ));
    await tester.tap(find.text('Open'));
    await tester.pumpAndSettle();
  }

  testWidgets('unsubmitted Arabic numeric input is applied once', (tester) async {
    await open(tester);
    final field = find.byKey(const ValueKey('advanced-resolution'));
    await tester.ensureVisible(field);
    await tester.enterText(field, '٧٢٠');
    await tester.pump();
    expect(results, isEmpty);
    await tester.tap(find.byKey(const ValueKey('apply-advanced-settings')));
    await tester.pumpAndSettle();
    expect(results, [const CompressionPreferences(maxShortEdge: 720)]);
  });

  testWidgets('invalid raw input keeps the sheet open and preserves the draft', (tester) async {
    await open(tester);
    final field = find.byKey(const ValueKey('advanced-bitrate'));
    await tester.ensureVisible(field);
    await tester.enterText(field, '49');
    await tester.pump();
    await tester.tap(find.byKey(const ValueKey('apply-advanced-settings')));
    await tester.pumpAndSettle();
    expect(results, isEmpty);
    expect(find.byType(CompressionAdvancedSettingsSheet), findsOneWidget);
    await tester.ensureVisible(field);
    await tester.enterText(field, '1200');
    await tester.pump();
    await tester.tap(find.byKey(const ValueKey('apply-advanced-settings')));
    await tester.pumpAndSettle();
    expect(results.single!.videoBitrateCeilingKbps, 1200);
  });

  for (final dismissal in ['cancel', 'back', 'barrier', 'drag', 'close']) {
    testWidgets('$dismissal discards unsaved changes', (tester) async {
      await open(tester);
      final field = find.byKey(const ValueKey('advanced-resolution'));
      await tester.ensureVisible(field);
      await tester.enterText(field, '720');
      await tester.pump();
      switch (dismissal) {
        case 'cancel':
          await tester.tap(find.text('Cancel'));
        case 'back':
          await tester.binding.handlePopRoute();
        case 'barrier':
          await tester.tapAt(const Offset(5, 5));
        case 'drag':
          await tester.drag(find.text('Advanced controls'), const Offset(0, 700));
        case 'close':
          await tester.tap(find.byTooltip('Close'));
      }
      await tester.pumpAndSettle();
      expect(results, [null]);
      expect(find.byType(CompressionAdvancedSettingsSheet), findsNothing);
      await tester.tap(find.text('Open'));
      await tester.pumpAndSettle();
      final input = tester.widget<TextFormField>(find.byKey(const ValueKey('advanced-resolution')));
      expect(input.controller!.text, isEmpty);
    });
  }

  testWidgets('fixed Apply remains visible above keyboard with Arabic large text', (tester) async {
    await open(tester, locale: const Locale('ar'), scale: 2);
    tester.view.viewInsets = const FakeViewPadding(bottom: 280);
    addTearDown(tester.view.resetViewInsets);
    await tester.pumpAndSettle();
    final apply = find.byKey(const ValueKey('apply-advanced-settings'));
    expect(tester.getBottomRight(apply).dy, lessThanOrEqualTo(564));
    expect(tester.takeException(), isNull);
  });
}
