import 'package:flutter/material.dart';

import 'package:anikki/core/core.dart';
import 'package:anikki/core/widgets/cached_image.dart';

class HomeImage extends StatelessWidget {
  const HomeImage({
    super.key,
    required this.grayscaled,
    required this.media,
  });

  final bool grayscaled;
  final Media media;

  @override
  Widget build(BuildContext context) {
    return ColorFiltered(
      colorFilter: ColorFilter.mode(
        grayscaled ? Colors.grey.withValues(alpha: 0.4) : Colors.transparent,
        BlendMode.saturation,
      ),
      child: Image(
        fit: BoxFit.fitHeight,
        image: media.coverImage != null
            ? CachedImageProvider(
                media.coverImage!,
              )
            : const AssetImage('assets/images/placeholder.jpg'),
      ),
    );
  }
}
