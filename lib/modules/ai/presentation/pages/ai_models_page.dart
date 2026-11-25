import 'dart:async';

import 'package:bloc_signals_flutter/bloc_signals_flutter.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/design_system/tokens/tokens.dart';
import '../../../../core/constants/kuymo_icons.dart';
import '../../../../core/di/di.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/preferences/domain/repositories/settings_repository.dart';
import '../../../../core/services/haptics/haptics_service.dart';
import '../../../../core/widgets/widgets.dart';
import '../../../../l10n/app_localizations.dart';
import '../../domain/entities/ai_settings.dart';
import '../../domain/repositories/ai_model_repository.dart';
import '../../domain/repositories/ai_runtime_repository.dart';
import '../cubit/ai_models_cubit.dart';

final class AiModelsPage extends StatefulWidget {
  const AiModelsPage({super.key});

  @override
  State<AiModelsPage> createState() => _AiModelsPageState();
}

final class _AiModelsPageState extends State<AiModelsPage> {
  late final AiModelsCubit _cubit;
  @override
  void initState() {
    super.initState();
    _cubit = AiModelsCubit(
      getIt<AiModelRepository>(),
      getIt<AiRuntimeRepository>(),
      getIt<SettingsRepository<AiModelSettings>>(),
    );
    unawaited(_cubit.load());
  }

  @override
  void dispose() {
    unawaited(_cubit.close());
    super.dispose();
  }

  bool _isActive(String id) =>
      id == _cubit.stateValue.activeChat ||
      id == _cubit.stateValue.activeEmbedding;
  List<
    ({
      String id,
      String name,
      String desc,
      String size,
      String ram,
      bool isInstalled,
      bool supported,
    })
  >
  get _models => _cubit.stateValue.models
      .map(
        (m) => (
          id: m.id,
          name: m.name,
          desc: m.embedding
              ? context.localeKeys.semanticSearchDescription
              : context.localeKeys.conversationSettings,
          size: '${(m.bytes / 1000000).ceil()} MB',
          ram:
              '~${((m.bytes * 1.3 + 128 * 1024 * 1024) / 1000000).ceil()} MB RAM',
          isInstalled: m.installed,
          supported: m.supported,
        ),
      )
      .toList();
  @override
  Widget build(BuildContext context) => BlocSignalProvider.value(
    value: _cubit,
    child: BlocSignalListener<AiModelsCubit, AiModelsState>(
      listenWhen: (previous, current) => !previous.failed && current.failed,
      listener: (context, _) => context.toast.showError(
        context,
        context.localeKeys.aiOperationFailed,
      ),
      child: BlocSignalBuilder<AiModelsCubit, AiModelsState>(
        builder: (context, _) => _buildPage(context),
      ),
    ),
  );

  Widget _buildPage(BuildContext context) {
    final l10n = context.localeKeys;
    final colorScheme = context.colorScheme;

    return Scaffold(
      appBar: SidePageAppBarComponent(
        title: l10n.localModels,
        actions: [
          IconButtonComponent(
            icon: KuymoIcons.settingsReset,
            tooltip: l10n.resetSettingsGroup,
            onPressed: _cubit.stateValue.busy
                ? null
                : () => unawaited(_cubit.resetSelection()),
          ),
          if (_cubit.stateValue.busy)
            IconButtonComponent(
              icon: LucideIcons.x,
              tooltip: l10n.cancel,
              onPressed: _cubit.cancel,
            ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.large,
          vertical: AppSpacing.small,
        ),
        children: [
          ExpressiveSectionHeader(title: l10n.supportedOnDeviceModels),
          if (_cubit.stateValue.loading) const LoadingIndicatorComponent(),
          for (final model in _models) ...[
            CardComponent.filled(
              padding: const EdgeInsets.all(AppSpacing.small),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      ExpressiveIcon(
                        icon: KuymoIcons.ai,
                        shape: ExpressiveIconShape.cookie,
                        size: AppIconSizes.xlarge,
                        backgroundColor: _isActive(model.id)
                            ? colorScheme.primaryContainer
                            : colorScheme.surfaceContainerHighest,
                        foregroundColor: _isActive(model.id)
                            ? colorScheme.onPrimaryContainer
                            : colorScheme.onSurfaceVariant,
                      ),
                      const Gap.horizontal(AppSpacing.xSmall),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              _localizedModelName(l10n, model.id),
                              style: context.textTheme.titleSmall?.copyWith(),
                            ),
                            Text(
                              l10n.modelStorageUsage(model.size, model.ram),
                              style: context.textTheme.bodySmall?.copyWith(
                                color: colorScheme.primary,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      if (_isActive(model.id))
                        ChipComponent(label: l10n.active, showBorder: false),
                    ],
                  ),
                  const Gap(AppSpacing.small),
                  Text(
                    _localizedModelDescription(l10n, model.id),
                    style: context.textTheme.bodySmall?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                      height: 1.4,
                    ),
                  ),
                  const Gap(AppSpacing.medium),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      if (model.isInstalled) ...[
                        if (!_isActive(model.id))
                          FilledTonalButtonComponent(
                            label: l10n.setActive,
                            useInBorderRadius: true,
                            onPressed:
                                _cubit.stateValue.busy || !model.supported
                                ? null
                                : () {
                                    unawaited(AppHaptics.button());
                                    unawaited(
                                      _cubit.select(
                                        _cubit.stateValue.models.firstWhere(
                                          (m) => m.id == model.id,
                                        ),
                                      ),
                                    );
                                  },
                          )
                        else
                          ChipComponent(label: l10n.installed),
                      ] else
                        FilledButtonComponent.icon(
                          icon: LucideIcons.download,
                          label: l10n.downloadModel(model.size),
                          isEnabled: !_cubit.stateValue.busy && model.supported,
                          useInBorderRadius: true,
                          onPressed: () {
                            unawaited(AppHaptics.button());
                            unawaited(_cubit.install(model.id));
                          },
                        ),
                    ],
                  ),
                ],
              ),
            ),
            const Gap(AppSpacing.small),
          ],
        ],
      ),
    );
  }

  String _localizedModelName(AppLocalizations l10n, String id) =>
      _models.firstWhere((m) => m.id == id).name;
  String _localizedModelDescription(AppLocalizations l10n, String id) =>
      _models.firstWhere((m) => m.id == id).desc;
}
