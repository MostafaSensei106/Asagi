part of '../app_router.dart';

/// Picker for the source video that will be compressed.
final class VideoSelectRoute extends AppRoute {
  const VideoSelectRoute();

  @override
  AppRouteMetadata get metadata => const AppRouteMetadata(
    name: 'video_select',
    path: '/compression/select',
    section: AppRouteSection.compression,
    icon: AsagiIcons.videoSelect,
  );
}

/// Compression configuration: resolution, bitrate, format, and trim range.
final class CompressionSetupRoute extends AppRoute {
  const CompressionSetupRoute({this.sourcePath});

  /// Absolute path of the selected video, when already known.
  final String? sourcePath;

  @override
  List<Object?> get props => [sourcePath];

  @override
  AppRouteMetadata get metadata => const AppRouteMetadata(
    name: 'compression_setup',
    path: '/compression/setup',
    section: AppRouteSection.compression,
    icon: AsagiIcons.compressionSetup,
  );
}

/// Live progress for the running compression job.
final class CompressionProgressRoute extends AppRoute {
  const CompressionProgressRoute({this.jobId});

  /// Identifier of the job being rendered, when already known.
  final String? jobId;

  @override
  List<Object?> get props => [jobId];

  @override
  AppRouteMetadata get metadata => const AppRouteMetadata(
    name: 'compression_progress',
    path: '/compression/progress',
    section: AppRouteSection.compression,
    icon: AsagiIcons.compressionProgress,
  );
}

/// Result summary with before/after size, ratio, and save/open actions.
final class CompressionResultRoute extends AppRoute {
  const CompressionResultRoute({this.jobId});

  /// Identifier of the finished job, when already known.
  final String? jobId;

  @override
  List<Object?> get props => [jobId];

  @override
  AppRouteMetadata get metadata => const AppRouteMetadata(
    name: 'compression_result',
    path: '/compression/result',
    section: AppRouteSection.compression,
    icon: AsagiIcons.compressionResult,
  );
}

/// Local history of completed compressions.
final class CompressionHistoryRoute extends AppRoute {
  const CompressionHistoryRoute();

  @override
  AppRouteMetadata get metadata => const AppRouteMetadata(
    name: 'compression_history',
    path: '/compression/history',
    section: AppRouteSection.compression,
    icon: AsagiIcons.compressionHistory,
  );
}
