import 'package:flutter/material.dart';
import 'package:notes_app/components/notes_list_view.dart';
import 'package:notes_app/widgets/simple_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 42),
      child: Column(
        children: const [
          SimpleAppBar(),
          NotesListView(),
        ],
      ),
    );
  }
}
