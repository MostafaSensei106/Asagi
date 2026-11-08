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
            : ListView.builder(
                itemCount: state.history.length,
                itemBuilder: (context, index) {
                  final record = state.history[index];
                  return ListTile(
                    leading: const Icon(Icons.video_file_outlined),
                    title: Text(record.sourceName),
                    subtitle: Text(record.createdAt.toLocal().toString()),
                    trailing: Text(
                      '${(record.bytes / 1000000).toStringAsFixed(1)} MB',
                    ),
                    onTap: () => unawaited(OpenFilex.open(record.path)),
                  );
                },
              ),
      ),
    );
  }
}
