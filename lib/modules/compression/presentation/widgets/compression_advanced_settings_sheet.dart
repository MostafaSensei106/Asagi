import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/compression/domain/models/compression_preferences.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/design_system/tokens/tokens.dart';
import '../../../../core/widgets/widgets.dart';
import 'compression_advanced_controls.dart';

/// Edits a local draft. Only Apply returns preferences to the caller.
final class CompressionAdvancedSettingsSheet extends HookWidget {
  const CompressionAdvancedSettingsSheet({
    required this.preferences,
    required this.sourceShortEdge,
    super.key,
  });
  final CompressionPreferences preferences;
  final int sourceShortEdge;

  @override
  Widget build(BuildContext context) {
    final form = useMemoized(() => GlobalKey<FormState>());
    final draft = useState(preferences);
    void apply() {
      if (!form.currentState!.validate()) return;
      draft.value.validate();
      Navigator.of(context).pop(draft.value);
    }

    final l10n = context.localeKeys;
    return BottomSheetComponent(
      title: l10n.advancedControls,
      onClose: () => Navigator.of(context).pop(),
      footer: Row(
        children: [
          Expanded(
            child: TextButtonComponent(
              label: l10n.cancel,
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
          const Gap.horizontal(AppSpacing.medium),
          Expanded(
            child: FilledButtonComponent(
              key: const ValueKey('apply-advanced-settings'),
              label: l10n.applyChanges,
              onPressed: apply,
            ),
          ),
        ],
      ),
      child: Form(
        key: form,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              l10n.advancedSettingsDraftHint,
              style: context.textTheme.bodyMedium?.copyWith(
                color: context.colorScheme.onSurfaceVariant,
              ),
            ),
            const Gap(AppSpacing.xLarge),
            CompressionAdvancedControls(
              preferences: draft.value,
              sourceShortEdge: sourceShortEdge,
              collapsible: false,
              liveEditing: true,
              onChanged: (value) => draft.value = value,
            ),
          ],
        ),
      ),
    );
  }
}
