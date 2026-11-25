import 'dart:async';

import 'package:bloc_signals_flutter/bloc_signals_flutter.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/design_system/tokens/tokens.dart';
import '../../../../core/constants/kuymo_icons.dart';
import '../../../../core/di/di.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/repositories/ai_model_repository.dart';
import '../cubit/ai_import_cubit.dart';

final class AiImportModelPage extends StatefulWidget {
  const AiImportModelPage({super.key});

  @override
  State<AiImportModelPage> createState() => _AiImportModelPageState();
}

final class _AiImportModelPageState extends State<AiImportModelPage> {
  late final AiImportCubit _cubit;
  @override
  void initState() {
    super.initState();
    _cubit = AiImportCubit(getIt<AiModelRepository>());
  }

  @override
  void dispose() {
    unawaited(_cubit.close());
    super.dispose();
  }

  String? get _selectedFileName => _cubit.stateValue.document?.name;
  bool get _isValidating => _cubit.stateValue.busy;
  void _pickModelFile() => unawaited(_cubit.pick());
  Future<void> _validateAndImport() async {
    await _cubit.importFile();
    if (!mounted) return;
    if (_cubit.stateValue.failed) {
      context.toast.showError(context, context.localeKeys.aiOperationFailed);
    } else if (_cubit.stateValue.imported != null) {
      context.toast.showSuccess(context, context.localeKeys.modelImportedVerified);
    }
  }

  @override
  Widget build(BuildContext context) => BlocSignalProvider.value(
    value: _cubit,
    child: BlocSignalListener<AiImportCubit, AiImportState>(
      listenWhen: (previous, current) => !previous.failed && current.failed,
      listener: (context, _) => context.toast.showError(context, context.localeKeys.aiOperationFailed),
      child: BlocSignalBuilder<AiImportCubit, AiImportState>(builder: (context, state) => _buildPage(context))),
  );

  Widget _buildPage(BuildContext context) {
    final l10n = context.localeKeys;
    final colorScheme = context.colorScheme;

    return Scaffold(
      appBar: SidePageAppBarComponent(title: l10n.importAModel),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.large,
          vertical: AppSpacing.small,
        ),
        children: [
          CardComponent.filled(
            padding: const EdgeInsets.all(AppSpacing.medium),
            child: Column(
              children: [
                Icon(
                  LucideIcons.fileUp,
                  size: AppIconSizes.large,
                  color: colorScheme.primary,
                ),
                const Gap(AppSpacing.small),
                Text(
                  _selectedFileName ?? l10n.noModelFileSelected,
                  style: context.textTheme.titleSmall?.copyWith(),
                ),
                const Gap(AppSpacing.xSmall),
                Text(
                  l10n.compatibleModelFormats,
                  style: context.textTheme.bodySmall?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                  ),
                ),
                const Gap(AppSpacing.large),
                FilledTonalButtonComponent.icon(
                  icon: LucideIcons.folderOpen,
                  label: l10n.browseFiles,
                  onPressed: _isValidating ? null : _pickModelFile,
                ),
              ],
            ),
          ),
          const Gap(AppSpacing.xLarge),
          ExpressiveSectionHeader(
            title: context.localeKeys.importCompatibilityChecklist,
          ),
          const Gap(AppSpacing.small),
          CardComponent.filled(
            padding: const EdgeInsets.all(AppSpacing.medium),
            child: Column(
              children: [
                _ChecklistRow(
                  label: l10n.formatQuantizationChecklist,
                  isValid: _cubit.stateValue.imported != null,
                ),
                const Gap(AppSpacing.small),
                _ChecklistRow(
                  label: l10n.memoryCapVerification,
                  isValid: _cubit.stateValue.imported != null,
                ),
                const Gap(AppSpacing.small),
                _ChecklistRow(
                  label: l10n.architectureCompatibility,
                  isValid: _cubit.stateValue.imported != null,
                ),
              ],
            ),
          ),
          const Gap(AppSpacing.large),
          FilledButtonComponent(
            expand: true,
            label: _isValidating
                ? l10n.validatingModel
                : l10n.validateImportModel,
            icon: KuymoIcons.aiImport,
            isEnabled: _selectedFileName != null && !_isValidating,
            isLoading: _isValidating,
            onPressed: _selectedFileName != null ? _validateAndImport : null,
          ),
        ],
      ),
    );
  }
}

final class _ChecklistRow extends StatelessWidget {
  const _ChecklistRow({required this.label, required this.isValid});

  final String label;
  final bool isValid;

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.colorScheme;
    return Row(
      children: [
        Icon(
          isValid ? KuymoIcons.compressionResult : LucideIcons.minus,
          size: 18,
          color: isValid ? colorScheme.primary : colorScheme.onSurfaceVariant,
        ),
        const Gap.horizontal(AppSpacing.small),
        Expanded(
          child: Text(
            label,
            style: context.textTheme.bodySmall?.copyWith(
              color: colorScheme.onSurface,
            ),
          ),
        ),
      ],
    );
  }
}
