import 'dart:async';

import 'package:kaisel/kaisel.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/constants/asagi_icons.dart';
import '../../../../core/constants/design_system/tokens/tokens.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/widgets/widgets.dart';

/// Frequently Asked Questions with search and categorized expanders.
final class FaqPage extends StatefulWidget {
  const FaqPage({super.key});

  @override
  State<FaqPage> createState() => _FaqPageState();
}

final class _FaqPageState extends State<FaqPage> {
  final TextEditingController _searchController = TextEditingController();
  String _selectedCategory = 'All';
  String _searchQuery = '';

  static const _categories = [
    'All',
    'Compression',
    'Quality & Formats',
    'Privacy',
    'Pro & Billing',
  ];

  static const _allFaqs = [
    (
      category: 'Compression',
      question:
          'How does Asagi compress videos without losing noticeable quality?',
      answer: 'Asagi utilizes advanced two-pass rate control, scene-aware keyframe placement, and modern codecs (HEVC & AV1). By analyzing temporal motion and removing imperceptible redundancy, Asagi achieves dramatic file size reductions while keeping visual clarity crisp.',
    ),
    (
      category: 'Privacy',
      question: 'Are my videos uploaded to external cloud servers?',
      answer: 'Never. All video compression, audio transcode, and preview generation happens 100% locally on your device hardware. Asagi does not own, run, or connect to any cloud processing servers.',
    ),
    (
      category: 'Quality & Formats',
      question: 'Which container formats and codecs are supported?',
      answer: 'Asagi supports MP4, MKV, MOV, and WebM containers. Video codecs include H.264 (AVC), H.265 (HEVC), AV1, and VP9. Audio is encoded in standard high-efficiency AAC stereo or Opus.',
    ),
    (
      category: 'Quality & Formats',
      question: 'Can I keep 60fps frame rate and HDR colors?',
      answer: 'Yes! When configuring compression in the setup screen, open Advanced Controls and toggle "Keep HDR when supported" and select original frame rate preservation.',
    ),
    (
      category: 'Compression',
      question: 'Why does compression take longer on some files?',
      answer: 'Duration depends on your video resolution (e.g. 4K takes significantly longer than 1080p), source bitrate, the target codec selected, and whether your device hardware encoder supports that codec natively.',
    ),
    (
      category: 'Pro & Billing',
      question: 'Can I cancel my Asagi Pro subscription anytime?',
      answer: 'Yes, you have complete control. You can cancel, pause, or modify your subscription at any time via your Google Play Store or Apple App Store account settings.',
    ),
    (
      category: 'Pro & Billing',
      question: 'How do I restore my purchase on a new device?',
      answer: 'Go to Settings > Plans & Purchases > Restore Purchases, and tap "Restore". As long as you are logged into the same store account, your purchase will automatically activate.',
    ),
  ];

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.localeKeys;
    final colorScheme = context.colorScheme;

    final filteredFaqs = _allFaqs.where((faq) {
      final matchesCategory =
          _selectedCategory == 'All' || faq.category == _selectedCategory;
      final query = _searchQuery.toLowerCase().trim();
      final matchesQuery =
          query.isEmpty ||
          faq.question.toLowerCase().contains(query) ||
          faq.answer.toLowerCase().contains(query);
      return matchesCategory && matchesQuery;
    }).toList();

    return Scaffold(
      appBar: SidePageAppBarComponent(title: l10n.faq),
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
                    icon: AsagiIcons.faq,
                    shape: ExpressiveIconShape.gem,
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
                          l10n.faq,
                          style: context.textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Gap(AppSpacing.xSmall),
                        Text(
                          l10n.answersToCommonQuestionsAboutCompressionAndBilling,
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
            SearchBarComponent(
              controller: _searchController,
              hintText: 'Search questions and answers…',
              onChanged: (val) => setState(() => _searchQuery = val),
            ),
            const Gap(AppSpacing.medium),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (final cat in _categories) ...[
                    ChipComponent(
                      label: cat,
                      selected: _selectedCategory == cat,
                      onPressed: () => setState(() => _selectedCategory = cat),
                    ),
                    const Gap.horizontal(AppSpacing.small),
                  ],
                ],
              ),
            ),
            const Gap(AppSpacing.large),
            if (filteredFaqs.isEmpty)
              CardComponent.outlined(
                padding: const EdgeInsets.all(AppSpacing.xxLarge),
                child: Column(
                  children: [
                    Icon(
                      AsagiIcons.issues,
                      size: 36,
                      color: colorScheme.onSurfaceVariant,
                    ),
                    const Gap(AppSpacing.medium),
                    Text(
                      'No matching answers found',
                      style: context.textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Gap(AppSpacing.small),
                    Text(
                      'Try using different search keywords or select "All" categories.',
                      textAlign: TextAlign.center,
                      style: context.textTheme.bodySmall?.copyWith(
                        color: colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              )
            else
              for (final faq in filteredFaqs) ...[
                CardComponent.outlined(
                  padding: const EdgeInsets.all(AppSpacing.medium),
                  child: Theme(
                    data: Theme.of(context)
                        .copyWith(dividerColor: Colors.transparent),
                    child: ExpansionTile(
                      tilePadding: EdgeInsets.zero,
                      childrenPadding: const EdgeInsets.only(
                        top: AppSpacing.small,
                        bottom: AppSpacing.xSmall,
                      ),
                      leading: ExpressiveIcon(
                        icon: AsagiIcons.faq,
                        shape: ExpressiveIconShape.sunny,
                        size: 32,
                        backgroundColor: colorScheme.surfaceContainerHighest,
                        foregroundColor: colorScheme.primary,
                      ),
                      title: Text(
                        faq.question,
                        style: context.textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      children: [
                        Text(
                          faq.answer,
                          style: context.textTheme.bodyMedium?.copyWith(
                            color: colorScheme.onSurfaceVariant,
                            height: 1.45,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Gap(AppSpacing.medium),
              ],
            const Gap(AppSpacing.large),
            CardComponent.filled(
              padding: const EdgeInsets.all(AppSpacing.large),
              child: Column(
                children: [
                  Text(
                    'Still have questions or need assistance?',
                    style: context.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Gap(AppSpacing.xSmall),
                  Text(
                    'Our support team is available to assist you with issues and advice.',
                    textAlign: TextAlign.center,
                    style: context.textTheme.bodySmall?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),
                  const Gap(AppSpacing.medium),
                  FilledButtonComponent.icon(
                    icon: AsagiIcons.support,
                    label: l10n.support,
                    onPressed: () =>
                        unawaited(context.push(const SupportRoute())),
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
