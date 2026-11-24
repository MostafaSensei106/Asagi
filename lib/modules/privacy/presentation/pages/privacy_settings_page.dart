import 'dart:async';

import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/design_system/tokens/tokens.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/services/haptics/haptics_service.dart';
import '../../../../core/widgets/widgets.dart';
import '../widgets/privacy_storage_section.dart';
import '../widgets/privacy_telemetry_section.dart';

/// Privacy settings and local data governance.
final class PrivacySettingsPage extends StatefulWidget {
  const PrivacySettingsPage({super.key});

  @override
  State<PrivacySettingsPage> createState() => _PrivacySettingsPageState();
}

final class _PrivacySettingsPageState extends State<PrivacySettingsPage> {
  bool _crashReports = true;
  bool _performanceTelemetry = false;
  bool _preserveMetadata = true;
  bool _autoWipeTempCache = true;
  bool _isClearingCache = false;

  void _onToggle(String name, bool value, VoidCallback apply) {
    unawaited(AppHaptics.button());
    setState(apply);
    context.toast.showInfo(
      context,
      '$name ${value ? context.localeKeys.enabled : context.localeKeys.disabled}',
    );
  }

  Future<void> _clearCache() async {
    setState(() => _isClearingCache = true);
    await Future<void>.delayed(const Duration(milliseconds: 600));
    if (!mounted) return;
    setState(() => _isClearingCache = false);
    context.toast.showSuccess(context, context.localeKeys.scratchpadCleared);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.localeKeys;

    return Scaffold(
      appBar: SidePageAppBarComponent(title: l10n.privacy),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.large,
          vertical: AppSpacing.small,
        ),
        children: [
          PrivacyTelemetrySection(
            crashReports: _crashReports,
            performanceTelemetry: _performanceTelemetry,
            onCrashReportsChanged: (value) => _onToggle(
              l10n.crashReportsLabel,
              value,
              () => _crashReports = value,
            ),
            onPerformanceTelemetryChanged: (value) => _onToggle(
              l10n.telemetryLabel,
              value,
              () => _performanceTelemetry = value,
            ),
          ),
          const Gap(AppSpacing.large),
          PrivacyStorageSection(
            preserveMetadata: _preserveMetadata,
            autoWipeTempCache: _autoWipeTempCache,
            isClearingCache: _isClearingCache,
            onPreserveMetadataChanged: (value) => _onToggle(
              l10n.metadataPreservationLabel,
              value,
              () => _preserveMetadata = value,
            ),
            onAutoWipeChanged: (value) => _onToggle(
              l10n.autoWipeLabel,
              value,
              () => _autoWipeTempCache = value,
            ),
            onClearCache: _clearCache,
          ),
        ],
      ),
    );
  }
}
