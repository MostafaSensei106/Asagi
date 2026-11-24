import 'package:injectable/injectable.dart';

import '../../../../core/constants/types/type_def.dart';
import '../../../../core/utils/use_case/use_case_base.dart';
import '../entities/app_release.dart';
import '../repositories/release_repository.dart';

@lazySingleton
final class ReadInstalledReleaseUseCase
    implements UseCaseBase<AppRelease?, String> {
  const ReadInstalledReleaseUseCase(this._repository);
  final ReleaseRepository _repository;
  @override
  Future<ApiResult<AppRelease?>> call(String params) =>
      _repository.byVersion(params);
}
