import 'dart:async';

import 'package:flutter/services.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/design_system/tokens/tokens.dart';
import '../../../../core/constants/zumi_icons.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/widgets.dart';

/// Interactive feedback form allowing users to report issues or suggest
/// feature enhancements with ratings and diagnostic attachments.
final class FeedbackPage extends StatefulWidget {
  const FeedbackPage({super.key});

  @override
  State<FeedbackPage> createState() => _FeedbackPageState();
}

final class _FeedbackPageState extends State<FeedbackPage> {
  final TextEditingController _subjectController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();

  String _category = 'Feature Request';
  int _rating = 5;
  bool _includeDiagnostics = true;
  bool _isSubmitting = false;

  static const _categories = [
    'Feature Request',
    'Bug Report',
    'Compression Quality',
    'Other',
  ];

  @override
  void dispose() {
    _subjectController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  Future<void> _submitFeedback() async {
    final message = _messageController.text.trim();
    if (message.isEmpty) {
      context.toast.showWarning(context, 'Please enter a description');
      return;
    }

    setState(() => _isSubmitting = true);
    unawaited(HapticFeedback.mediumImpact());
    await Future<void>.delayed(const Duration(milliseconds: 700));

    if (!mounted) return;
    setState(() {
      _isSubmitting = false;
      _subjectController.clear();
      _messageController.clear();
    });

    context.toast.showSuccess(
      context,
      'Thank you! Your feedback has been received.',
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.localeKeys;
    final colorScheme = context.colorScheme;

    return Scaffold(
      appBar: SidePageAppBarComponent(title: l10n.sendFeedback),
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
                    icon: ZumiIcons.feedback,
                    shape: ExpressiveIconShape.softBurst,
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
                          l10n.sendFeedback,
                          style: context.textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Gap(AppSpacing.xSmall),
                        Text(
                          l10n.reportAProblemOrSuggestAnImprovement,
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
            const Gap(AppSpacing.large),
            const ExpressiveSectionHeader(title: 'Feedback Type'),
            const Gap(AppSpacing.small),
            Wrap(
              spacing: AppSpacing.small,
              runSpacing: AppSpacing.small,
              children: [
                for (final cat in _categories)
                  ChipComponent(
                    label: cat,
                    selected: _category == cat,
                    onPressed: () {
                      unawaited(HapticFeedback.selectionClick());
                      setState(() => _category = cat);
                    },
                  ),
              ],
            ),
            const Gap(AppSpacing.large),
            const ExpressiveSectionHeader(title: 'How is your experience?'),
            const Gap(AppSpacing.small),
            CardComponent.outlined(
              padding: const EdgeInsets.all(AppSpacing.medium),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(5, (index) {
                  final starIndex = index + 1;
                  return IconButton(
                    icon: Icon(
                      starIndex <= _rating
                          ? ZumiIcons.rateApp
                          : LucideIcons.star,
                      color: starIndex <= _rating
                          ? Colors.amber
                          : colorScheme.outlineVariant,
                      size: 28,
                    ),
                    onPressed: () {
                      unawaited(HapticFeedback.selectionClick());
                      setState(() => _rating = starIndex);
                    },
                  );
                }),
              ),
            ),
            const Gap(AppSpacing.large),
            const ExpressiveSectionHeader(title: 'Details'),
            const Gap(AppSpacing.small),
            TextFormFieldComponent(
              controller: _subjectController,
              label: 'Subject',
              hintText: 'Brief summary of your feedback',
              prefixIcon: LucideIcons.heading,
            ),
            const Gap(AppSpacing.medium),
            TextFormFieldComponent(
              controller: _messageController,
              label: 'Description',
              hintText:
                  'Describe your issue, idea, or compression observation…',
              maxLines: 4,
            ),
            const Gap(AppSpacing.medium),
            ListTileGroup(
              children: [
                ListTileComponent.single(
                  title: const Text('Include Device & Codec Specs'),
                  subtitle: const Text(
                    'Attaches non-identifying platform info (OS, Rust build) to help solve bugs',
                  ),
                  showChevron: false,
                  trailing: SwitchComponent(
                    label: 'Include Diagnostics',
                    value: _includeDiagnostics,
                    onChanged: (val) {
                      unawaited(HapticFeedback.selectionClick());
                      setState(() => _includeDiagnostics = val);
                    },
                  ),
                ),
              ],
            ),
            const Gap(AppSpacing.large),
            FilledButtonComponent(
              expand: true,
              label: _isSubmitting ? 'Submitting…' : 'Submit Feedback',
              icon: ZumiIcons.feedback,
              isLoading: _isSubmitting,
              onPressed: _isSubmitting ? null : _submitFeedback,
            ),
          ],
        ),
      ),
    );
  }
}
