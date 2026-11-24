import 'package:injectable/injectable.dart';

import '../../../../core/constants/types/type_def.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/utils/result/result.dart';
import '../../../../core/utils/use_case/use_case_base.dart';
import '../repositories/video_compression_repository.dart';

@lazySingleton
final class HasSavedCompressionResultUseCase
    implements UseCaseBase<bool, String> {
  const HasSavedCompressionResultUseCase(this._repository);
  final VideoCompressionRepository _repository;
  @override
  Future<ApiResult<bool>> call(String id) => Result.tryCatching(
    action: () async =>
        (await _repository.history()).any((record) => record.jobId == id),
    onError: (error, stack) => const LocalStorageFailure('E_RESULT_LOOKUP'),
  );
}
