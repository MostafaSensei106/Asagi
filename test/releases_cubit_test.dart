import 'dart:async';

import 'package:cupertino_ui/cupertino_ui.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kuymo/core/constants/types/type_def.dart';
import 'package:kuymo/core/di/di.dart';
import 'package:kuymo/core/error/failures.dart';
import 'package:kuymo/core/services/app_info/interface/base_package_info_adapter.dart';
import 'package:kuymo/core/utils/result/result.dart';
import 'package:kuymo/l10n/app_localizations.dart';
import 'package:kuymo/modules/updates/domain/entities/app_release.dart';
import 'package:kuymo/modules/updates/domain/repositories/release_repository.dart';
import 'package:kuymo/modules/updates/domain/use_cases/read_cached_release.dart';
import 'package:kuymo/modules/updates/domain/use_cases/read_installed_release.dart';
import 'package:kuymo/modules/updates/domain/use_cases/read_latest_release.dart';
import 'package:kuymo/modules/updates/presentation/cubit/releases_cubit.dart';
import 'package:kuymo/modules/updates/presentation/cubit/releases_state.dart';
import 'package:kuymo/modules/updates/presentation/pages/releases_page.dart';
import 'package:material_ui/material_ui.dart';
import 'package:package_info_plus/package_info_plus.dart';

class ReleaseSource extends Fake implements ReleaseRepository {
  ApiResult<AppRelease?> result = const Result.success(data: null);
  AppRelease? saved;
  int latestCalls = 0, installedCalls = 0;
  Completer<void>? gate;
  String? requestedVersion;
  @override
  Future<ApiResult<AppRelease?>> latest() async {
    latestCalls++;
    await gate?.future;
    return result;
  }

  @override
  Future<ApiResult<AppRelease?>> byVersion(String version) async {
    installedCalls++;
    requestedVersion = version;
    await gate?.future;
    return result;
  }

  @override
  Future<AppRelease?> cached(String version) async => saved;
}

class InstalledPackage extends Fake implements BasePackageInfoAdapter {
  @override
  PackageInfo get packageInfo => PackageInfo(
    appName: 'Kuymo',
    packageName: 'test',
    version: '1.0.0',
    buildNumber: '1',
  );
}

AppRelease release(String version) => AppRelease(
  id: 1,
  version: version,
  title: 'Release $version',
  notes: 'Changes',
  url: Uri.parse(
    'https://github.com/MostafaSensei106/Asagi/releases/tag/v$version',
  ),
  publishedAt: DateTime.utc(2026),
);

void main() {
  late ReleaseSource repository;
  late ReleasesCubit cubit;
  setUp(() {
    repository = ReleaseSource();
    cubit = ReleasesCubit(
      ReadLatestReleaseUseCase(repository),
      ReadInstalledReleaseUseCase(repository),
      ReadCachedReleaseUseCase(repository),
      InstalledPackage(),
    );
  });
  tearDown(() => cubit.close());
  test(
    'updates compare installed version and handle empty stable release',
    () async {
      repository.result = Result.success(data: release('2.0.0'));
      await cubit.load(installed: false);
      expect((cubit.stateValue as ReleasesReady).updateAvailable, isTrue);
      repository.result = Result.success(data: release('1.0.0'));
      await cubit.load(installed: false);
      expect((cubit.stateValue as ReleasesReady).updateAvailable, isFalse);
      repository.result = const Result.success(data: null);
      await cubit.load(installed: false);
      expect(cubit.stateValue.release, isNull);
    },
  );
  test('what is new requests installed version and keeps matching cached notes offline', () async {
    repository.saved = release('1.0.0');
    repository.result = const Result.failure(error: OfflineFailure('offline'));
    await cubit.load(installed: true);
    expect(repository.requestedVersion, '1.0.0');
    expect(repository.latestCalls, 0);
    expect(cubit.stateValue, isA<ReleasesFailure>());
    expect(cubit.stateValue.release, repository.saved);
  });
  test('missing installed tag is an explicit empty success', () async {
    await cubit.load(installed: true);
    expect(cubit.stateValue, isA<ReleasesReady>());
    expect(cubit.stateValue.release, isNull);
  });
  test(
    'rapid retries share one request and disposal ignores late result',
    () async {
      repository.gate = Completer<void>();
      final first = cubit.load(installed: false);
      await cubit.load(installed: false);
      expect(repository.latestCalls, 1);
      await cubit.close();
      repository.gate!.complete();
      await first;
      expect(cubit.isClosed, isTrue);
    },
  );

  testWidgets(
    'update page shows loading, installed version and real release details',
    (tester) async {
      getIt.registerFactory<ReleasesCubit>(() => cubit);
      addTearDown(() => getIt.unregister<ReleasesCubit>());
      repository.gate = Completer<void>();
      repository.result = Result.success(data: release('2.0.0'));
      await tester.pumpWidget(
        const MaterialApp(
          localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            ...AppLocalizations.localizationsDelegates,
          ],
          supportedLocales: AppLocalizations.supportedLocales,
          home: ReleasesPage(),
        ),
      );
      await tester.pump();
      expect(find.byType(LinearProgressIndicator), findsOneWidget);
      expect(find.text('1.0.0'), findsOneWidget);
      repository.gate!.complete();
      await tester.pumpAndSettle();
      expect(find.text('A new version is available'), findsOneWidget);
      expect(find.text('Changes'), findsOneWidget);
      expect(find.text('Open release on GitHub'), findsOneWidget);
    },
  );
  testWidgets(
    'what is new renders saved notes with an offline notice in Arabic',
    (tester) async {
      getIt.registerFactory<ReleasesCubit>(() => cubit);
      addTearDown(() => getIt.unregister<ReleasesCubit>());
      repository.saved = release('1.0.0');
      repository.result = const Result.failure(
        error: OfflineFailure('offline'),
      );
      await tester.pumpWidget(
        const MaterialApp(
          locale: Locale('ar'),
          localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            ...AppLocalizations.localizationsDelegates,
          ],
          supportedLocales: AppLocalizations.supportedLocales,
          home: ReleasesPage(installed: true),
        ),
      );
      await tester.pumpAndSettle();
      final text = await AppLocalizations.delegate.load(const Locale('ar'));
      expect(find.text(text.whatsNewTitle), findsOneWidget);
      expect(find.text(text.releaseCachedNotice), findsOneWidget);
      expect(find.text('Changes'), findsOneWidget);
      expect(repository.latestCalls, 0);
    },
  );
}
