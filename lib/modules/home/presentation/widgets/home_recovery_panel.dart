import 'dart:async';

import 'package:intl/intl.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/extensions/extensions.dart';
import '../../../compression/presentation/cubit/compression_cubit.dart';
import '../../../compression/presentation/cubit/compression_state.dart';
import 'home_state.dart';
import 'home_video_state_cards.dart';

final class HomeRecoveryPanel extends StatelessWidget {
  const HomeRecoveryPanel({
    required this.state,
    required this.cubit,
    super.key,
  });
  final CompressionState state;
  final CompressionCubit cubit;
  @override
  Widget build(BuildContext context) {
    final l10n = context.localeKeys;
    return ExpansionTile(
      tilePadding: EdgeInsets.zero,
      title: Text(l10n.homeRecoverJobs),
      subtitle: Text(
        NumberFormat.decimalPattern(Localizations.localeOf(context).toString())
            .format(state.recoverableJobs.length),
      ),
      children: [
        for (final job in state.recoverableJobs)
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              job.sourceName,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  job.sourceAvailable
                      ? '${homeMegabytes(context, job.targetMb * 1000000)} · ${DateFormat.yMd(Localizations.localeOf(context).toString()).format(job.updatedAt.toLocal())}'
                      : l10n.originalFileIsMissingDeleteTheJobToCleanUpTemporaryFiles,
                ),
                Wrap(
                  children: [
                    TextButton(
                      onPressed:
                          !job.sourceAvailable ||
                              state.isWorking ||
                              state.isPicking
                          ? null
                          : () => unawaited(cubit.resumeInterrupted(job)),
                      child: Text(l10n.resume),
                    ),
                    TextButton(
                      onPressed: state.isWorking || state.isPicking
                          ? null
                          : () => unawaited(cubit.discardInterrupted(job.id)),
                      child: Text(l10n.deleteInterruptedJob),
                    ),
                  ],
                ),
              ],
            ),
          ),
      ],
    );
  }
}
