import 'dart:async';

import 'package:bloc_signals_flutter/bloc_signals_flutter.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/kuymo_icons.dart';
import '../../../../core/di/di.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/design_system/tokens/tokens.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/repositories/ai_search_repository.dart';
import '../cubit/ai_search_cubit.dart';
import 'ai_platform_support.dart';

final class AiSearchWorkbench extends HookWidget {
  const AiSearchWorkbench({super.key});
  @override
  Widget build(BuildContext context) {
    final input = useTextEditingController();
    final text = context.localeKeys;
    if (!supportsLocalAi) return const AiUnsupportedPage();
    return BlocSignalProvider(
      create: (_) => AiSearchCubit(getIt<AiSearchRepository>()),
      child: BlocSignalBuilder<AiSearchCubit, AiSearchState>(
        builder: (context, state) {
          final cubit = BlocSignalProvider.of<AiSearchCubit>(context);
          return Scaffold(
            appBar: SidePageAppBarComponent(
              title: text.semanticSearch,
              actions: [
                IconButtonComponent(
                  icon: KuymoIcons.storage,
                  tooltip: text.clear,
                  onPressed: state.busy ? null : () => unawaited(cubit.clear()),
                ),
              ],
            ),
            body: ListView(
              padding: const EdgeInsets.all(AppSpacing.large),
              children: [
                CardComponent.filled(
                  padding: const EdgeInsets.all(AppSpacing.medium),
                  child: Column(
                    children: [
                      Text(
                        text.selectedFilesAccess,
                        style: context.textTheme.bodySmall,
                      ),
                      const Gap(AppSpacing.medium),
                      FilledTonalButtonComponent.icon(
                        icon: KuymoIcons.videoSelect,
                        label: text.browseFiles,
                        onPressed: state.busy
                            ? null
                            : () => unawaited(cubit.select()),
                      ),
                    ],
                  ),
                ),
                const Gap(AppSpacing.large),
                TextFormFieldComponent(
                  label: text.semanticSearch,
                  controller: input,
                  onFieldSubmitted: (query) {
                    if (query.trim().isNotEmpty) unawaited(cubit.search(query));
                  },
                ),
                const Gap(AppSpacing.medium),
                FilledButtonComponent.icon(
                  icon: KuymoIcons.aiSearch,
                  label: text.aiSearch,
                  isLoading: state.busy,
                  onPressed: () => unawaited(cubit.search(input.text)),
                ),
                if (state.failed)
                  Padding(
                    padding: const EdgeInsets.only(top: AppSpacing.medium),
                    child: Text(text.aiOperationFailed),
                  ),
                const Gap(AppSpacing.large),
                for (final hit in state.hits) ...[
                  ListTileIconComponent.single(
                    leading: KuymoIcons.aiSearch,
                    title: hit.document.name,
                    subtitle: hit.description,
                    showChevron: false,
                  ),
                  const Gap(AppSpacing.small),
                ],
              ],
            ),
          );
        },
      ),
    );
  }
}
