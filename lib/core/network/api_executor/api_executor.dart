import 'package:dio/dio.dart';

import '../../constants/types/type_def.dart';
import '../../error/failures.dart';
import '../../utils/result/result.dart';
import '../network_failure_mapper.dart';

abstract final class ApiExecutor {
  static Future<ApiResult<T>> execute<T>({
    required Future<T> Function() action,
    Map<int, T> emptyResponses = const {},
  }) => Result.tryCatching<T, Failures>(
    action: () async {
      try {
        return await action();
      } on DioException catch (error) {
        final status = error.response?.statusCode;
        if (emptyResponses.containsKey(status)) {
          return emptyResponses[status] as T;
        }
        rethrow;
      }
    },
    catchErrors: true,
    onError: (error, stackTrace) => NetworkFailureMapper.map(error),
  );

  static Future<ApiResult<T>> executeMapped<D, T>({
    required Future<D> Function() action,
    required T Function(D model) mapper,
    Map<int, T> emptyResponses = const {},
  }) => execute(
    action: () async => mapper(await action()),
    emptyResponses: emptyResponses,
  );
}
