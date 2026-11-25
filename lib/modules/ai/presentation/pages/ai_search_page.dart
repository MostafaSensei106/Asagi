import 'dart:async';

import 'package:bloc_signals/bloc_signals.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/design_system/tokens/tokens.dart';
import '../../../../core/constants/kuymo_icons.dart';
import '../../../../core/di/di.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/preferences/domain/repositories/settings_repository.dart';
import '../../../../core/preferences/presentation/settings_page_state.dart';
import '../../../../core/preferences/presentation/settings_view.dart';
import '../../../../core/services/haptics/haptics_service.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/ai_settings.dart';
import '../../domain/repositories/ai_search_repository.dart';
import '../cubit/ai_search_cubit.dart';
import '../widgets/ai_search_workbench.dart';

final class AiSearchPage extends StatefulWidget {
  const AiSearchPage({super.key});

  @override
  State<AiSearchPage> createState() => _AiSearchPageState();
}

final class _AiSearchPageState
    extends SettingsPageState<AiSearchPage, AiSearchSettings> {
  @override
  SettingsRepository<AiSearchSettings> get repository =>
      getIt<SettingsRepository<AiSearchSettings>>();
  late final AiSearchCubit _search;
  StreamSubscription<AiSearchState>? _changes;
  @override
  void initState() {
    super.initState();
    _search = AiSearchCubit(getIt<AiSearchRepository>());
    unawaited(_search.loadStatistics());
    _changes = _search.stream.listen((_) {
      if (mounted) setState(() {});
    });
  }

  @override
  void dispose() {
    unawaited(_changes?.cancel());
    unawaited(_search.close());
    super.dispose();
  }

  bool get _semanticIndexing => settings.semanticIndexing;
  set _semanticIndexing(bool value) {
    if (!value) _search.cancel();
    updateSettings((s) => s.copyWith(semanticIndexing: value));
  }

  bool get _indexWhileCharging => settings.indexWhileCharging;
  set _indexWhileCharging(bool value) =>
      updateSettings((s) => s.copyWith(indexWhileCharging: value));
  bool get _isRebuilding => _search.stateValue.busy;
  Future<void> _rebuildIndex() async {
    await _search.rebuild();
    await _search.loadStatistics();
    if (!mounted) return;
    if (_search.stateValue.failed) {
      context.toast.showError(context, context.localeKeys.aiOperationFailed);
    } else {
      context.toast.showSuccess(
        context,
        context.localeKeys.semanticIndexRebuilt,
      );
    }
  }

  @override
  Widget buildSettings(BuildContext context) {
    final l10n = context.localeKeys;
    final colorScheme = context.colorScheme;

    return Scaffold(
      appBar: SidePageAppBarComponent(
        title: l10n.semanticSearch,
        actions: [
          const SettingsResetAction<AiSearchSettings>(),
          IconButtonComponent(
            icon: KuymoIcons.aiSearch,
            tooltip: l10n.semanticSearch,
            onPressed: () => unawaited(
              BottomSheetComponent.show<void>(
                context: context,
                child: SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.75,
                  child: const AiSearchWorkbench(),
                ),
              ).then((_) => _search.loadStatistics()),
            ),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.large,
          vertical: AppSpacing.small,
        ),
        children: [
          CardComponent.filled(
            padding: const EdgeInsets.all(AppSpacing.large),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      l10n.vectorDatabaseStatus,
                      style: context.textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ChipComponent(
                      label: l10n.videosIndexed(_search.stateValue.done),
                      showBorder: false,
                    ),
                  ],
                ),
                const Gap(AppSpacing.small),
                Text(
                  l10n.aiEmbeddingStorageUsage(
                    (_search.stateValue.indexBytes / 1000000).toStringAsFixed(
                      1,
                    ),
                  ),
                  style: context.textTheme.bodySmall?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                  ),
                ),
                const Gap(AppSpacing.large),
                FilledTonalButtonComponent.icon(
                  icon: LucideIcons.refreshCw,
                  label: _isRebuilding ? l10n.rebuilding : l10n.rebuildIndex,
                  onPressed: _isRebuilding ? null : _rebuildIndex,
                ),
              ],
            ),
          ),
          const Gap(AppSpacing.xLarge),
          ExpressiveSectionHeader(title: l10n.indexingPreferences),
          const Gap(AppSpacing.small),
          ListTileGroup(
            children: [
              ListTileIconComponent.top(
                leading: LucideIcons.search,
                title: l10n.enableSemanticSearch,
                onLongPress: () => context.showInfoBottomSheet(
                  title: l10n.enableSemanticSearch,
                  icon: LucideIcons.search,
                  illustrationKind: InfoIllustrationKind.mediaSearch,
                  description: l10n.semanticSearchDetails,
                ),
                subtitle: l10n.semanticSearchDescription,
                onTap: () {
                  unawaited(AppHaptics.button());
                  setState(() => _semanticIndexing = !_semanticIndexing);
                },
                showChevron: false,
                trailing: SwitchComponent(
                  value: _semanticIndexing,
                  onChanged: (val) {
                    unawaited(AppHaptics.button());
                    setState(() => _semanticIndexing = val);
                  },
                ),
              ),
              ListTileIconComponent.bottom(
                leading: LucideIcons.batteryCharging,
                title: l10n.indexOnlyWhenCharging,
                onLongPress: () => context.showInfoBottomSheet(
                  title: l10n.indexOnlyWhenCharging,
                  icon: LucideIcons.batteryCharging,
                  illustrationKind: InfoIllustrationKind.batteryOptimization,
                  description: l10n.indexChargingDetails,
                ),
                subtitle: l10n.indexChargingDescription,
                onTap: () {
                  unawaited(AppHaptics.button());
                  setState(() => _indexWhileCharging = !_indexWhileCharging);
                },
                showChevron: false,
                trailing: SwitchComponent(
                  value: _indexWhileCharging,
                  onChanged: (val) {
                    unawaited(AppHaptics.button());
                    setState(() => _indexWhileCharging = val);
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
