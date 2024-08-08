import 'package:flutter/material.dart';

import 'appbar_notes_view.dart';
import 'custom_notes_item.dart';
import 'notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 40,
        ),
        AppbarNotesView(),
        Expanded(child: NotesListView()),
      ],
    );
  }
}
