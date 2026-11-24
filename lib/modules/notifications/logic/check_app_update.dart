import 'package:injectable/injectable.dart';
import 'package:pub_semver/pub_semver.dart';

import '../../../core/constants/types/type_def.dart';
import '../../../core/utils/result/result.dart';
import '../../../core/utils/use_case/use_case_base.dart';
import 'entities/app_release.dart';
import 'repositories/release_repository.dart';

@lazySingleton
final class CheckAppUpdate implements UseCaseBase<AppRelease?, String> {
  const CheckAppUpdate(this._repository);
  final ReleaseRepository _repository;

  @override
  Future<ApiResult<AppRelease?>> call(String installedVersion) async {
    final result = await _repository.latest();
    return result.map((release) {
      if (release == null) return null;
      try {
        return Version.parse(release.version) > Version.parse(installedVersion)
            ? release
            : null;
      } on FormatException {
        return null;
      }
    });
  }
}
