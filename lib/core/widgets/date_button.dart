import 'package:flutter/material.dart';

import 'package:anikki/core/core.dart';

class DateButton extends StatelessWidget {
  const DateButton({
    super.key,
    required this.date,
    required this.isSelected,
    required this.onTap,
  });

  final DateTime date;
  final bool isSelected;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    final color = isSelected ? context.colorScheme.primary : null;
    final fontWeight = isSelected ? FontWeight.bold : null;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12.0),
        child: SizedBox(
          height: 90,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                getWeekday(date.weekday),
                style: context.textTheme.bodySmall?.copyWith(
                  color: color,
                  fontWeight: fontWeight,
                ),
              ),
              Text(
                date.day.toString(),
                style: context.textTheme.titleLarge?.copyWith(
                  color: color,
                  fontWeight: fontWeight,
                ),
              ),
              Text(
                getMonth(date.month),
                style: context.textTheme.bodyLarge?.copyWith(
                  color: color,
                  fontWeight: fontWeight,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
