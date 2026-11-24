import '../../../../core/constants/types/type_def.dart';
import '../../../updates/domain/entities/app_release.dart';

abstract interface class ReleaseRepository {
  Future<ApiResult<AppRelease?>> latest();
}
