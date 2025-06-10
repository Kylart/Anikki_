import 'package:anitomy/anitomy.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:humanize_duration/humanize_duration.dart';

import 'package:anikki/app/torrent/bloc/torrent_bloc.dart';
import 'package:anikki/core/core.dart';
import 'package:anikki/core/widgets/entry_card/entry_card.dart';

part 'torrent_actions.dart';
part 'torrent_download_information.dart';
part 'torrent_progress_indicator.dart';
part 'torrent_title.dart';

class TorrentCard extends StatelessWidget {
  const TorrentCard({
    super.key,
    required this.torrent,
  });

  final Torrent torrent;

  Media? get media => torrent.media;

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
      fontSize: 10.0,
      color: context.colorScheme.onSurface,
    );

    return EntryCard(
      media: torrent.media ?? Media(),
      libraryEntry: LibraryEntry(
        media: torrent.media ?? Media(),
        entries: [LocalFile(path: torrent.path)],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Colors.black54,
              borderRadius: const BorderRadius.all(
                Radius.circular(8.0),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: _TorrentTitle(
                        torrent: torrent,
                        textStyle: textStyle,
                      ),
                    ),
                    _TorrentProgressIndicator(
                      torrent: torrent,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: _TorrentDownloadInformation(
                    torrent: torrent,
                    textStyle: textStyle,
                  ),
                ),
                if (torrent.estimatedTimeToFinish != null &&
                    torrent.progress != 1.0)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: AutoSizeText(
                            '${humanizeDuration(torrent.estimatedTimeToFinish!)} remaining',
                            style: textStyle,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                _TorrentActions(torrent: torrent),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
