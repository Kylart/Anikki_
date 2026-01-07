import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:anikki/app/schedule/bloc/schedule_bloc.dart';
import 'package:anikki/core/widgets/error_widget.dart';
import 'package:anikki/core/widgets/loading_widget.dart';
import 'package:anikki/app/schedule/widgets/schedule_content.dart';

class ScheduleView extends StatelessWidget {
  const ScheduleView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScheduleBloc, ScheduleState>(
      builder: (context, state) {
        return switch (state) {
          ScheduleLoaded() => ScheduleContent(
            entries: state.entries,
            range: state.range,
          ),
          ScheduleError() => Center(
            child: CustomErrorWidget(
              title: 'Error loading schedule',
              description: state.message,
            ),
          ),
          ScheduleLoading() || ScheduleInitial() => const Center(
            child: LoadingWidget(title: 'Loading schedule...'),
          ),
        };
      },
    );
  }
}
