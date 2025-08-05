import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit.dart';
import 'package:notes_app/widgets/notes_list_view.dart';
import 'package:notes_app/widgets/simple_app_bar.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  // Here we can fetsh all notes first before we trigger the cubit
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetshAllNotes();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 42),
      child: Column(
        children: [
          SimpleAppBar(title: 'Notes',icon: Icon(Icons.search, size: 35),),
          NotesListView(),
        ],
      ),
    );
  }
}
