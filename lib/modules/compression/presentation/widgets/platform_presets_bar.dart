import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/compression/domain/models/share_preset.dart';
import '../../../../core/widgets/design_system/tokens/tokens.dart';

/// Preset presentation data holding icons, localized hints, and algorithmic notes.
class PresetDescriptor {
  const PresetDescriptor({
    required this.id,
    required this.name,
    required this.sizeBadge,
    required this.algorithmBadge,
    required this.description,
    required this.icon,
  });

  final SharePresetId id;
  final String name;
  final String sizeBadge;
  final String algorithmBadge;
  final String description;
  final IconData icon;

  static const List<PresetDescriptor> catalog = [
    PresetDescriptor(
      id: SharePresetId.whatsapp,
      name: 'WhatsApp',
      sizeBadge: '16 MB',
      algorithmBadge: 'سقف 16MB · 720p',
      description: 'مضبوط على حدود واتساب الصارمة لتفادي فشل الإرسال.',
      icon: LucideIcons.messageCircle,
    ),
    PresetDescriptor(
      id: SharePresetId.whatsappHd,
      name: 'WhatsApp HD',
      sizeBadge: '64 MB',
      algorithmBadge: '1080p HD',
      description: 'أقصى وضوح يسمح به واتساب في وضع الوسائط عالية الدقة.',
      icon: LucideIcons.sparkles,
    ),
    PresetDescriptor(
      id: SharePresetId.instagramReels,
      name: 'Instagram Reels',
      sizeBadge: '30 MB',
      algorithmBadge: 'سقف 5 Mbps · 1080p',
      description:
          'مقيد بسقف 5 Mbps لحماية الفيديو من ضغط خوارزمية إنستجرام القاسي.',
      icon: LucideIcons.camera,
    ),
    PresetDescriptor(
      id: SharePresetId.tikTok,
      name: 'TikTok',
      sizeBadge: '50 MB',
      algorithmBadge: '60fps · سقف 6 Mbps',
      description: 'توازن مثالي بين جودة الحركة وسرعة المعالجة على تيك توك.',
      icon: LucideIcons.film,
    ),
    PresetDescriptor(
      id: SharePresetId.discord,
      name: 'Discord',
      sizeBadge: '10 MB',
      algorithmBadge: 'سقف 10MB',
      description:
          'لتفادي رسالة Your files are too powerful وضمان الرفع الفوري.',
      icon: LucideIcons.gamepad2,
    ),
    PresetDescriptor(
      id: SharePresetId.x,
      name: 'X (Twitter)',
      sizeBadge: '512 MB',
      algorithmBadge: 'Faststart إجباري',
      description: 'ترتيب moov في أول الملف لضمان التشغيل الفوري في الـ Feed.',
      icon: LucideIcons.send,
    ),
    PresetDescriptor(
      id: SharePresetId.facebook,
      name: 'Facebook',
      sizeBadge: '50 MB',
      algorithmBadge: 'VBR محكوم · 1080p',
      description: 'معدل بت محكوم لحماية حدة الصورة في الـ Feed و Reels.',
      icon: LucideIcons.globe,
    ),
    PresetDescriptor(
      id: SharePresetId.youTubeShorts,
      name: 'YouTube Shorts',
      sizeBadge: '100 MB',
      algorithmBadge: 'High Bitrate · 1080p',
      description: 'تجهيز سريع للرفع مع الاحتفاظ بأعلى تفاصيل وجودة ممكنة.',
      icon: LucideIcons.play,
    ),
    PresetDescriptor(
      id: SharePresetId.email,
      name: 'Email (Gmail/Outlook)',
      sizeBadge: '25 MB',
      algorithmBadge: 'سقف 25MB حقيقي',
      description: 'حل جذري لمشكلة تجاوز سقف مرفقات البريد الإلكتروني.',
      icon: LucideIcons.mail,
    ),
  ];

  static PresetDescriptor of(SharePresetId id) =>
      catalog.firstWhere((d) => d.id == id, orElse: () => catalog.first);
}

/// Horizontal scrolling bar for choosing social media presets or custom mode.
class PlatformPresetsBar extends StatelessWidget {
  const PlatformPresetsBar({
    required this.selectedPresetId,
    required this.onPresetSelected,
    super.key,
  });

  final SharePresetId? selectedPresetId;
  final ValueChanged<SharePresetId?> onPresetSelected;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    final isCustom = selectedPresetId == null;

    return SizedBox(
      height: 104,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        clipBehavior: Clip.none,
        itemCount: PresetDescriptor.catalog.length + 1,
        separatorBuilder: (_, _) => const SizedBox(width: AppSpacing.small),
        itemBuilder: (context, index) {
          if (index == PresetDescriptor.catalog.length) {
            // Custom card
            return _PresetCard(
              title: 'حجم مخصص',
              subtitle: 'Custom Size',
              badge: 'تحكم يدوي',
              icon: LucideIcons.slidersHorizontal,
              isSelected: isCustom,
              onTap: () => onPresetSelected(null),
              scheme: scheme,
            );
          }

          final descriptor = PresetDescriptor.catalog[index];
          final isSelected = selectedPresetId == descriptor.id;

          return _PresetCard(
            title: descriptor.name,
            subtitle: descriptor.sizeBadge,
            badge: descriptor.algorithmBadge,
            icon: descriptor.icon,
            isSelected: isSelected,
            onTap: () => onPresetSelected(descriptor.id),
            scheme: scheme,
          );
        },
      ),
    );
  }
}

class _PresetCard extends StatelessWidget {
  const _PresetCard({
    required this.title,
    required this.subtitle,
    required this.badge,
    required this.icon,
    required this.isSelected,
    required this.onTap,
    required this.scheme,
  });

  final String title;
  final String subtitle;
  final String badge;
  final IconData icon;
  final bool isSelected;
  final VoidCallback onTap;
  final ColorScheme scheme;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(AppRadii.large),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: 156,
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.medium,
          vertical: AppSpacing.small,
        ),
        decoration: BoxDecoration(
          color: isSelected
              ? scheme.primaryContainer
              : scheme.surfaceContainerHighest.withValues(alpha: 0.5),
          borderRadius: BorderRadius.circular(AppRadii.large),
          border: Border.all(
            color: isSelected ? scheme.primary : scheme.outlineVariant,
            width: isSelected ? 2 : 1,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  icon,
                  size: 18,
                  color: isSelected ? scheme.primary : scheme.onSurfaceVariant,
                ),
                const SizedBox(width: 6),
                Expanded(
                  child: Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontWeight: isSelected
                          ? FontWeight.bold
                          : FontWeight.w600,
                      fontSize: 13,
                      color: isSelected
                          ? scheme.onPrimaryContainer
                          : scheme.onSurface,
                    ),
                  ),
                ),
              ],
            ),
            Text(
              subtitle,
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w500,
                color: isSelected ? scheme.primary : scheme.onSurfaceVariant,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
              decoration: BoxDecoration(
                color: isSelected
                    ? scheme.primary.withValues(alpha: 0.15)
                    : scheme.surfaceContainer,
                borderRadius: BorderRadius.circular(AppRadii.small),
              ),
              child: Text(
                badge,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                  color: isSelected ? scheme.primary : scheme.onSurfaceVariant,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
