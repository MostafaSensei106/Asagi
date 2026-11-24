import 'package:injectable/injectable.dart';

import '../../../../core/constants/types/type_def.dart';
import '../../../../core/utils/use_case/use_case_base.dart';
import '../entities/app_release.dart';
import '../repositories/release_repository.dart';

@lazySingleton
final class ReadLatestReleaseUseCase
    implements UseCaseBase<AppRelease?, NoParams> {
  const ReadLatestReleaseUseCase(this._repository);
  final ReleaseRepository _repository;
  @override
  Future<ApiResult<AppRelease?>> call(NoParams params) => _repository.latest();
}
