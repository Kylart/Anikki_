part of 'torrent_card.dart';

class _TorrentProgressIndicator extends StatelessWidget {
  const _TorrentProgressIndicator({
    required this.torrent,
  });

  final Torrent torrent;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 50,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CircularProgressIndicator(
            value: torrent.progress,
            color: torrent.progress == 1.0 ? Colors.green : null,
          ),
          Center(
            child: Text(
              '${(torrent.progress * 100).floor()}%',
              style: const TextStyle(fontSize: 8.0),
            ),
          ),
        ],
      ),
    );
  }
}
