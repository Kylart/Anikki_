import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:super_sliver_list/super_sliver_list.dart';

import 'package:anikki/app/home/bloc/home_bloc.dart';
import 'package:anikki/core/core.dart';

part 'home_carousel_image.dart';

const _horizontalPadding = 4.0;

class HomeCarousel extends StatefulWidget {
  const HomeCarousel({
    super.key,
    required this.entries,
    required this.height,
    required this.width,
  });

  final List<MediaListEntry> entries;
  final double width;
  final double height;

  @override
  State<HomeCarousel> createState() => _HomeCarouselState();
}

class _HomeCarouselState extends State<HomeCarousel>
    with WidgetsBindingObserver {
  final itemAspectRatio = 9 / 14;
  int? dragDirection;

  late final ScrollController scrollController;
  late final ListController listController;

  final itemAnimationDuration = const Duration(milliseconds: 300);

  @override
  void initState() {
    scrollController = ScrollController();
    listController = ListController();

    final state = BlocProvider.of<HomeBloc>(context).state;
    animateToItem(state.currentIndex, delayed: true);

    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    listController.dispose();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      final state = BlocProvider.of<HomeBloc>(context).state;

      animateToItem(state.currentIndex);
    }
  }

  void goToItem(int index) {
    if (!mounted) return;
    if (index < 0) return;

    BlocProvider.of<HomeBloc>(context).add(
      HomeCurrentIndexChanged(index),
    );
  }

  Future<void> animateToItem(
    int index, {
    bool delayed = false,
  }) async {
    if (!listController.isAttached) return;

    if (delayed) {
      await Future.delayed(
        const Duration(milliseconds: 100),
        () => animateToItem(index),
      );
    }

    listController.animateToItem(
      curve: (estimatedDistance) => Curves.linear,
      duration: (estimatedDistance) => itemAnimationDuration,
      index: index,
      scrollController: scrollController,
      alignment: 0.0,
    );
  }

  Size get cardSize => Size(widget.width, widget.height);
  double get titleHeight => 50;
  double get reducedHeight => cardSize.height - titleHeight;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      listenWhen: (previous, current) =>
          previous.runtimeType != current.runtimeType ||
          previous.currentIndex != current.currentIndex,
      listener: (context, state) async {
        animateToItem(state.currentIndex);
      },
      builder: (context, state) {
        final currentEntryIndex = state.currentIndex % widget.entries.length;
        final currentEntry = widget.entries.elementAtOrNull(currentEntryIndex);

        if (currentEntry == null) {
          return const SizedBox();
        }

        return GestureDetector(
          onHorizontalDragUpdate: (details) {
            dragDirection = details.delta.dx.sign.toInt();
          },
          onHorizontalDragEnd: (details) {
            if (dragDirection == null) return;

            goToItem(
              state.currentIndex - dragDirection!,
            );
            dragDirection = null;
          },
          child: SuperListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            listController: listController,
            controller: scrollController,
            itemCount: 10000000,
            itemBuilder: (context, index) {
              final i = index % widget.entries.length;
              final entry = widget.entries.elementAt(i);

              return _HomeCarouselImage(
                goToItem: goToItem,
                realIndex: index,
                currentIndex: state.currentIndex,
                itemAnimationDuration: itemAnimationDuration,
                cardSize: cardSize,
                reducedHeight: reducedHeight,
                itemAspectRatio: itemAspectRatio,
                entry: entry,
              );
            },
          ),
        );
      },
    );
  }
}
