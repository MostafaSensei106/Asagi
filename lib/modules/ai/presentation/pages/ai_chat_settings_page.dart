import 'dart:async';

import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/design_system/tokens/tokens.dart';
import '../../../../core/di/di.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/preferences/domain/repositories/settings_repository.dart';
import '../../../../core/preferences/presentation/settings_page_state.dart';
import '../../../../core/preferences/presentation/settings_view.dart';
import '../../../../core/services/haptics/haptics_service.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/ai_settings.dart';

final class AiChatSettingsPage extends StatefulWidget {
  const AiChatSettingsPage({super.key});

  @override
  State<AiChatSettingsPage> createState() => _AiChatSettingsPageState();
}

final class _AiChatSettingsPageState
    extends SettingsPageState<AiChatSettingsPage, AiChatSettings> {
  @override
  SettingsRepository<AiChatSettings> get repository =>
      getIt<SettingsRepository<AiChatSettings>>();

  bool get _streaming => settings.streaming;
  set _streaming(bool value) =>
      updateSettings((s) => s.copyWith(streaming: value));
  bool get _showThinking => settings.showThinking;
  set _showThinking(bool value) =>
      updateSettings((s) => s.copyWith(showThinking: value));
  double get _temperature => settings.temperature;
  set _temperature(double value) =>
      updateSettings((s) => s.copyWith(temperature: value));
  String get _maxTokens => settings.maxTokens.toString();
  set _maxTokens(String value) =>
      updateSettings((s) => s.copyWith(maxTokens: int.parse(value)));

  @override
  Widget buildSettings(BuildContext context) {
    final l10n = context.localeKeys;
    return Scaffold(
      appBar: SidePageAppBarComponent(
        title: l10n.conversationSettings,
        actions: const [SettingsResetAction<AiChatSettings>()],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.large,
          vertical: AppSpacing.small,
        ),
        children: [
          ExpressiveSectionHeader(title: l10n.interactionStyle),
          ListTileGroup(
            children: [
              ListTileIconComponent.top(
                leading: LucideIcons.textAlignCenter,
                title: l10n.streamTextOutput,
                onLongPress: () => context.showInfoBottomSheet(
                  title: l10n.streamTextOutput,
                  icon: LucideIcons.textAlignCenter,
                  illustrationKind: InfoIllustrationKind.conversation,
                  description: l10n.streamTextDetails,
                ),
                subtitle: l10n.streamTextDescription,
                onTap: () => setState(() {
                  _streaming = !_streaming;
                }),
                trailing: SwitchComponent(
                  value: _streaming,
                  onChanged: (val) {
                    unawaited(AppHaptics.button());
                    setState(() => _streaming = val);
                  },
                ),
              ),
              ListTileIconComponent.bottom(
                leading: LucideIcons.textAlignEnd,
                title: l10n.showReasoningThinking,
                onLongPress: () => context.showInfoBottomSheet(
                  title: l10n.showReasoningThinking,
                  icon: LucideIcons.textAlignEnd,
                  illustrationKind: InfoIllustrationKind.conversation,
                  description: l10n.showReasoningDetails,
                ),
                subtitle: l10n.showReasoningDescription,
                onTap: () => setState(() {
                  _showThinking = !_showThinking;
                }),
                trailing: SwitchComponent(
                  value: _showThinking,
                  onChanged: (val) {
                    unawaited(AppHaptics.button());
                    setState(() => _showThinking = val);
                  },
                ),
              ),
            ],
          ),
          const Gap(AppSpacing.large),
          ExpressiveSectionHeader(title: l10n.generationSampling),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ExpressiveSectionHeader(
                title: l10n.creativityTemperature(
                  _temperature.toStringAsFixed(1),
                ),
              ),
              Slider(
                value: _temperature,
                min: 0.1,
                divisions: 9,
                label: _temperature.toStringAsFixed(1),
                onChanged: (val) => {
                  unawaited(AppHaptics.button()),
                  setState(() => _temperature = val),
                },
              ),
              DropdownButtonFormField<String>(
                key: ValueKey(_maxTokens),
                initialValue: _maxTokens,
                elevation: 0,
                borderRadius: BorderRadius.circular(AppSpacing.large),
                decoration: InputDecoration(
                  labelText: l10n.maxGenerationTokens,
                  labelStyle: TextStyle(color: context.colorScheme.onSurface),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: AppSpacing.medium,
                    vertical: AppSpacing.small,
                  ),
                  filled: true,
                  fillColor: context.colorScheme.surfaceContainer,
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
                items: [
                  DropdownMenuItem(
                    value: '256',
                    child: Text(l10n.tokensCount(256)),
                  ),
                  DropdownMenuItem(
                    value: '512',
                    child: Text(l10n.tokensCount(512)),
                  ),
                  DropdownMenuItem(
                    value: '1024',
                    child: Text(l10n.tokensCount(1024)),
                  ),
                  DropdownMenuItem(
                    value: '2048',
                    child: Text(l10n.tokensCount(2048)),
                  ),
                ],
                onChanged: (val) {
                  unawaited(AppHaptics.button());
                  setState(() => _maxTokens = val!);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
