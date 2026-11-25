import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:kuymo/core/di/di.dart';
import 'package:kuymo/core/preferences/domain/repositories/settings_repository.dart';
import 'package:kuymo/core/utils/theme/app_theme.dart';
import 'package:kuymo/l10n/app_localizations.dart';
import 'package:kuymo/modules/ai/domain/entities/ai_settings.dart';
import 'package:kuymo/modules/ai/presentation/pages/ai_chat_settings_page.dart';
import 'package:kuymo/modules/ai/presentation/pages/ai_features_page.dart';
import 'package:kuymo/modules/ai/presentation/pages/ai_import_model_page.dart';
import 'package:kuymo/modules/ai/presentation/pages/ai_media_page.dart';
import 'package:kuymo/modules/ai/presentation/pages/ai_models_page.dart';
import 'package:kuymo/modules/ai/presentation/pages/ai_runtime_page.dart';
import 'package:kuymo/modules/ai/presentation/pages/ai_search_page.dart';
import 'package:kuymo/modules/ai/presentation/pages/ai_tools_page.dart';
import 'package:kuymo/modules/compression/presentation/pages/compression_defaults_page.dart';
import 'package:kuymo/modules/privacy/presentation/pages/privacy_settings_page.dart';
import 'package:material_ui/material_ui.dart';

import 'support/fake_ai_services.dart';
import 'support/memory_preference_storage.dart';

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
  late MemoryPreferenceStorage storage;
  setUp(() async {
    storage = await registerFakeAiDependencies();
  });
  tearDown(() async {
    await getIt.reset();
  });
  final pages = <String, Widget>{
    'privacy': const PrivacySettingsPage(),
    'compression defaults': const CompressionDefaultsPage(),
    'models': const AiModelsPage(),
    'import': const AiImportModelPage(),
    'features': const AiFeaturesPage(),
    'runtime': const AiRuntimePage(),
    'chat settings': const AiChatSettingsPage(),
    'media': const AiMediaPage(),
    'search': const AiSearchPage(),
    'tools': const AiToolsPage(),
  };
  for (final entry in pages.entries) {
    testWidgets('${entry.key} lays out with injected services', (tester) async {
      await _pumpPage(tester, entry.value);
      expect(tester.takeException(), isNull);
      if (entry.key != 'import') {
        final reset = find.byTooltip('Reset these settings');
        expect(reset, findsOneWidget);
        expect(
          find.ancestor(of: reset, matching: find.byType(AppBar)),
          findsOneWidget,
        );
        expect(find.text('Reset these settings'), findsNothing);
      }
    });
  }
  testWidgets(
    'model page reflects persisted selection rather than a sample active model',
    (tester) async {
      storage.values['ai_model_settings.v1'] = jsonEncode({
        'version': 1,
        'value': {'chatModelId': 'test'},
      });
      await _pumpPage(tester, const AiModelsPage());
      expect(find.text('Active'), findsOneWidget);
      expect(find.text('Installed test model'), findsOneWidget);
    },
  );
  testWidgets('AI preferences survive leaving and reopening the page', (
    tester,
  ) async {
    await _pumpPage(tester, const AiChatSettingsPage());
    final before =
        getIt<SettingsRepository<AiChatSettings>>().current.streaming;
    await tester.tap(find.byType(Switch).first);
    await tester.pumpAndSettle();
    expect(
      getIt<SettingsRepository<AiChatSettings>>().current.streaming,
      !before,
    );
    await _pumpPage(tester, const Scaffold());
    await _pumpPage(tester, const AiChatSettingsPage());
    expect(find.byType(Switch), findsNWidgets(2));
    expect((tester.widget<Switch>(find.byType(Switch).first)).value, !before);
  });
}
