import '../../constants/types/type_def.dart';
import '../../error/failures.dart';
import '../../utils/result/result.dart';
import '../network_failure_mapper.dart';

/// One boundary for transport/decoding errors; repositories return typed results.
abstract final class ApiExecutor {
  static Future<ApiResult<T>> execute<T>({
    required Future<T> Function() action,
  }) => Result.tryCatching<T, Failures>(
    action: action,
    catchErrors: true,
    onError: (error, stackTrace) => NetworkFailureMapper.map(error),
  );

  static Future<ApiResult<T>> executeMapped<D, T>({
    required Future<D> Function() action,
    required T Function(D model) mapper,
  }) => execute(action: () async => mapper(await action()));
}
