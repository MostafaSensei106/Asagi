import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:gal/gal.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/compression/compression_engine.dart';
import '../../../../core/compression/domain/models/interrupted_compression_job.dart';
import '../../../../core/compression/infrastructure/storage/mp4_faststart_optimizer.dart';
import '../../../../core/compression/infrastructure/storage/mp4_faststart_validator.dart';
import '../../../../core/native/pigeon_messages.g.dart';
import '../../../../core/preferences/application/media_work_scheduler.dart';
import '../../../../core/preferences/domain/entities/privacy_settings.dart';
import '../../../../core/preferences/domain/repositories/settings_repository.dart';
import '../../../ai/domain/entities/ai_settings.dart';
import '../../domain/models/compression_record.dart';
import '../../domain/models/resumed_compression.dart';
import '../../domain/models/selected_video.dart';
import '../../domain/repositories/video_compression_repository.dart';
import 'encoder_calibration_store.dart';

final class DeviceVideoCompressionRepository
    implements VideoCompressionRepository {
  DeviceVideoCompressionRepository({
    ImagePicker? picker,
    this._privacy,
    this._scheduler,
    this._aiFeatures,
  }) : _picker = picker ?? ImagePicker(),
       _encoder = PlatformVideoEncoder(NativeMediaApi()),
       _planner = PlatformCompressionPlanner(NativeCompressionPlannerApi()) {
    _engine = CompressionEngine(
      planner: _planner,
      encoder: _encoder,
      artifacts: const FileArtifactStore(),
    );
  }

  static const _historyKey = 'compression_history_v1';
  final SettingsRepository<AiFeatureSettings>? _aiFeatures;
  final SettingsRepository<PrivacySettings>? _privacy;
  int _operationGeneration = 0;
  bool _preprocessing = false;
  bool _compressing = false;
  Completer<void>? _operationCancellation;
  final MediaWorkScheduler? _scheduler;
  final ImagePicker _picker;
  final PlatformVideoEncoder _encoder;
  final CompressionPlanner _planner;
  late final CompressionEngine _engine;

  @override
  Stream<double> get progress => _encoder.progress;

  void _ensureSupported() {
    if (!Platform.isAndroid) throw UnsupportedError('E_PLATFORM_UNSUPPORTED');
  }

  @override
  Future<SelectedVideo?> pickVideo() async {
    _ensureSupported();
    final file = await _picker.pickVideo(source: ImageSource.gallery);
    if (file == null) return null;
    final metadata = await _encoder.inspect(file.path);
    if (metadata.durationSecs <= 0 || metadata.fileSizeBytes <= 0) {
      throw StateError('E_INVALID_VIDEO');
    }
    return SelectedVideo(path: file.path, name: file.name, metadata: metadata);
  }

  @override
  Future<CompressionOutput> compress(
    SelectedVideo video,
    double targetMb,
    CompressionPreferences preferences, {
    SharePresetId? presetId,
    void Function(CompressionStep)? onStep,
    void Function(double, double)? onAttemptRange,
  }) async {
    _ensureSupported();
    if (_compressing) throw StateError('E_BUSY');
    _compressing = true;
    final generation = ++_operationGeneration;
    final cancellation = Completer<void>();
    _operationCancellation = cancellation;
    MediaWorkLease? lease;
    Directory? preparation;
    try {
      lease = await _scheduler?.acquire(
        priority: 0,
        cancelled: cancellation.future,
      );
      if (generation != _operationGeneration) throw StateError('E_CANCELLED');
      final privacy = await _privacy?.load();
      final features = await _aiFeatures?.load();
      var source = video;
      if (features != null &&
          (features.noiseReduction || features.silentTrim)) {
        onStep?.call(CompressionStep.preparing);
        final cache = await getTemporaryDirectory();
        final root = await Directory('${cache.path}/ai_preprocess')
            .create(recursive: true);
        preparation = await root.createTemp('job_');
        _preprocessing = true;
        final path = await NativeAiMediaApi().exportMedia(
          Uri.file(video.path).toString(),
          preparation.path,
          'trim',
          0,
          0,
          features.noiseReduction,
          features.silentTrim,
        );
        _preprocessing = false;
        source = SelectedVideo(
          path: path,
          name: video.name,
          metadata: await _encoder.inspect(path),
        );
      }
      if (generation != _operationGeneration) throw StateError('E_CANCELLED');
      return await _compress(
        source,
        targetMb,
        preferences,
        presetId: presetId,
        onStep: onStep,
        onAttemptRange: onAttemptRange,
        originalVideo: video,
        preserveMetadata: privacy?.preserveMetadata ?? true,
      );
    } finally {
      _preprocessing = false;
      try {
        if (preparation != null && await preparation.exists()) {
          await preparation.delete(recursive: true);
        }
      } finally {
        _compressing = false;
        _operationCancellation = null;
        if (!cancellation.isCompleted) cancellation.complete();
        lease?.release();
      }
    }
  }

  Future<CompressionOutput> _compress(
    SelectedVideo video,
    double targetMb,
    CompressionPreferences preferences, {
    SharePresetId? presetId,
    bool preserveMetadata = true,
    SelectedVideo? originalVideo,
    void Function(CompressionStep step)? onStep,
    void Function(double start, double end)? onAttemptRange,
  }) async {
    if (!targetMb.isFinite || targetMb <= 0) {
      throw ArgumentError.value(targetMb, 'targetMb');
    }
    onStep?.call(CompressionStep.preparing);
    _ensureSupported();
    final cache = await getTemporaryDirectory();
    final workspacePath = '${cache.path}/compression';
    EncoderCalibrationStore? calibration;
    String? calibrationProfile;
    if (Platform.isAndroid) {
      try {
        calibration = EncoderCalibrationStore(
          await SharedPreferences.getInstance(),
        );
        final device = await DeviceInfoPlugin().androidInfo;
        final shortEdge = video.metadata.width < video.metadata.height
            ? video.metadata.width
            : video.metadata.height;
        final resolutionBucket = shortEdge <= 480
            ? 480
            : shortEdge <= 720
            ? 720
            : shortEdge <= 1080
            ? 1080
            : 2160;
        calibrationProfile =
            '${device.manufacturer}_${device.model}_${device.version.sdkInt}_'
            '${preferences.hdrMode.name}_$resolutionBucket';
      } catch (_) {
        // Calibration is optional; encoding still uses the normal budget.
      }
    }
    final acceptedMaxBytes = (targetMb * 1000000).floor();
    var learnedFactor =
        calibrationProfile == null ||
            video.metadata.fileSizeBytes <= acceptedMaxBytes
        ? 1.0
        : calibration!.recommendedFactor(calibrationProfile);
    if (learnedFactor < 0.99) {
      final learnedPlan = await _planner.plan(
        video.metadata,
        targetMb * learnedFactor,
        preferences: preferences,
        presetId: presetId,
      );
      if (learnedPlan.isInfeasible) learnedFactor = 1.0;
    }
    final factors = <double>[learnedFactor];
    if (learnedFactor > 0.8) factors.add(0.8);
    // Some hardware encoders exceed their requested bitrate. Re-plan with a
    // smaller budget before reporting that the requested file size is impossible.
    CompressionOutput? output;
    for (var index = 0; index < factors.length; index++) {
      final factor = factors[index];
      try {
        output = await _engine.compress(
          source: video.path,
          sourceName: video.name,
          targetMb: targetMb * factor,
          workspacePath: workspacePath,
          acceptedMaxBytes: acceptedMaxBytes,
          preferences: preferences,
          presetId: presetId,
          onAttemptMeasured: calibrationProfile == null
              ? null
              : (plan, source, bytes) => calibration!.observe(
                  calibrationProfile!,
                  plan,
                  source.durationSecs,
                  bytes,
                ),
          onStep: onStep,
          onAttemptRange: (start, end) => onAttemptRange?.call(
            (index + start) / factors.length,
            (index + end) / factors.length,
          ),
        );
        break;
      } catch (error) {
        final exceeded = '$error'.contains('E_TARGET_EXCEEDED');
        final infeasible = '$error'.contains('E_TARGET_INFEASIBLE');
        if (!exceeded && !infeasible) rethrow;
        if (index == factors.length - 1 || infeasible) {
          throw StateError('E_TARGET_EXCEEDED');
        }
        onStep?.call(CompressionStep.replanning);
      }
    }
    final verifiedOutput = output!;
    preserveMetadata =
        preserveMetadata && (_privacy?.current.preserveMetadata ?? true);
    onStep?.call(CompressionStep.saving);

    try {
      if (Platform.isAndroid &&
          verifiedOutput.attempts > 0 &&
          !await const Mp4FaststartValidator().isStreamable(
            verifiedOutput.path,
          )) {
        throw StateError('E_MP4_NOT_STREAMABLE');
      }
      final documents = await getApplicationDocumentsDirectory();
      final savedDirectory = await Directory(
        '${documents.path}/compressed_videos',
      ).create(recursive: true);
      final sourceExtension = video.path.split('.').last.toLowerCase();
      final extension =
          verifiedOutput.attempts == 0 &&
              preserveMetadata &&
              RegExp(r'^[a-z0-9]{1,5}$').hasMatch(sourceExtension)
          ? sourceExtension
          : 'mp4';
      final savedPath =
          '${savedDirectory.path}/kuymo_${DateTime.now().microsecondsSinceEpoch}.$extension';
      late final File saved;
      try {
        if (preserveMetadata) {
          saved = await File(verifiedOutput.path).copy(savedPath);
        } else {
          final directory = await Directory('${cache.path}/metadata_cleanup')
              .createTemp('job_');
          try {
            final stripped = await NativeAiMediaApi().exportMedia(
              Uri.file(verifiedOutput.path).toString(),
              directory.path,
              'stripMetadata',
              0,
              0,
              false,
              false,
            );
            saved = await File(stripped).copy(savedPath);
            await const Mp4FaststartOptimizer().optimize(savedPath);
            if (await saved.length() > acceptedMaxBytes) {
              await saved.delete();
              throw StateError('E_TARGET_EXCEEDED');
            }
          } finally {
            await directory.delete(recursive: true);
          }
        }
      } catch (_) {
        final partial = File(savedPath);
        if (await partial.exists()) await partial.delete();
        rethrow;
      }
      final record = CompressionRecord(
        path: saved.path,
        id: saved.path.split(Platform.pathSeparator).last,
        sourceName: video.name,
        bytes: await saved.length(),
        createdAt: DateTime.now(),
        originalBytes: (originalVideo ?? video).metadata.fileSizeBytes,
        targetMb: targetMb,
        attempts: verifiedOutput.attempts,
      );
      var completeRecord = record;
      var warning = verifiedOutput.warning;
      try {
        final savedMetadata = await _encoder.inspect(saved.path);
        final planned = await _planner.plan(
          video.metadata,
          targetMb,
          preferences: preferences,
          presetId: presetId,
        );
        if (savedMetadata.width != planned.targetWidth ||
            savedMetadata.height != planned.targetHeight) {
          warning =
              'OUTPUT_QUALITY_ADJUSTED:${savedMetadata.width}:${savedMetadata.height}';
        }
        completeRecord = record.copyWith(
          width: savedMetadata.width,
          height: savedMetadata.height,
        );
      } catch (_) {
        // A saved result must remain usable even if detail extraction fails.
      }
      try {
        await _appendHistory(completeRecord.copyWith(warning: warning));
      } catch (_) {
        // The verified video remains usable even when history storage fails.
      }
      return CompressionOutput(
        saved.path,
        record.bytes,
        verifiedOutput.attempts,
        warning,
        jobId: record.jobId,
      );
    } finally {
      if (verifiedOutput.attempts > 0) {
        final jobDirectory = Directory(File(verifiedOutput.path).parent.path);
        if (await jobDirectory.exists()) {
          await jobDirectory.delete(recursive: true);
        }
      }
    }
  }

  @override
  Future<CompressionPlan> previewPlan(
    SelectedVideo video,
    double targetMb,
    CompressionPreferences preferences,
  ) async {
    preferences.validate();
    _ensureSupported();
    return _planner.plan(video.metadata, targetMb, preferences: preferences);
  }

  @override
  Future<List<SharePreset>> presets() async {
    _ensureSupported();
    return _planner.presets();
  }

  @override
  Future<SharePresetPlan> resolvePreset(
    SelectedVideo video,
    SharePresetId id,
  ) async {
    _ensureSupported();
    return _planner.resolvePreset(video.metadata, id);
  }

  Future<void> _appendHistory(CompressionRecord record) async {
    final prefs = await SharedPreferences.getInstance();
    final entries = prefs.getStringList(_historyKey) ?? <String>[];
    entries.insert(
      0,
      jsonEncode({
        'path': record.path,
        'id': record.jobId,
        'warning': record.warning,
        'sourceName': record.sourceName,
        'bytes': record.bytes,
        'createdAt': record.createdAt.toIso8601String(),
        'originalBytes': record.originalBytes,
        'targetMb': record.targetMb,
        'width': record.width,
        'height': record.height,
        'attempts': record.attempts,
      }),
    );
    await prefs.setStringList(_historyKey, entries);
  }

  @override
  Future<List<CompressionRecord>> history() async {
    final prefs = await SharedPreferences.getInstance();
    final entries = prefs.getStringList(_historyKey) ?? <String>[];
    final records = <CompressionRecord>[];
    for (final entry in entries) {
      try {
        final data = jsonDecode(entry) as Map<String, dynamic>;
        final path = data['path'] as String;
        if (!await File(path).exists()) continue;
        records.add(
          CompressionRecord(
            path: path,
            id: data['id'] as String? ?? '',
            warning: data['warning'] as String?,
            sourceName: data['sourceName'] as String,
            bytes: data['bytes'] as int,
            createdAt: DateTime.parse(data['createdAt'] as String),
            originalBytes: data['originalBytes'] as int? ?? 0,
            targetMb: (data['targetMb'] as num?)?.toDouble() ?? 0,
            width: data['width'] as int? ?? 0,
            height: data['height'] as int? ?? 0,
            attempts: data['attempts'] as int? ?? 0,
          ),
        );
      } catch (_) {
        // Ignore a damaged local history entry; keep valid results visible.
      }
    }
    return records;
  }

  @override
  Future<void> clearHistory() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_historyKey);
  }

  @override
  Future<List<InterruptedCompressionJob>> recoverInterrupted() async {
    final cache = await getTemporaryDirectory();
    return const FileArtifactStore().listInterrupted(
      '${cache.path}/compression',
    );
  }

  @override
  Future<void> discardInterrupted(String jobId) async {
    final cache = await getTemporaryDirectory();
    await const FileArtifactStore().deleteInterrupted(
      '${cache.path}/compression',
      jobId,
    );
  }

  @override
  Future<ResumedCompression> resumeInterrupted(
    InterruptedCompressionJob job, {
    void Function(CompressionStep step)? onStep,
    void Function(double start, double end)? onAttemptRange,
    void Function(SelectedVideo video)? onVideoReady,
  }) async {
    _ensureSupported();
    final source = File(job.sourcePath);
    if (!await source.exists()) throw StateError('E_RESUME_SOURCE_UNAVAILABLE');
    final metadata = await _encoder.inspect(source.path);
    final video = SelectedVideo(
      path: source.path,
      name: job.sourceName,
      metadata: metadata,
    );
    onVideoReady?.call(video);
    final output = await compress(
      video,
      job.targetMb,
      job.preferences,
      onStep: onStep,
      onAttemptRange: onAttemptRange,
    );
    await discardInterrupted(job.id);
    return ResumedCompression(video: video, output: output);
  }

  @override
  Future<void> pause() => _engine.pause();
  @override
  Future<void> resume() => _engine.resume();
  @override
  Future<void> cancel() async {
    ++_operationGeneration;
    final cancellation = _operationCancellation;
    if (cancellation != null && !cancellation.isCompleted) {
      cancellation.complete();
    }
    if (_preprocessing) await NativeAiMediaApi().cancelExport();
    await _engine.cancel();
  }

  @override
  Future<void> saveToGallery(String path) => Gal.putVideo(path);
}
