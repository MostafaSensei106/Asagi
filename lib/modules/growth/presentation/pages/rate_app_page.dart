import 'dart:async';

import 'package:kaisel/kaisel.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/asagi_icons.dart';
import '../../../../core/constants/design_system/tokens/tokens.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/services/haptics/haptics_service.dart';
import '../../../../core/widgets/widgets.dart';

/// Rating and review screen prompting users to review Asagi on the store
/// or provide direct developer feedback.
final class RateAppPage extends StatefulWidget {
  const RateAppPage({super.key});

  @override
  State<RateAppPage> createState() => _RateAppPageState();
}

final class _RateAppPageState extends State<RateAppPage> {
  int _rating = 5;

  void _onRateTap(int stars) {
    unawaited(AppHaptics.button());
    setState(() => _rating = stars);
  }

  void _submitRating() {
    unawaited(AppHaptics.button());
    if (_rating >= 4) {
      context.toast.showSuccess(
        context,
        'Thank you! Opening the app store review page…',
      );
    } else {
      unawaited(context.push(const FeedbackRoute()));
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.localeKeys;
    final colorScheme = context.colorScheme;

    final isHighRating = _rating >= 4;

    return Scaffold(
      appBar: SidePageAppBarComponent(title: l10n.rateAsagi),
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
                    icon: AsagiIcons.rateApp,
                    shape: ExpressiveIconShape.sunny,
                    size: 72,
                    backgroundColor: Colors.amber.withValues(alpha: 0.2),
                    foregroundColor: Colors.amber.shade700,
                  ),
                  const Gap(AppSpacing.large),
                  Text(
                    'Enjoying Asagi?',
                    textAlign: TextAlign.center,
                    style: context.textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Gap(AppSpacing.small),
                  Text(
                    l10n.tellOthersHowAsagiWorkedForYouOnTheStore,
                    textAlign: TextAlign.center,
                    style: context.textTheme.bodyMedium?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),
                  const Gap(AppSpacing.xLarge),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(5, (index) {
                      final star = index + 1;
                      return IconButton(
                        iconSize: 36,
                        icon: Icon(
                          star <= _rating
                              ? AsagiIcons.rateApp
                              : LucideIcons.star,
                          color: star <= _rating
                              ? Colors.amber.shade600
                              : colorScheme.outlineVariant,
                        ),
                        onPressed: () => _onRateTap(star),
                      );
                    }),
                  ),
                  const Gap(AppSpacing.medium),
                  Text(
                    isHighRating
                        ? 'Great! Your review helps us continue building on-device privacy tools.'
                        : 'We want to make it better! Please let us know how we can improve.',
                    textAlign: TextAlign.center,
                    style: context.textTheme.bodySmall?.copyWith(
                      color: isHighRating
                          ? colorScheme.primary
                          : colorScheme.error,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            const Gap(AppSpacing.xLarge),
            FilledButtonComponent.icon(
              expand: true,
              icon: isHighRating ? AsagiIcons.rateApp : AsagiIcons.feedback,
              label: isHighRating
                  ? 'Rate on Google Play / App Store'
                  : 'Send Feedback to Developers',
              onPressed: _submitRating,
            ),
            const Gap(AppSpacing.medium),
            Center(
              child: TextButtonComponent(
                label: 'Maybe Later',
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
            const Gap(AppSpacing.xLarge),
            const ExpressiveSectionHeader(
              title: 'What Creators Love About Asagi',
            ),
            const Gap(AppSpacing.small),
            CardComponent.outlined(
              padding: const EdgeInsets.all(AppSpacing.large),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      ExpressiveIcon(
                        icon: AsagiIcons.compressionResult,
                        size: 32,
                        backgroundColor: colorScheme.primaryContainer,
                        foregroundColor: colorScheme.onPrimaryContainer,
                      ),
                      const Gap.horizontal(AppSpacing.medium),
                      Expanded(
                        child: Text(
                          '"Preserves 4K visual detail flawlessly while shrinking files by 80%!"',
                          style: context.textTheme.bodyMedium?.copyWith(
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Gap(AppSpacing.medium),
                  Row(
                    children: [
                      ExpressiveIcon(
                        icon: AsagiIcons.privacy,
                        shape: ExpressiveIconShape.heart,
                        size: 32,
                        backgroundColor: colorScheme.secondaryContainer,
                        foregroundColor: colorScheme.onSecondaryContainer,
                      ),
                      const Gap.horizontal(AppSpacing.medium),
                      Expanded(
                        child: Text(
                          '"100% offline. I can compress confidential client videos without fear of cloud leaks."',
                          style: context.textTheme.bodyMedium?.copyWith(
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
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
