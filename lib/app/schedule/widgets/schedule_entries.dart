part of 'schedule_content.dart';

class ScheduleEntries extends StatelessWidget {
  const ScheduleEntries({
    super.key,
    required this.date,
    required this.entries,
  });

  final DateTime date;
  final List<ScheduleEntry> entries;

  List<DateTime> get currentReleaseTimes =>
      entries.map((entry) => entry.releaseTime).toSet().toList();

  @override
  Widget build(BuildContext context) {
    return TimelineTheme(
      data: TimelineThemeData(
        nodePosition: 0.15,
        color: context.colorScheme.secondary,
      ),
      child: Timeline.tileBuilder(
        builder: TimelineTileBuilder.fromStyle(
          contentsAlign: ContentsAlign.basic,
          oppositeContentsBuilder: (context, index) {
            final releaseTime = currentReleaseTimes[index];
            final localReleaseTime = releaseTime.toLocal();

            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text.rich(
                TextSpan(
                  style: context.textTheme.bodyLarge,
                  children: [
                    TextSpan(text: localReleaseTime.hour.toString()),
                    TextSpan(text: 'h'),
                    TextSpan(
                      text: localReleaseTime.minute.toString().padLeft(2, '0'),
                    ),
                  ],
                ),
              ),
            );
          },
          contentsBuilder: (context, index) {
            final currentEntries = entries.where(
              (entry) => entry.releaseTime == currentReleaseTimes[index],
            );

            return Wrap(
              runSpacing: 8,
              children: [
                for (final entry in currentEntries)
                  SizedBox(
                    height: 200,
                    child: AspectRatio(
                      aspectRatio: 11 / 16,
                      child: Tooltip(
                        message: entry.media.title ?? '',
                        margin: const EdgeInsets.only(top: 80.0),
                        child: EntryCard(
                          media: entry.media,
                          text: entry.episodeNumber?.toString(),
                        ),
                      ),
                    ),
                  ),
              ],
            );
          },
          itemCount: currentReleaseTimes.length,
        ),
      ),
    );
  }
}
