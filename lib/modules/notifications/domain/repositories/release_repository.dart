import '../../../../core/constants/types/type_def.dart';
import '../models/app_release.dart';

abstract interface class ReleaseRepository {
  Future<ApiResult<AppRelease?>> latest();
}
