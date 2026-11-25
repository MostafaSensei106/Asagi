import 'package:bloc_signals_flutter/bloc_signals_flutter.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kaisel/kaisel.dart';
import 'package:kuymo/core/di/di.dart';
import 'package:kuymo/core/preferences/domain/entities/compression_defaults.dart';
import 'package:kuymo/core/preferences/domain/repositories/settings_repository.dart';
import 'package:kuymo/core/router/app_router.dart';
import 'package:kuymo/core/utils/theme/app_theme.dart';
import 'package:kuymo/l10n/app_localizations.dart';
import 'package:kuymo/modules/compression/domain/repositories/video_compression_repository.dart';
import 'package:kuymo/modules/compression/presentation/cubit/compression_cubit.dart';
import 'package:kuymo/modules/compression/presentation/pages/compression_history_page.dart';
import 'package:kuymo/modules/home/presentation/pages/home_page.dart';
import 'package:kuymo/modules/settings/presentation/pages/settings_page.dart';
import 'package:material_ui/material_ui.dart';
import 'package:mocktail/mocktail.dart';

import 'support/fake_ai_services.dart';

class _Videos extends Mock implements VideoCompressionRepository {}

void main() {
  testWidgets(
    'home actions push settings and history and preserve job settings',
    (tester) async {
      await tester.runAsync(registerFakeAiDependencies);
      final repository = _Videos();
      when(() => repository.presets()).thenAnswer((_) async => []);
      when(() => repository.recoverInterrupted()).thenAnswer((_) async => []);
      when(() => repository.history()).thenAnswer((_) async => []);
      final cubit = CompressionCubit(
        repository,
        defaults: getIt<SettingsRepository<CompressionDefaults>>(),
      );
      final config = KaiselRouterConfig<AppRoute>(
        initial: const MainRouteEntry(),
        builder: (_, route) => switch (route) {
          MainRouteEntry() => const HomePage(),
          SettingsRoute() => const SettingsPage(),
          CompressionHistoryRoute() => const CompressionHistoryPage(),
          _ => const SizedBox.shrink(),
        },
      );
      await tester.pumpWidget(
        BlocSignalProvider.value(
          value: cubit,
          child: MaterialApp.router(
            theme: AppTheme.light(),
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            routerConfig: config,
          ),
        ),
      );
      await tester.pumpAndSettle();
      cubit.setTargetMb(42);
      final l10n = AppLocalizations.of(tester.element(find.byType(HomePage)))!;
      expect(find.byType(NavigationBar), findsNothing);
      expect(find.byType(BottomNavigationBar), findsNothing);
      expect(find.byType(PageView), findsNothing);
      await tester.tap(find.byTooltip(l10n.settings));
      await tester.pumpAndSettle();
      expect(find.byType(SettingsPage), findsOneWidget);
      expect(config.router.stack, hasLength(2));
      await config.router.pop();
      await tester.pumpAndSettle();
      expect(find.byType(HomePage), findsOneWidget);
      expect(cubit.stateValue.targetMb, 42);
      await tester.tap(find.byTooltip(l10n.compressionHistory));
      await tester.pumpAndSettle();
      expect(find.byType(CompressionHistoryPage), findsOneWidget);
      verify(() => repository.history()).called(1);
      await config.router.pop();
      await tester.pumpAndSettle();
      expect(find.byType(HomePage), findsOneWidget);
      expect(cubit.stateValue.targetMb, 42);
      await tester.pumpWidget(const SizedBox.shrink());
      await cubit.close();
      await tester.runAsync(() => getIt.reset());
    },
  );
}
