import 'package:injectable/injectable.dart';

import '../../../../core/services/shared_prefs/base_pref_storage_service.dart';
import '../../domain/entities/compression_alert_status.dart';
import '../../domain/repositories/compression_alert_repository.dart';
import '../mappers/compression_alert_metadata_mapper.dart';
import '../models/compression_alert_metadata.dart';

@LazySingleton(as: CompressionAlertRepository)
final class LocalCompressionAlertRepository
    implements CompressionAlertRepository {
  const LocalCompressionAlertRepository(this._storage);
  final BasePrefStorageService _storage;
  static const key = 'compression.alerts.v1';
  @override
  Future<CompressionAlertStatus> read() async {
    final json = await _storage.getData<Map<String, dynamic>>(key: key);
    return json == null
        ? const CompressionAlertStatus()
        : CompressionAlertMetadata.fromJson(json).toEntity();
  }

  @override
  Future<void> save(CompressionAlertStatus status) async {
    if (!await _storage.setData(key: key, value: status.toModel().toJson())) {
      throw StateError('E_OPERATIONAL_STATE');
    }
  }
}
