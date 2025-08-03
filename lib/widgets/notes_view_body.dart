import 'package:flutter/material.dart';
import 'package:notes_app/components/notes_list_view.dart';
import 'package:notes_app/widgets/note_item.dart';
import 'package:notes_app/widgets/simple_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8, top: 42),
      child: Column(
        children: const [
          SimpleAppBar(),
          // SizedBox(height: 16,),
          NotesListView()
        ],
      ),
    );
  }
}
