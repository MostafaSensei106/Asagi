import 'dart:async';

import 'package:flutter/services.dart';
import 'package:kaisel/kaisel.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/design_system/tokens/tokens.dart';
import '../../../../core/constants/kuymo_icons.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/network/api_client_config.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/widgets/widgets.dart';

/// Support center providing direct contact channels, FAQ links,
/// and diagnostic system information.
final class SupportPage extends StatelessWidget {
  const SupportPage({super.key});

  static const String _supportUrl =
      '${ApiClientConfig.githubRepositoryUrl}/issues';

  void _copySupportLink(BuildContext context) {
    unawaited(Clipboard.setData(const ClipboardData(text: _supportUrl)));
    context.toast.showSuccess(context, context.localeKeys.appLinkCopied);
  }

  void _copyDiagnostics(BuildContext context) {
    const specs = '''
Kuymo Diagnostics:
- App Version: 1.0.0 (Build 1)
- Engine: Kotlin Planner + Android Media3
- Codecs: H.264 (HW), HEVC (HW), AV1 (SW/HW)
- Storage Mode: Local Sandboxed Storage
- OS Platform: Linux / Android / iOS
''';
    unawaited(Clipboard.setData(const ClipboardData(text: specs)));
    context.toast.showSuccess(context, 'Diagnostic info copied to clipboard');
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.localeKeys;
    final colorScheme = context.colorScheme;

    return Scaffold(
      appBar: SidePageAppBarComponent(title: l10n.support),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.large,
            vertical: AppSpacing.medium,
          ),
          children: [
            CardComponent.filled(
              padding: const EdgeInsets.all(AppSpacing.large),
              child: Row(
                children: [
                  ExpressiveIcon(
                    icon: KuymoIcons.support,
                    shape: ExpressiveIconShape.sunny,
                    size: 52,
                    backgroundColor: colorScheme.primaryContainer,
                    foregroundColor: colorScheme.onPrimaryContainer,
                  ),
                  const Gap.horizontal(AppSpacing.large),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          l10n.support,
                          style: context.textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Gap(AppSpacing.xSmall),
                        Text(
                          l10n.appSupportDescription,
                          style: context.textTheme.bodySmall?.copyWith(
                            color: colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Gap(AppSpacing.xLarge),
            const ExpressiveSectionHeader(title: 'Contact Channels'),
            const Gap(AppSpacing.small),
            ListTileGroup(
              children: [
                ListTileIconComponent.top(
                  shape: ExpressiveIconShape.gem,
                  title: l10n.projectSupportLink,
                  subtitle: l10n.reportAProblemOrSuggestAnImprovement,
                  leading: KuymoIcons.support,
                  onTap: () => _copySupportLink(context),
                ),
                ListTileIconComponent.middle(
                  shape: ExpressiveIconShape.softBurst,
                  title: l10n.sendFeedback,
                  subtitle: l10n.reportAProblemOrSuggestAnImprovement,
                  leading: KuymoIcons.feedback,
                  onTap: () => unawaited(context.push(const FeedbackRoute())),
                ),
                ListTileIconComponent.bottom(
                  shape: ExpressiveIconShape.fan,
                  title: l10n.faq,
                  subtitle: l10n.compressionHelpDescription,
                  leading: KuymoIcons.faq,
                  onTap: () => unawaited(context.push(const FaqRoute())),
                ),
              ],
            ),
            const Gap(AppSpacing.xLarge),
            const ExpressiveSectionHeader(title: 'System Diagnostics'),
            const Gap(AppSpacing.small),
            CardComponent.outlined(
              padding: const EdgeInsets.all(AppSpacing.large),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Device Environment',
                        style: context.textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const ChipComponent(label: 'Ready', showBorder: false),
                    ],
                  ),
                  const Gap(AppSpacing.medium),
                  const _DiagRow(
                    label: 'Engine',
                    value: 'Kotlin Compression Planner',
                  ),
                  const _DiagRow(label: 'App Build', value: '1.0.0 (1)'),
                  const _DiagRow(
                    label: 'Codecs',
                    value: 'H.264 (HW) • HEVC (HW) • AV1',
                  ),
                  const _DiagRow(label: 'Privacy State', value: '100% Offline'),
                  const Gap(AppSpacing.medium),
                  FilledTonalButtonComponent.icon(
                    icon: KuymoIcons.build,
                    label: 'Copy Diagnostics for Support',
                    expand: true,
                    onPressed: () => _copyDiagnostics(context),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

final class _DiagRow extends StatelessWidget {
  const _DiagRow({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppSpacing.xSmall),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: context.textTheme.bodySmall?.copyWith(
              color: colorScheme.onSurfaceVariant,
            ),
          ),
          Text(
            value,
            style: context.textTheme.bodySmall?.copyWith(
              fontWeight: FontWeight.w600,
              color: colorScheme.onSurface,
            ),
          ),
        ],
      ),
    );
  }
}
