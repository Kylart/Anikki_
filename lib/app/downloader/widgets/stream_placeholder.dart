import 'dart:async';
import 'dart:io';

import 'package:anitomy/anitomy.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:media_kit/media_kit.dart' as mk;

import 'package:anikki/app/torrent/bloc/torrent_bloc.dart';
import 'package:anikki/core/core.dart';
import 'package:anikki/core/widgets/layout_card.dart';
import 'package:anikki/core/widgets/loading_widget.dart';
import 'package:anikki/domain/domain.dart';

class StreamPlaceholder extends StatefulWidget {
  const StreamPlaceholder({
    super.key,
    required this.torrent,
    this.media,
  });

  final Torrent torrent;
  final Media? media;

  @override
  State<StreamPlaceholder> createState() => _StreamPlaceholderState();
}

class _StreamPlaceholderState extends State<StreamPlaceholder> {
  bool startedFile = false;
  late TorrentBloc torrentBloc;

  Future<void> startTorrest(BuildContext context) async {
    if (torrentBloc.repository is! TorrestRepository) return;

    final uri = await TorrestRepository.getStreamUrl(
      torrentBloc.repository as TorrestRepository,
      widget.torrent,
    );

    if (!context.mounted) return;

    final parsedTitle = Anitomy(
      inputString: widget.torrent.name,
    );

    VideoPlayerRepository.startOnlinePlay(
      context: context,
      torrent: widget.torrent,
      playlist: [
        mk.Media(
          uri.toString(),
          extras: {
            'title': parsedTitle.episode != null
                ? widget.media
                    ?.getEpisodeInfo(parsedTitle.episode!)
                    ?.formattedTitle
                : widget.torrent.name,
            'episodeNumber': parsedTitle.episode,
          },
        ),
      ],
      media: widget.media ?? Media(),
    );
  }

  void onTorrentBlocChange(BuildContext context, TorrentState state) {
    torrentBloc = BlocProvider.of<TorrentBloc>(context);
    final isTorrest = torrentBloc.isTorrest;

    if (state is! TorrentLoaded) return;

    final hash = isTorrest
        ? widget.torrent.hash
        : Uri.parse(widget.torrent.magnet).queryParameters['xt'];
    final torrent = state.torrents.firstWhereOrNull(
      (element) =>
          (isTorrest
              ? element.hash
              : Uri.parse(element.magnet).queryParameters['xt']) ==
          hash,
    );

    if (torrent == null) return;

    if (!isTorrest) {
      final file = File(torrent.path);

      if (!file.existsSync()) return;
    }

    final minProgress = torrentBloc.isTransmission
        ? 0.1
        : torrentBloc.isQBitTorrent
            ? 0.03
            : torrentBloc.isTorrest
                ? 0.05
                : 1;

    if (torrent.progress < minProgress) return;

    startedFile = true;

    if (torrentBloc.isTorrest) {
      startTorrest(context);
      Navigator.of(context).pop();
      return;
    }

    VideoPlayerRepository.playFile(
      context: context,
      playlist: [
        convertToMkMedia(
          LocalFile(
            path: torrent.path,
            media: widget.media,
          ),
        ),
      ],
      torrent: torrent,
      media: widget.media,
    );

    Navigator.of(context).pop();
  }

  @override
  void dispose() {
    if (!startedFile) {
      final state = torrentBloc.state;
      if (state is! TorrentLoaded) return;

      final hash = Uri.parse(widget.torrent.magnet).queryParameters['xt'];
      final currentTorrent = state.torrents.firstWhereOrNull(
        (element) => Uri.parse(element.magnet).queryParameters['xt'] == hash,
      );

      if (currentTorrent != null) {
        torrentBloc.add(TorrentRemoveTorrent(widget.torrent, true));
      }
    }

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    torrentBloc = BlocProvider.of<TorrentBloc>(context);

    return BlocListener<TorrentBloc, TorrentState>(
      listener: onTorrentBlocChange,
      child: const LayoutCard(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: LoadingWidget(
            height: 275,
            title: 'Setting up stream, please wait',
          ),
        ),
      ),
    );
  }
}
