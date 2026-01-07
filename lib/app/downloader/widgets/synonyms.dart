import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hugeicons/hugeicons.dart';

import 'package:anikki/app/downloader/bloc/downloader_bloc.dart';
import 'package:anikki/app/layouts/shared/helpers/helpers.dart';

class Synonyms extends StatefulWidget {
  const Synonyms({
    super.key,
    required this.state,
  });

  final DownloaderSuccess state;

  @override
  State<Synonyms> createState() => _SynonymsState();
}

class _SynonymsState extends State<Synonyms> {
  String? currentSelection;

  List<String> get synonyms => {
    /// Anitomy parsed name
    widget.state.entry?.entries.first.title,

    ...(widget.state.media?.synonyms ?? []),
    ...(widget.state.entry?.media?.synonyms ?? []),
  }.whereType<String>().toList();

  @override
  Widget build(BuildContext context) {
    void onSelected(value) {
      BlocProvider.of<DownloaderBloc>(context).add(
        DownloaderRequested(
          media: widget.state.media,
          entry: widget.state.entry,
          title: value,
          isStreaming: widget.state.isStreaming,
          episode: widget.state.episode,
        ),
      );

      setState(() {
        currentSelection = value;
      });
    }

    if (context.landscape) {
      return DropdownMenu(
        inputDecorationTheme: const InputDecorationTheme(
          contentPadding: EdgeInsets.symmetric(horizontal: 12.0),
        ),
        controller: TextEditingController(
          text: currentSelection,
        ),
        width: 300,
        hintText: 'Other names',
        onSelected: onSelected,
        textStyle: const TextStyle(
          fontSize: 14,
        ),
        dropdownMenuEntries: synonyms
            .map(
              (e) => DropdownMenuEntry(
                value: e,
                label: e,
              ),
            )
            .toList(),
      );
    } else {
      return IconButton.outlined(
        onPressed: () {
          if (Platform.isIOS) {
            showCupertinoModalPopup(
              context: context,
              builder: (context) {
                return CupertinoActionSheet(
                  title: const Text('Other names'),
                  actions: synonyms
                      .map(
                        (e) => CupertinoActionSheetAction(
                          child: Text(e),
                          onPressed: () => onSelected(e),
                        ),
                      )
                      .toList(),
                );
              },
            );
          } else {
            showModalBottomSheet(
              enableDrag: false,
              context: context,
              builder: (context) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: synonyms
                        .map(
                          (e) => ListTile(
                            title: Text(e),
                            onTap: () => onSelected(e),
                          ),
                        )
                        .toList(),
                  ),
                );
              },
            );
          }
        },
        icon: const Icon(HugeIcons.strokeRoundedArrowReloadHorizontal),
      );
    }
  }
}
