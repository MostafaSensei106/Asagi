import 'dart:async';

import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/design_system/tokens/tokens.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/services/haptics/haptics_service.dart';
import '../../../../core/widgets/widgets.dart';

final class AiSearchPage extends StatefulWidget {
  const AiSearchPage({super.key});

  @override
  State<AiSearchPage> createState() => _AiSearchPageState();
}

final class _AiSearchPageState extends State<AiSearchPage> {
  bool _semanticIndexing = true;
  bool _indexWhileCharging = true;
  bool _isRebuilding = false;

  Future<void> _rebuildIndex() async {
    final l10n = context.localeKeys;
    setState(() => _isRebuilding = true);
    unawaited(AppHaptics.button());
    await Future<void>.delayed(const Duration(milliseconds: 700));
    if (!mounted) return;
    setState(() => _isRebuilding = false);
    context.toast.showSuccess(context, l10n.semanticIndexRebuilt);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.localeKeys;
    final colorScheme = context.colorScheme;

    return Scaffold(
      appBar: SidePageAppBarComponent(title: l10n.semanticSearch),
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
                      label: l10n.videosIndexed(142),
                      showBorder: false,
                    ),
                  ],
                ),
                const Gap(AppSpacing.small),
                Text(
                  l10n.embeddingStorage,
                  style: context.textTheme.bodySmall?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                  ),
                ),
                const Gap(AppSpacing.large),
                FilledTonalButtonComponent.icon(
                  icon: LucideIcons.refreshCw,
                  label: _isRebuilding ? l10n.rebuilding : l10n.rebuildIndex,
                  onPressed: _isRebuilding ? () {} : _rebuildIndex,
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
