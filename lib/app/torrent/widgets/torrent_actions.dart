part of 'torrent_card.dart';

class _TorrentActions extends StatelessWidget {
  const _TorrentActions({
    required this.torrent,
  });

  final Torrent torrent;

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<TorrentBloc>(context);

    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        if (['Stopped', 'Paused'].contains(torrent.status))
          FilledButton.tonalIcon(
            onPressed: () {
              bloc.add(
                TorrentStartTorrent(torrent),
              );
            },
            label: const Text('Start'),
            icon: const Icon(
              HugeIcons.strokeRoundedReload,
              size: 20.0,
            ),
          )
        else
          FilledButton.tonalIcon(
            onPressed: () {
              bloc.add(
                TorrentPauseTorrent(torrent),
              );
            },
            label: const Text('Pause'),
            icon: const Icon(
              HugeIcons.strokeRoundedPause,
              size: 20.0,
            ),
          ),
        const SizedBox(
          width: 4.0,
        ),
        IconButton.filled(
          constraints: const BoxConstraints(),
          iconSize: 16.0,
          onPressed: () {
            bloc.add(
              TorrentRemoveTorrent(
                torrent,
                torrent.progress != 1.0,
              ),
            );
          },
          icon: const Icon(HugeIcons.strokeRoundedDelete02),
        ),
      ],
    );
  }
}
