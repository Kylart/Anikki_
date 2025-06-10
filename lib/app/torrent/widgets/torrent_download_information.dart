part of 'torrent_card.dart';

class _TorrentDownloadInformation extends StatelessWidget {
  const _TorrentDownloadInformation({
    required this.torrent,
    required this.textStyle,
  });

  final Torrent torrent;
  final TextStyle textStyle;

  String toHumanReadableFileSize(
    int initialSize, {
    int round = 2,
    bool useBase1024 = true,
  }) {
    const List<String> affixes = ['B', 'KB', 'MB', 'GB', 'TB', 'PB'];

    num divider = useBase1024 ? 1024 : 1000;

    num size = initialSize;
    num runningDivider = divider;
    num runningPreviousDivider = 0;
    int affix = 0;

    while (size >= runningDivider && affix < affixes.length - 1) {
      runningPreviousDivider = runningDivider;
      runningDivider *= divider;
      affix++;
    }

    String result =
        (runningPreviousDivider == 0 ? size : size / runningPreviousDivider)
            .toStringAsFixed(round);

    //Check if the result ends with .00000 (depending on how many decimals) and remove it if found.
    if (result.endsWith("0" * round)) {
      result = result.substring(0, result.length - round - 1);
    }

    return "$result ${affixes[affix]}";
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Icon(
              HugeIcons.strokeRoundedArrowDown01,
              color: Colors.green,
            ),
            Text(
              torrent.seeders.toString(),
              style: textStyle,
            ),
            const SizedBox(
              width: 8.0,
            ),
            Icon(
              HugeIcons.strokeRoundedArrowUp01,
              color: Colors.redAccent,
            ),
            Text(
              torrent.leechers.toString(),
              style: textStyle,
            ),
          ],
        ),
        if (torrent.sizeDownloaded != null && torrent.totalSize != null)
          RichText(
            text: TextSpan(
              style: textStyle,
              children: [
                TextSpan(
                  text: toHumanReadableFileSize(
                    torrent.sizeDownloaded!,
                  ),
                ),
                TextSpan(
                  text: ' / ',
                ),
                TextSpan(
                  text: toHumanReadableFileSize(
                    torrent.totalSize!,
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
