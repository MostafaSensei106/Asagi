import 'dart:async';

import 'package:flutter/services.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/design_system/tokens/tokens.dart';
import '../../../../core/constants/kuymo_icons.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/network/api_client_config.dart';
import '../../../../core/widgets/widgets.dart';

/// Share screen allowing users to invite friends, copy app link,
/// and share Kuymo recommendations.
final class ShareAppPage extends StatelessWidget {
  const ShareAppPage({super.key});

  static const String _shareUrl =
      '${ApiClientConfig.githubRepositoryUrl}/releases';

  void _copyLink(BuildContext context) {
    unawaited(Clipboard.setData(const ClipboardData(text: _shareUrl)));
    context.toast.showSuccess(context, context.localeKeys.appLinkCopied);
  }

  void _shareViaSheet(BuildContext context) {
    unawaited(
      Clipboard.setData(
        ClipboardData(text: context.localeKeys.kuymoShareInvitation(_shareUrl)),
      ),
    );
    context.toast.showSuccess(context, context.localeKeys.appInvitationCopied);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.localeKeys;
    final colorScheme = context.colorScheme;

    return Scaffold(
      appBar: SidePageAppBarComponent(title: l10n.shareKuymo),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.large,
            vertical: AppSpacing.medium,
          ),
          children: [
            CardComponent.filled(
              padding: const EdgeInsets.all(AppSpacing.xLarge),
              child: Column(
                children: [
                  ExpressiveIcon(
                    icon: KuymoIcons.shareApp,
                    shape: ExpressiveIconShape.heart,
                    size: 68,
                    backgroundColor: colorScheme.primaryContainer,
                    foregroundColor: colorScheme.onPrimaryContainer,
                  ),
                  const Gap(AppSpacing.large),
                  Text(
                    l10n.shareKuymo,
                    style: context.textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Gap(AppSpacing.small),
                  Text(
                    l10n.recommendKuymoToAFriend,
                    textAlign: TextAlign.center,
                    style: context.textTheme.bodyMedium?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
            const Gap(AppSpacing.xLarge),
            CardComponent.outlined(
              padding: const EdgeInsets.all(AppSpacing.large),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const BrandLogo(size: 32),
                      const Gap.horizontal(AppSpacing.medium),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              l10n.kuymo,
                              style: context.textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              l10n.onDeviceProcessingLabel,
                              style: context.textTheme.bodySmall?.copyWith(
                                color: colorScheme.primary,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Gap(AppSpacing.medium),
                  Text(
                    l10n.kuymoShareDescription,
                    style: context.textTheme.bodyMedium?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                      height: 1.45,
                    ),
                  ),
                  const Gap(AppSpacing.large),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppSpacing.medium,
                      vertical: AppSpacing.small,
                    ),
                    decoration: BoxDecoration(
                      color: colorScheme.surfaceContainerHighest.withValues(
                        alpha: 0.5,
                      ),
                      borderRadius: BorderRadius.circular(AppRadii.medium),
                      border: Border.all(color: colorScheme.outlineVariant),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            _shareUrl,
                            style: context.textTheme.bodyMedium?.copyWith(
                              color: colorScheme.onSurface,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        IconButton(
                          icon: const Icon(LucideIcons.copy, size: 20),
                          onPressed: () => _copyLink(context),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Gap(AppSpacing.xLarge),
            FilledButtonComponent.icon(
              expand: true,
              icon: KuymoIcons.shareApp,
              label: l10n.shareKuymo,
              onPressed: () => _shareViaSheet(context),
            ),
            const Gap(AppSpacing.medium),
            OutlinedButtonComponent.icon(
              expand: true,
              icon: LucideIcons.copy,
              label: l10n.copyAppLink,
              onPressed: () => _copyLink(context),
            ),
          ],
        ),
      ),
    );
  }
}
