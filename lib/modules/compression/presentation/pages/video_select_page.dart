import 'dart:async';

import 'package:bloc_signals_flutter/bloc_signals_flutter.dart';
import 'package:kaisel/kaisel.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/extensions/extensions.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/widgets/navigation/app_bar/app_bar_component.dart';
import '../cubit/compression_cubit.dart';
import '../cubit/compression_state.dart';
import '../widgets/compression_error_text.dart';

final class VideoSelectPage extends StatelessWidget {
  const VideoSelectPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBarComponent(title: context.localeKeys.chooseAVideo),
    body: BlocSignalBuilder<CompressionCubit, CompressionState>(
      builder: (context, state) => Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.video_library_outlined, size: 64),
              const SizedBox(height: 16),
              Text(
                context.localeKeys.pickAVideoFromYourGalleryToStartCompressing,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              if (state.phase == CompressionPhase.failure)
                Text(
                  compressionErrorText(context, state.error),
                  style: TextStyle(color: Theme.of(context).colorScheme.error),
                ),
              FilledButton.icon(
                onPressed:
                    state.phase == CompressionPhase.picking ||
                        state.phase == CompressionPhase.running ||
                        state.phase == CompressionPhase.paused
                    ? null
                    : () async {
                        final cubit = BlocSignalProvider.of<CompressionCubit>(
                          context,
                        );
                        final selected = await cubit.pickVideo();
                        if (selected && context.mounted) {
                          unawaited(
                            context.push(
                              CompressionSetupRoute(
                                sourcePath: cubit.stateValue.video?.path,
                              ),
                            ),
                          );
                        }
                      },
                icon: const Icon(Icons.video_file_outlined),
                label: Text(
                  state.phase == CompressionPhase.picking
                      ? context.localeKeys.pleaseWait
                      : context.localeKeys.pickVideo,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
