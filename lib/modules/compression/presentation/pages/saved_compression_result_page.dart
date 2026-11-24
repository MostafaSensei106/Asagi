import 'dart:async';

import 'package:bloc_signals_flutter/bloc_signals_flutter.dart';
import 'package:kaisel/kaisel.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/design_system/tokens/tokens.dart';
import '../../../../core/di/di.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/services/share/base_share_service.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/repositories/video_compression_repository.dart';
import '../cubit/saved_result_cubit.dart';
import '../widgets/compression_error_text.dart';
import '../widgets/video_preview.dart';

final class SavedCompressionResultPage extends StatelessWidget {
  const SavedCompressionResultPage({required this.jobId, super.key});
  final String jobId;

  @override
  Widget build(BuildContext context) => BlocSignalProvider(
    create: (_) {
      final cubit = SavedResultCubit(
        getIt<VideoCompressionRepository>(),
        getIt<BaseShareService>(),
      );
      unawaited(cubit.load(jobId));
      return cubit;
    },
    child: Scaffold(
      appBar: SidePageAppBarComponent(
        title: context.localeKeys.compressionResult,
      ),
      body: BlocSignalBuilder<SavedResultCubit, SavedResultState>(
        builder: (context, state) {
          final text = context.localeKeys;
          return switch (state) {
            SavedResultLoading() => const Center(
              child: CircularProgressIndicator(),
            ),
            SavedResultUnavailable() => Center(
              child: Padding(
                padding: const EdgeInsets.all(AppSpacing.large),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      text.notificationJobUnavailable,
                      textAlign: TextAlign.center,
                    ),
                    const Gap(AppSpacing.medium),
                    FilledButtonComponent(
                      label: text.compressionHistory,
                      onPressed: () => unawaited(
                        context.push(const CompressionHistoryRoute()),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SavedResultLoaded(:final record) => ListView(
              padding: const EdgeInsets.all(AppSpacing.large),
              children: [
                VideoPreview(path: record.path, title: record.sourceName),
                const Gap(AppSpacing.large),
                Text(
                  text.notificationCompletedBody(
                    record.sourceName,
                    (record.bytes / 1000000).toStringAsFixed(1),
                    ((record.originalBytes - record.bytes).clamp(
                              0,
                              record.originalBytes,
                            ) /
                            1000000)
                        .toStringAsFixed(1),
                  ),
                ),
                if (record.warning != null)
                  Padding(
                    padding: const EdgeInsets.only(top: AppSpacing.medium),
                    child: Text(
                      compressionWarningText(
                        context,
                        record.warning!,
                        record.bytes,
                      ),
                    ),
                  ),
                const Gap(AppSpacing.large),
                FilledButtonComponent.icon(
                  icon: LucideIcons.share2,
                  label: text.shareVideo,
                  onPressed: () async {
                    final box = context.findRenderObject() as RenderBox?;
                    final origin = box == null
                        ? null
                        : box.localToGlobal(Offset.zero) & box.size;
                    try {
                      await BlocSignalProvider.of<SavedResultCubit>(context)
                          .share(origin);
                    } catch (_) {
                      if (context.mounted) {
                        context.toast.showInfo(
                          context,
                          text.notificationJobUnavailable,
                        );
                      }
                    }
                  },
                ),
              ],
            ),
          };
        },
      ),
    ),
  );
}
