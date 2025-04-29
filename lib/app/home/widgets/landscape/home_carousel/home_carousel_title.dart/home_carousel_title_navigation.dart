part of 'home_carousel_title.dart';

class _HomeCarouselTitleNavigation extends StatelessWidget {
  const _HomeCarouselTitleNavigation();

  void goToItem(BuildContext context, int index) {
    if (index < 0) return;

    BlocProvider.of<HomeBloc>(context).add(
      HomeCurrentIndexChanged(index),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        final currentIndex = state.currentIndex;
        final currentEntryIndex = state.currentEntryIndex;
        final entries = state.entries;

        return Row(
          children: [
            IconButton(
              onPressed: () => goToItem(context, currentIndex - 1),
              icon: const Icon(HugeIcons.strokeRoundedArrowLeft01),
            ),
            Text('${currentEntryIndex + 1} / ${entries.length}'),
            IconButton(
              onPressed: () => goToItem(context, currentIndex + 1),
              icon: const Icon(HugeIcons.strokeRoundedArrowRight01),
            ),
          ],
        );
      },
    );
  }
}
