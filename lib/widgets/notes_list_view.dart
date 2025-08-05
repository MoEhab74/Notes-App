import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit.dart';
import 'package:notes_app/cubits/notes_state.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        // Trigger the cubit
        List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes ?? [];
        return Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: ListView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              itemCount: notes.length,
              itemBuilder: (context, index) {
                return NoteItem(note: notes[index],);
              },
            ),
          ),
        );
      },
    );
  }
}
