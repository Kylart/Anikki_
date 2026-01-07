import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hugeicons/hugeicons.dart';

import 'package:anikki/app/home/bloc/home_bloc.dart';
import 'package:anikki/app/watch_list/bloc/watch_list_bloc.dart';
import 'package:anikki/core/core.dart';

part 'home_carousel_refresh.dart';
part 'home_carousel_title_navigation.dart';

class HomeSideMenuAction {
  HomeSideMenuAction({
    required this.type,
    required this.icon,
  });

  final HomeMediaType type;
  final IconData icon;
}

class HomeCarouselTitle extends StatefulWidget {
  const HomeCarouselTitle({
    super.key,
    required this.loading,
  });

  final bool loading;

  @override
  State<HomeCarouselTitle> createState() => _HomeCarouselTitleState();
}

class _HomeCarouselTitleState extends State<HomeCarouselTitle> {
  final TextEditingController mediaTypeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return BlocBuilder<WatchListBloc, WatchListState>(
          builder: (context, watchListState) {
            return Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                DropdownButton<HomeMediaType>(
                  value: state.type,
                  icon: const Icon(HugeIcons.strokeRoundedArrowDown01),
                  elevation: 16,
                  onChanged: (HomeMediaType? type) {
                    if (type == null) return;

                    final watchListBloc = BlocProvider.of<WatchListBloc>(
                      context,
                    );

                    BlocProvider.of<HomeBloc>(context).add(
                      HomeRefreshed(
                        requestedType: type,
                        watchList: watchListBloc.state.watchList,
                      ),
                    );
                  },
                  items: HomeMediaType.values
                      .map<DropdownMenuItem<HomeMediaType>>(
                        (HomeMediaType type) => DropdownMenuItem<HomeMediaType>(
                          value: type,
                          child: Row(
                            children: [
                              Icon(
                                type.icon,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Text(
                                type.title,
                                style: context.textTheme.headlineSmall
                                    ?.copyWith(
                                      fontSize: 18,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      )
                      .toList(),
                ),
                HomeCarouselRefresh(loading: widget.loading),
                if (state is HomeError)
                  Tooltip(
                    message: state.message,
                    child: Icon(
                      HugeIcons.strokeRoundedAlert02,
                      size: 26,
                      color: context.colorScheme.error,
                    ),
                  ),
                const Spacer(),
                const _HomeCarouselTitleNavigation(),
              ],
            );
          },
        );
      },
    );
  }
}
