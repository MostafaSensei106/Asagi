import 'package:cached_network_image_ce/cached_network_image.dart';
import 'package:material_ui/material_ui.dart';

import '../../../constants/app_config.dart';

/// Remote image with a loading placeholder and an error fallback.
final class NetworkImageComponent extends StatelessWidget {
  const NetworkImageComponent({
    required this.imageUrl,
    super.key,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
    this.borderRadius,
    this.semanticLabel,
  });

  final String imageUrl;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final double? borderRadius;

  /// Accessibility description announced by screen readers.
  final String? semanticLabel;

  @override
  Widget build(BuildContext context) {
    final devicePixelRatio = MediaQuery.of(context).devicePixelRatio;
    final cacheWidth = (width != null && width!.isFinite)
        ? (width! * devicePixelRatio).round()
        : null;
    final cacheHeight = (height != null && height!.isFinite)
        ? (height! * devicePixelRatio).round()
        : null;

    final image = ClipRRect(
      borderRadius: BorderRadius.circular(
        borderRadius ?? AppConfig.inBorderRadius,
      ),
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        width: width,
        height: height,
        fit: fit,
        memCacheWidth: cacheWidth,
        memCacheHeight: cacheHeight,
        placeholder: (BuildContext context, String url) => Container(
          color: Theme.of(context).colorScheme.surfaceContainerHighest,
          child: const Center(child: CircularProgressIndicator()),
        ),
        errorBuilder:
            (BuildContext context, Object error, StackTrace? stackTrace) =>
                Container(
                  color: Theme.of(context).colorScheme.errorContainer,
                  child: Icon(
                    Icons.error,
                    color: Theme.of(context).colorScheme.error,
                  ),
                ),
      ),
    );

    if (semanticLabel == null) return image;

    return Semantics(image: true, label: semanticLabel, child: image);
  }
}
