import 'dart:convert';

import 'package:injectable/injectable.dart';

import '../../../compression/domain/models/compression_preferences.dart';
import '../../../compression/domain/models/encode_request.dart';
import '../../../services/shared_prefs/base_pref_storage_service.dart';
import '../../domain/entities/compression_defaults.dart';
import '../../domain/repositories/settings_repository.dart';
import 'local_settings_repository.dart';

CompressionPreferences _decodePreferences(Map<String, dynamic> json) =>
    CompressionPreferences(
      maxShortEdge: json['maxShortEdge'] as int?,
      maxFrameRate: json['maxFrameRate'] as int? ?? 30,
      audioBitrateKbps: json['audioBitrateKbps'] as int?,
      videoBitrateCeilingKbps: json['videoBitrateCeilingKbps'] as int?,
      hdrMode: json['hdrMode'] == 'preserve'
          ? HdrMode.preserve
          : HdrMode.toneMapToSdr,
      safetyMargin: (json['safetyMargin'] as num?)?.toDouble(),
    );

@LazySingleton(as: SettingsRepository<CompressionDefaults>)
final class CompressionDefaultsRepository
    extends LocalSettingsRepository<CompressionDefaults> {
  CompressionDefaultsRepository(BasePrefStorageService storage)
    : super(
        storage: storage,
        key: 'compression.defaults.v2',
        defaults: const CompressionDefaults(),
        validate: (value) {
          if (!value.targetMb.isFinite || value.targetMb <= 0) {
            throw ArgumentError.value(value.targetMb);
          }
          value.preferences.validate();
        },
        decode: (json) => CompressionDefaults(
          targetMb: (json['targetMb'] as num).toDouble(),
          preferences: _decodePreferences(
            json['preferences'] as Map<String, dynamic>,
          ),
        ),
        encode: (value) => {
          'targetMb': value.targetMb,
          'preferences': {
            'maxShortEdge': value.preferences.maxShortEdge,
            'maxFrameRate': value.preferences.maxFrameRate,
            'audioBitrateKbps': value.preferences.audioBitrateKbps,
            'videoBitrateCeilingKbps':
                value.preferences.videoBitrateCeilingKbps,
            'hdrMode': value.preferences.hdrMode.name,
            'safetyMargin': value.preferences.safetyMargin,
          },
        },
        migrate: () async {
          final target = await storage.getData<double>(
            key: 'compression_default_target_mb_v1',
          );
          final raw = await storage.getData<Object>(
            key: 'compression_preferences_v1',
          );
          if (target == null && raw == null) return null;
          return CompressionDefaults(
            targetMb: target ?? 16,
            preferences: raw == null
                ? const CompressionPreferences()
                : _decodePreferences(
                    (raw is String ? jsonDecode(raw) : raw)
                        as Map<String, dynamic>,
                  ),
          );
        },
      );
  @override
  @disposeMethod
  Future<void> dispose() => super.dispose();
}
