import 'package:bloc_signals_flutter/bloc_signals_flutter.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:material_ui/material_ui.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../core/di/di.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/services/share/base_share_service.dart';
import '../../../../core/widgets/navigation/app_bar/app_bar_component.dart';
import '../cubit/compression_cubit.dart';
import '../cubit/compression_state.dart';
import '../widgets/video_preview.dart';

final class CompressionResultPage extends HookWidget {
  const CompressionResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    final showAfter = useState(true);
    return Scaffold(
      appBar: AppBarComponent(title: context.localeKeys.compressionResult),
      body: BlocSignalBuilder<CompressionCubit, CompressionState>(
        builder: (context, state) {
          final output = state.output;
          if (output == null) {
            return Center(
              child: Text(
                context
                    .localeKeys
                    .compareTheBeforeAndAfterSizeThenSaveOrShareTheResult,
              ),
            );
          }
          return ListView(
            padding: const EdgeInsets.all(24),
            children: [
              const Icon(Icons.check_circle_outline, size: 72),
              const SizedBox(height: 16),
              Text(
                state.video?.name ?? '',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 24),
              SegmentedButton<bool>(
                segments: [
                  ButtonSegment(
                    value: false,
                    label: Text(context.localeKeys.originalPreview),
                  ),
                  ButtonSegment(
                    value: true,
                    label: Text(context.localeKeys.compressedPreview),
                  ),
                ],
                selected: {showAfter.value},
                onSelectionChanged: (value) => showAfter.value = value.first,
              ),
              const SizedBox(height: 12),
              VideoPreview(
                key: ValueKey(
                  showAfter.value
                      ? output.path
                      : state.video?.path ?? output.path,
                ),
                path: showAfter.value
                    ? output.path
                    : state.video?.path ?? output.path,
                title: showAfter.value
                    ? context.localeKeys.compressedPreview
                    : context.localeKeys.originalPreview,
              ),
              const SizedBox(height: 24),
              ListTile(
                title: Text(context.localeKeys.originalSize),
                trailing: Text(
                  '${((state.video?.metadata.fileSizeBytes ?? 0) / 1000000).toStringAsFixed(1)} MB',
                ),
              ),
              ListTile(
                title: Text(context.localeKeys.outputSize),
                trailing: Text(
                  '${(output.bytes / 1000000).toStringAsFixed(1)} MB',
                ),
              ),
              if (output.warning != null) Text(output.warning!),
              const SizedBox(height: 24),
              FilledButton.icon(
                onPressed: () async {
                  try {
                    await BlocSignalProvider.of<CompressionCubit>(context)
                        .saveToGallery();
                    if (context.mounted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(context.localeKeys.savedToGallery),
                        ),
                      );
                    }
                  } catch (_) {
                    if (context.mounted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            context
                                .localeKeys
                                .compressionCouldNotBeCompletedTryAnotherSettingOrVideo,
                          ),
                        ),
                      );
                    }
                  }
                },
                icon: const Icon(Icons.save_alt),
                label: Text(context.localeKeys.saveToGallery),
              ),
              TextButton.icon(
                onPressed: () async {
                  try {
                    await getIt<BaseShareService>().shareFile(
                      file: XFile(output.path),
                    );
                  } catch (_) {
                    if (context.mounted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            context
                                .localeKeys
                                .compressionCouldNotBeCompletedTryAnotherSettingOrVideo,
                          ),
                        ),
                      );
                    }
                  }
                },
                icon: const Icon(Icons.share_outlined),
                label: Text(context.localeKeys.shareVideo),
              ),
            ],
          );
        },
      ),
    );
  }
}
