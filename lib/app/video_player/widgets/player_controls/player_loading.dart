import 'package:anikki/core/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:media_kit/media_kit.dart';

class PlayerLoading extends StatelessWidget {
  const PlayerLoading({
    super.key,
    required this.player,
  });

  final Player player;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
      stream: player.stream.buffering,
      builder: (context, snapshot) {
        if (snapshot.data == true) {
          return const Center(
            child: LoadingWidget(
              title: 'Loading...',
              width: 200,
              height: 200,
            ),
          );
        }

        return const SizedBox();
      },
    );
  }
}
