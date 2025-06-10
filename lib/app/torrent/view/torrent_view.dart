import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:anikki/app/layouts/shared/helpers/helpers.dart';
import 'package:anikki/app/settings/bloc/settings_bloc.dart';
import 'package:anikki/app/torrent/bloc/torrent_bloc.dart';
import 'package:anikki/app/torrent/widgets/torrent_cannot_load.dart';
import 'package:anikki/app/torrent/widgets/torrent_card.dart';
import 'package:anikki/core/core.dart';
import 'package:anikki/core/widgets/error_widget.dart';
import 'package:anikki/core/widgets/grid_view/custom_grid_view.dart';
import 'package:anikki/core/widgets/section/section_title.dart';

class TorrentView extends StatelessWidget {
  const TorrentView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, settingsState) {
        final torrentType = settingsState.settings.torrentType;

        return Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            if (context.landscape) ...[
              Row(
                children: [
                  SectionTitle(
                    text: torrentType.title,
                  ),
                ],
              ),
              const Divider(
                height: 1,
              ),
            ],
            Expanded(
              child: BlocBuilder<TorrentBloc, TorrentState>(
                builder: (context, state) => switch (state) {
                  TorrentLoaded() => Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8.0,
                        horizontal: 16.0,
                      ),
                      child: CustomGridView(
                        entries: state.torrents,
                        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent:
                              userListGridDelegate.maxCrossAxisExtent * 1.3,
                          childAspectRatio:
                              userListGridDelegate.childAspectRatio,
                        ),
                        builder: (entry, index) => TorrentCard(
                          torrent: state.torrents.elementAt(index),
                        ),
                      ),
                    ),
                  TorrentCannotLoad() => TorrentCannotLoadWidget(
                      type: torrentType,
                    ),
                  TorrentUnauthorized() => Center(
                      child: CustomErrorWidget(
                        title: 'Could not authenticate on ${torrentType.title}',
                        description:
                            'Are you sure you entered the right credentials? If yes, please close Anikki and restart it in a few minutes.',
                      ),
                    ),
                  TorrentEmpty() || TorrentInitial() => const SizedBox(),
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
