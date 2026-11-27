import 'dart:async';

import 'package:bloc_signals/bloc_signals.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/design_system/tokens/tokens.dart';
import '../../../../core/constants/kuymo_icons.dart';
import '../../../../core/di/di.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/preferences/application/telemetry_consent_coordinator.dart';
import '../../../../core/preferences/domain/entities/privacy_settings.dart';
import '../../../../core/preferences/domain/repositories/settings_repository.dart';
import '../../../../core/preferences/presentation/settings_page_state.dart';
import '../../../../core/preferences/presentation/settings_view.dart';
import '../../../../core/services/haptics/haptics_service.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/repositories/scratchpad_repository.dart';
import '../cubit/scratchpad_cubit.dart';
import '../widgets/privacy_storage_section.dart';
import '../widgets/privacy_telemetry_section.dart';

/// Privacy settings and local data governance.
final class PrivacySettingsPage extends StatefulWidget {
  const PrivacySettingsPage({super.key});

  @override
  State<PrivacySettingsPage> createState() => _PrivacySettingsPageState();
}

final class _PrivacySettingsPageState
    extends SettingsPageState<PrivacySettingsPage, PrivacySettings> {
  @override
  SettingsRepository<PrivacySettings> get repository =>
      getIt<SettingsRepository<PrivacySettings>>();
  late final ScratchpadCubit _scratchpad;
  late final TelemetryConsentCoordinator _consent;
  StreamSubscription<bool>? _consentChanges;
  StreamSubscription<ScratchpadState>? _scratchpadChanges;
  @override
  void initState() {
    super.initState();
    _consent = getIt<TelemetryConsentCoordinator>();
    _consentChanges = _consent.changes.listen((applied) {
      if (mounted) {
        setState(() {});
        if (!applied) {
          context.toast.showError(
            context,
            context.localeKeys.settingsApplyFailed,
          );
        }
      }
    });
    _scratchpad = ScratchpadCubit(getIt<ScratchpadRepository>());
    _scratchpadChanges = _scratchpad.stream.listen((_) {
      if (mounted) setState(() {});
    });
  }

  @override
  void dispose() {
    unawaited(_consentChanges?.cancel());
    unawaited(_scratchpadChanges?.cancel());
    unawaited(_scratchpad.close());
    super.dispose();
  }

  bool get _crashReports => settings.crashReports;
  set _crashReports(bool value) =>
      updateSettings((s) => s.copyWith(crashReports: value));
  bool get _performanceTelemetry => settings.performanceTelemetry;
  set _performanceTelemetry(bool value) =>
      updateSettings((s) => s.copyWith(performanceTelemetry: value));
  bool get _preserveMetadata => settings.preserveMetadata;
  set _preserveMetadata(bool value) =>
      updateSettings((s) => s.copyWith(preserveMetadata: value));
  bool get _autoWipeTempCache => settings.autoWipeTempCache;
  set _autoWipeTempCache(bool value) =>
      updateSettings((s) => s.copyWith(autoWipeTempCache: value));
  bool get _isClearingCache => _scratchpad.stateValue.cleaning;

  void _onToggle(String name, bool value, VoidCallback apply) {
    unawaited(AppHaptics.button());
    setState(apply);
  }

  Future<void> _clearCache() async {
    await _scratchpad.clear();
    if (!mounted) return;
    if (_scratchpad.stateValue.failed) {
      context.toast.showError(context, context.localeKeys.settingsApplyFailed);
    } else {
      context.toast.showSuccess(context, context.localeKeys.scratchpadCleared);
    }
  }

  @override
  Widget buildSettings(BuildContext context) {
    final l10n = context.localeKeys;

    return Scaffold(
      appBar: SidePageAppBarComponent(
        title: l10n.privacy,
        actions: [
          const SettingsResetAction<PrivacySettings>(),
          if (_consent.applied == false)
            IconButtonComponent(
              icon: KuymoIcons.settingsRetry,
              tooltip: l10n.retry,
              onPressed: () => unawaited(_consent.retry()),
            ),
        ],
      ),
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
            saveChatHistory: settings.saveChatHistory,
            onSaveChatHistoryChanged: (value) =>
                updateSettings((s) => s.copyWith(saveChatHistory: value)),
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
