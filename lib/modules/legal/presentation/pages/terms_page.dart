import 'dart:async';

import 'package:flutter/services.dart';
import 'package:kaisel/kaisel.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/design_system/tokens/tokens.dart';
import '../../../../core/constants/zumi_icons.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/widgets/widgets.dart';

/// Terms of Service explaining personal licensing, content ownership,
/// on-device operation, and store subscription policies.
final class TermsPage extends StatelessWidget {
  const TermsPage({super.key});

  static const String _termsContent = '''
1. Acceptance of Terms
By downloading, accessing, or using Zumi ("the Application"), you agree to be bound by these Terms of Service. If you disagree with any part of these terms, you must discontinue using the application.

2. Personal License
We grant you a personal, revocable, non-exclusive, non-transferable license to use Zumi strictly for your personal, non-commercial, or internal creative media compression workflows on compatible devices.

3. On-Device Execution & Content Ownership
Zumi executes compression pipelines exclusively on your device hardware using local encoders. You retain 100% of all intellectual property rights and copyrights in and to your video files and media. Zumi never uploads, hosts, replicates, or claims ownership over any videos you select or process. You are solely responsible for ensuring you have all requisite permissions and licenses for any media you compress.

4. In-App Subscriptions & Billing
Optional premium features (such as Zumi Pro) may be offered as recurring subscriptions or one-time unlock purchases. All billing, renewals, cancellations, and tax collections are processed exclusively through the official platform store (Google Play or Apple App Store). Subscriptions renew automatically unless cancelled at least 24 hours prior to the conclusion of the active billing cycle.

5. Disclaimer of Warranties
The Application is provided "as is" and "as available," without warranty of any kind, express or implied. While we employ rigorous testing and standard-compliant codecs, we do not guarantee that media compression will achieve specific file reduction percentages without visual changes for every source codec.
''';

  void _copyTerms(BuildContext context) {
    unawaited(Clipboard.setData(const ClipboardData(text: _termsContent)));
    context.toast.showSuccess(context, 'Terms copied to clipboard');
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.localeKeys;
    final colorScheme = context.colorScheme;

    final sections = [
      (
        title: '1. Acceptance & License',
        body: 'By using Zumi, you agree to these Terms. We grant you a personal, non-exclusive, non-transferable license to compress media locally on your devices.',
      ),
      (
        title: '2. 100% Content Ownership',
        body: 'You retain all copyrights and ownership over your videos. Zumi does not transmit, store, or claim any rights to your media files.',
      ),
      (
        title: '3. Local On-Device Processing',
        body: 'All compression pipelines run completely on your device hardware without external server dependencies or remote media processing.',
      ),
      (
        title: '4. Subscriptions & Billing',
        body: 'Purchases and subscriptions are managed securely via official Google Play and Apple App Store billing. Cancellations can be performed anytime in your store account.',
      ),
      (
        title: '5. Disclaimers & Fair Use',
        body: 'The software is provided "as is." You are responsible for ensuring you have proper rights to the video content you process.',
      ),
    ];

    return Scaffold(
      appBar: SidePageAppBarComponent(title: l10n.termsOfService),
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
                    icon: ZumiIcons.terms,
                    shape: ExpressiveIconShape.pill,
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
                          l10n.termsOfService,
                          style: context.textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Gap(AppSpacing.xSmall),
                        Text(
                          l10n.theTermsThatApplyToZumiAndItsPurchases,
                          style: context.textTheme.bodySmall?.copyWith(
                            color: colorScheme.onSurfaceVariant,
                          ),
                        ),
                        const Gap(AppSpacing.small),
                        Text(
                          'Version 1.2 • November 2026',
                          style: context.textTheme.labelSmall?.copyWith(
                            color: colorScheme.primary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Gap(AppSpacing.large),
            Row(
              children: [
                Expanded(
                  child: OutlinedButtonComponent.icon(
                    icon: ZumiIcons.repository,
                    label: 'Copy Terms',
                    onPressed: () => _copyTerms(context),
                  ),
                ),
                const Gap.horizontal(AppSpacing.medium),
                Expanded(
                  child: FilledTonalButtonComponent.icon(
                    icon: ZumiIcons.support,
                    label: l10n.support,
                    onPressed: () =>
                        unawaited(context.push(const SupportRoute())),
                  ),
                ),
              ],
            ),
            const Gap(AppSpacing.xLarge),
            for (final section in sections) ...[
              CardComponent.outlined(
                padding: const EdgeInsets.all(AppSpacing.large),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      section.title,
                      style: context.textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: colorScheme.onSurface,
                      ),
                    ),
                    const Gap(AppSpacing.small),
                    Text(
                      section.body,
                      style: context.textTheme.bodyMedium?.copyWith(
                        color: colorScheme.onSurfaceVariant,
                        height: 1.45,
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(AppSpacing.medium),
            ],
          ],
        ),
      ),
    );
  }
}
