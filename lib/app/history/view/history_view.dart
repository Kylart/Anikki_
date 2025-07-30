import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:anikki/app/history/bloc/history_bloc.dart';
import 'package:anikki/app/history/widgets/history_content.dart';
import 'package:anikki/core/widgets/error_widget.dart';

class HistoryView extends StatelessWidget {
  const HistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HistoryBloc, HistoryState>(
      builder: (context, state) {
        return switch (state) {
          HistoryLoading() || HistoryInitial() || HistoryLoaded() => Center(
              child: HistoryContent(
                entries: state.entries,
              ),
            ),
          HistoryError() => Center(
              child: CustomErrorWidget(
                title: 'Error loading history',
                description: state.message,
              ),
            ),
        };
      },
    );
  }
}
