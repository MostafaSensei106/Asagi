import 'package:bloc_signals/bloc_signals.dart';
import 'package:injectable/injectable.dart';
import 'package:pub_semver/pub_semver.dart';

import '../../../../core/services/app_info/interface/base_package_info_adapter.dart';
import '../../../../core/utils/use_case/use_case_base.dart';
import '../../domain/use_cases/read_cached_release.dart';
import '../../domain/use_cases/read_installed_release.dart';
import '../../domain/use_cases/read_latest_release.dart';
import 'releases_state.dart';

@injectable
final class ReleasesCubit extends CubitSignal<ReleasesState> {
  ReleasesCubit(this._latest, this._installed, this._cached, this._package)
    : super(initialState: const ReleasesState.loading());
  final ReadLatestReleaseUseCase _latest;
  final ReadInstalledReleaseUseCase _installed;
  final ReadCachedReleaseUseCase _cached;
  final BasePackageInfoAdapter _package;
  bool _loading = false;
  String get installedVersion => _package.packageInfo.version;

  Future<void> load({required bool installed}) async {
    if (_loading) return;
    _loading = true;
    try {
      var cached = stateValue.release;
      if (installed && cached == null) {
        cached = (await _cached(installedVersion))
            .when(success: (release) => release, failure: (_) => null);
      }
      if (isClosed) return;
      emit(ReleasesState.loading(release: cached));
      final result = installed
          ? await _installed(installedVersion)
          : await _latest(const NoParams());
      if (isClosed) return;
      result.when(
        success: (release) {
          var newer = false;
          if (release != null) {
            try {
              newer =
                  Version.parse(release.version) >
                  Version.parse(installedVersion);
            } on FormatException {
              /* Unknown build versions cannot advertise an update. */
            }
          }
          emit(ReleasesState.ready(release: release, updateAvailable: newer));
        },
        failure: (_) => emit(ReleasesState.failure(release: cached)),
      );
    } finally {
      _loading = false;
    }
  }
}
