import 'dart:convert';
import 'dart:math' as math;

import 'package:injectable/injectable.dart';

import '../../../../core/compression/domain/models/compression_preferences.dart';
import '../../../../core/preferences/domain/repositories/settings_repository.dart';
import '../../../compression/domain/models/selected_video.dart';
import '../../../compression/domain/repositories/video_advice_repository.dart';
import '../../domain/entities/ai_models.dart';
import '../../domain/entities/ai_settings.dart';
import '../../domain/repositories/ai_media_repository.dart';
import '../../domain/repositories/ai_runtime_repository.dart';

@LazySingleton(as: VideoAdviceRepository)
final class AiVideoAdviceRepository implements VideoAdviceRepository {
  AiVideoAdviceRepository(this._media, this._runtime, this._settings);
  final AiMediaRepository _media;
  final AiRuntimeRepository _runtime;
  final SettingsRepository<AiFeatureSettings> _settings;
  @override
  Future<CompressionPreferences> advise(
    SelectedVideo video,
    double targetMb,
    CompressionPreferences preferences,
  ) async {
    final settings = await _settings.load();
    if (!settings.bitrateRecommender && !settings.facePriority) {
      throw StateError('E_AI_ADVICE_DISABLED');
    }
    final description = await _media.describe(
      AiDocument(
        uri: Uri.file(video.path).toString(),
        name: video.name,
        bytes: video.metadata.fileSizeBytes,
      ),
    );
    final buffer = StringBuffer();
    await for (final delta in _runtime.reply(
      const [],
      'Classify this video description. Return JSON with motion as low, medium or high, and faces as a boolean. Description: $description',
      structured: true,
    )) {
      buffer.write(delta.text);
    }
    final result = jsonDecode(buffer.toString()) as Map<String, dynamic>;
    final motion = result['motion'];
    if (!const {'low', 'medium', 'high'}.contains(motion) ||
        result['faces'] is! bool) {
      throw StateError('E_AI_STRUCTURED_OUTPUT');
    }
    var edge = switch (motion) {
      'low' => 480,
      'medium' => 720,
      _ => 1080,
    };
    if (settings.facePriority && result['faces'] == true) {
      edge = math.max(edge, 720);
    }
    final sourceEdge = math.min(video.metadata.width, video.metadata.height);
    if (sourceEdge < 240) return preferences;
    edge = math.min(
      edge,
      math.min(sourceEdge, preferences.maxShortEdge ?? sourceEdge),
    );
    edge -= edge % 2;
    final available =
        ((targetMb * 8000 / video.metadata.durationSecs -
                    (preferences.audioBitrateKbps ?? 64)) *
                0.95)
            .floor();
    final ceiling = available.clamp(
      50,
      preferences.videoBitrateCeilingKbps ?? 500000,
    );
    final next = preferences.copyWith(
      maxShortEdge: edge,
      videoBitrateCeilingKbps: settings.bitrateRecommender
          ? ceiling
          : preferences.videoBitrateCeilingKbps,
    );
    next.validate();
    return next;
  }
}
