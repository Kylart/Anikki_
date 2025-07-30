import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:anikki/app/history/view/history_view.dart';
import 'package:anikki/app/layouts/bloc/layout_bloc.dart';
import 'package:anikki/app/schedule/view/schedule_view.dart';
import 'package:anikki/app/search/view/search_view.dart';
import 'package:anikki/core/core.dart';

class LeftDrawer extends StatefulWidget {
  const LeftDrawer({super.key});

  @override
  State<LeftDrawer> createState() => _LeftDrawerState();
}

class _LeftDrawerState extends State<LeftDrawer> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LayoutBloc, LayoutState>(
      builder: (context, state) {
        return switch (state.leftDrawerType) {
          LeftDrawerType.search => const SearchView(),
          LeftDrawerType.schedule => const ScheduleView(),
          LeftDrawerType.history => const HistoryView(),
          _ => const SizedBox(),
        };
      },
    );
  }
}
