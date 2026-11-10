import 'dart:async';

import 'package:bloc_signals_flutter/bloc_signals_flutter.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:material_ui/material_ui.dart';
import 'package:open_filex/open_filex.dart';

import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/navigation/app_bar/app_bar_component.dart';
import '../cubit/compression_cubit.dart';
import '../cubit/compression_state.dart';

final class CompressionHistoryPage extends HookWidget {
  const CompressionHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocSignalProvider.of<CompressionCubit>(context);
    useEffect(() {
      unawaited(cubit.loadHistory());
      return null;
    }, [cubit]);
    return Scaffold(
      appBar: AppBarComponent(
        title: context.localeKeys.compressionHistoryTitle,
      ),
      body: BlocSignalBuilder<CompressionCubit, CompressionState>(
        builder: (context, state) => state.history.isEmpty
            ? Center(child: Text(context.localeKeys.compressionEmptyHistory))
            : Column(
                children: [
                  Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: TextButton.icon(
                      onPressed: () async {
                        final confirmed = await showDialog<bool>(
                          context: context,
                          builder: (dialogContext) => AlertDialog(
                            title: Text(
                              context.localeKeys.compressionClearHistory,
                            ),
                            content: Text(
                              context.localeKeys.compressionClearHistoryConfirm,
                            ),
                            actions: [
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(dialogContext, false),
                                child: Text(context.localeKeys.cancel),
                              ),
                              FilledButton(
                                onPressed: () =>
                                    Navigator.pop(dialogContext, true),
                                child: Text(
                                  context.localeKeys.compressionClearHistory,
                                ),
                              ),
                            ],
                          ),
                        );
                        if (confirmed == true) await cubit.clearHistory();
                      },
                      icon: const Icon(Icons.delete_outline),
                      label: Text(context.localeKeys.compressionClearHistory),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: state.history.length,
                      itemBuilder: (context, index) {
                        final record = state.history[index];
                        return Card(
                          child: ExpansionTile(
                            leading: const Icon(Icons.video_file_outlined),
                            title: Text(record.sourceName),
                            subtitle: Text(
                              record.createdAt.toLocal().toString(),
                            ),
                            trailing: Text(
                              '${(record.bytes / 1000000).toStringAsFixed(1)} MB',
                            ),
                            children: [
                              if (record.originalBytes > 0)
                                ListTile(
                                  title: Text(
                                    context.localeKeys.compressionOriginalSize,
                                  ),
                                  trailing: Text(
                                    '${(record.originalBytes / 1000000).toStringAsFixed(1)} MB',
                                  ),
                                ),
                              if (record.targetMb > 0)
                                ListTile(
                                  title: Text(
                                    context.localeKeys.compressionTargetSize,
                                  ),
                                  trailing: Text('${record.targetMb} MB'),
                                ),
                              if (record.width > 0 && record.height > 0)
                                ListTile(
                                  title: Text(
                                    context
                                        .localeKeys
                                        .compressionOutputResolution,
                                  ),
                                  trailing: Text(
                                    '${record.width} × ${record.height}',
                                  ),
                                ),
                              ListTile(
                                title: Text(
                                  context.localeKeys.compressionAttempts,
                                ),
                                trailing: Text('${record.attempts}'),
                              ),
                              TextButton.icon(
                                onPressed: () =>
                                    unawaited(OpenFilex.open(record.path)),
                                icon: const Icon(Icons.play_arrow),
                                label: Text(
                                  context.localeKeys.compressionViewResult,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
