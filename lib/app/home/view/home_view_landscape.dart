import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:anikki/app/home/bloc/home_bloc.dart';
import 'package:anikki/app/home/widgets/landscape/background_image.dart';
import 'package:anikki/app/home/widgets/landscape/home_carousel/home_carousel.dart';
import 'package:anikki/app/home/widgets/landscape/home_carousel/home_carousel_container.dart';
import 'package:anikki/app/home/widgets/landscape/home_carousel/home_carousel_title.dart/home_carousel_title.dart';
import 'package:anikki/app/home/widgets/landscape/home_loader.dart';
import 'package:anikki/app/home/widgets/landscape/home_title/home_title.dart';
import 'package:anikki/core/core.dart';
import 'package:anikki/core/widgets/error_widget.dart';

class HomeViewLandscape extends StatelessWidget {
  const HomeViewLandscape({
    super.key,
    required this.isWatchListLoading,
  });

  final bool isWatchListLoading;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        final initial = state is HomeInitial;
        final errored = state is HomeError;
        final loading = state is HomeLoading || isWatchListLoading;

        final screenSize = MediaQuery.of(context).size;
        final carouselSize = Size(
          max(screenSize.width / 4, 375).toDouble(),
          max(screenSize.height / 2.5, 200).toDouble(),
        );
        final actionBarSize = Size(
          carouselSize.width,
          50,
        );
        final maxTitleSize = Size(
          max(700, screenSize.width / 1.5),
          screenSize.height - carouselSize.height,
        );

        final loader = HomeLoader(
          carouselSize: carouselSize,
        );

        if (initial) return loader;
        if (loading && state.entries.isEmpty) {
          return loader;
        }
        if (errored && state.entries.isEmpty) {
          return Center(
            child: CustomErrorWidget(
              description: state.message,
            ),
          );
        }

        return Stack(
          children: [
            Positioned.fill(
              child: const HomeBackgroundImage(),
            ),
            Positioned(
                  top: 0,
                  left: 0,
                  child: HomeTitle(
                    maxSize: maxTitleSize,
                  ),
                )
                .animate()
                .fadeIn(
                  duration: 500.ms,
                )
                .slideX(
                  duration: 500.ms,
                  end: 0,
                  begin: -0.5,
                ),
            if (state.entries.isNotEmpty)
              Positioned(
                    right: 0,
                    bottom: 0,
                    width: carouselSize.width,
                    height: carouselSize.height + actionBarSize.height,
                    child: HomeCarouselContainer(
                      child: Column(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 16.0,
                                right: 8.0,
                              ),
                              child: HomeCarouselTitle(loading: loading),
                            ),
                          ),
                          Divider(
                            height: 1.0,
                            color: context.colorScheme.onSurface.withValues(
                              alpha: 0.1,
                            ),
                          ),
                          SizedBox(
                            width: carouselSize.width,
                            height: carouselSize.height,
                            child: HomeCarousel(
                              entries: state.entries,
                              height: carouselSize.height,
                              width: carouselSize.width,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                  .animate()
                  .fadeIn(
                    duration: 500.ms,
                  )
                  .slideX(
                    duration: 500.ms,
                    end: 0,
                    begin: 0.5,
                  ),
          ],
        );
      },
    );
  }
}
