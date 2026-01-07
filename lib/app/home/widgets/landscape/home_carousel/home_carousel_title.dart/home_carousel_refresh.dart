part of 'home_carousel_title.dart';

class HomeCarouselRefresh extends StatelessWidget {
  const HomeCarouselRefresh({
    super.key,
    required this.loading,
  });

  final bool loading;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: AnimatedCrossFade(
        firstChild: Container(
          padding: const EdgeInsets.all(8.0),
          width: 36,
          height: 36,
          child: CircularProgressIndicator(
            color: context.colorScheme.onPrimary,
            strokeWidth: 2.0,
          ),
        ),
        secondChild: IconButton(
          iconSize: 20,
          onPressed: () {
            final watchListBloc = BlocProvider.of<WatchListBloc>(context);

            if (watchListBloc.state.connected[WatchListProvider.anilist] ==
                true) {
              watchListBloc.add(
                WatchListRequested(
                  provider: WatchListProvider.anilist,
                ),
              );
            } else {
              BlocProvider.of<HomeBloc>(context).add(
                const HomeRefreshed(),
              );
            }
          },
          icon: const Icon(HugeIcons.strokeRoundedRefresh),
        ),
        crossFadeState: loading
            ? CrossFadeState.showFirst
            : CrossFadeState.showSecond,
        duration: const Duration(milliseconds: 200),
      ),
    );
  }
}
