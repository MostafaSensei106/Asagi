import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:material_ui/material_ui.dart';
import 'package:video_player/video_player.dart';

import '../../../../core/extensions/extensions.dart';

/// Owns one video controller and releases it when the source changes or leaves.
final class VideoPreview extends HookWidget {
  const VideoPreview({required this.path, required this.title, super.key});

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
    useEffect(() {
      var active = true;
      Future<void> initialize() async {
        try {
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
        AspectRatio(
          aspectRatio: 16 / 9,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: ColoredBox(
              color: Colors.black,
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
      ],
    );
  }
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
