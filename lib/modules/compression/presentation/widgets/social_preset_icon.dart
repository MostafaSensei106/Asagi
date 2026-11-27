import 'package:flutter_svg/flutter_svg.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../core/compression/domain/models/share_preset.dart';

/// Offline SVG brand marks downloaded from Bootstrap Icons (MIT).
final class SocialPresetIcon extends StatelessWidget {
  const SocialPresetIcon({
    required this.id,
    this.size = 24,
    this.color,
    super.key,
  });
  final SharePresetId id;
  final double size;
  final Color? color;

  static String assetFor(SharePresetId id) {
    final slug = switch (id) {
      SharePresetId.whatsapp || SharePresetId.whatsappHd => 'whatsapp',
      SharePresetId.facebook => 'facebook',
      SharePresetId.instagramReels => 'instagram',
      SharePresetId.tikTok => 'tiktok',
      SharePresetId.youTubeShorts => 'youtube',
      SharePresetId.discord => 'discord',
      SharePresetId.x => 'x',
      SharePresetId.linkedIn => 'linkedin',
      SharePresetId.telegram => 'telegram',
      SharePresetId.snapchat => 'snapchat',
      SharePresetId.email => throw ArgumentError(
        'Email has no social brand mark',
      ),
    };
    return 'assets/icons/social/$slug.svg';
  }

  @override
  Widget build(BuildContext context) => SvgPicture.asset(
    assetFor(id),
    width: size,
    height: size,
    excludeFromSemantics: true,
    colorFilter: ColorFilter.mode(
      color ?? Theme.of(context).colorScheme.onSurface,
      BlendMode.srcIn,
    ),
  );
}
