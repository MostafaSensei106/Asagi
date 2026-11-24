import 'package:injectable/injectable.dart';

import '../../../../core/services/shared_prefs/base_pref_storage_service.dart';
import '../../domain/entities/update_check_status.dart';
import '../../domain/repositories/update_check_repository.dart';
import '../mappers/update_check_metadata_mapper.dart';
import '../models/update_check_metadata.dart';

@LazySingleton(as: UpdateCheckRepository)
final class LocalUpdateCheckRepository implements UpdateCheckRepository {
  const LocalUpdateCheckRepository(this._storage);
  final BasePrefStorageService _storage;
  static const key = 'updates.runtime.v1';
  @override
  Future<UpdateCheckStatus> read() async {
    final json = await _storage.getData<Map<String, dynamic>>(key: key);
    return json == null
        ? const UpdateCheckStatus()
        : UpdateCheckMetadata.fromJson(json).toEntity();
  }

  @override
  Future<void> save(UpdateCheckStatus status) async {
    if (!await _storage.setData(key: key, value: status.toModel().toJson())) {
      throw StateError('E_OPERATIONAL_STATE');
    }
  }
}
