import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

final _cacheKey = 'anikki_image_cache';
final _cacheProvider = CacheManager(
  Config(
    _cacheKey,
    stalePeriod: const Duration(days: 7),
    maxNrOfCacheObjects: 500,
    repo: JsonCacheInfoRepository(databaseName: _cacheKey),
    fileSystem: IOFileSystem(_cacheKey),
    fileService: HttpFileService(),
  ),
);

class CachedImage extends StatelessWidget {
  const CachedImage({
    super.key,
    required this.imageUrl,
    this.placeholder,
    this.errorListener,
    this.errorWidget,
    this.fit,
    this.alignment,
  });

  final String imageUrl;

  final ValueChanged<Object>? errorListener;
  final Widget Function(BuildContext context, String url)? placeholder;
  final Widget Function(BuildContext context, String url, Object error)?
  errorWidget;
  final BoxFit? fit;
  final Alignment? alignment;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      cacheManager: _cacheProvider,
      errorListener: errorListener,
      placeholder: placeholder,
      fit: fit,
      alignment: alignment ?? Alignment.center,
    );
  }
}

class CachedImageProvider extends CachedNetworkImageProvider {
  CachedImageProvider(super.url)
    : super(
        cacheManager: _cacheProvider,
      );
}
