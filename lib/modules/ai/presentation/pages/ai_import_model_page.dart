import 'dart:async';

import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/asagi_icons.dart';
import '../../../../core/constants/design_system/tokens/tokens.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/services/haptics/haptics_service.dart';
import '../../../../core/widgets/widgets.dart';

final class AiImportModelPage extends StatefulWidget {
  const AiImportModelPage({super.key});

  @override
  State<AiImportModelPage> createState() => _AiImportModelPageState();
}

final class _AiImportModelPageState extends State<AiImportModelPage> {
  String? _selectedFileName;
  bool _isValidating = false;

  void _pickModelFile() {
    unawaited(AppHaptics.button());
    setState(() {
      _selectedFileName = 'custom-compression-v1.gguf (214 MB)';
    });
    context.toast.showInfo(context, context.localeKeys.modelFileSelected);
  }

  Future<void> _validateAndImport() async {
    setState(() => _isValidating = true);
    unawaited(AppHaptics.button());
    await Future<void>.delayed(const Duration(milliseconds: 750));
    if (!mounted) return;
    setState(() => _isValidating = false);
    context.toast.showSuccess(
      context,
      context.localeKeys.modelImportedVerified,
    );
  }

  @override
  Widget build(BuildContext context) {
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
                  onPressed: _pickModelFile,
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
                  isValid: _selectedFileName != null,
                ),
                const Gap(AppSpacing.small),
                _ChecklistRow(
                  label: l10n.memoryCapVerification,
                  isValid: _selectedFileName != null,
                ),
                const Gap(AppSpacing.small),
                _ChecklistRow(
                  label: l10n.architectureCompatibility,
                  isValid: _selectedFileName != null,
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
            icon: AsagiIcons.aiImport,
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
          isValid ? AsagiIcons.compressionResult : LucideIcons.minus,
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
