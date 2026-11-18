import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/compression/domain/models/share_preset.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/design_system/tokens/tokens.dart';
import '../../../../l10n/app_localizations.dart';

/// Preset presentation data holding the icon, brand name, and size cap.
///
/// User-facing tuning copy is resolved through [AppLocalizations] rather than
/// stored here so the catalog can stay `const` while following the locale.
class PresetDescriptor {
  const PresetDescriptor({
    required this.id,
    required this.name,
    required this.sizeBadge,
    required this.icon,
  });

  final SharePresetId id;
  final String name;
  final String sizeBadge;
  final IconData icon;

  /// Short badge summarising how the engine tunes this preset.
  String algorithmBadge(AppLocalizations l10n) => switch (id) {
    SharePresetId.whatsapp => l10n.whatsappAlgorithmBadge,
    SharePresetId.whatsappHd => l10n.whatsappHdAlgorithmBadge,
    SharePresetId.instagramReels => l10n.instagramReelsAlgorithmBadge,
    SharePresetId.tikTok => l10n.tikTokAlgorithmBadge,
    SharePresetId.discord => l10n.discordAlgorithmBadge,
    SharePresetId.x => l10n.xAlgorithmBadge,
    SharePresetId.facebook => l10n.facebookAlgorithmBadge,
    SharePresetId.youTubeShorts => l10n.youTubeShortsAlgorithmBadge,
    SharePresetId.email => l10n.emailAlgorithmBadge,
  };

  /// Plain-language explanation of why the preset is tuned this way.
  String description(AppLocalizations l10n) => switch (id) {
    SharePresetId.whatsapp => l10n.whatsappPresetDescription,
    SharePresetId.whatsappHd => l10n.whatsappHdPresetDescription,
    SharePresetId.instagramReels => l10n.instagramReelsPresetDescription,
    SharePresetId.tikTok => l10n.tikTokPresetDescription,
    SharePresetId.discord => l10n.discordPresetDescription,
    SharePresetId.x => l10n.xPresetDescription,
    SharePresetId.facebook => l10n.facebookPresetDescription,
    SharePresetId.youTubeShorts => l10n.youTubeShortsPresetDescription,
    SharePresetId.email => l10n.emailPresetDescription,
  };

  static const List<PresetDescriptor> catalog = [
    PresetDescriptor(
      id: SharePresetId.whatsapp,
      name: 'WhatsApp',
      sizeBadge: '16 MB',
      icon: LucideIcons.messageCircle,
    ),
    PresetDescriptor(
      id: SharePresetId.whatsappHd,
      name: 'WhatsApp HD',
      sizeBadge: '64 MB',
      icon: LucideIcons.sparkles,
    ),
    PresetDescriptor(
      id: SharePresetId.instagramReels,
      name: 'Instagram Reels',
      sizeBadge: '30 MB',
      icon: LucideIcons.camera,
    ),
    PresetDescriptor(
      id: SharePresetId.tikTok,
      name: 'TikTok',
      sizeBadge: '50 MB',
      icon: LucideIcons.film,
    ),
    PresetDescriptor(
      id: SharePresetId.discord,
      name: 'Discord',
      sizeBadge: '10 MB',
      icon: LucideIcons.gamepad2,
    ),
    PresetDescriptor(
      id: SharePresetId.x,
      name: 'X (Twitter)',
      sizeBadge: '512 MB',
      icon: LucideIcons.send,
    ),
    PresetDescriptor(
      id: SharePresetId.facebook,
      name: 'Facebook',
      sizeBadge: '50 MB',
      icon: LucideIcons.globe,
    ),
    PresetDescriptor(
      id: SharePresetId.youTubeShorts,
      name: 'YouTube Shorts',
      sizeBadge: '100 MB',
      icon: LucideIcons.play,
    ),
    PresetDescriptor(
      id: SharePresetId.email,
      name: 'Email (Gmail/Outlook)',
      sizeBadge: '25 MB',
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
    final l10n = context.localeKeys;
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
              title: l10n.customSize,
              subtitle: l10n.anySize,
              badge: l10n.manualControl,
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
            badge: descriptor.algorithmBadge(l10n),
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
