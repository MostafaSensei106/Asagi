import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';
import 'package:zumi/core/utils/theme/app_theme.dart';
import 'package:zumi/l10n/app_localizations.dart';
import 'package:zumi/modules/ai/presentation/pages/ai_placeholder_pages.dart';

/// Pumps [page] in a minimal app shell and returns the recorded exceptions.
Future<void> _pumpPage(WidgetTester tester, Widget page) async {
  await tester.pumpWidget(
    MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: AppTheme.light(),
      home: page,
    ),
  );
  await tester.pumpAndSettle();
}

void main() {
  group('AI settings pages lay out without exceptions', () {
    final pages = <String, Widget>{
      'AiModelsPage': const AiModelsPage(),
      'AiImportModelPage': const AiImportModelPage(),
      'AiFeaturesPage': const AiFeaturesPage(),
      'AiRuntimePage': const AiRuntimePage(),
      'AiChatSettingsPage': const AiChatSettingsPage(),
      'AiMediaPage': const AiMediaPage(),
      'AiSearchPage': const AiSearchPage(),
      'AiToolsPage': const AiToolsPage(),
    };

    pages.forEach((name, page) {
      testWidgets(name, (tester) async {
        await _pumpPage(tester, page);
        expect(tester.takeException(), isNull);
      });
    });
  });

  testWidgets('AiModelsPage marks exactly one model as active', (tester) async {
    await _pumpPage(tester, const AiModelsPage());

    // The active model shows the trailing "Active" chip; inactive near matches
    // would be a bug, so assert the count directly.
    expect(find.text('Active'), findsOneWidget);
    expect(find.text('Zumi Bitrate Optimizer (0.2B)'), findsOneWidget);
  });
}
