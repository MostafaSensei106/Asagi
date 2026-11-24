import 'package:injectable/injectable.dart';

import '../../../../core/constants/types/type_def.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/utils/result/result.dart';
import '../../../../core/utils/use_case/use_case_base.dart';
import '../entities/app_release.dart';
import '../repositories/release_repository.dart';

@lazySingleton
final class ReadCachedReleaseUseCase
    implements UseCaseBase<AppRelease?, String> {
  const ReadCachedReleaseUseCase(this._repository);
  final ReleaseRepository _repository;
  @override
  Future<ApiResult<AppRelease?>> call(String params) => Result.tryCatching(
    action: () => _repository.cached(params),
    onError: (error, stack) => const LocalStorageFailure('E_RELEASE_CACHE'),
  );
}
