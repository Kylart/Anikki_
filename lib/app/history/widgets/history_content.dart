import 'package:anikki/app/history/bloc/history_bloc.dart';
import 'package:anikki/core/core.dart';
import 'package:anikki/core/widgets/date_button.dart';
import 'package:anikki/core/widgets/empty_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hugeicons/hugeicons.dart';

class HistoryContent extends StatefulWidget {
  const HistoryContent({super.key, required this.entries});

  final List<HistoryEntry> entries;

  @override
  HistoryContentState createState() => HistoryContentState();
}

class HistoryContentState extends State<HistoryContent> {
  DateTime? _selectedDate;

  DateTime get selectedDate => _selectedDate ?? widget.entries.last.date;

  void onDateSelected(DateTime date) {
    setState(() {
      _selectedDate = date;
    });
  }

  Iterable<HistoryEntry> get currentEntries =>
      widget.entries.where((entry) => isSameDay(entry.date, selectedDate));

  Iterable<DateTime> get dates => widget.entries.fold<List<DateTime>>(
    <DateTime>[],
    (acc, e) => [if (!acc.any((d) => isSameDay(d, e.date))) e.date, ...acc],
  );

  @override
  Widget build(BuildContext context) {
    if (widget.entries.isEmpty) {
      return const Center(
        child: EmptyWidget(
          title: 'No History',
          subtitle: 'You have not watched any episodes yet.',
        ),
      );
    }

    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 24.0),
          child: SizedBox(
            width: 100,
            child: ListView(
              physics: const ClampingScrollPhysics(),
              semanticChildCount: dates.length,
              children: [
                for (final date in dates)
                  DateButton(
                    date: date,
                    isSelected: date == selectedDate,
                    onTap: () => onDateSelected(date),
                  ),
              ],
            ),
          ),
        ),
        VerticalDivider(
          color: context.colorScheme.onSurface.withValues(alpha: 0.3),
          thickness: 1,
          width: 1,
        ),
        Expanded(
          child: ListView.separated(
            physics: const ClampingScrollPhysics(),
            itemCount: currentEntries.length,
            separatorBuilder: (context, index) => const Divider(),
            itemBuilder: (context, index) {
              final entry = currentEntries.elementAt(index);

              return ListTile(
                title: Text(entry.text),
                subtitle: Text(
                  [
                    entry.date.hour.toString().padLeft(2, '0'),
                    entry.date.minute.toString().padLeft(2, '0'),
                  ].join('h'),
                ),
                trailing: IconButton(
                  onPressed: () {
                    BlocProvider.of<HistoryBloc>(
                      context,
                    ).add(HistoryEntryRemoved(entry));
                  },
                  icon: const Icon(HugeIcons.strokeRoundedDelete02),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
