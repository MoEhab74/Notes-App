import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/cubits/notes_state.dart';
import 'package:notes_app/widgets/notes_list_view.dart';
import 'package:notes_app/widgets/simple_app_bar.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  int numberOfNotes = 0;
  // Here we can fetsh all notes first before we trigger the cubit
  @override
  void initState() {
    // Calling the cubit method to get all notes first before we trigger the cubit
    BlocProvider.of<NotesCubit>(context).fetshAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // numberOfNotes = BlocProvider.of<NotesCubit>(context).notes!.length;
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 42),
      child: Column(
        children: [
          SimpleAppBar(
            title: 'Notes',
            icon: Icon(Icons.search, size: 35),
            onPressed: () {},
          ),
          // BlocBuilder will rebuild the number of notes when it changes
          BlocBuilder<NotesCubit, NotesState>(
            builder: (context, state) {
              numberOfNotes = BlocProvider.of<NotesCubit>(context).notes!.length;
              return Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    '$numberOfNotes notes',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              );
            },
          ),

          NotesListView(),
        ],
      ),
    );
  }
}
