import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/widgets/add_note_bottom_sheet.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    // Provide the NotesCubit to the place that will use it
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(16),
        child: SizedBox(
          height: 80,
          width: 80,
          child: FloatingActionButton(
            backgroundColor: kPrimaryColor,
            onPressed: () {
              showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) {
                  return const AddNoteBottomSheet();
                },
              );
            },
            shape: const CircleBorder(),
            child: Icon(
              Icons.add,
              size: 32,
              color: Color.fromARGB(255, 56, 66, 71),
            ),
          ),
        ),
      ),
      body: const NotesViewBody(),
    );
  }
}
