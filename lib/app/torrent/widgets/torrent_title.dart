part of 'torrent_card.dart';

class _TorrentTitle extends StatelessWidget {
  const _TorrentTitle({
    required this.torrent,
    required this.textStyle,
  });

  final Torrent torrent;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    final parsedTitle = Anitomy(inputString: torrent.name);
    final media = torrent.media;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        AutoSizeText(
          media?.title ?? torrent.name,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: context.colorScheme.onSurface,
          ),
        ),
        if (parsedTitle.episode != null)
          AutoSizeText(
            'Episode ${parsedTitle.episode}',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            minFontSize: 4.0,
            maxFontSize: textStyle.fontSize ?? 10.0,
          ),
        AutoSizeText(
          torrent.status,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          minFontSize: 4.0,
          maxFontSize: textStyle.fontSize ?? 10.0,
        ),
      ],
    );
  }
}
