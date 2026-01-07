import 'package:anikki/core/widgets/empty_widget.dart';
import 'package:flutter/material.dart';
import 'package:timelines_plus/timelines_plus.dart';

import 'package:anikki/core/core.dart';
import 'package:anikki/core/widgets/date_button.dart';
import 'package:anikki/core/widgets/entry_card/entry_card.dart';

part 'schedule_dates.dart';
part 'schedule_entries.dart';

class ScheduleContent extends StatefulWidget {
  const ScheduleContent({
    super.key,
    required this.entries,
    required this.range,
  });

  final List<ScheduleEntry> entries;
  final DateTimeRange range;

  @override
  State<ScheduleContent> createState() => _ScheduleContentState();
}

class _ScheduleContentState extends State<ScheduleContent> {
  DateTime? _selectedDate;

  DateTime get selectedDate => _selectedDate ?? widget.range.start;

  void _selectDate(DateTime date) {
    setState(() {
      _selectedDate = date;
    });
  }

  List<ScheduleEntry> get currentEntries => widget.entries
      .where(
        (entry) =>
            entry.releaseTime.day == selectedDate.day &&
            entry.releaseTime.month == selectedDate.month &&
            entry.releaseTime.year == selectedDate.year,
      )
      .toList()
      .reversed
      .toList();

  @override
  Widget build(BuildContext context) {
    if (widget.entries.isEmpty) {
      return const Center(
        child: EmptyWidget(
          title: 'No Schedule',
          subtitle: 'There is nothing scheduled for this day',
        ),
      );
    }

    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 24.0),
          child: _ScheduleDates(
            range: widget.range,
            selectedDate: selectedDate,
            onDateSelected: _selectDate,
          ),
        ),
        VerticalDivider(
          color: context.colorScheme.onSurface.withValues(alpha: 0.3),
          thickness: 1,
          width: 1,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ScheduleEntries(
              date: selectedDate,
              entries: currentEntries,
            ),
          ),
        ),
      ],
    );
  }
}
