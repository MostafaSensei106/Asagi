import 'package:cached_network_image_ce/cached_network_image.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:material_ui/material_ui.dart';

import '../../../constants/app_config.dart';

/// Circular (or shaped) user/company avatar.
///
/// Renders [imageUrl] when available, otherwise [initials], and finally
/// [fallbackIcon] (or a generic user icon).
final class AvatarComponent extends StatelessWidget {
  const AvatarComponent({
    super.key,
    this.imageUrl,
    this.initials,
    this.semanticLabel,
    this.size,
    this.shape,
    this.radius,
    this.fallbackIcon,
  });

  final String? imageUrl;
  final String? initials;
  final String? semanticLabel;

  /// Width/height of the avatar. Takes precedence over [radius].
  final double? size;

  /// Optional custom outline, e.g. `AppShapes.polygon(AppShapes.clover)`.
  final OutlinedBorder? shape;

  final double? radius;
  final IconData? fallbackIcon;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final dimension = size ?? ((radius ?? AppConfig.avatarRadius) * 2);
    final effectiveShape = shape ?? const CircleBorder();

    final trimmedUrl = imageUrl?.trim();
    final trimmedInitials = initials?.trim();
    final hasImage = trimmedUrl != null && trimmedUrl.isNotEmpty;

    final Widget fallback;
    if (trimmedInitials != null && trimmedInitials.isNotEmpty) {
      fallback = Text(
        trimmedInitials,
        style: Theme.of(context).textTheme.titleMedium?.copyWith(
          color: colorScheme.onSurfaceVariant,
          fontWeight: FontWeight.w600,
          fontSize: dimension * 0.3,
        ),
      );
    } else {
      fallback = Icon(
        fallbackIcon ?? LucideIcons.user,
        size: dimension * 0.45,
        color: colorScheme.onSurfaceVariant,
      );
    }

    final avatar = ClipPath(
      clipper: ShapeBorderClipper(shape: effectiveShape),
      child: SizedBox.square(
        dimension: dimension,
        child: ColoredBox(
          color: colorScheme.surfaceContainerHighest,
          child: hasImage
              ? CachedNetworkImage(
                  imageUrl: trimmedUrl,
                  width: dimension,
                  height: dimension,
                  fit: BoxFit.cover,
                  memCacheWidth: dimension.isFinite
                      ? (dimension * MediaQuery.of(context).devicePixelRatio)
                            .round()
                      : null,
                  placeholder: (context, url) => Center(
                    child: SizedBox.square(
                      dimension: dimension * 0.35,
                      child: const CircularProgressIndicator(strokeWidth: 2),
                    ),
                  ),
                  errorBuilder: (context, error, stackTrace) =>
                      Center(child: fallback),
                )
              : Center(child: fallback),
        ),
      ),
    );

    return Semantics(
      image: hasImage,
      label: semanticLabel,
      child: Container(
        width: dimension,
        height: dimension,
        foregroundDecoration: ShapeDecoration(
          shape: effectiveShape.copyWith(
            side: BorderSide(color: colorScheme.outlineVariant, width: 1.5),
          ),
        ),
        child: avatar,
      ),
    );
  }
}
