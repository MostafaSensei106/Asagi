import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:material_ui/material_ui.dart';
import 'package:video_player/video_player.dart';
import 'package:video_player_platform_interface/video_player_platform_interface.dart';

import '../../../../core/extensions/extensions.dart';

/// Owns one video controller and releases it when the source changes or leaves.
final class VideoPreview extends HookWidget {
  const VideoPreview({required this.path, required this.title, super.key});

  // video_player invokes this without awaiting it on first use. Preflight the
  // native channel so an older APK without the plugin cannot throw uncaught.
  static Future<bool>? _nativePlayerReady;

  static Future<bool> _checkNativePlayer() async {
    try {
      await VideoPlayerPlatform.instance.init();
      return true;
    } catch (_) {
      return false;
    }
  }

  final String path;
  final String title;

  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      return _UnavailablePreview(title: title);
    }
    final controller = useMemoized(
      () => VideoPlayerController.file(File(path)),
      [path],
    );
    final failed = useState(false);
    final draggingPosition = useState<Duration?>(null);
    useEffect(() {
      var active = true;
      Future<void> initialize() async {
        try {
          if (!await (_nativePlayerReady ??= _checkNativePlayer())) {
            if (active) failed.value = true;
            return;
          }
          await controller.initialize();
        } catch (_) {
          if (active) failed.value = true;
        }
      }

      unawaited(initialize());
      return () {
        active = false;
        unawaited(controller.dispose());
      };
    }, [controller]);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(title, style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 8),
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: ColoredBox(
            color: Colors.black,
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: failed.value
                  ? Center(
                      child: Text(
                        context.localeKeys.compressionPreviewUnavailable,
                        style: const TextStyle(color: Colors.white),
                      ),
                    )
                  : AnimatedBuilder(
                      animation: controller,
                      builder: (context, _) {
                        if (!controller.value.isInitialized) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                        return Stack(
                          alignment: Alignment.center,
                          children: [
                            AspectRatio(
                              aspectRatio: controller.value.aspectRatio,
                              child: VideoPlayer(controller),
                            ),
                            IconButton.filledTonal(
                              iconSize: 36,
                              onPressed: () => unawaited(
                                controller.value.isPlaying
                                    ? controller.pause()
                                    : controller.play(),
                              ),
                              icon: Icon(
                                controller.value.isPlaying
                                    ? Icons.pause
                                    : Icons.play_arrow,
                              ),
                            ),
                          ],
                        );
                      },
                    ),
            ),
          ),
        ),
        if (!failed.value)
          AnimatedBuilder(
            animation: controller,
            builder: (context, _) {
              if (!controller.value.isInitialized) {
                return const SizedBox.shrink();
              }
              final duration = controller.value.duration;
              final totalMs = duration.inMilliseconds;
              if (totalMs <= 0) return const SizedBox.shrink();
              final position =
                  draggingPosition.value ?? controller.value.position;
              final positionMs = position.inMilliseconds.clamp(0, totalMs);
              return Column(
                children: [
                  Semantics(
                    label: context.localeKeys.compressionSeek,
                    child: Slider(
                      value: positionMs.toDouble(),
                      max: totalMs.toDouble(),
                      onChanged: (value) => draggingPosition.value = Duration(
                        milliseconds: value.round(),
                      ),
                      onChangeEnd: (value) {
                        unawaited(
                          controller
                              .seekTo(Duration(milliseconds: value.round()))
                              .whenComplete(() {
                                if (context.mounted) {
                                  draggingPosition.value = null;
                                }
                              }),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text(_time(position)), Text(_time(duration))],
                    ),
                  ),
                ],
              );
            },
          ),
      ],
    );
  }
}

String _time(Duration value) {
  final hours = value.inHours;
  final minutes = value.inMinutes.remainder(60).toString().padLeft(2, '0');
  final seconds = value.inSeconds.remainder(60).toString().padLeft(2, '0');
  return hours > 0 ? '$hours:$minutes:$seconds' : '$minutes:$seconds';
}

final class _UnavailablePreview extends StatelessWidget {
  const _UnavailablePreview({required this.title});
  final String title;

  @override
  Widget build(BuildContext context) => Column(
    children: [
      Text(title),
      const SizedBox(height: 8),
      Text(context.localeKeys.compressionPreviewUnavailable),
    ],
  );
}
